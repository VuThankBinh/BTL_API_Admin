using DataModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BUS.Interfaces
{
    public partial interface INhaCungCapBus
    {
        List<NhaCungCapModels> getNCC();
        NhaCungCapModels getNCC_byID(int id);

        bool CreateNhaCungCap(NhaCungCapModels model);
        bool UpdateNhaCungCap(NhaCungCapModels model);

        bool DeleteNhaCungCap(int id);
    }
}
