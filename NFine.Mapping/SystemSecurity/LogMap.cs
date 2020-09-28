using NFine.Domain.Entity.SystemSecurity;
using Microsoft.EntityFrameworkCore;


namespace NFine.Mapping.SystemSecurity
{
    public class LogMap : EntityTypeConfiguration<sys_LogEntity>
    {
        //public LogMap()
        //{
        //    this.ToTable("Sys_Log");
        //    this.HasKey(t => t.F_Id);
        //}

        public override void Map(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<sys_LogEntity>().ToTable("Sys_Log").HasKey(_ => _.F_Id);
        }
    }
}
