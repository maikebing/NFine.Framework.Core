using NFine.Data;
using NFine.Domain.Entity.SystemManage;

namespace NFine.Domain.IRepository.SystemManage
{
    public interface IUserRepository : IRepositoryBase<sys_UserEntity>
    {
        void DeleteForm(string keyValue);
        void SubmitForm(sys_UserEntity userEntity, sys_UserLogOnEntity userLogOnEntity, string keyValue);

        /// <summary>
        /// 修改密码
        /// </summary>
        /// <param name="userLogOnEntity"></param>
        /// <param name="password"></param>
        void ChangeUserPassword(sys_UserLogOnEntity userLogOnEntity, string password);
    }
}
