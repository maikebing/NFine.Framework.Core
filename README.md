# NFine.Framework.Core
asp.net core 管理系统框架
#### 示例用户名:admin 密码:000000

### Docker 


如何增加一个数据库的修改 ?
在 NFine.Data 里执行
dotnet ef  --startup-project   ..\NFine.Web   migrations add 名称
如果是纯sql ， 参考[seeds](NFine.Data/Migrations/20200928154328_seeds.cs) 直接写sql


如何更新数据库?

dotnet ef  --startup-project   ..\NFine.Web   database update

如何删除数据库?
dotnet ef  --startup-project   ..\NFine.Web   database drop
