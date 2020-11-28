using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

namespace WEB7C2
{
    public partial class ThemSinhVien : System.Web.UI.Page
    {
        static List<SinhVien> sinhViens = new List<SinhVien>();
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string saveDir = Page.MapPath(@"~\") + @"\Images\";
            if (TextBox1.Text.Length == 0 || TextBox2.Text.Length == 0 || TextBox3.Text.Length == 0)
            {
                Response.Write("<script>alert('Mã sinh viên, họ tên, điện thoại không được để trống')</script>");
            }
            else if(!(Regex.IsMatch(TextBox2.Text, @"\d{10}") && TextBox2.Text.Length == 10)) {
                Response.Write("<script>alert('Điện thoại phải nhập 10 số')</script>");
            }
            else if(!FileUpload1.HasFile)
            {
                Response.Write("<script>alert('Phải chọn hình ảnh')</script>");
            }
            else
            {
                sinhViens.Add(new SinhVien() {maSinhVien=TextBox1.Text, hoTen=TextBox3.Text, lop=DropDownList1.SelectedValue, tinh=DropDownList2.SelectedValue, dienThoai=TextBox2.Text, hinhAnh=FileUpload1.FileName});
                FileUpload1.SaveAs(saveDir + FileUpload1.FileName);
                Response.Write(sinhViens.Count);
                Session["data"] = sinhViens;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
        }
    }
}