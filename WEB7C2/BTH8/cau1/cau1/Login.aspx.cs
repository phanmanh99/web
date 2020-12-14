using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cau1
{
    public partial class Login : System.Web.UI.Page
    {
        string Str = @"Data Source=DESKTOP-M7V0SE7\SQLEXPRESS;Initial Catalog=Login;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework";
        private SqlConnection mySqlConnection;
        private SqlCommand mySqlCommand;
        private SqlDataReader mySqlDataReader;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            mySqlConnection = new SqlConnection(Str);
            mySqlConnection.Open();
            try
            {
                string user = txtUser.Text;
                string pass = txtPass.Text;

                string query = "select * from Login where UserName='" + user + "' and PassWord='" + pass + "'";
                mySqlCommand = new SqlCommand(query, mySqlConnection);
                mySqlDataReader = mySqlCommand.ExecuteReader();

                if (mySqlDataReader.Read())
                {

                    Session["name"] = user;
                    Response.Redirect("WebForm1.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Bạn nhập sai tài khoản')</script>");

                }
                mySqlConnection.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}