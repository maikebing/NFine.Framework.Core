﻿using NFine.Data;
using NFine.Domain.Entity.SystemManage;
using NFine.Domain.IRepository.SystemManage;
using NFine.Repository.SystemManage;

namespace NFine.Repository.SystemManage
{
    public class OrganizeRepository : RepositoryBase<sys_OrganizeEntity>, IOrganizeRepository
    {
        public OrganizeRepository(NFineDbContext dbContext) : base(dbContext)
        {

        }
    }
}
