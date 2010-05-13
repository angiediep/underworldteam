using System;
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

public partial class _Default : System.Web.UI.Page 
{
    string username;

    public string Username
    {
        get { return username; }
        set { username = value; }
    }
    string m_sql;

    public string Sql
    {
        get { return m_sql; }
        set { m_sql = value; }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        //HttpCookie cookie = new HttpCookie("UserInfo");
        //cookie["UserID"] = "123";
        //cookie["UserName"] = "abc";
        //cookie.Expires = DateTime.Now.Add(new TimeSpan(0, 30, 0));
        //Response.Cookies.Add(cookie);

        //Session["UserID"] = "456";

        //username = this.Label1.Text;

        username = "ABC";
        m_sql = "Select * from UserInfo where Name='" + username + "'";

        WebUserControl1.Userid = 123;
        WebUserControl1.Username = "abc";
        this.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //this.Label1.Text = "Hello World";
        //int x = 10;
        //Response.Redirect("Default2.aspx?username=" + username + "&x=" + x);
    }
}
