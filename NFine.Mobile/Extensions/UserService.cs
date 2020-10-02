using Microsoft.Extensions.Options;
using Microsoft.IdentityModel.Tokens;
using NFine.Application.SystemManage;
using NFine.Domain.Entity.SystemManage;
using NFine.Domain.Entity.SystemSecurity;
using NFine.Mobile.Dtos;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Security.Claims;
using System.Text;
 

namespace NFine.Mobile.Extensions
{
    public interface IUserService
    {
        ApiResult<User> Authenticate(AuthenticateRequest model);
        public sys_UserEntity GetUserById(string _userId);
    }

    public class UserService : IUserService
    {
     

        private readonly AppSettings _appSettings;
        private readonly UserApp _userApp;

        public UserService(IOptions<AppSettings> appSettings, UserApp userApp)
        {
            _appSettings = appSettings.Value;
            _userApp = userApp;
        }

        public ApiResult<User> Authenticate(AuthenticateRequest model)
        {
            var result = new ApiResult<User>(ApiCode.OK, "OK", null);
            try
            {
                 var  userEntity = _userApp.CheckLogin(model.Username, model.Password);
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
                    operatorModel.Token= generateJwtToken(operatorModel);

                }
                else
                {
                    result.Code = ApiCode.NotFound;
                    result.Msg = "用户不存在或密码错误";
                    result.Data = null;
                }
            }
            catch (Exception ex)
            {

                result.Code = ApiCode.InternalServerError;
                result.Msg = ex.Message;
                result.Data = null;
            }
            return result;
        }

        public sys_UserEntity GetUserById(string _userId)
        {
            return _userApp.GetForm(_userId);
        }

        private TokenEntity generateJwtToken(User user)
        {
          
            var tokenHandler = new JwtSecurityTokenHandler();
            var key = Encoding.ASCII.GetBytes(_appSettings.Secret);
            var tokenDescriptor = new SecurityTokenDescriptor
            {
                Subject = new ClaimsIdentity(new[] { new Claim("id", user.UserId), new Claim("username", user.UserName) }),
                Expires = DateTime.UtcNow.AddDays(7),
                SigningCredentials = new SigningCredentials(new SymmetricSecurityKey(key), SecurityAlgorithms.HmacSha256Signature)
            };
            var token = tokenHandler.CreateToken(tokenDescriptor);
            return  new TokenEntity()
            {
                access_token = tokenHandler.WriteToken(token),
                expires_in = (int)tokenDescriptor.Expires.GetValueOrDefault().Subtract(new DateTime(1970, 1, 1, 0, 0, 0, 0)).TotalSeconds
            };
        }
    }
}
