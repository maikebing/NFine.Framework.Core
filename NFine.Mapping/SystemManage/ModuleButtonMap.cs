using NFine.Domain.Entity.SystemManage;
using Microsoft.EntityFrameworkCore;


namespace NFine.Mapping.SystemManage
{
    public class ModuleButtonMap : EntityTypeConfiguration<sys_ModuleButtonEntity>
    {
        public override void Map(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<sys_ModuleButtonEntity>().ToTable("Sys_ModuleButton").HasKey(_ => _.F_Id);
            modelBuilder.Entity<sys_ModuleButtonEntity>().HasQueryFilter(_ => _.F_DeleteMark != true);
        }
    }
}
