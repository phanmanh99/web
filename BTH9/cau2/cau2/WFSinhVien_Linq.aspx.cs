using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cau2
{
    public partial class WFSinhVien_Linq : System.Web.UI.Page
    {
        
        QuanlyhocEntities1 myQuanlyhocEntities;
        static bool isAdd;
        protected void Page_Load(object sender, EventArgs e)
        {
            myQuanlyhocEntities = new QuanlyhocEntities1();
            if (!IsPostBack)
            {
                var myQuery = from i in myQuanlyhocEntities.KhoaDaoTaos
                              select i;
                ddlKhoa.DataSource = myQuery.ToList();
                ddlKhoa.DataTextField = "TenKhoa";
                ddlKhoa.DataValueField = "MaKhoa";
                ddlKhoa.DataBind();
                ddlKhoa_SelectedIndexChanged(sender, e);

            }
        }

        protected void ddlKhoa_SelectedIndexChanged(object sender, EventArgs e)
        {
            var myDisplay = from i in myQuanlyhocEntities.SinhViens
                            where i.MaKhoa.ToString() == ddlKhoa.SelectedValue
                            select i;
            GridView1.DataSource = myDisplay.ToList();
            GridView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int row = Convert.ToInt32(e.CommandArgument);
            if(e.CommandName == "btnSua")
            {
                isAdd = false;
                ddlKhoa.SelectedValue = GridView1.Rows[row].Cells[0].Text;
                txtMasv.Text = GridView1.Rows[row].Cells[2].Text;
                txtLop.Text = GridView1.Rows[row].Cells[1].Text;
                txtHoten.Text = GridView1.Rows[row].Cells[3].Text;
                txtNgaysinh.Text = GridView1.Rows[row].Cells[4].Text;
                txtDiachi.Text = GridView1.Rows[row].Cells[5].Text;

            }
            else if(e.CommandName == "btnXoa")
            {
                string sMaSV = GridView1.Rows[row].Cells[2].Text;
                var myDelete = from i in myQuanlyhocEntities.SinhViens
                               where i.MaSV.ToString() == sMaSV
                               select i;
                SinhVien sv = myDelete.First();
                myQuanlyhocEntities.SinhViens.Remove(sv);
                myQuanlyhocEntities.SaveChanges();
            }
            ddlKhoa_SelectedIndexChanged(sender, e);
        }

        protected void btnGhi_Click(object sender, EventArgs e)
        {
            if (isAdd)
            {
                SinhVien mysv = new SinhVien();
                mysv.MaKhoa = Convert.ToInt32(ddlKhoa.SelectedValue.ToString());
                mysv.LopBC = txtLop.Text;
                //mysv.MaSV = Convert.ToInt32(txtMasv.Text);
                mysv.HoTen = txtHoten.Text;
                mysv.NgaySinh = txtNgaysinh.Text;
                mysv.DiaChi = txtDiachi.Text;
                myQuanlyhocEntities.SinhViens.Add(mysv);
                myQuanlyhocEntities.SaveChanges();

            }
            else
            {
                var myUpdate = from i in myQuanlyhocEntities.SinhViens
                               where i.MaSV.ToString() == txtMasv.Text
                               select i;
                SinhVien mySV = myUpdate.First();
                mySV.MaKhoa = Convert.ToInt32(ddlKhoa.SelectedValue.ToString());
                mySV.LopBC = txtLop.Text;
                mySV.HoTen = txtHoten.Text;
                mySV.NgaySinh = txtNgaysinh.Text;
                mySV.DiaChi = txtDiachi.Text;
                myQuanlyhocEntities.SaveChanges();
            }
            ddlKhoa_SelectedIndexChanged(sender, e);
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            isAdd = true;
            txtLop.Text = "";
            txtMasv.Text = "";
            txtHoten.Text = "";
            txtNgaysinh.Text = "";
            txtDiachi.Text = "";
        }
    }
}