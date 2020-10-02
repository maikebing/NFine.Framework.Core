using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.HttpsPolicy;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.DependencyModel;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using NFine.Data;
using NFine.Mobile.Dtos;
using NFine.Mobile.Extensions;
using NSwag;
using NSwag.Generation.Processors.Security;

namespace NFine.Mobile
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddCors();
            services.AddControllers();

            // configure strongly typed settings object
            services.Configure<AppSettings>(Configuration.GetSection("appSettings"));
            services.AddSwaggerDocument(configure =>
            {
                Assembly assembly = typeof(Startup).GetTypeInfo().Assembly;
                AssemblyDescriptionAttribute description = (AssemblyDescriptionAttribute)Attribute.GetCustomAttribute(assembly, typeof(AssemblyDescriptionAttribute));
                configure.Title = typeof(Startup).GetTypeInfo().Assembly.GetName().Name;
                configure.Version = typeof(Startup).GetTypeInfo().Assembly.GetName().Version.ToString();
                configure.Description = description?.Description;
                configure.AddSecurity("JWT", Enumerable.Empty<string>(), new OpenApiSecurityScheme
                {
                    Type = OpenApiSecuritySchemeType.ApiKey,
                    Name = "Authorization",
                    In = OpenApiSecurityApiKeyLocation.Header,
                    Description = "在这里输入你的token: Bearer {your JWT token}."
                });
                configure.OperationProcessors.Add(new AspNetCoreOperationSecurityScopeProcessor("JWT"));
            });
            // configure DI for application services
            services.AddScoped<IUserService, UserService>();
            services.AddDbContext<NFineDbContext>(optionsAction =>
            {
                optionsAction.UseMySQL(Configuration.GetSection("connectionStrings:NFineDbContext").Value, b => b.MigrationsAssembly(typeof(NFineDbContext).Assembly.GetName().Name));
            });
            services.AddScoped<IRepositoryBase, RepositoryBase>();
            #region 注入repositorybase类
            Assembly asm = System.Runtime.Loader.AssemblyLoadContext.Default.LoadFromAssemblyName(new AssemblyName("NFine.Repository"));
            var typesToRegister = asm.GetTypes()
           .Where(type => !String.IsNullOrEmpty(type.Namespace) && type.IsPublic).Where(type => type.BaseType != null && type.BaseType.IsGenericType && type.BaseType.GetGenericTypeDefinition() == typeof(RepositoryBase<>));

            foreach (var type in typesToRegister)
            {
                if (type.IsClass)
                {
                    services.AddScoped(type.GetInterface("I" + type.Name), type);
                }
            }
            #endregion

            #region 注入app类
            var nfineApplication = DependencyContext.Default.CompileLibraries.FirstOrDefault(_ => _.Name.Equals("NFine.Application"));
            var application = System.Runtime.Loader.AssemblyLoadContext.Default.LoadFromAssemblyName(new AssemblyName(nfineApplication.Name));
            var apps = application.GetTypes().Where(_ => _.IsClass && _.IsPublic).Where(type => !String.IsNullOrEmpty(type.Namespace));
            foreach (var type in apps)
            {
                services.AddScoped(type, type);
            }
            #endregion
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            app.UseSwaggerUi3();
            app.UseOpenApi();
            app.UseHttpsRedirection();

            app.UseRouting();

            app.UseAuthorization();
            app.UseMiddleware<JwtMiddleware>();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllers();
            });
        }
    }
}
