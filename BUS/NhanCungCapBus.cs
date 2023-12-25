using BUS.Interfaces;
using DAL.Interfaces;
using DataModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BUS
{
    public class NhanCungCapBus : INhaCungCapBus
    {
        private INhaCungCapRepository _res;

        public NhanCungCapBus(INhaCungCapRepository res)
        {
            _res = res;
        }

        public bool CreateNhaCungCap(NhaCungCapModels model)
        {
            return _res.CreateNhaCungCap(model);
        }

        public bool DeleteNhaCungCap(int id)
        {
            return _res.DeleteNhaCungCap(id);
        }

        public List<NhaCungCapModels> getNCC()
        {
            return _res.getNCC();
        }

        public NhaCungCapModels getNCC_byID(int id)
        {
            return _res.getNCC_byID(id);
        }

        public bool UpdateNhaCungCap(NhaCungCapModels model)
        {
            return _res.UpdateNhaCungCap(model) ;
        }
    }
}
