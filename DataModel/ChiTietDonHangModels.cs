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
        public string NgayNhan { get; set; }
        public string NgayGui { get; set; }
        public string SoDienThoai{get; set; }
        public string DiaChi {  get; set; }
        public bool TrangThaiDonHang { get; set; }
        public string TongHD { get; set; }
        public List<ChiTietDonHang> dssp { get; set; }
        public ChiTietDonHangModels(int maDonHang, int maKhachHang, string tenKhachHang, DateTime ngayDat, bool trangThaiDonHang, string tongHD, List<ChiTietDonHang> dssp,string sdt,string dc, string ngayGui, string ngayNhan)
        {
            MaDonHang = maDonHang;
            MaKhachHang = maKhachHang;
            TenKhachHang = tenKhachHang;
            NgayDat = ngayDat;
            TrangThaiDonHang = trangThaiDonHang;
            TongHD = tongHD;
            this.dssp = dssp;
            SoDienThoai = sdt;
            DiaChi = dc;
            NgayGui=ngayGui;
            NgayNhan = ngayNhan;
        }

        
    }
}
