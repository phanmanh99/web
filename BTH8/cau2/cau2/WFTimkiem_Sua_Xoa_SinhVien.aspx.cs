using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cau2
{
    public partial class WFSinhVien : System.Web.UI.Page
    {
        string str = @"Data Source=DESKTOP-M7V0SE7\SQLEXPRESS;Initial Catalog=QuanLyHoc;Integrated Security=True";
        SqlConnection mySqlConnection;
        SqlCommand mySqlCommand;
        SqlDataReader mySqlDataReader;
        protected void Page_Load(object sender, EventArgs e)
        {
            mySqlConnection = new SqlConnection(str);
            mySqlConnection.Open();
            if (!IsPostBack)
            {
                string Squery = "select * from KhoaDaoTao";
                mySqlCommand = new SqlCommand(Squery, mySqlConnection);
                mySqlDataReader = mySqlCommand.ExecuteReader();
                ddlKhoa.DataSource = mySqlDataReader;
                ddlKhoa.DataValueField = "MaKhoa";
                ddlKhoa.DataTextField = "TenKhoa";
                ddlKhoa.DataBind();
                ddlKhoa_SelectedIndexChanged(sender, e);

            }
        }

        protected void ddlKhoa_SelectedIndexChanged(object sender, EventArgs e)
        {
            mySqlConnection = new SqlConnection(str);
            mySqlConnection.Open();

            string query = "select * from SinhVien where MaKhoa='" + ddlKhoa.SelectedValue + "'";
            mySqlCommand = new SqlCommand(query, mySqlConnection);
            mySqlDataReader = mySqlCommand.ExecuteReader();
            GridView1.DataSource = mySqlDataReader;
            GridView1.DataBind();

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int row = Convert.ToInt32(e.CommandArgument);
            if(e.CommandName == "btnSua")
            {
                txtLopBC.Text = GridView1.Rows[row].Cells[1].Text;
                txtMaSV.Text = GridView1.Rows[row].Cells[2].Text;
                txtHoTen.Text = GridView1.Rows[row].Cells[3].Text;
                txtNgaySinh.Text = GridView1.Rows[row].Cells[4].Text;
                txtDiaChi.Text = GridView1.Rows[row].Cells[5].Text;
            }
            else if(e.CommandName == "btnXoa")
            {
                string s = GridView1.Rows[row].Cells[2].Text;
                string squery = "delete from SinhVien where MaSV ='" + s + "'";
                mySqlCommand = new SqlCommand(squery, mySqlConnection);
                mySqlCommand.ExecuteNonQuery();
                ddlKhoa_SelectedIndexChanged(sender, e);

            }
        }

        protected void btnGhi_Click(object sender, EventArgs e)
        {
                string query = "update SinhVien set MaKhoa ='" + ddlKhoa.SelectedValue + "', HoTen='" + txtHoTen.Text + "', LopBC='" + txtLopBC.Text + "', NgaySinh='" + txtNgaySinh.Text + "', DiaChi='" + txtDiaChi.Text + "' where MaSV='" + txtMaSV.Text + "'";
                mySqlCommand = new SqlCommand(query, mySqlConnection);
                mySqlCommand.ExecuteNonQuery();
                ddlKhoa_SelectedIndexChanged(sender, e);
            
        }

        
    }
}