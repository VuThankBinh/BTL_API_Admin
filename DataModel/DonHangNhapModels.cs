using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataModel
{
    public class DonHangNhapModels
    {
        public DonHangNhapModels()
        {
        }

        public int MaDonHang { get; set; }

        public int MaNCC { get; set; }
        public string TenNCC {get; set; }
        public DateTime NgayTao { get; set; }
        public string SoDienThoai {  get; set; }

        public string DiaChi {  get; set; }

        public double TongHD { get; set; }
        public List<ChiTietDonHangNhapModels> cthd_json{ get; set; }

        public DonHangNhapModels(int maDonHang, int maNCC, string tenNCC, DateTime ngayTao, string soDienThoai, string diaChi, double tongHd)
        {
            MaDonHang = maDonHang;
            MaNCC = maNCC;
            TenNCC = tenNCC;
            NgayTao = ngayTao;
            SoDienThoai = soDienThoai;
            DiaChi = diaChi;
            TongHD = tongHd;
        }
    }
}
