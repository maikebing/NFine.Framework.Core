using NFine.Domain.Entity.SystemManage;
using Microsoft.EntityFrameworkCore;


namespace NFine.Mapping.SystemManage
{
    public class RoleMap : EntityTypeConfiguration<sys_RoleEntity>
    {
        //public RoleMap()
        //{
        //    this.ToTable("Sys_Role");
        //    this.HasKey(t => t.F_Id);
        //}

        public override void Map(ModelBuilder builder)
        {
            builder.Entity<sys_RoleEntity>().ToTable("Sys_Role").HasKey(_ => _.F_Id);
            builder.Entity<sys_RoleEntity>().HasQueryFilter(_ => _.F_DeleteMark != true);
        }

    }
}
