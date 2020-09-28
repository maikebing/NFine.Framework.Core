using NFine.Data;
using NFine.Domain.Entity.SystemManage;
using System.Collections.Generic;

namespace NFine.Domain.IRepository.SystemManage
{
    public interface IRoleRepository : IRepositoryBase<sys_RoleEntity>
    {
        void DeleteForm(string keyValue);
        void SubmitForm(sys_RoleEntity roleEntity, List<sys_RoleAuthorizeEntity> roleAuthorizeEntitys, string keyValue);
    }
}
