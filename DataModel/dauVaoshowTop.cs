using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataModel
{
    public class dauVaoshowTop
    {
        public dauVaoshowTop() { }
        public DateTime ngayMin { get; set; }
        public DateTime ngayMax { get; set; }
        public int top { get; set; } = 1;
    }
    public class top_sp
    {
        public top_sp(int top)
        {
            this.top = top;
        }

        public top_sp(){}
        public int top { get; set; }= 1;

    }
}
