using BUS.Interfaces;
using DataModel;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace API_Admin.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ThuongHieuControllers : ControllerBase
    {
        private IThuongHieuBus bus;
        public ThuongHieuControllers(IThuongHieuBus sanPhamBusiness)
        {
            bus = sanPhamBusiness;
        }
        [Route("get-thuonghieu-by-id/{id}")]
        [HttpGet]
        public ThuongHieuModels GetDatabyID(int id)
        {
            return bus.SearchthuongHieu(id);
        }

        
        [Route("get-thuonghieu-admin")]
        [HttpGet]
        public List<ThuongHieuModels> GetDataSanPham()
        {
            return bus.getThuongHieu();
        }

        [Route("create-thuonghieu")]
        [HttpPost]
        public ThuongHieuModels CreateItem([FromBody] ThuongHieuModels model)
        {
            bus.CreateThuongHieu(model);
            return model;
        }

        [Route("update-thuonghieu")]
        [HttpPost]
        public ThuongHieuModels UpdateItem([FromBody] ThuongHieuModels model)
        {
            bus.UpdateThuongHieu(model);
            return model;
        }
        [Route("delte-thuonghieu/{id}")]
        [HttpPost]
        public bool DeleteItem(int id)
        {
            return bus.DeleteThuongHieu(id);
        }
    }
}
