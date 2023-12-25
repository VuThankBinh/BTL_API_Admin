using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataModel
{
    public class DonHangModels
    {
        public DonHangModels()
        {
        }

        public int MaDonHang { get; set; }

        public int MaKhachHang { get; set; }
        public string TenKhachHang { get; set; }

        public DateTime NgayDat { get; set; }

        public bool TrangThaiDonHang { get; set; }
        public string NgayGui { get; set; }
        public string NgayNhan { get; set; }
        public string TongHD { get; set; }

        public DonHangModels(int maDonHang, int maKhachHang, string tenKhachHang, DateTime ngayDat, bool trangThaiDonHang, string ngayGui, string ngayNhan, string tongHD)
        {
            MaDonHang = maDonHang;
            MaKhachHang = maKhachHang;
            TenKhachHang = tenKhachHang;
            NgayDat = ngayDat;
            TrangThaiDonHang = trangThaiDonHang;
            NgayGui = ngayGui;
            NgayNhan = ngayNhan;
            TongHD = tongHD;
        }
    }
}
