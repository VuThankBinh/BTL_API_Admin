using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataModel
{
    public class ThuongHieuModels
    {
        public ThuongHieuModels() { }
        public int id {  get; set; }
        public int id_loai { get; set; }
        public string name { get; set; }

        public ThuongHieuModels(int id, int id_loai, string name)
        {
            this.id = id;
            this.id_loai = id_loai;
            this.name = name;
        }
    }
}
