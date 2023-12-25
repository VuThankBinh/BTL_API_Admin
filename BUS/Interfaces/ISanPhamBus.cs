using DataModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BUS.Interfaces
{
    public partial interface ISanPhamBus
    {
        SanPhamModels GetChiTietSanPham(int id);
        List< sanphamModels_it> GetSanPham();
        bool CreateSP(SanPhamModels models);
        bool UpdateSP(SanPhamModels model);
        bool DeleteSP(int id);
    }
}
