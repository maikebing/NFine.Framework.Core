﻿using NFine.Domain.Entity.SystemManage;
using Microsoft.EntityFrameworkCore;


namespace NFine.Mapping.SystemManage
{
    public class UserLogOnMap : EntityTypeConfiguration<sys_UserLogOnEntity>
    {
        //public UserLogOnMap()
        //{
        //    this.ToTable("Sys_UserLogOn");
        //    this.HasKey(t => t.F_Id);
        //}

        public override void Map(ModelBuilder builder)
        {
            builder.Entity<sys_UserLogOnEntity>().ToTable("Sys_UserLogOn").HasKey(_ => _.F_Id);
        }

    }
}
