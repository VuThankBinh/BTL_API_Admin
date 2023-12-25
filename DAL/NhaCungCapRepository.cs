using DAL.Helper;
using DAL.Helper.Interfaces;
using DAL.Interfaces;
using DataModel;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class NhaCungCapRepository : INhaCungCapRepository
    {
        private IDatabaseHelper _dbHelper;
        public NhaCungCapRepository(IDatabaseHelper dbHelper)
        {
            _dbHelper = dbHelper;
        }
        public bool CreateNhaCungCap(NhaCungCapModels model)
        {
            string msgError = "";
            try
            {
                string a = JsonConvert.SerializeObject(model);
                Console.WriteLine(a);
                var result = _dbHelper.ExecuteScalarSProcedureWithTransaction(out msgError, "sp_NhaCungCap_Insert",
                "@TenNCC", model.TenNCC,
                "@SoDienThoai", model.SoDienThoai,
                "@DiaChi", model.DiaChi);
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

        public bool DeleteNhaCungCap(int id)
        {
            string msgError = "";
            try
            {
                var result = _dbHelper.ExecuteScalarSProcedureWithTransaction(out msgError, "sp_NhaCungCap_Delete",
                "@MaNCC", id);
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

        public List<NhaCungCapModels> getNCC()
        {
            string msgError = "";
            var dt = _dbHelper.ExecuteSProcedureReturnDataTable(out msgError, "sp_NhaCungCap_GetAll");
            if (!string.IsNullOrEmpty(msgError))
            {
                // Xử lý lỗi nếu cần
                throw new Exception(msgError);
            }

            List<NhaCungCapModels> NCList = new List<NhaCungCapModels>();
            foreach (DataRow row in dt.Rows)
            {
                NhaCungCapModels sanPham = new NhaCungCapModels
                (int.Parse(row[0].ToString()), row[1].ToString(), row[2].ToString(), row[3].ToString());

                NCList.Add(sanPham);
            }

            return NCList;
        }

        public NhaCungCapModels getNCC_byID(int id)
        {
            string msgError = "";
            try
            {
                var dt = _dbHelper.ExecuteSProcedureReturnDataTable(out msgError, "sp_NhaCungCap_GetById",
                     "@MaNCC", id);
                if (!string.IsNullOrEmpty(msgError))
                    throw new Exception(msgError);
                               
                return dt.ConvertTo<NhaCungCapModels>().FirstOrDefault();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public bool UpdateNhaCungCap(NhaCungCapModels model)
        {
            string msgError = "";
            try
            {
                string a = JsonConvert.SerializeObject(model);
                Console.WriteLine(a);
                var result = _dbHelper.ExecuteScalarSProcedureWithTransaction(out msgError, "sp_NhaCungCap_Update",
                "@MaNCC", model.MaNCC,
                "@TenNCC", model.TenNCC,
                "@SoDienThoai", model.SoDienThoai,
                "@DiaChi", model.DiaChi);
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
