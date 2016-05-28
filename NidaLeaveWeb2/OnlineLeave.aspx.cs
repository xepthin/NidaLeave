using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using Lib_BAL;

public partial class OnlineLeave : System.Web.UI.Page
{
    private static JavaScriptSerializer serializer = new JavaScriptSerializer();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    [WebMethod]
    public static object GetLeaveList(string data)
    {
        MLeave mLeave = new JavaScriptSerializer().Deserialize<MLeave>(data);
        BLeave bLeave = new BLeave();
        return bLeave.GetLeaveList2(mLeave);
    }

}