using NFine.Domain.Entity.SystemManage;
using Microsoft.EntityFrameworkCore;

namespace NFine.Mapping.SystemManage
{
    public class ItemsDetailMap : EntityTypeConfiguration<sys_ItemsDetailEntity>
    {
        //public ItemsDetailMap()
        //{
        //    this.ToTable("Sys_ItemsDetail");
        //    this.HasKey(t => t.F_Id);
        //}
        public override void Map(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<sys_ItemsDetailEntity>().ToTable("Sys_ItemsDetail").HasKey(_ => _.F_Id);
            modelBuilder.Entity<sys_ItemsDetailEntity>().HasQueryFilter(_ => _.F_DeleteMark != true);
        }
    }
}
