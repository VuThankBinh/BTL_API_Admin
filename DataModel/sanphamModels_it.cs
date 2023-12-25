using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataModel
{
    public class sanphamModels_it
    {
        public int MaSanPham { get; set; }
        public int MaThuongHieu { get; set; }
        public string TenSanPham { get; set; }
        public decimal DonGia {  get; set; }
        public string HinhAnhDaiien { get; set; }

        public sanphamModels_it(int maSanPham, int maThuongHieu, decimal DonGia,string tenSanPham, string hinhAnhDaiien)
        {
            MaSanPham = maSanPham;
            MaThuongHieu = maThuongHieu;
            TenSanPham = tenSanPham;
            HinhAnhDaiien = hinhAnhDaiien;
            this.DonGia = DonGia;
        }
    }
}
