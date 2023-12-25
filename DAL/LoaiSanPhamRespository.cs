using DAL.Helper;
using DAL.Helper.Interfaces;
using DAL.Interfaces;
using DataModel;
using System.Data;
using System.Reflection;

namespace DAL
{
    public class LoaiSanPhamRepository : ILoaiSanPhamRepository
    {
        private IDatabaseHelper _dbHelper;
        public LoaiSanPhamRepository(IDatabaseHelper dbHelper)
        {
            _dbHelper = dbHelper;
        }

        public bool CreateLoaiSanPham(LoaiSPmodels model)
        {
            string msgError = "";
            try
            {
                var result = _dbHelper.ExecuteScalarSProcedureWithTransaction(out msgError, "sp_ThemLoaiSanPham",
                "@TenLoai", model.name,
                "@moTa", model.description);
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

        public bool DeleteLoaiSanPham(int id)
        {
            string msgError = "";
            try
            {
                var dt = _dbHelper.ExecuteSProcedureReturnDataTable(out msgError, "lsp_loaisanpham_delete",
                     "@id", id);
                if (!string.IsNullOrEmpty(msgError))
                    throw new Exception(msgError);
                //LoaiSPmodels sanPham = new LoaiSPmodels(int.Parse(dt.Rows[0][0].ToString()), dt.Rows[0][1].ToString(), dt.Rows[0][2].ToString());
                return true;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<LoaiSPmodels> getLoaiSanPham()
        {
            string msgError = "";
            var dt = _dbHelper.ExecuteSProcedureReturnDataTable(out msgError, "lsp_get_loaisanpham");
            if (!string.IsNullOrEmpty(msgError))
            {
                // Xử lý lỗi nếu cần
                throw new Exception(msgError);
            }

            // Chuyển đổi DataTable thành danh sách sanphamModels_it
            List<LoaiSPmodels> sanPhamList = new List<LoaiSPmodels>();
            foreach (DataRow row in dt.Rows)
            {
                LoaiSPmodels LoaisanPham = new LoaiSPmodels
                (int.Parse(row["id"].ToString()), row["name"].ToString(), row["description"].ToString());
                Console.WriteLine(LoaisanPham.name);

                sanPhamList.Add(LoaisanPham);
            }

            return sanPhamList;
        }

        public LoaiSPmodels searchLoaiSanPham(int id)
        {
            string msgError = "";
            try
            {
                var dt = _dbHelper.ExecuteSProcedureReturnDataTable(out msgError, "lsp_loaisanpham_get_by_id",
                     "@id", id);
                if (!string.IsNullOrEmpty(msgError))
                    throw new Exception(msgError);
                //LoaiSPmodels sanPham = new LoaiSPmodels(int.Parse(dt.Rows[0][0].ToString()), dt.Rows[0][1].ToString(), dt.Rows[0][2].ToString());
                return dt.ConvertTo<LoaiSPmodels>().FirstOrDefault();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<LoaiSPmodels> searchLoaiSanPhamName(string name)
        {
            string msgError = "";
            try
            {
                var dt = _dbHelper.ExecuteSProcedureReturnDataTable(out msgError, "lsp_loaisanpham_get_by_name",
                     "@name", name);
                if (!string.IsNullOrEmpty(msgError))
                    throw new Exception(msgError);
                List<LoaiSPmodels> LoaisanPhamList = new List<LoaiSPmodels>();
                foreach (DataRow row in dt.Rows)
                {
                    LoaiSPmodels loaisanPham = new LoaiSPmodels(int.Parse(row[0].ToString()), row[1].ToString(), row[2].ToString());

                    LoaisanPhamList.Add(loaisanPham);
                }

                return LoaisanPhamList;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public bool UpdateLoaiSanPham(LoaiSPmodels model)
        {
            string msgError = "";
            try
            {
                var result = _dbHelper.ExecuteScalarSProcedureWithTransaction(out msgError, "sp_SuaLoaiSanPham",
                "@MaLoai",model.id,
                "@TenLoai", model.name,
                "@moTa", model.description);
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
