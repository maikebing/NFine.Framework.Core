using NFine.Data;
using NFine.Domain.Entity.SystemManage;
using System.Collections.Generic;

namespace NFine.Domain.IRepository.SystemManage
{
    public interface IItemsDetailRepository : IRepositoryBase<sys_ItemsDetailEntity>
    {
        List<sys_ItemsDetailEntity> GetItemList(string enCode);
    }
}
