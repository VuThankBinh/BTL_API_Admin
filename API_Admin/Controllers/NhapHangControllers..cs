using BUS.Interfaces;
using DataModel;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace API_Admin.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class NhapHangControllers : ControllerBase
    {
        private INhapHangBus bus;

        public NhapHangControllers(INhapHangBus bus)
        {
            this.bus = bus;
        }
        [Route("create-hoadonnhap")]
        [HttpPost]
        public IActionResult create_hoadonnhap(DonHangNhapModels model)
        {
            var kq=bus.create_hoadonnhap(model);
            if(kq!= null) { return Ok("Tạo thành công"); }
            else { return BadRequest(); }
        }
        [Route("delete-hoadonnhap")]
        [HttpPost]
        public IActionResult delete_hoadonnhap(int id)
        {
            var kq=bus.delete_hoadonnhap(id);
            if(kq == null)
            {
                return Ok("Xóa thành công");
            }
            else { return BadRequest(); }
        }
        [Route("get-all-hoadonnhap")]
        [HttpGet]
        public List<DonHangNhapModels> getAll()
        {
            return bus.getAll();
        }
        [Route("get-hoadonnhap-byID/{id}")]
        [HttpGet]
        public DonHangNhapModels get_by_id(int id)
        {
            return bus.get_by_id(id);
        }
        //[Route("get-hoadonnhap-by-time")]
        //[HttpGet]
        //public DonHangNhapModels get_by_time(string ngayMin, string ngayMax)
        //{
        //    return bus.get_by_time(ngayMin, ngayMax);
        //}
        [Route("update-hoadonnhap")]
        [HttpPost]
        public bool update_hoadonnhap(DonHangNhapModels model)  
        {
            return bus.update_hoadonnhap(model);
        }
    }
}
