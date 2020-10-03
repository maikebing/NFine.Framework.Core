using System.Text.Json.Serialization;

namespace NFine.Mobile.Dtos
{
    public class User
    {
        /// <summary>
        /// 用户名
        /// </summary>
        public string UserName { get; set; }
        /// <summary>
        /// 用户唯一ID
        /// </summary>
        public string UserId { get; set; }
        public string UserCode { get; set; }
        /// <summary>
        /// 公司ID
        /// </summary>
        public string CompanyId { get; set; }
        /// <summary>
        /// 部门信息
        /// </summary>
        public string DepartmentId { get; set; }
        /// <summary>
        /// 规则
        /// </summary>
        public string RoleId { get; set; }
        /// <summary>
        /// 是否为系统管理员
        /// </summary>
        public bool IsSystem { get; set; }
        /// <summary>
        /// JWT 信息
        /// </summary>
        public TokenEntity Token { get;   set; }
    }
    public class TokenEntity
    {
        /// <summary>
        /// token
        /// </summary>
        public string access_token { get; set; }
        /// <summary>
        /// 过期时间
        /// </summary>
        public int expires_in { get; set; }
    }

}
