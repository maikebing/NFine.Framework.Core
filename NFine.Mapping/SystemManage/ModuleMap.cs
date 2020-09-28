using NFine.Domain.Entity.SystemManage;
using Microsoft.EntityFrameworkCore;


namespace NFine.Mapping.SystemManage
{
    public class ModuleMap : EntityTypeConfiguration<sys_ModuleEntity>
    {
        //public ModuleMap()
        //{
        //    this.ToTable("Sys_Module");
        //    this.HasKey(t => t.F_Id);
        //}
        public override void Map(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<sys_ModuleEntity>().ToTable("Sys_Module").HasKey(_ => _.F_Id);
            modelBuilder.Entity<sys_ModuleEntity>().HasQueryFilter(_ => _.F_DeleteMark != true);
        }
    }
}
