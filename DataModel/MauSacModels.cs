using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataModel
{
    public class MauSacModels
    {
        public MauSacModels() { }
        public string id {  get; set; }
        public string idsp {  get; set; }
        public string mausac{ get; set; }
        public List<KichThuocModels> list { get; set; }
        public List<HinhAnhModels> hinhAnhModels { get; set; }

        //public MauSacModels(string id, string idsp, string mausac, List<KichThuocModels> list, List<HinhAnhModels> hinhAnhModels)
        //{
        //    this.id = id;
        //    this.idsp = idsp;
        //    this.mausac = mausac;
        //    this.list = list;
        //    this.hinhAnhModels = hinhAnhModels;
        //}
    }
}
