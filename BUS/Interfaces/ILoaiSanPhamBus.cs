using DataModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BUS.Interfaces
{
    public partial interface ILoaiSanPhamBus
    {
        List<LoaiSPmodels> getLoaiSanPham();
        LoaiSPmodels searchLoaiSanPham(int id);
        List<LoaiSPmodels> searchLoaiSanPhamName(string name);

        bool CreateLoaiSanPham(LoaiSPmodels loaiSPmodels);
        bool UpdateLoaiSanPham(LoaiSPmodels loaiSPmodels);
        bool DeleteLoaiSanPham(int id);
    }
}
