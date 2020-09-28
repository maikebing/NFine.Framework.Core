using NFine.Data;
using NFine.Domain.Entity.SystemManage;
using System.Collections.Generic;

namespace NFine.Domain.IRepository.SystemManage
{
    public interface IModuleButtonRepository : IRepositoryBase<sys_ModuleButtonEntity>
    {
        void SubmitCloneButton(List<sys_ModuleButtonEntity> entitys);
    }
}
