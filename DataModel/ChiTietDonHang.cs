using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataModel
{
    public class ChiTietDonHang
    {
        public ChiTietDonHang() { }
        public string MaDonHang { get; set; }
        public string MaSanPham {  get; set; }
        public string TenSanPham { get;set; }
        public string MauSac {  get; set; }
        public string KichThuoc {  get; set; }
        public int SoLuong {  get; set; }
        public decimal DonGia {  get; set; }
        public int MaMau {  get; set; }
        public int tong {  get; set; }
    }
}
