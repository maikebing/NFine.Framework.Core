using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace NFine.Mobile.Dtos
{
    /// <summary>
    /// API返回结果
    /// </summary>
    public class ApiResult
    {
        /// <summary>
        ///  API返回结果
        /// </summary>
        public ApiResult()
        {
        }
        /// <summary>
        ///  API返回结果
        /// </summary>
        /// <param name="_code">代码</param>
        /// <param name="_msg">描述</param>
        public ApiResult(ApiCode _code, string _msg)
        {
            Code =  _code;
            Msg = _msg;
        }
        /// <summary>
        /// 错误代码
        /// </summary>
        public ApiCode Code { get; set; } =  ApiCode.OK;
        /// <summary>
        /// 错误信息
        /// </summary>
        public string Msg { get; set; } = "OK";
    }
    /// <summary>
    /// 错误码
    /// </summary>
    public enum ApiCode:int
    {
        /// <summary>
        /// OK - [GET]：服务器成功返回用户请求的数据，该操作是幂等的（Idempotent）。
        /// </summary>
        OK = 200,
        /// <summary>
        ///   - [POST/PUT/PATCH]：用户新建或修改数据成功。
        /// </summary>
        CREATED = 201,
        ///表示一个请求已经进入后台排队（异步任务）
        Accepted=202   ,
        /// <summary>
        /// 用户删除数据成功。
        /// </summary>
        NOCONTENT = 204, 
        /// <summary>
        /// [POST/PUT/PATCH]：用户发出的请求有错误，服务器没有进行新建或修改数据的操作，该操作是幂等的。
        /// </summary>
        BADREQUEST = 400,
        /// <summary>
        /// [*]：表示用户没有权限（令牌、用户名、密码错误）。
        /// </summary>
        Unauthorized = 401 , 
        /// <summary>
        ///  表示用户得到授权（与401错误相对），但是访问是被禁止的。
        /// </summary>
        Forbidden = 403, 
        /// <summary>
        /// 用户发出的请求针对的是不存在的记录，服务器没有进行操作，该操作是幂等的。
        /// </summary>
        NotFound = 404,  
        /// <summary>
        /// 用户请求的格式不可得（比如用户请求JSON格式，但是只有XML格式）。
        /// </summary>
        NotAcceptable = 406,
        /// <summary>
        /// 用户请求的资源被永久删除，且不会再得到的。
        /// </summary>
        Gone = 410,
        /// <summary>
        /// - [POST/PUT/PATCH] 当创建一个对象时，发生一个验证错误。
        /// </summary>
        UnprocesableEntity = 422,
        /// <summary>
        /// 服务器发生错误，用户将无法判断发出的请求是否成功。
        /// </summary>
        InternalServerError = 500
    }
    public class ApiResult<T> : ApiResult
    {
        public ApiResult(ApiCode _code, string _msg, T data) : base(_code, _msg)
        {
            Data = data;
        }
        /// <summary>
        /// 欲返回的数据
        /// </summary>
        public T Data { set; get; }
    }
   
}
