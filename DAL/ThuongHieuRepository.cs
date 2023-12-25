using DAL.Helper;
using DAL.Helper.Interfaces;
using DAL.Interfaces;
using DataModel;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class ThuongHieuRepository : IThuongHieuRepository
    {
        private IDatabaseHelper _dbHelper;
        public ThuongHieuRepository(IDatabaseHelper dbHelper)
        {
            _dbHelper = dbHelper;
        }
        public bool CreateThuongHieu(ThuongHieuModels models)
        {
            string msgError = "";
            try
            {
                var result = _dbHelper.ExecuteScalarSProcedureWithTransaction(out msgError, "sp_ThemThuongHieu",
                "@MaLoai", models.id_loai,
                "@TenThuongHieu", models.name);
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

        public bool DeleteThuongHieu(int id)
        {
            string msgError = "";
            try
            {
                var dt = _dbHelper.ExecuteSProcedureReturnDataTable(out msgError, "lsp_thuonghieu_delete",
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

        public List<ThuongHieuModels> getThuongHieu()
        {
            string msgError = "";
            var dt = _dbHelper.ExecuteSProcedureReturnDataTable(out msgError, "lsp_get_thuonghieu");
            if (!string.IsNullOrEmpty(msgError))
            {
                // Xử lý lỗi nếu cần
                throw new Exception(msgError);
            }

            // Chuyển đổi DataTable thành danh sách sanphamModels_it
            List<ThuongHieuModels> sanPhamList = new List<ThuongHieuModels>();
            foreach (DataRow row in dt.Rows)
            {
                ThuongHieuModels LoaisanPham = new ThuongHieuModels
                (int.Parse(row[0].ToString()), int.Parse(row[1].ToString()), row[2].ToString());
                Console.WriteLine(LoaisanPham.name);

                sanPhamList.Add(LoaisanPham);
            }
            return sanPhamList;
        }

        public ThuongHieuModels SearchthuongHieu(int id)
        {
            string msgError = "";
            try
            {
                var dt = _dbHelper.ExecuteSProcedureReturnDataTable(out msgError, "lsp_thuonghieu_get_by_id",
                     "@id", id);
                if (!string.IsNullOrEmpty(msgError))
                    throw new Exception(msgError);
                //LoaiSPmodels sanPham = new LoaiSPmodels(int.Parse(dt.Rows[0][0].ToString()), dt.Rows[0][1].ToString(), dt.Rows[0][2].ToString());
                return dt.ConvertTo<ThuongHieuModels>().FirstOrDefault();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public bool UpdateThuongHieu(ThuongHieuModels models)
        {
            string msgError = "";
            try
            {
                var result = _dbHelper.ExecuteScalarSProcedureWithTransaction(out msgError, "sp_SuaThuongHieu",
                "@MaThuongHieu", models.id,
                "@MaLoai", models.id_loai,
                "@TenThuongHieu", models.name);
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
