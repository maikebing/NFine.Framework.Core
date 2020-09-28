using NFine.Domain.Entity.SystemManage;
using Microsoft.EntityFrameworkCore;

namespace NFine.Mapping.SystemManage
{
    public class AreaMap : EntityTypeConfiguration<sys_AreaEntity>
    {
        public override void Map(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<sys_AreaEntity>().ToTable("Sys_Area").HasKey(_ => _.F_Id);
            modelBuilder.Entity<sys_AreaEntity>().HasQueryFilter(_ => _.F_DeleteMark != true);
        }
    }
}
