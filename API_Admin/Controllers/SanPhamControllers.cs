using BUS.Interfaces;
using DataModel;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace API_Admin.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class SanPhamControllers : ControllerBase
    {
        private ISanPhamBus _sanPhamBusiness;
        public SanPhamControllers(ISanPhamBus sanPhamBusiness)
        {
            _sanPhamBusiness = sanPhamBusiness;
        }

        [Route("get-by-id/{id}")]
        [HttpGet]
        public SanPhamModels GetDatabyID(int id)
        {
            return _sanPhamBusiness.GetChiTietSanPham(id);
        }
        [Route("get-sp-admin")]
        [HttpGet]
        public List<sanphamModels_it> GetDataSanPham()
        {
            return _sanPhamBusiness.GetSanPham();
        }

        [Route("create-sp")]
        [HttpPost]
        public SanPhamModels CreateItem([FromBody] SanPhamModels model)
        {
            _sanPhamBusiness.CreateSP(model);
            return model;
        }
        [Route("update-sp")]
        [HttpPost]
        public SanPhamModels UpdateItem([FromBody] SanPhamModels model)
        {
            _sanPhamBusiness.UpdateSP(model);
            return model;
        }
        [Route("delete-sp/{id}")]
        [HttpPost]
        public bool DeleteSanPham(int id) { return _sanPhamBusiness.DeleteSP(id); }
    }
}
