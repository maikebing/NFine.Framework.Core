using System.ComponentModel.DataAnnotations;

namespace NFine.Mobile.Dtos
{
    public class AuthenticateRequest
    {
        /// <summary>
        /// 用户名
        /// </summary>
        [Required]
        public string Username { get; set; }

        /// <summary>
        /// 密码的32位MD5字符串
        /// </summary>
        /// <example>"000000"的字符串时670b14728ad9902aecba32e22fa4f6bd</example>
        /// <seealso cref="https://www.sojson.com/encrypt_md5.html"/>
        [Required]
        public string Password { get; set; }
    }
}
