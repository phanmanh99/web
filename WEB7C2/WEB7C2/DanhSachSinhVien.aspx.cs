using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEB7C2
{
    public partial class DanhSachSinhVien : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string saveDir = @"\Images\";
            List<SinhVien> sinhViens = new List<SinhVien>();
            sinhViens = (List<SinhVien>)Session["data"];
            foreach (SinhVien sinhVien in sinhViens)
            {
                div.InnerHtml += "<div style=\"text-align: center;display: inline-block;\"> ";
                div.InnerHtml += sinhVien.maSinhVien + "<br>";
                div.InnerHtml += sinhVien.hoTen + "<br>";
                div.InnerHtml += sinhVien.lop + "<br>";
                div.InnerHtml += sinhVien.tinh + "<br>";
                div.InnerHtml += sinhVien.dienThoai + "<br>";
                div.InnerHtml += "<img src=\""+(saveDir+sinhVien.hinhAnh)+ "\" style=\"height: 200px; width: auto\">";
                div.InnerHtml += "</div>";
            }
        }
    }
}