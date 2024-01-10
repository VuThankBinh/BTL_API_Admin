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
    public class BanHangBus : IBanHangBus
    {
        private IBanHangRepository res;
        public BanHangBus(IBanHangRepository _res)
        {
            res = _res;
        }
        public bool HuyDonHang(int id)
        {
            return res.HuyDonHang(id);
        }

        public ChiTietDonHangModels showCTDonHang(int id)
        {
            return res.showCTDonHang(id);
        }

        public List<DonHangModels> ShowDonHangChuaXN()
        {
            return res.ShowDonHangChuaXN();
        }

        public List<DonHangModels> ShowDonHangDaGiao()
        {
            return res.ShowDonHangDaGiao();
        }

        public List<DonHangModels> ShowDonHangDangGiao()
        {
            return res.ShowDonHangDangGiao();
        }

        public List<DonHangModels> ShowDonHangDaXN()
        {
            return res.ShowDonHangDaXN();
        }

        public bool SuaCTdonHang(ChiTietDonHangModels donHang)
        {
            return res.SuaCTdonHang(donHang);
        }

        public string XacNhanDaGuiHang(int id)
        {
            return res.XacNhanDaGuiHang(id) ;
        }

        public string XacNhanDonHang(int id)
        {
            return res.XacNhanDonHang(id);
        }
    }
}
