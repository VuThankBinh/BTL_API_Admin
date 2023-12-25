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
    public class NhapHangBus : INhapHangBus
    {
        private INhanHangRepository res;

        public NhapHangBus(INhanHangRepository res)
        {
            this.res = res;
        }

        public DonHangNhapModels create_hoadonnhap(DonHangNhapModels model)
        {
            return res.create_hoadonnhap(model);
        }

        public DonHangNhapModels delete_hoadonnhap(int id)
        {
           return res.delete_hoadonnhap(id);
        }

        public List<DonHangNhapModels> getAll()
        {
            return res.getAll();
        }

        public DonHangNhapModels get_by_id(int id)
        {
            return res.get_by_id(id);
        }

        public DonHangNhapModels get_by_time(string ngayMin, string ngayMax)
        {
            return res.get_by_time(ngayMin, ngayMax);
        }

        public bool update_hoadonnhap(DonHangNhapModels model)
        {
            return res. update_hoadonnhap(model);
        }
    }
}
