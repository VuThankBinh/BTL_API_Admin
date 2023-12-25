using BUS.Interfaces;
using DAL.Interfaces;
using DataModel;


namespace BUS
{
    public class LoaiSanPhamBus : ILoaiSanPhamBus
    {
        private ILoaiSanPhamRepository res;
        public LoaiSanPhamBus(ILoaiSanPhamRepository _res)
        {
            res = _res;
        }

        public bool CreateLoaiSanPham(LoaiSPmodels loaiSPmodels)
        {
            return res.CreateLoaiSanPham(loaiSPmodels);
        }

        public bool DeleteLoaiSanPham(int id)
        {
            return res.DeleteLoaiSanPham(id);
        }

        public List<LoaiSPmodels> getLoaiSanPham()
        {
            return res.getLoaiSanPham();
        }

        public LoaiSPmodels searchLoaiSanPham(int id)
        {
            return res.searchLoaiSanPham(id);
        }

        public List<LoaiSPmodels> searchLoaiSanPhamName(string name)
        {
            return res.searchLoaiSanPhamName(name);
        }

        public bool UpdateLoaiSanPham(LoaiSPmodels loaiSPmodels)
        {
            return res.UpdateLoaiSanPham(loaiSPmodels);
        }
    }
}
