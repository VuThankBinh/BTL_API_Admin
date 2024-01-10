using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataModel
{
    public class HinhAnhModels
    {
        public HinhAnhModels() { }
        public string id {  get; set; }
        public string idMau { get; set; }
        public string hinhanh_url { get; set; }
        public int status {  get; set; }
        public HinhAnhModels(string id, string idMau, string hinhanh_url, int status)
        {
            this.id = id;
            this.idMau = idMau;
            this.hinhanh_url = hinhanh_url;
            this.status = status;
        }
    }
}
