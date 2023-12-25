using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataModel
{
    public class NhaCungCapModels
    {
        public NhaCungCapModels()
        {
        }

        public int MaNCC { get; set; }

        public string TenNCC { get; set; }

        public string SoDienThoai { get; set; }

        public string DiaChi { get; set; }

        public NhaCungCapModels(int maNcc, string tenNcc, string soDienThoai, string diaChi)
        {
            MaNCC = maNcc;
            TenNCC = tenNcc;
            SoDienThoai = soDienThoai;
            DiaChi = diaChi;
        }
    }
}
