﻿using NFine.Data;
using NFine.Domain.Entity.SystemManage;
using NFine.Domain.IRepository.SystemManage;
using NFine.Repository.SystemManage;
using System.Collections.Generic;
using System.Data.Common;
using System.Data.SqlClient;
using System.Text;
using System.Linq;
using MySql.Data.MySqlClient;

namespace NFine.Repository.SystemManage
{
    public class ItemsDetailRepository : RepositoryBase<sys_ItemsDetailEntity>, IItemsDetailRepository
    {
        public ItemsDetailRepository(NFineDbContext dbContext):base(dbContext)
        {

        }

        public List<sys_ItemsDetailEntity> GetItemList(string enCode)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append(@"SELECT  d.*
                            FROM    Sys_ItemsDetail d
                                    INNER  JOIN Sys_Items i ON i.F_Id = d.F_ItemId
                            WHERE   1 = 1
                                    AND i.F_EnCode = @enCode
                                    AND d.F_EnabledMark = 1
                                    AND d.F_DeleteMark = 0
                            ");//ORDER BY F_SortCode ASC
            DbParameter[] parameter = 
            {
                 new MySqlParameter(  "@enCode",enCode)
            };
            return this.FindList(strSql.ToString(), parameter)?.OrderBy(_ => _.F_SortCode)?.ToList();
        }
    }
}
