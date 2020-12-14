using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cau2
{
    public partial class WFKhoaDaoTao : System.Web.UI.Page
    {
        string str = @"Data Source=DESKTOP-M7V0SE7\SQLEXPRESS;Initial Catalog=Quanlyhoc;Integrated Security=True";
        SqlConnection mySqlConnection;
        SqlCommand mySqlCommand;
        SqlDataReader mySqlDataReader;
        bool isAdd;
        protected void Page_Load(object sender, EventArgs e)
        {
            mySqlConnection = new SqlConnection(str);
            mySqlConnection.Open();
                string query = "select * from KhoaDaoTao";
                mySqlCommand = new SqlCommand(query,mySqlConnection);
                mySqlDataReader = mySqlCommand.ExecuteReader();
                DataTable myDataTable = new DataTable();
                myDataTable.Load(mySqlDataReader);
                GridView1.DataSource = myDataTable;
                GridView1.DataBind();
            
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int row = Convert.ToInt32(e.CommandArgument);
            if(e.CommandName == "btnSua")
            {
                isAdd = false;
                txtMaKhoa.Text = GridView1.Rows[row].Cells[0].Text;
                txtTenKhoa.Text = GridView1.Rows[row].Cells[1].Text;
                txtDienThoai.Text = GridView1.Rows[row].Cells[2].Text;

            }
            else if(e.CommandName == "btnXoa")
            {
                string s = GridView1.Rows[row].Cells[0].Text;
                string Squery = "delete from KhoaDaoTao where MaKhoa ='" + s + "' ";

                mySqlCommand = new SqlCommand(Squery, mySqlConnection);
                mySqlCommand.ExecuteNonQuery();

                //string sXoaMaKhoa = GridView1.Rows[row].Cells[0].Text;
                //string sSql = "EXECUTE XoaKhoa @MaKhoa";
                //mySqlCommand = new SqlCommand(sSql, mySqlConnection);
                //mySqlCommand.Parameters.Add("@MaKhoa", SqlDbType.NVarChar, 2);
                //mySqlCommand.Parameters["@MaKhoa"].Value = sXoaMaKhoa;
                //mySqlCommand.ExecuteNonQuery();
            }
            Page_Load(sender, e);

        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            isAdd = true;
            txtMaKhoa.Text = "";
            txtTenKhoa.Text = "";
            txtDienThoai.Text = "";
        }

        protected void btnGhi_Click(object sender, EventArgs e)
        {
            if (isAdd)
            {
                string sQuery = "Insert into KhoaDaoTao (TenKhoa, Phone) values('" + txtTenKhoa.Text + "','" + txtDienThoai.Text + "')";
                mySqlCommand = new SqlCommand(sQuery, mySqlConnection);
                mySqlCommand.ExecuteNonQuery();
                //string sSql = "EXECUTE ThemKhoa @Makhoa, @Tenkhoa, @Phone";
                //mySqlCommand = new SqlCommand(sSql, mySqlConnection);
                //mySqlCommand.Parameters.Add("@Makhoa", SqlDbType.NVarChar, 2);
                //mySqlCommand.Parameters.Add("@Tenkhoa", SqlDbType.NVarChar, 50);
                //mySqlCommand.Parameters.Add("@Phone", SqlDbType.NVarChar, 20);
                //mySqlCommand.Parameters["@Makhoa"].Value = txtMaKhoa.Text;
                //mySqlCommand.Parameters["@Tenkhoa"].Value = txtTenKhoa.Text;
                //mySqlCommand.Parameters["@Phone"].Value = txtDienThoai.Text;
                //mySqlCommand.ExecuteNonQuery();

            }
            else
            {
                string Squery = "update KhoaDaoTao set TenKhoa =N'" + txtTenKhoa.Text + "', Phone =N'" + txtDienThoai.Text + "'where Makhoa ='" + txtMaKhoa.Text.Trim() + "'";
                mySqlCommand = new SqlCommand(Squery, mySqlConnection);
                mySqlCommand.ExecuteNonQuery();
               
            }
            Page_Load(sender, e);
        }
    }
}