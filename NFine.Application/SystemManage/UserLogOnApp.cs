﻿using NFine.Code;
using NFine.Domain.Entity.SystemManage;
using NFine.Domain.IRepository.SystemManage;
using NFine.Repository.SystemManage;

namespace NFine.Application.SystemManage
{
    public class UserLogOnApp
    {
        private IUserLogOnRepository service;
        public UserLogOnApp(IUserLogOnRepository userLogOnRepository)
        {
            this.service = userLogOnRepository;
        }
        public sys_UserLogOnEntity GetForm(string keyValue)
        {
            return service.FindEntity(keyValue);
        }
        public void UpdateForm(sys_UserLogOnEntity userLogOnEntity)
        {
            service.Update(userLogOnEntity);
        }
        public void RevisePassword(string userPassword,string keyValue)
        {
            sys_UserLogOnEntity userLogOnEntity = new sys_UserLogOnEntity();
            userLogOnEntity.F_Id = keyValue;
            userLogOnEntity.F_UserSecretkey = EncryptProvider.CreateDesKey();
            userLogOnEntity.F_UserPassword = EncryptProvider.Md5(EncryptProvider.DESEncrypt(userPassword.ToLower(), userLogOnEntity.F_UserSecretkey.PadRight(24)).ToLower(), Code.Internal.MD5Length.L32).ToLower();
            service.Update(userLogOnEntity);
        }
    }
}
