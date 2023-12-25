using DAL.Helper;
using DAL.Helper.Interfaces;
using DAL.Interfaces;
using DataModel;
using Microsoft.Extensions.Configuration;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    
    public class BanHangRepository : IBanHangRepository
    {
        private IDatabaseHelper _dbHelper;
        public BanHangRepository(IDatabaseHelper dbHelper)
        {
            _dbHelper = dbHelper;
        }
        public bool HuyDonHang(int id)
        {
            string msgError = "";
            try
            {
                var result = _dbHelper.ExecuteScalarSProcedureWithTransaction(out msgError, "XoaDonHang",
                "@id", id);
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

        public ChiTietDonHangModels showCTDonHang(int id)
        {
            string msgError = "";
            var dt = _dbHelper.ExecuteSProcedureReturnDataTable(out msgError, "showCTdonHang", "@id",id);
            if (!string.IsNullOrEmpty(msgError))
            {
                // Xử lý lỗi nếu cần
                throw new Exception(msgError);
            }
                string json = dt.Rows[0][6].ToString();
            Console.WriteLine(dt.ToString());
            // Chuyển đổi DataTable thành danh sách sanphamModels_it
            
            List<ChiTietDonHang> ds = JsonConvert.DeserializeObject<List<ChiTietDonHang>>(json);
            ChiTietDonHangModels donhang = new ChiTietDonHangModels(int.Parse(dt.Rows[0][0].ToString()),int.Parse(dt.Rows[0][1].ToString()), dt.Rows[0][2].ToString(),DateTime.Parse(dt.Rows[0][3].ToString()),Boolean.Parse(dt.Rows[0][4].ToString()), dt.Rows[0][5].ToString(),ds);

            return donhang;
        }

        public List<DonHangModels> ShowDonHangChuaXN()
        {
            string msgError = "";
            var dt = _dbHelper.ExecuteSProcedureReturnDataTable(out msgError, "showDonHangChuaXacNhan");
            if (!string.IsNullOrEmpty(msgError))
            {
                // Xử lý lỗi nếu cần
                throw new Exception(msgError);
            }

            // Chuyển đổi DataTable thành danh sách sanphamModels_it
            List<DonHangModels> donhangList = new List<DonHangModels>();
            foreach (DataRow row in dt.Rows)
            {
                DonHangModels dh = new DonHangModels
                (int.Parse(row[0].ToString()), int.Parse(row[1].ToString()), row[2].ToString(), DateTime.Parse(row[3].ToString()), Boolean.Parse(row[4].ToString()), row[5].ToString(), row[6].ToString(), row[7].ToString());

                donhangList.Add(dh);
            }

            return donhangList;
        }

        public List<DonHangModels> ShowDonHangDaXN()
        {
            string msgError = "";
            var dt = _dbHelper.ExecuteSProcedureReturnDataTable(out msgError, "showDonHangDaXacNhan");
            if (!string.IsNullOrEmpty(msgError))
            {
                // Xử lý lỗi nếu cần
                throw new Exception(msgError);
            }

            // Chuyển đổi DataTable thành danh sách sanphamModels_it
            List<DonHangModels> donhangList = new List<DonHangModels>();
            foreach (DataRow row in dt.Rows)
            {
                string aa = row[5].ToString();
                Console.WriteLine(aa);
                DonHangModels dh = new DonHangModels
                (int.Parse(row[0].ToString()), int.Parse(row[1].ToString()), row[2].ToString(), DateTime.Parse(row[3].ToString()), Boolean.Parse(row[4].ToString()),row[5].ToString(), row[6].ToString(), row[7].ToString());

                donhangList.Add(dh);
            }

            return donhangList;
        }

        public bool SuaCTdonHang(ChiTietDonHangModels donHang)
        {
            throw new NotImplementedException();
        }
        
        public string XacNhanDaGuiHang(int id)
        {
            //DatabaseHelper db = new DatabaseHelper();
            //SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-JVF77B3\\SQLEXPRESS;Initial Catalog=BTL_API2;Integrated Security=True");
            string msgError = "";
            try
            {
                
               
                var dt= _dbHelper.ExecuteSProcedureReturnDataTable(out msgError, "XacNhan_GuiHang", "@id", id);
                if(dt.Rows.Count != 0)
                {

                    return dt.Rows[0][0].ToString();
                }
                else
                {
                    return "Đơn hàng chưa được xác nhận";
                }    
            }
            catch (Exception ex) { throw ex; }
            
            
        }

        public string XacNhanDonHang(int id)
        {
            string msgError = "";
            try
            {
                var dt = _dbHelper.ExecuteSProcedureReturnDataTable(out msgError, "DuyetDonHang",
                "@id", id);
                
                if (dt.Rows.Count != 0)
                {

                    return dt.Rows[0][0].ToString();
                }
                else
                {
                    return "Đơn hàng đã được duyệt trước đó";
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
