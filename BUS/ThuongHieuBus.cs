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
    public class ThuongHieuBus : IThuongHieuBus
    {
        private IThuongHieuRepository _bus;
        public ThuongHieuBus(IThuongHieuRepository bus) { _bus = bus; }
        public bool CreateThuongHieu(ThuongHieuModels models)
        {
            return _bus.CreateThuongHieu(models);
        }

        public bool DeleteThuongHieu(int id)
        {
           return _bus.DeleteThuongHieu(id);
        }

        public List<ThuongHieuModels> getThuongHieu()
        {
            return _bus.getThuongHieu();
        }

        public ThuongHieuModels SearchthuongHieu(int id)
        {
            return _bus.SearchthuongHieu(id);
        }

        public bool UpdateThuongHieu(ThuongHieuModels models)
        {
            return _bus.UpdateThuongHieu(models);
        }
    }
}
