using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Options;
using Microsoft.IdentityModel.Tokens;
using NFine.Application.SystemManage;
using NFine.Domain.Entity.SystemManage;
using NFine.Mobile.Dtos;
using NFine.Mobile.Extensions;
using System;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;

namespace NFine.Mobile.Controllers
{
    /// <summary>
    /// 用户管理接口
    /// </summary>
    [ApiController]
    [Route("[controller]")]
    public class UsersController : ControllerBase
    {
        private readonly UserApp _userApp;
        private readonly AppSettings _settings;
        private readonly ILogger<UsersController> _logger;

        public UsersController(UserApp userApp,IOptions< AppSettings>  settings,ILogger<UsersController> logger)
        {
            _userApp = userApp;
            _settings = settings.Value;
            _logger = logger;
        }
        /// <summary>
        /// 登录接口
        /// </summary>
        /// <param name="model">用户名密码， 密码需要计算32位MD5字符串</param>
        /// <returns></returns>
        [HttpPost("Login")]
        public ActionResult<ApiResult<User>> Login(AuthenticateRequest model)
        {
            var result = new ApiResult<User>(ApiCode.OK, "OK", null);
            try
            {
                var userEntity = _userApp.CheckLogin(model.Username, model.Password);
                if (userEntity != null)
                {
                    User operatorModel = new User();
                    operatorModel.UserId = userEntity.F_Id;
                    operatorModel.UserCode = userEntity.F_Account;
                    operatorModel.UserName = userEntity.F_RealName;
                    operatorModel.CompanyId = userEntity.F_OrganizeId;
                    operatorModel.DepartmentId = userEntity.F_DepartmentId;
                    operatorModel.RoleId = userEntity.F_RoleId;
                    if (userEntity.F_Account == "admin")
                    {
                        operatorModel.IsSystem = true;
                    }
                    else
                    {
                        operatorModel.IsSystem = false;
                    }
                    result.Code = ApiCode.OK;
                    result.Data = operatorModel;
                    operatorModel.Token = generateJwtToken(operatorModel);
                    return Ok(result);
                }
                else
                {
                    result.Code = ApiCode.Unauthorized;
                    result.Msg = "用户不存在或密码错误";
                    result.Data = null;
                    return BadRequest ("用户名活密码错误");
                }
            }
            catch (Exception ex)
            {
                result.Code = ApiCode.InternalServerError;
                result.Msg = ex.Message;
                result.Data = null;
                _logger.LogError(ex, ex.Message);
                return BadRequest(result);
            }
          
        }




        private TokenEntity generateJwtToken(User user)
            {

                var tokenHandler = new JwtSecurityTokenHandler();
                var key = Encoding.ASCII.GetBytes(_settings.Secret);
                var tokenDescriptor = new SecurityTokenDescriptor
                {
                    Subject = new ClaimsIdentity(new[] { new Claim("id", user.UserId), new Claim("username", user.UserName) }),
                    Expires = DateTime.UtcNow.AddDays(7),
                    SigningCredentials = new SigningCredentials(new SymmetricSecurityKey(key), SecurityAlgorithms.HmacSha256Signature)
                };
                var token = tokenHandler.CreateToken(tokenDescriptor);
                return new TokenEntity()
                {
                    access_token = tokenHandler.WriteToken(token),
                    expires_in = (int)tokenDescriptor.Expires.GetValueOrDefault().Subtract(new DateTime(1970, 1, 1, 0, 0, 0, 0)).TotalSeconds
                };
            }
 
        /// <summary>
        /// 欢迎语句， 可以用于测试用户是否登录， 授权是否正确
        /// </summary>
        /// <returns></returns>
        [Authorize]
        [HttpGet("Welcome")]
        public IActionResult Welcome()
        {
            var user = (sys_UserEntity)HttpContext.Items["User"];
            return Ok(new ApiResult( ApiCode.OK,$"欢迎{user.F_RealName??user.F_NickName}"));
        }
    }
}
