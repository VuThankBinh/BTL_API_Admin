using DataModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Interfaces
{
    public partial interface IThuongHieuRepository
    {
        List<ThuongHieuModels> getThuongHieu();
        ThuongHieuModels SearchthuongHieu(int id);

        bool CreateThuongHieu(ThuongHieuModels models);
        bool UpdateThuongHieu(ThuongHieuModels models);
        bool DeleteThuongHieu(int id);
    }
}
