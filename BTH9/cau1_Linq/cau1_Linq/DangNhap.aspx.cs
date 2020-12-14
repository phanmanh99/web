using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cau1_Linq
{
    public partial class DangNhap : System.Web.UI.Page
    {
        LoginEntities myLoginEntities;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            myLoginEntities = new LoginEntities();
            try
            {
                var myVar = from i in myLoginEntities.Logins
                            where i.UserName == txtUser.Text && i.PassWord == txtPass.Text
                            select i;
                
                Login login = myVar.First();
                if(login.UserName == txtUser.Text && login.PassWord == txtPass.Text)
                {
                    Session["user"] = txtUser.Text;
                    Response.Redirect("Thongbao.aspx");
                    myLoginEntities.SaveChanges();
                }
               
                
            }
            catch
            {
                Response.Write("<script>alert('Bạn nhập sai tài khoản')</script>");
            }
        }
    }
}