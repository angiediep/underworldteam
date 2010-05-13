using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class WebUserControl : System.Web.UI.UserControl
{
    string username;
    int userid;

    public int Userid
    {
        get { return userid; }
        set { userid = value; }
    }

    public string Username
    {
        get { return username; }
        set { username = value; }
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }
}
