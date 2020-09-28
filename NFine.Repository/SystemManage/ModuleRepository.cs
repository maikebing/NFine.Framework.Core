﻿using NFine.Data;
using NFine.Domain.Entity.SystemManage;
using NFine.Domain.IRepository.SystemManage;
using NFine.Repository.SystemManage;

namespace NFine.Repository.SystemManage
{
    public class ModuleRepository : RepositoryBase<sys_ModuleEntity>, IModuleRepository
    {
        public ModuleRepository(NFineDbContext dbContext) : base(dbContext)
        {

        }
    }
}
