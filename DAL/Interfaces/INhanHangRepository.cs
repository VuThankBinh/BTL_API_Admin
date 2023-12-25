using DataModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Interfaces
{
    public partial interface INhanHangRepository
    {
        List<DonHangNhapModels> getAll();
        DonHangNhapModels get_by_id(int id);
        DonHangNhapModels get_by_time(string ngayMin,string ngayMax);
        DonHangNhapModels create_hoadonnhap(DonHangNhapModels model);
        bool update_hoadonnhap(DonHangNhapModels model);
        DonHangNhapModels delete_hoadonnhap(int id);
    }
}
