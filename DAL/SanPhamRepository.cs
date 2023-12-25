using DAL.Helper;
using DAL.Helper.Interfaces;
using DAL.Interfaces;
using DataModel;
using Newtonsoft.Json;
using System.Data;
using System.Reflection;

namespace DAL
{
    public class SanPhamRepository : ISanPhamRepository
    {
        private IDatabaseHelper _dbHelper;
        public SanPhamRepository(IDatabaseHelper dbHelper)
        {
            _dbHelper = dbHelper;
        }

        public bool CreateSP(SanPhamModels model)
        {
            string msgError = "";
            try
            {
                string a = JsonConvert.SerializeObject(model);
                Console.WriteLine(a);
                var result = _dbHelper.ExecuteScalarSProcedureWithTransaction(out msgError, "sp_sanpham_create",
                "@MaThuongHieu", model.MaThuongHieu,
                "@TenSanPham", model.TenSanPham,
                "@MoTa", model.Mota,
                "@HinhDaiDien",model.HinhAnhDaiien,
                "@Mau", JsonConvert.SerializeObject(model.Mau),
                "@giaBan", Decimal.Parse(model.giaBans));
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

        public SanPhamModels GetChiTietSanPham(int id)
        {
            string msgError = "";
            try
            {
                var dt = _dbHelper.ExecuteSProcedureReturnDataTable(out msgError, "sp_sanpham_get_by_id3",
                     "@id", id);
                if (!string.IsNullOrEmpty(msgError))
                    throw new Exception(msgError);
                string jsonmau = dt.Rows[0][3].ToString();
                string jsongia = dt.Rows[0][5].ToString();
                Console.WriteLine(jsonmau);
                // Chuyển đổi từ chuỗi JSON thành đối tượng MauSacModels
                //MauSacModels mauSacModel = JsonConvert.DeserializeObject<MauSacModels>(jsonValue);

                // Gán đối tượng mới cho cột
                //dt.Rows[0][3] = mauSacModel;
                List<MauSacModels> mauList = JsonConvert.DeserializeObject<List<MauSacModels>>(jsonmau);
                //List<GiaBanModels> giaList = JsonConvert.DeserializeObject<List<GiaBanModels>>(jsongia);
                // Tiếp theo, thêm danh sách vào thuộc tính Mau của đối tượng SanPhamModels
                SanPhamModels sanPham = new SanPhamModels(int.Parse(dt.Rows[0][0].ToString()), int.Parse(dt.Rows[0][1].ToString()), dt.Rows[0][2].ToString(), dt.Rows[0][4].ToString(), mauList, dt.Rows[0][5].ToString());
                    
                
                return sanPham;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public List<sanphamModels_it> GetSanPham()
        {
            string msgError = "";
            var dt = _dbHelper.ExecuteSProcedureReturnDataTable(out msgError, "sp_get_sanpham");
            if (!string.IsNullOrEmpty(msgError))
            {
                // Xử lý lỗi nếu cần
                throw new Exception(msgError);
            }
            
            // Chuyển đổi DataTable thành danh sách sanphamModels_it
            List<sanphamModels_it> sanPhamList = new List<sanphamModels_it>();
            foreach (DataRow row in dt.Rows)
            {
                sanphamModels_it sanPham = new sanphamModels_it
                (int.Parse(row[0].ToString()), int.Parse(row[1].ToString()), decimal.Parse(row[2].ToString()),row[3].ToString(), row[4].ToString());

                sanPhamList.Add(sanPham);
            }

            return sanPhamList;
        }

        public bool UpdateSP(SanPhamModels model)
        {
            string msgError = "";
            try
            {
                string a = JsonConvert.SerializeObject(model);
                Console.WriteLine(a);
                var result = _dbHelper.ExecuteScalarSProcedureWithTransaction(out msgError, "sp_updatesp",
                "@MaSanPham",model.MaSanPham,
                "@MaThuongHieu", model.MaThuongHieu,
                "@TenSanPham", model.TenSanPham,
                "@MoTa", model.Mota,
                "@HinhDaiDien", model.HinhAnhDaiien,
                "@Mau", JsonConvert.SerializeObject(model.Mau),
                "@giaBan", Decimal.Parse(model.giaBans));
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
        public bool DeleteSP(int id)
        {
            string msgError = "";
            try
            {
                var dt = _dbHelper.ExecuteSProcedureReturnDataTable(out msgError, "sp_sanpham_delete",
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
    }
}