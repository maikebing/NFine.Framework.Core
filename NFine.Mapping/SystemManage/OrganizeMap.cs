using NFine.Domain.Entity.SystemManage;
using Microsoft.EntityFrameworkCore;


namespace NFine.Mapping.SystemManage
{
    public class OrganizeMap : EntityTypeConfiguration<sys_OrganizeEntity>
    {
        public override void Map(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<sys_OrganizeEntity>().ToTable("Sys_Organize").HasKey(_ => _.F_Id);
            modelBuilder.Entity<sys_OrganizeEntity>().HasQueryFilter(_ => _.F_DeleteMark != true);
        }
    }
}
