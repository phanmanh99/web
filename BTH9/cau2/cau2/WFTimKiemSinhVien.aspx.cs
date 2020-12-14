using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cau2
{
    public partial class WFTimKiemSinhVien : System.Web.UI.Page
    {
        QuanlyhocEntities1 myQuanlyhocEntities;
        protected void Page_Load(object sender, EventArgs e)
        {
            myQuanlyhocEntities = new QuanlyhocEntities1();
            if (!IsPostBack)
            {

                var sQuery = from i in myQuanlyhocEntities.SinhViens
                             select i;
                ddlMaSV.DataSource = sQuery.ToList();
                ddlMaSV.DataValueField = "MaSV";
                ddlMaSV.DataBind();
                ddlMaSV_SelectedIndexChanged(sender, e);
            }

        }

        protected void ddlMaSV_SelectedIndexChanged(object sender, EventArgs e)
        {
            var sDisplay = from i in myQuanlyhocEntities.SinhViens
                           join j in myQuanlyhocEntities.KhoaDaoTaos
                           on i.MaKhoa equals j.MaKhoa
                           where i.MaSV.ToString() == ddlMaSV.SelectedValue
                           select new
                           {
                               i.MaSV,
                               i.HoTen,
                               j.TenKhoa
                           };
            GridView1.DataSource = sDisplay.ToList();
            GridView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int row = Convert.ToInt32(e.CommandArgument);
            String sMaSV = GridView1.Rows[row].Cells[0].Text;
            if (e.CommandName == "btnChitiet")
            {
                var sDetail = from i in myQuanlyhocEntities.MonHocs
                              join j in myQuanlyhocEntities.DangKyHocs on i.MaMon equals j.MaMon
                              where j.MaSV.ToString() == sMaSV
                              select new
                              {
                                  i.TenMon,
                                  j.NamHK
                              };
                GridView2.DataSource = sDetail.ToList();
                GridView2.DataBind();
            }
        }

        protected void btnTim_Click(object sender, EventArgs e)
        {
            var sFind = from i in myQuanlyhocEntities.SinhViens
                        join j in myQuanlyhocEntities.KhoaDaoTaos
                        on i.MaKhoa equals j.MaKhoa
                        where i.HoTen.Contains(txtTim.Text)
                        select new
                        {
                            i.MaSV,
                            i.HoTen,
                            j.TenKhoa
                        };
            GridView1.DataSource = sFind.ToList();
            GridView1.DataBind();
        }
    }
}