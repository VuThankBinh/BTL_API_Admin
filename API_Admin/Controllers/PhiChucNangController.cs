using BUS.Interfaces;
using DataModel;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace API_Admin.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PhiChucNangController : ControllerBase
    {
        private ITools _tools;
        private IAuthencation_bus _bus;

        public PhiChucNangController(ITools tools, IAuthencation_bus bus)
        {
            _tools = tools;
            _bus = bus;
        }

        [Route("upload")]
        [HttpPost]
        public async Task<IActionResult> Upload(IFormFile file)
        {
            try
            {
                if (file.Length > 0)
                {
                    string filePath = $"{file.FileName.Replace("-", "_").Replace("%", "")}";
                    Console.WriteLine(filePath);
                    var fullPath = _tools.CreatePathFile(filePath);

                    using (var fileStream = new FileStream(fullPath, FileMode.Create))
                    {
                        await file.CopyToAsync(fileStream);
                    }
                    return Ok(new { filePath });
                }
                else
                {
                    return BadRequest();
                }
            }
            catch (Exception ex)
            {
                return StatusCode(500, "Không thể upload tệp");
            }
        }
        

        [AllowAnonymous]
        [HttpPost("login-admin")]
        public IActionResult LoginAdmin([FromBody] User model)
        {
            var kq = _bus.login(model.username, model.password);
            if(kq == null) { return BadRequest(new { message="Tài khoản hoặc mật khẩu không chính xác" }); }
            else { return Ok(new { kq.username,kq.token }); }
        }
    }
}
