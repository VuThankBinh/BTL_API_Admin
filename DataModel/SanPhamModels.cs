
namespace DataModel
{
    public class SanPhamModels
    {
        public int MaSanPham { get; set; }
        public int MaThuongHieu { get; set; }
        public string TenSanPham { get; set; }
        public string HinhAnhDaiien { get; set; }

        public string Mota {  get; set; }
        public List<MauSacModels> Mau { get; set; }
        //public SanPhamModels(string? v, string? v1, string? v2, string? v3, List<MauSacModels>? mauList)
        //{
        //    MaSanPham = v;
        //    MaThuongHieu = v1;
        //    TenSanPham = v2;
        //    HinhAnhDaiien = v3;
        //    Mau = mauList;
        //}



        public string giaBans { get; set; }
        public SanPhamModels(int maSanPham, int maThuongHieu, string tenSanPham, string hinhAnhDaiien, List<MauSacModels> mau, string giaBans)
        {
            MaSanPham = maSanPham;
            MaThuongHieu = maThuongHieu;
            TenSanPham = tenSanPham;
            HinhAnhDaiien = hinhAnhDaiien;
            Mau = mau;
            this.giaBans = giaBans;
        }


        //public SanPhamModels(int maSanPham, int maThuongHieu, string tenSanPham, string anhDaiDien)
        //{
        //    MaSanPham = maSanPham;
        //    MaThuongHieu = maThuongHieu;
        //    TenSanPham = tenSanPham;
        //    HinhAnhDaiien = anhDaiDien;
        //}


        /*        
        public List<SanPhamModels> list_json_sanphamlienquan { get; set; }*/

        //public SanPhamModels(int maSanPham, int maThuongHieu, string tenSanPham, string anhDaiDien, List<GiaBanModels> giaBans, List<MauSacModels> mauSacs, List<SanPhamModels> list_json_sanphamlienquan)
        //{
        //    this.MaSanPham = maSanPham;
        //    this.MaThuongHieu = maThuongHieu;
        //    this.TenSanPham = tenSanPham;
        //    this.AnhDaiDien = anhDaiDien;
        //    this.giaBans = giaBans;
        //    this.mauSacs = mauSacs;
        //    this.list_json_sanphamlienquan = list_json_sanphamlienquan;
        //}
    }
}