using DataModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Interfaces
{
    public partial interface IBanHangRepository
    {
        //xác nhận đơn hàng
        string XacNhanDonHang(int id);
        //show đơn hàng hủy
        bool HuyDonHang(int id);
        //show đơn hàng chưa xác nhận
        List<DonHangModels> ShowDonHangChuaXN();
        //show đơn hàng đã xác nhận
        List<DonHangModels> ShowDonHangDaXN();
        List<DonHangModels> ShowDonHangDangGiao();
        List<DonHangModels> ShowDonHangDaGiao();
        //xem chi tiết đơn hàng
        ChiTietDonHangModels showCTDonHang(int id);

        //Sửa chi tiết đơn hàng
        bool SuaCTdonHang (ChiTietDonHangModels donHang);
        string XacNhanDaGuiHang(int id);
        
    }
}
