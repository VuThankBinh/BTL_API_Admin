using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataModel
{
    public class ChiTietDonHangModels
    {
        public int MaDonHang { get; set; }

        public int MaKhachHang { get; set; }
        public string TenKhachHang { get; set; }

        public DateTime NgayDat { get; set; }

        public bool TrangThaiDonHang { get; set; }
        public string TongHD { get; set; }
        public List<ChiTietDonHang> dssp { get; set; }
        public ChiTietDonHangModels(int maDonHang, int maKhachHang, string tenKhachHang, DateTime ngayDat, bool trangThaiDonHang, string tongHD, List<ChiTietDonHang> dssp)
        {
            MaDonHang = maDonHang;
            MaKhachHang = maKhachHang;
            TenKhachHang = tenKhachHang;
            NgayDat = ngayDat;
            TrangThaiDonHang = trangThaiDonHang;
            TongHD = tongHD;
            this.dssp = dssp;
        }

        
    }
}
