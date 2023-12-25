using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataModel
{
    public class SanPhamTon
    {
        public SanPhamTon() { }
        public string MaSanPham {  get; set; }
        public string TenSanPham {  set; get; }
        public string MaThuongHieu {  get; set; }
        public string MoTa {  get; set; }
        public string SoLuongTon { get; set; }

        public SanPhamTon(string maSanPham, string tenSanPham, string maThuongHieu, string moTa, string soLuongTon)
        {
            MaSanPham = maSanPham;
            TenSanPham = tenSanPham;
            MaThuongHieu = maThuongHieu;
            MoTa = moTa;
            SoLuongTon = soLuongTon;
        }
    }
}
