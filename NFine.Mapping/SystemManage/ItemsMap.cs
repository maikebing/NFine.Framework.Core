using NFine.Domain.Entity.SystemManage;
using Microsoft.EntityFrameworkCore;


namespace NFine.Mapping.SystemManage
{
    public class ItemsMap : EntityTypeConfiguration<sys_ItemsEntity>
    {
        //public ItemsMap()
        //{
        //    this.ToTable("Sys_Items");
        //    this.HasKey(t => t.F_Id);
        //}
        public override void Map(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<sys_ItemsEntity>().ToTable("Sys_Items").HasKey(_ => _.F_Id);
            modelBuilder.Entity<sys_ItemsEntity>().HasQueryFilter(_ => _.F_DeleteMark != true);
        }
    }
}
