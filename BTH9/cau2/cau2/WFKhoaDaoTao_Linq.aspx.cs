using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cau2
{
    public partial class WFKhoaDaoTao_Linq : System.Web.UI.Page
    {
        QuanlyhocEntities1 myQuanlyhocEntities;
        static bool isAdd;
        protected void Page_Load(object sender, EventArgs e)
        {
            myQuanlyhocEntities = new QuanlyhocEntities1();
                var mySql = from i in myQuanlyhocEntities.KhoaDaoTaos
                            select i;
                GridView1.DataSource = mySql.ToList();
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
                txtPhone.Text = GridView1.Rows[row].Cells[2].Text;
            }
            else if(e.CommandName == "btnXoa")
            {
                string sMaKhoa = GridView1.Rows[row].Cells[0].Text;
                var queryDelete = from i in myQuanlyhocEntities.KhoaDaoTaos
                                  where i.MaKhoa.ToString() == sMaKhoa
                                  select i;
                KhoaDaoTao khoa = queryDelete.First();
                myQuanlyhocEntities.KhoaDaoTaos.Remove(khoa);
                myQuanlyhocEntities.SaveChanges();
               
            }
            Page_Load(sender, e);
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            isAdd = true;
            txtMaKhoa.Text = "";
            txtTenKhoa.Text = "";
            txtPhone.Text = "";

        }

        protected void btnGhi_Click(object sender, EventArgs e)
        {
            if (isAdd)
            {
                KhoaDaoTao mykhoa = new KhoaDaoTao();
                //mykhoa.MaKhoa = Convert.ToInt32(txtMaKhoa.Text);
                mykhoa.TenKhoa = txtTenKhoa.Text;
                mykhoa.Phone = txtPhone.Text;
                myQuanlyhocEntities.KhoaDaoTaos.Add(mykhoa);
                myQuanlyhocEntities.SaveChanges();

            }
            else
            {
                var myUpdate = from i in myQuanlyhocEntities.KhoaDaoTaos
                               where i.MaKhoa.ToString() == txtMaKhoa.Text
                               select i;
                KhoaDaoTao myKhoa = myUpdate.First();
                myKhoa.MaKhoa = Convert.ToInt32(txtMaKhoa.Text);
                myKhoa.TenKhoa = txtTenKhoa.Text;
                myKhoa.Phone = txtPhone.Text;
                myQuanlyhocEntities.SaveChanges();

            }
            Page_Load(sender, e);
        }
    }
}