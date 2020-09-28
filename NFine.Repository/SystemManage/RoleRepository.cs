using NFine.Data;
using NFine.Domain.Entity.SystemManage;
using NFine.Domain.IRepository.SystemManage;
using NFine.Repository.SystemManage;
using System.Collections.Generic;

namespace NFine.Repository.SystemManage
{
    public class RoleRepository : RepositoryBase<sys_RoleEntity>, IRoleRepository
    {
        private IRepositoryBase repositoryBase;
        public RoleRepository(NFineDbContext dbContext, IRepositoryBase repositoryBase):base(dbContext)
        {
            this.repositoryBase = repositoryBase;
        }

        public void DeleteForm(string keyValue)
        {
            using (var db = this.repositoryBase.BeginTrans())
            {
                db.Delete<sys_RoleEntity>(t => t.F_Id == keyValue);
                db.Delete<sys_RoleAuthorizeEntity>(t => t.F_ObjectId == keyValue);
                db.Commit();
            }
        }
        public void SubmitForm(sys_RoleEntity roleEntity, List<sys_RoleAuthorizeEntity> roleAuthorizeEntitys, string keyValue)
        {
            using (var db = this.repositoryBase.BeginTrans())
            {
                if (!string.IsNullOrEmpty(keyValue))
                {
                    db.Update(roleEntity);
                }
                else
                {
                    roleEntity.F_Category = 1;
                    db.Insert(roleEntity);
                }
                db.Delete<sys_RoleAuthorizeEntity>(t => t.F_ObjectId == roleEntity.F_Id);
                if (roleAuthorizeEntitys?.Count > 0)
                    db.Insert(roleAuthorizeEntitys);
                db.Commit();
            }
        }
    }
}
