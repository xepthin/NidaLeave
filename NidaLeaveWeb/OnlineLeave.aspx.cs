using System;
using System.Web.Services;
using System.Web.Script.Serialization;
using Lib_BAL;

namespace NidaLeaveWeb
{
    public partial class OnlineLeave : System.Web.UI.Page
    {
        private static JavaScriptSerializer serializer = new JavaScriptSerializer();

        protected void Page_Load(object sender, EventArgs e)
        {

        }


        [WebMethod]
        public static object GetLeaveList(string data)
        {
            BLeave bLeave = new BLeave();
            return bLeave.GetLeaveList(data);

            //return "Hello " + name + Environment.NewLine + "The Current Time is: " + DateTime.Now.ToString();
        }


        [WebMethod]
        public static string GetLeaveList2(string data)
        {
            return "Hello " + data + Environment.NewLine + "The Current Time is: "
                + DateTime.Now.ToString();
            //MLeave mLeave = new JavaScriptSerializer().Deserialize<MLeave>(data);
            //BLeave bLeave = new BLeave();
            //return bLeave.GetLeaveList(mLeave);
        }
    }
}
