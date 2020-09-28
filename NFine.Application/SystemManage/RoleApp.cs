﻿using NFine.Code;
using NFine.Domain.Entity.SystemManage;
using NFine.Domain.IRepository.SystemManage;
using NFine.Repository.SystemManage;
using System.Collections.Generic;
using System.Linq;

namespace NFine.Application.SystemManage
{
    public class RoleApp
    {
        private IRoleRepository service;
        private ModuleApp moduleApp;
        private ModuleButtonApp moduleButtonApp;
        public RoleApp(IRoleRepository roleRepository, ModuleApp moduleApp, ModuleButtonApp moduleButtonApp)
        {
            this.service = roleRepository;
            this.moduleApp = moduleApp;
            this.moduleButtonApp = moduleButtonApp;
        }
        public List<sys_RoleEntity> GetList(string keyword = "")
        {
            var expression = ExtLinq.True<sys_RoleEntity>();
            if (!string.IsNullOrEmpty(keyword))
            {
                expression = expression.And(t => t.F_FullName.Contains(keyword));
                expression = expression.Or(t => t.F_EnCode.Contains(keyword));
            }
            expression = expression.And(t => t.F_Category == 1);
            return service.IQueryable(expression).OrderBy(t => t.F_SortCode).ToList();
        }
        public sys_RoleEntity GetForm(string keyValue)
        {
            return service.FindEntity(keyValue);
        }
        public void DeleteForm(string keyValue)
        {
            service.DeleteForm(keyValue);
        }
        public void SubmitForm(sys_RoleEntity roleEntity, string[] permissionIds, string keyValue)
        {
            if (!string.IsNullOrEmpty(keyValue))
            {
                roleEntity.F_Id = keyValue;
            }
            else
            {
                roleEntity.F_Id = Common.GuId();
                roleEntity.Create();
            }
            var moduledata = moduleApp.GetList();
            var buttondata = moduleButtonApp.GetList();
            List<sys_RoleAuthorizeEntity> roleAuthorizeEntitys = new List<sys_RoleAuthorizeEntity>();
            if (permissionIds?.Count() > 0)
                foreach (var itemId in permissionIds)
                {
                    sys_RoleAuthorizeEntity roleAuthorizeEntity = new sys_RoleAuthorizeEntity();
                    roleAuthorizeEntity.F_Id = Common.GuId();
                    roleAuthorizeEntity.F_ObjectType = 1;
                    roleAuthorizeEntity.F_ObjectId = roleEntity.F_Id;
                    roleAuthorizeEntity.F_ItemId = itemId;
                    if (moduledata.Find(t => t.F_Id == itemId) != null)
                    {
                        roleAuthorizeEntity.F_ItemType = 1;
                    }
                    if (buttondata.Find(t => t.F_Id == itemId) != null)
                    {
                        roleAuthorizeEntity.F_ItemType = 2;
                    }
                    roleAuthorizeEntity.Create();
                    roleAuthorizeEntitys.Add(roleAuthorizeEntity);
                }
            service.SubmitForm(roleEntity, roleAuthorizeEntitys, keyValue);
        }
    }
}
