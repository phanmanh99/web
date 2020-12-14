using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cau2
{
    public partial class WFTimKiemSinhVien : System.Web.UI.Page
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
                string Squery = "select MaSV from SinhVien";
                mySqlCommand = new SqlCommand(Squery, mySqlConnection);
                mySqlDataReader = mySqlCommand.ExecuteReader();
                ddlMaSV.DataSource = mySqlDataReader;
                ddlMaSV.DataTextField = "MaSV";
                ddlMaSV.DataBind();
                //ddlMaSV_SelectedIndexChanged(sender, e);
            }
        }

        protected void ddlMaSV_SelectedIndexChanged(object sender, EventArgs e)
        {
            //mySqlConnection = new SqlConnection(str);
            //mySqlConnection.Open();

            string query = "select MaSV, HoTen,TenKhoa from SinhVien sv inner join KhoaDaoTao khoa on sv.MaKhoa = khoa.MaKhoa where MaSV=N'" + ddlMaSV.SelectedValue +"'";
            mySqlCommand = new SqlCommand(query, mySqlConnection);
            mySqlDataReader = mySqlCommand.ExecuteReader();
            GridView1.DataSource = mySqlDataReader;
            GridView1.DataBind();
            

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int row = Convert.ToInt32(e.CommandArgument);
            string sMaSV = GridView1.Rows[row].Cells[0].Text;
            if (e.CommandName == "btnChiTiet")
            {
                string Squeryy = "select TenMon,NamHK from MonHoc mh inner join DangKyHoc dk on mh.MaMon = dk.MaMon where MaSV=N'" +sMaSV + "'";
                mySqlCommand = new SqlCommand(Squeryy, mySqlConnection);
                mySqlDataReader = mySqlCommand.ExecuteReader();
                GridView2.DataSource = mySqlDataReader;
                GridView2.DataBind();
                
            }
        }

        protected void btnTim_Click(object sender, EventArgs e)
        {
            string Sfind = "select MaSV, HoTen,TenKhoa from SinhVien sv inner join KhoaDaoTao khoa on sv.MaKhoa = khoa.MaKhoa where HoTen like N'%" + txtNoiDungTim.Text + "%'";
            mySqlCommand = new SqlCommand(Sfind, mySqlConnection);
            mySqlDataReader = mySqlCommand.ExecuteReader();
            GridView1.DataSource = mySqlDataReader;
            GridView1.DataBind();
            
        }
    }
}