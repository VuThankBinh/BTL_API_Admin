using API_Admin.ModelsThongKe;
using DataModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BUS.Interfaces
{
    public partial interface IThongKeBus
    {
        decimal DoanhThuThang();
        decimal DoanhThuHomNay();
        decimal DoanhThuNamNay();
        decimal DoanhThuThoiGianBK(string ngayMin, string ngayMax);
        List<ChiTietDoanhThuModels> CTDoanhThuThang();
        List<ChiTietDoanhThuModels> CTDoanhThuHomNay();
        List<ChiTietDoanhThuModels> CTDoanhThuNamNay();
        List<ChiTietDoanhThuModels> CTDoanhThuThoiGianBK(string ngayMin, string ngayMax);
        List<DoanhThuModels> doanhthutheothang();
        List<SanPhamTon> dsspton();
        List<SanPhamTon> sanPhambanchaynhatbk(string ngaymin, string ngaymax, int top);
        List<SanPhamTon> sanPhambanchaynhatday(int top);

        List<SanPhamTon> sanPhambanchaynhatmonth(int top);
    }
}
