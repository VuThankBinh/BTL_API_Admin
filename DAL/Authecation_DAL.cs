using DAL.Helper;
using DAL.Helper.Interfaces;
using DAL.Interfaces;
using DataModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class Authecation_DAL : IAuthencation
    {
        private IDatabaseHelper _dbHelper;

        public Authecation_DAL(IDatabaseHelper dbHelper)
        {
            _dbHelper = dbHelper;
        }

        public Authencation login(string username, string password)
        {
            string msgError = "";
            var dt = _dbHelper.ExecuteSProcedureReturnDataTable(out msgError, "Login_Admin","@username",username,"@password",password);
            if (!string.IsNullOrEmpty(msgError))
            {
                // Xử lý lỗi nếu cần
                throw new Exception(msgError);
            }
            return dt.ConvertTo<Authencation>().FirstOrDefault();
        }
    }
}
