using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEB7C1
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = TextBox1.Text;
            string password = TextBox2.Text;
            if (username == "admin" & password == "admin")
            {
                HttpCookie ck = new HttpCookie("username");
                ck.Value = username;
                ck.Expires = DateTime.Now.AddDays(15);//Hết hạn là 15 ngày
                Response.Cookies.Add(ck);
                Response.Redirect("ReadCookie.aspx");
            }
            else
                Response.Write("<script>alert('Username hoặc mật khẩu không đúng')</script>");
        }
    }
}