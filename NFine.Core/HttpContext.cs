using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Text;

namespace System.Web
{
    public static class HttpContext
    {
        private static Microsoft.AspNetCore.Http.IHttpContextAccessor m_httpContextAccessor;

        private static Microsoft.AspNetCore.Hosting.IWebHostEnvironment _hostingEnvironment;
        public static void Configure(Microsoft.AspNetCore.Http.IHttpContextAccessor httpContextAccessor, Microsoft.AspNetCore.Hosting.IWebHostEnvironment hostingEnvironment)
        {
            m_httpContextAccessor = httpContextAccessor;
            _hostingEnvironment = hostingEnvironment;
        }


        public static Microsoft.AspNetCore.Http.HttpContext Current
        {
            get
            {
                return m_httpContextAccessor.HttpContext;
            }
        }

        public static IWebHostEnvironment HostingEnvironment
        {
            get { return _hostingEnvironment; }
        }

    }

   

   
}
