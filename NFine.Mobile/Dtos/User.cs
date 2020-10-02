using System.Text.Json.Serialization;

namespace NFine.Mobile.Dtos
{
    public class User
    {
        public string UserName { get; set; }

        public string UserId { get; set; }
        public string UserCode { get; set; }
        public string CompanyId { get; set; }
        public string DepartmentId { get; set; }
        public string RoleId { get; set; }
        public bool IsSystem { get; set; }
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
