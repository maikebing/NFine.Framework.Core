﻿using NFine.Data;
using NFine.Domain.Entity.SystemManage;
using NFine.Domain.IRepository.SystemManage;
using NFine.Repository.SystemManage;

namespace NFine.Repository.SystemManage
{
    public class ItemsRepository : RepositoryBase<sys_ItemsEntity>, IItemsRepository
    {
        public ItemsRepository(NFineDbContext dbContext) : base(dbContext)
        {

        }

    }
}
