using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lib_BAL
{
    public class BLeave
    {
        public List<MLeave> GetLeaveList(string data)
        {
            List<MLeave> listLeave = new List<MLeave>();
            return listLeave;
        }

        public List<MLeave> GetLeaveList2(MLeave mLeave)
        {
            List<MLeave> listLeave = new List<MLeave>();
            listLeave.Add(mLeave);
            return listLeave;
        }
    }

    public class MLeave
    {
        public string Firstname { get; set; }
        public string Lastname { get; set; }
    }
}
