using API_Admin.ModelsThongKe;
using DAL.Helper;
using DAL.Helper.Interfaces;
using DAL.Interfaces;
using DataModel;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class ThongKeRepository : IThongKeRepository
    {
        private IDatabaseHelper _dbHelper;
        public ThongKeRepository(IDatabaseHelper dbHelper)
        {
            _dbHelper = dbHelper;
        }

        public List<ChiTietDoanhThuModels> CTDoanhThuHomNay()
        {
            string msgError = "";
            try
            {
                var dt = _dbHelper.ExecuteSProcedureReturnDataTable(out msgError, "tk_ctdoanhthu_hom_nay");
                if (!string.IsNullOrEmpty(msgError))
                    throw new Exception(msgError);
                //LoaiSPmodels sanPham = new LoaiSPmodels(int.Parse(dt.Rows[0][0].ToString()), dt.Rows[0][1].ToString(), dt.Rows[0][2].ToString());
                List<ChiTietDoanhThuModels> arrList = new List<ChiTietDoanhThuModels>();
                foreach (DataRow row in dt.Rows)
                {
                    ChiTietDoanhThuModels sanPham = new ChiTietDoanhThuModels
                    (int.Parse(row[0].ToString()), row[1].ToString(), int.Parse(row[2].ToString()), row[3].ToString());

                    arrList.Add(sanPham);
                }
                return arrList;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<ChiTietDoanhThuModels> CTDoanhThuNamNay()
        {
            string msgError = "";
            try
            {
                var dt = _dbHelper.ExecuteSProcedureReturnDataTable(out msgError, "tk_ctdoanhthu_Nam_nay");
                if (!string.IsNullOrEmpty(msgError))
                    throw new Exception(msgError);
                //LoaiSPmodels sanPham = new LoaiSPmodels(int.Parse(dt.Rows[0][0].ToString()), dt.Rows[0][1].ToString(), dt.Rows[0][2].ToString());
                List<ChiTietDoanhThuModels> arrList = new List<ChiTietDoanhThuModels>();
                foreach (DataRow row in dt.Rows)
                {
                    ChiTietDoanhThuModels sanPham = new ChiTietDoanhThuModels
                    (int.Parse(row[0].ToString()), row[1].ToString(), int.Parse(row[2].ToString()), row[3].ToString());

                    arrList.Add(sanPham);
                }
                return arrList;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<ChiTietDoanhThuModels> CTDoanhThuThang()
        {
            string msgError = "";
            try
            {
                var dt = _dbHelper.ExecuteSProcedureReturnDataTable(out msgError, "tk_ctdoanhthu_thang_nay");
                if (!string.IsNullOrEmpty(msgError))
                    throw new Exception(msgError);
                //LoaiSPmodels sanPham = new LoaiSPmodels(int.Parse(dt.Rows[0][0].ToString()), dt.Rows[0][1].ToString(), dt.Rows[0][2].ToString());
                List<ChiTietDoanhThuModels> arrList = new List<ChiTietDoanhThuModels>();
                foreach (DataRow row in dt.Rows)
                {
                    ChiTietDoanhThuModels sanPham = new ChiTietDoanhThuModels
                    (int.Parse(row[0].ToString()), row[1].ToString(), int.Parse(row[2].ToString()), row[3].ToString());

                    arrList.Add(sanPham);
                }
                return arrList;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<ChiTietDoanhThuModels> CTDoanhThuThoiGianBK(string ngayMin, string ngayMax)
        {
            string msgError = "";
            try
            {
                Console.WriteLine(ngayMin);
                var dt = _dbHelper.ExecuteSProcedureReturnDataTable(out msgError, "tk_ctdoanhthu_bk", "@ngayMin", ngayMin, "@ngayMax", ngayMax);
                if (!string.IsNullOrEmpty(msgError))
                    throw new Exception(msgError);
                //LoaiSPmodels sanPham = new LoaiSPmodels(int.Parse(dt.Rows[0][0].ToString()), dt.Rows[0][1].ToString(), dt.Rows[0][2].ToString());
                List<ChiTietDoanhThuModels> arrList = new List<ChiTietDoanhThuModels>();
                foreach (DataRow row in dt.Rows)
                {
                    ChiTietDoanhThuModels sanPham = new ChiTietDoanhThuModels
                    (int.Parse(row[0].ToString()), row[1].ToString(), int.Parse(row[2].ToString()), row[3].ToString());

                    arrList.Add(sanPham);
                }
                return arrList;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public decimal DoanhThuHomNay()
        {
            string msgError = "";
            try
            {
                var dt = _dbHelper.ExecuteSProcedureReturnDataTable(out msgError, "tk_doanhthu_homnay");
                if (!string.IsNullOrEmpty(msgError))
                    throw new Exception(msgError);
                //LoaiSPmodels sanPham = new LoaiSPmodels(int.Parse(dt.Rows[0][0].ToString()), dt.Rows[0][1].ToString(), dt.Rows[0][2].ToString());
                if (dt != null && dt.Rows.Count > 0)
                {
                    // Check for null or empty value in the specific cell
                    if (!string.IsNullOrEmpty(dt.Rows[0][0].ToString()))
                    {
                        return Decimal.Parse(dt.Rows[0][0].ToString());
                    }
                }

                return 0;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public decimal DoanhThuNamNay()
        {
            string msgError = "";
            try
            {
                var dt = _dbHelper.ExecuteSProcedureReturnDataTable(out msgError, "tk_doanhthu_namnay");
                if (!string.IsNullOrEmpty(msgError))
                    throw new Exception(msgError);
                //LoaiSPmodels sanPham = new LoaiSPmodels(int.Parse(dt.Rows[0][0].ToString()), dt.Rows[0][1].ToString(), dt.Rows[0][2].ToString());
                if (dt != null && dt.Rows.Count > 0)
                {
                    // Check for null or empty value in the specific cell
                    if (!string.IsNullOrEmpty(dt.Rows[0][0].ToString()))
                    {
                        return Decimal.Parse(dt.Rows[0][0].ToString());
                    }
                }

                return 0;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public decimal DoanhThuThang()
        {
            string msgError = "";
            try
            {
                var dt = _dbHelper.ExecuteSProcedureReturnDataTable(out msgError, "tk_doanhthu_thangnay");
                if (!string.IsNullOrEmpty(msgError))
                    throw new Exception(msgError);
                //LoaiSPmodels sanPham = new LoaiSPmodels(int.Parse(dt.Rows[0][0].ToString()), dt.Rows[0][1].ToString(), dt.Rows[0][2].ToString());
                if (dt != null && dt.Rows.Count > 0)
                {
                    // Check for null or empty value in the specific cell
                    if (!string.IsNullOrEmpty(dt.Rows[0][0].ToString()))
                    {
                        return Decimal.Parse(dt.Rows[0][0].ToString());
                    }
                }

                return 0;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<DoanhThuModels> doanhthutheothang()
        {
            string msgError = "";
            var dt = _dbHelper.ExecuteSProcedureReturnDataTable(out msgError, "thk_doanhthu_theothang_namnay");
            if (!string.IsNullOrEmpty(msgError))
            {
                // Xử lý lỗi nếu cần
                throw new Exception(msgError);
            }

            // Chuyển đổi DataTable thành danh sách sanphamModels_it
            List<DoanhThuModels> dttl = new List<DoanhThuModels>();
            foreach (DataRow row in dt.Rows)
            {

                DoanhThuModels dtt = new DoanhThuModels(row[0].ToString(), row[1].ToString());
                dttl.Add(dtt);



            }

            return dttl;
        }

        public decimal DoanhThuThoiGianBK(string ngayMin, string ngayMax)
        {
            string msgError = "";
            try
            {
                Console.WriteLine(ngayMin);   
                var dt = _dbHelper.ExecuteSProcedureReturnDataTable(out msgError, "tk_doanhthu_bk","@ngayMin",ngayMin,"@ngayMax",ngayMax);
                if (!string.IsNullOrEmpty(msgError))
                    throw new Exception(msgError);
                //LoaiSPmodels sanPham = new LoaiSPmodels(int.Parse(dt.Rows[0][0].ToString()), dt.Rows[0][1].ToString(), dt.Rows[0][2].ToString());
                if (dt != null && dt.Rows.Count > 0)
                {
                    // Check for null or empty value in the specific cell
                    if (!string.IsNullOrEmpty(dt.Rows[0][0].ToString()))
                    {
                        return Decimal.Parse(dt.Rows[0][0].ToString());
                    }
                }

                return 0;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<SanPhamTon> dsspton()
        {
            string msgError = "";
            try
            {
                var dt = _dbHelper.ExecuteSProcedureReturnDataTable(out msgError, "show_dssp_ton");
                if (!string.IsNullOrEmpty(msgError))
                    throw new Exception(msgError);
                List<SanPhamTon> dssp=new List<SanPhamTon>();
                foreach (DataRow row in dt.Rows)
                {
                    SanPhamTon sanPham = new SanPhamTon
                    (row[0].ToString(), row[1].ToString(), row[2].ToString(), row[3].ToString(), row[4].ToString());

                    dssp.Add(sanPham);
                }
                //LoaiSPmodels sanPham = new LoaiSPmodels(int.Parse(dt.Rows[0][0].ToString()), dt.Rows[0][1].ToString(), dt.Rows[0][2].ToString());
                return dssp;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<SanPhamTon> sanPhambanchaynhatbk(string ngaymin, string ngaymax, int top)
        {
            string msgError = "";
            try
            {
                    var dt = _dbHelper.ExecuteSProcedureReturnDataTable(out msgError, "tk_sanphambanchay_tg_bk","@top",top,"@ngaymin",ngaymin,"@ngaymax",ngaymax);
                    if (!string.IsNullOrEmpty(msgError))
                        throw new Exception(msgError);
                    List<SanPhamTon> dssp = new List<SanPhamTon>();
                    foreach (DataRow row in dt.Rows)
                    {
                        SanPhamTon sanPham = new SanPhamTon
                        (row[0].ToString(), row[1].ToString(), row[2].ToString(), row[3].ToString(), row[4].ToString());

                        dssp.Add(sanPham);
                    }
                    //LoaiSPmodels sanPham = new LoaiSPmodels(int.Parse(dt.Rows[0][0].ToString()), dt.Rows[0][1].ToString(), dt.Rows[0][2].ToString());
                    return dssp;
              
                
            }
            catch (Exception ex) { throw ex; }
            
        }

        public List<SanPhamTon> sanPhambanchaynhatday(int top)
        {
            string msgError = "";
            try
            {
                var dt = _dbHelper.ExecuteSProcedureReturnDataTable(out msgError, "tk_sanphambanchay_today", "@top", top);
                if (!string.IsNullOrEmpty(msgError))
                    throw new Exception(msgError);
                List<SanPhamTon> dssp = new List<SanPhamTon>();
                foreach (DataRow row in dt.Rows)
                {
                    SanPhamTon sanPham = new SanPhamTon
                    (row[0].ToString(), row[1].ToString(), row[2].ToString(), row[3].ToString(), row[4].ToString());

                    dssp.Add(sanPham);
                }
                //LoaiSPmodels sanPham = new LoaiSPmodels(int.Parse(dt.Rows[0][0].ToString()), dt.Rows[0][1].ToString(), dt.Rows[0][2].ToString());
                return dssp;


            }
            catch (Exception ex) { throw ex; }
        }

        public List<SanPhamTon> sanPhambanchaynhatmonth(int top)
        {
            string msgError = "";
            try
            {
                var dt = _dbHelper.ExecuteSProcedureReturnDataTable(out msgError, "tk_sanphambanchay_thangnay", "@top", top);
                if (!string.IsNullOrEmpty(msgError))
                    throw new Exception(msgError);
                List<SanPhamTon> dssp = new List<SanPhamTon>();
                foreach (DataRow row in dt.Rows)
                {
                    SanPhamTon sanPham = new SanPhamTon
                    (row[0].ToString(), row[1].ToString(), row[2].ToString(), row[3].ToString(), row[4].ToString());

                    dssp.Add(sanPham);
                }
                //LoaiSPmodels sanPham = new LoaiSPmodels(int.Parse(dt.Rows[0][0].ToString()), dt.Rows[0][1].ToString(), dt.Rows[0][2].ToString());
                return dssp;


            }
            catch (Exception ex) { throw ex; }
        }
    }
}
