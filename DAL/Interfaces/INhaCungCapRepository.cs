using DataModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Interfaces
{
    public partial interface INhaCungCapRepository
    {
        List<NhaCungCapModels> getNCC();
        NhaCungCapModels getNCC_byID(int id);

        bool CreateNhaCungCap(NhaCungCapModels model);
        bool UpdateNhaCungCap(NhaCungCapModels model);

        bool DeleteNhaCungCap(int id);

    }
}
