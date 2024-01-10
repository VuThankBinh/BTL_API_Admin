using BUS.Interfaces;
using DAL.Interfaces;
using DataModel;

namespace BUS
{

    public class SanPhamBus: ISanPhamBus
    {
        private ISanPhamRepository _res;
        public SanPhamBus(ISanPhamRepository res)
        {
            _res = res;
        }
        public List<sanphamModels_it> GetSanPhamtimkiem(string name, string id)
        {
            return _res.GetSanPhamtimkiem(name, id);
        }
        public bool CreateSP(SanPhamModels models)
        {
           return _res.CreateSP(models);
        }

        public SanPhamModels GetChiTietSanPham(int id)
        {
            return _res.GetChiTietSanPham(id);
        }

        public List<sanphamModels_it> GetSanPham()
        {
            return _res.GetSanPham();
        }

        public bool UpdateSP(SanPhamModels model)
        {
            return _res.UpdateSP(model);
            
        }

        public bool DeleteSP(int id)
        {
            return _res.DeleteSP(id);

        }
    }
}