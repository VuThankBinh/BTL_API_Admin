using API_Admin.ModelsThongKe;
using BUS.Interfaces;
using DAL.Interfaces;
using DataModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BUS
{
    public class ThongKeBus : IThongKeBus
    {
        private IThongKeRepository _rep;

        public ThongKeBus(IThongKeRepository rep)
        {
            _rep = rep;
        }

        public List<ChiTietDoanhThuModels> CTDoanhThuHomNay()
        {
            return _rep.CTDoanhThuHomNay();
        }

        public List<ChiTietDoanhThuModels> CTDoanhThuNamNay()
        {
            return _rep.CTDoanhThuNamNay();
        }

        public List<ChiTietDoanhThuModels> CTDoanhThuThang()
        {
            return _rep.CTDoanhThuThang();
        }

        public List<ChiTietDoanhThuModels> CTDoanhThuThoiGianBK(string ngayMin, string ngayMax)
        {
            return _rep.CTDoanhThuThoiGianBK(ngayMin, ngayMax);
        }

        public decimal DoanhThuHomNay()
        {
            return _rep.DoanhThuHomNay();
        }

        public decimal DoanhThuNamNay()
        {
            return _rep.DoanhThuNamNay();
        }

        public decimal DoanhThuThang()
        {
            return _rep.DoanhThuThang();
        }

        public List<DoanhThuModels> doanhthutheothang()
        {
           return _rep.doanhthutheothang();
        }

        public decimal DoanhThuThoiGianBK(string ngayMin, string ngayMax)
        {
            return _rep.DoanhThuThoiGianBK(ngayMin, ngayMax);
        }

        public List<SanPhamTon> dsspton()
        {
            return _rep.dsspton();
        }

        public List<SanPhamTon> sanPhambanchaynhatbk(string ngaymin, string ngaymax, int top)
        {
            return _rep.sanPhambanchaynhatbk(ngaymin,ngaymax,top);
        }

        public List<SanPhamTon> sanPhambanchaynhatday(int top)
        {
            return _rep.sanPhambanchaynhatday(top);
        }

        public List<SanPhamTon> sanPhambanchaynhatmonth(int top)
        {
            return _rep.sanPhambanchaynhatmonth(top);
        }
    }
}
