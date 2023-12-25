using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataModel
{
    public class KichThuocModels
    {
        public KichThuocModels() { }
        public string id {  get; set; }
        public string idmau { get; set; }
        public string kichthuoc { get; set; }
        public int soluong { get; set;}

        public KichThuocModels(string id, string idmau, string kichthuoc, int soluong)
        {
            this.id = id;
            this.idmau = idmau;
            this.kichthuoc = kichthuoc;
            this.soluong = soluong;
        }
    }
}
