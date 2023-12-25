
//using API_Admin.ModelsThongKe;
using API_Admin.ModelsThongKe;
using BUS.Interfaces;
using DataModel;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace API_Admin.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ThongKeControllers : ControllerBase
    {
        private IThongKeBus _bus;
        public ThongKeControllers(IThongKeBus sanPhamBusiness)
        {
            _bus = sanPhamBusiness;
        }

        [Route("get-doanh-thu-hom-nay")]
        [HttpGet]
        public decimal GetDoanhThuHomNNay()
        {
            return _bus.DoanhThuHomNay();
        }
        [Route("get-doanh-thu-thang-nay")]
        [HttpGet]
        public decimal GetDoanhThuThangNay()
        {
            return _bus.DoanhThuThang();
        }
        [Route("get-doanh-thu-nam-nay")]
        [HttpGet]
        public decimal GetDoanhThuNamNay()
        {
            return _bus.DoanhThuNamNay();
        }

        [Route("get-doanh-thu-tg-bat-ky")]
        [HttpGet]
        public decimal GetDoanhThuTGbk(DateTime ngayMin,DateTime ngayMax)
        {
            //string a = tg.ngayMin.ToString("yyyy-MM-dd");
            //Console.WriteLine(a);
            return _bus.DoanhThuThoiGianBK(ngayMin.ToString("yyyy-MM-dd"), ngayMax.ToString("yyyy-MM-dd"));
        }

        [Route("get-ct-doanh-thu-hom-nay")]
        [HttpGet]
        public List<ChiTietDoanhThuModels> GetctDoanhThuHomNNay()
        {
            return _bus.CTDoanhThuHomNay();
        }
        [Route("get-ct-doanh-thu-thang-nay")]
        [HttpGet]
        public List<ChiTietDoanhThuModels> GetctDoanhThuThangNay()
        {
            return _bus.CTDoanhThuThang();
        }
        [Route("get-ct-doanh-thu-nam-nay")]
        [HttpGet]
        public List<ChiTietDoanhThuModels> GetctDoanhThuNamNay()
        {
            return _bus.CTDoanhThuNamNay();
        }

        [Route("get-ct-doanh-thu-tg-bat-ky")]
        [HttpGet]
        public List<ChiTietDoanhThuModels> CTGetDoanhThuTGbk(DateTime ngayMin, DateTime ngayMax)
        {
            //string a = tg.ngayMin.ToString("yyyy-MM-dd");
            //Console.WriteLine(a);
            return _bus.CTDoanhThuThoiGianBK(ngayMin.ToString("yyyy-MM-dd"), ngayMax.ToString("yyyy-MM-dd"));
        }

        [Route("get-sanpham-ton")]
        [HttpGet]
        public List<SanPhamTon> GetSanPhamTons()
        {
            return _bus.dsspton();
        }

        [Route("get-sanpham-banchay-homnay")]
        [HttpGet]
        public List<SanPhamTon> GetSanPhamBanChayHomNay([FromBody] top_sp top)
        {
            return _bus.sanPhambanchaynhatday(top.top);
        }
        [Route("get-sanpham-banchay-thangnay")]
        [HttpGet]
        public List<SanPhamTon> GetSanPhamBanChayThangNay([FromBody] top_sp top)
        {
            return _bus.sanPhambanchaynhatmonth(top.top);
        }
        [Route("get-sanpham-banchay-tgbk")]
        [HttpPost]
        public List<SanPhamTon> GetSanPhamBanChayBK([FromBody] dauVaoshowTop top)
        {
            return _bus.sanPhambanchaynhatbk(top.ngayMin.ToString("yyyy-MM-dd"), top.ngayMax.ToString("yyyy-MM-dd"), top.top);
        }
        [Route("get-doanhthu-thang-trongnam")]
        [HttpGet]
        public List<DoanhThuModels> doanhthutheothang()
        {
            return _bus.doanhthutheothang();
        }
    }
}
