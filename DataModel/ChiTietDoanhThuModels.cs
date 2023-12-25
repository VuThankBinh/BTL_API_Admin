using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataModel
{
    public class ChiTietDoanhThuModels
    {
        public int MaSanPham { get; set; }
        public string TenSanPham { get; set; }
        public int SoLuongBan { get; set;}
        public string Tong {  get; set; }

        public ChiTietDoanhThuModels(int maSanPham, string tenSanPham, int soLuongBan, string tong)
        {
            MaSanPham = maSanPham;
            TenSanPham = tenSanPham;
            SoLuongBan = soLuongBan;
            Tong = tong;
        }
    }
}
