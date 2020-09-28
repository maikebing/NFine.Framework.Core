﻿using NFine.Code;
using NFine.Domain.Entity.SystemManage;
using NFine.Domain.IRepository.SystemManage;
using NFine.Repository.SystemManage;
using System.Collections.Generic;
using System.Linq;

namespace NFine.Application.SystemManage
{
    public class ItemsDetailApp
    {
        private IItemsDetailRepository service;
        private IItemsRepository itemsService;
        public ItemsDetailApp(IItemsDetailRepository itemsDetailRepository, IItemsRepository itemsRepository)
        {
            this.service = itemsDetailRepository;
            this.itemsService = itemsRepository;
        }
        public List<sys_ItemsDetailEntity> GetList(string itemId = "", string keyword = "")
        {
            var expression = ExtLinq.True<sys_ItemsDetailEntity>();
            if (!string.IsNullOrEmpty(itemId))
            {
                expression = expression.And(t => t.F_ItemId == itemId);
            }
            if (!string.IsNullOrEmpty(keyword))
            {
                expression = expression.And(t => t.F_ItemName.Contains(keyword));
                expression = expression.Or(t => t.F_ItemCode.Contains(keyword));
            }
            return service.IQueryable(expression).OrderBy(t => t.F_SortCode).ToList();
        }

        public List<sys_ItemsDetailEntity> GetListEnCode(string enCode)
        {
            var expression = ExtLinq.True<sys_ItemsDetailEntity>();
            var parentEntity = itemsService.FindEntity(_ => _.F_EnCode == enCode);
            if (parentEntity != null)
            {
                return GetList(parentEntity.F_Id);
            }
            else
                return null;
        }

        public List<sys_ItemsDetailEntity> GetItemList(string enCode)
        {
            return service.GetItemList(enCode);
        }
        public sys_ItemsDetailEntity GetForm(string keyValue)
        {
            return service.FindEntity(keyValue);
        }
        public void DeleteForm(string keyValue)
        {
            service.Delete(t => t.F_Id == keyValue);
        }
        public void SubmitForm(sys_ItemsDetailEntity itemsDetailEntity, string keyValue)
        {
            if (!string.IsNullOrEmpty(keyValue))
            {
                itemsDetailEntity.Modify(keyValue);
                service.Update(itemsDetailEntity);
            }
            else
            {
                itemsDetailEntity.Create();
                service.Insert(itemsDetailEntity);
            }
        }
    }
}
