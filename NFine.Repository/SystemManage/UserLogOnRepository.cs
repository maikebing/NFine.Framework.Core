using NFine.Data;
using NFine.Domain.Entity.SystemManage;
using NFine.Domain.IRepository.SystemManage;
using NFine.Repository.SystemManage;

namespace NFine.Repository.SystemManage
{
    public class UserLogOnRepository : RepositoryBase<sys_UserLogOnEntity>, IUserLogOnRepository
    {
        public UserLogOnRepository(NFineDbContext dbContext):base(dbContext)
        {
            
        }
    }
}
