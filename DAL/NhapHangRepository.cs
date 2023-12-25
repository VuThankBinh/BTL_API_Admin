using DAL.Helper;
using DAL.Helper.Interfaces;
using DAL.Interfaces;
using DataModel;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class NhapHangRepository : INhanHangRepository
    {
        private IDatabaseHelper _dbHelper;

        public NhapHangRepository(IDatabaseHelper dbHelper)
        {
            _dbHelper = dbHelper;
        }
            
        public DonHangNhapModels create_hoadonnhap(DonHangNhapModels model)
        {
            string msgError = "";
            var dt = _dbHelper.ExecuteSProcedureReturnDataTable(out msgError, "[nhap_createHDN]", 
                "@MaNCC", model.MaNCC,
                "@TenNCC",model.TenNCC,
                "@SoDienThoai",model.SoDienThoai,
                "@DiaChi",model.DiaChi,
                "@list_json_chitiethoadon",model.cthd_json !=null? MessageConvert.SerializeObject(model.cthd_json):null);
            if (!string.IsNullOrEmpty(msgError))
            {
                // Xử lý lỗi nếu cần
                throw new Exception(msgError);
            }
            return dt.ConvertTo<DonHangNhapModels>().FirstOrDefault();
        }

        public DonHangNhapModels delete_hoadonnhap(int id)
        {
            string msgError = "";
            var dt = _dbHelper.ExecuteSProcedureReturnDataTable(out msgError, "[nhap_xoaDHN]", "@id", id);
            if (!string.IsNullOrEmpty(msgError))
            {
                // Xử lý lỗi nếu cần
                throw new Exception(msgError);
            }
            return dt.ConvertTo<DonHangNhapModels>().FirstOrDefault();
        }

        public List<DonHangNhapModels> getAll()
        {
            string msgError = "";
            var dt = _dbHelper.ExecuteSProcedureReturnDataTable(out msgError, "[nhap_getall]");
            if (!string.IsNullOrEmpty(msgError))
            {
                // Xử lý lỗi nếu cần
                throw new Exception(msgError);
            }

            return dt.ConvertTo<DonHangNhapModels>().ToList<DonHangNhapModels>();
        }

        public DonHangNhapModels get_by_id(int id)
        {
            string msgError = "";
            var dt = _dbHelper.ExecuteSProcedureReturnDataTable(out msgError, "[nhap_getCT_byID]", "@id", id);
            if (!string.IsNullOrEmpty(msgError))
            {
                // Xử lý lỗi nếu cần
                throw new Exception(msgError);
            }
            return dt.ConvertTo<DonHangNhapModels>().FirstOrDefault();
        }

        public DonHangNhapModels get_by_time(string ngayMin, string ngayMax)
        {
            throw new NotImplementedException();
        }

        public bool update_hoadonnhap(DonHangNhapModels model)
        {
            string msgError = "";
            try
            {
                var result = _dbHelper.ExecuteScalarSProcedureWithTransaction(out msgError, "[nhap_sp_hoa_don_update]",
                "@MaDonHang", model.MaDonHang,
                "@list_json_chitiethoadon",JsonConvert.SerializeObject(model.cthd_json));
                if ((result != null && !string.IsNullOrEmpty(result.ToString())) || !string.IsNullOrEmpty(msgError))
                {
                    throw new Exception(Convert.ToString(result) + msgError);
                }
                return true;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
