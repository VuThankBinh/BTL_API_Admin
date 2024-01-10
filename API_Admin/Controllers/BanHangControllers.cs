using BUS.Interfaces;
using DataModel;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace API_Admin.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class BanHangControllers : ControllerBase
    {
        private IBanHangBus _bus;
        public BanHangControllers(IBanHangBus Business)
        {
            _bus = Business;
        }
        [Route("XacNhandonHang/{id}")]
        [HttpPost]
        public string XacNhanDonHang(int id)
        {
            return _bus.XacNhanDonHang(id);
        }
        [Route("HuydonHang/{id}")]
        [HttpPost]
        public bool HuyDonHang(int id)
        {
            return _bus.HuyDonHang(id);
        }
        [Route("get-donhang-daXN")]
        [HttpGet]
        public List<DonHangModels> getdsDonHangdaXN()
        {
            return _bus.ShowDonHangDaXN();
        }
        [Route("get-donhang-chuaXN")]
        [HttpGet]
        public List<DonHangModels> getdsDonHangchuaXN()
        {
            return _bus.ShowDonHangChuaXN();
        }
        [Route("get-donhang-danggiao")]
        [HttpGet]
        public List<DonHangModels> getdsDonHangDangGiao()
        {
            return _bus.ShowDonHangDangGiao();
        }
        [Route("get-donhang-dagiao")]
        [HttpGet]
        public List<DonHangModels> getdsDonHangDaGiao()
        {
            return _bus.ShowDonHangDaGiao();
        }
        [Route("get-chitiet-donhang/{id}")]
        [HttpPost]
        public ChiTietDonHangModels showCTdonHang(int id)
        {
            return _bus.showCTDonHang(id);
        }
        [Route("get-xacnhan-gui-donhang/{id}")]
        [HttpPost]
        public string XacNhanGuiDonHang(int id)
        {
            return _bus.XacNhanDaGuiHang(id);
        }
    }
}
