using DataModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Interfaces
{
    public partial interface ISanPhamRepository
    {
        SanPhamModels GetChiTietSanPham(int id);
        List<sanphamModels_it> GetSanPham();
        bool CreateSP(SanPhamModels model);
        bool UpdateSP(SanPhamModels models);
        bool DeleteSP(int id);
    }
}
