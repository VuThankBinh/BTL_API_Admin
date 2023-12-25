using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataModel
{
    public class KhachHangModels
    {
        public KhachHangModels()
        {
        }

        public int MaKhachHang { get; set; }

        public string TenKhachHang { get; set; } = null!;

        public string SoDienThoai { get; set; } = null!;

        public string DiaChi { get; set; } = null!;

        public KhachHangModels(int maKhachHang, string tenKhachHang, string soDienThoai, string diaChi)
        {
            this.MaKhachHang = maKhachHang;
            this.TenKhachHang = tenKhachHang;
            this.SoDienThoai = soDienThoai;
            this.DiaChi = diaChi;
        }
    }
}
