using BUS.Interfaces;
using DataModel;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace API_Admin.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class LoaiSanPhamControllers : ControllerBase
    {
        private ILoaiSanPhamBus bus;
        public LoaiSanPhamControllers(ILoaiSanPhamBus sanPhamBusiness)
        {
            bus = sanPhamBusiness;
        }
        [Route("get-loaisanpham-by-id/{id}")]
        [HttpGet]
        public LoaiSPmodels GetDatabyID(int id)
        {
            return bus.searchLoaiSanPham(id);
        }

        [Route("get-loaisanpham-by-name/{name}")]
        [HttpGet]
        public List<LoaiSPmodels> GetDatabyName(string name)
        {
            return bus.searchLoaiSanPhamName(name);
        }
        [Route("get-loaisp-admin")]
        [HttpGet]
        public List<LoaiSPmodels> GetDataSanPham()
        {
            return bus.getLoaiSanPham();
        }

        [Route("create-loaisp")]
        [HttpPost]
        public LoaiSPmodels CreateItem([FromBody] LoaiSPmodels model)
        {
            bus.CreateLoaiSanPham(model);
            return model;
        }

        [Route("update-loaisp")]
        [HttpPost]
        public LoaiSPmodels UpdateItem([FromBody] LoaiSPmodels model)
        {
            bus.UpdateLoaiSanPham(model);
            return model;
        }
        [Route("delete-loaisp/{id}")]
        [HttpPost]
        public bool DeleteLoaiSanPham(int id)
        {
            return bus.DeleteLoaiSanPham(id);
        }
    }
}
