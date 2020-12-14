<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WFTimkiem_Sua_Xoa_SinhVien.aspx.cs" Inherits="cau2.WFSinhVien" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 177px;
        }
        .auto-style2 {
            width: 40%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            TÌM KIẾM - SỬA - XÓA SINH VIÊN<br />
        </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style1">Khoa Đào Tạo:</td>
                <td>
                    <asp:DropDownList ID="ddlKhoa" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlKhoa_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Lớp BC:</td>
                <td>
                    <asp:TextBox ID="txtLopBC" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Mã sinh viên:</td>
                <td>
                    <asp:TextBox ID="txtMaSV" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Họ và tên:</td>
                <td>
                    <asp:TextBox ID="txtHoTen" runat="server" Width="251px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Ngày sinh:</td>
                <td>
                    <asp:TextBox ID="txtNgaySinh" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Địa chỉ:</td>
                <td>
                    <asp:TextBox ID="txtDiaChi" runat="server" Width="289px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Button ID="btnGhi" runat="server" OnClick="btnGhi_Click" Text="Ghi" Width="95px" />
                &nbsp;</td>
            </tr>
        </table>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="GridView1_RowCommand">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="MaKhoa" HeaderText="Mã Khoa" />
                <asp:BoundField DataField="LopBC" HeaderText="Lớp BC" />
                <asp:BoundField DataField="MaSV" HeaderText="Mã sinh viên" />
                <asp:BoundField DataField="HoTen" HeaderText="Họ và tên" HtmlEncode="False" />
                <asp:BoundField DataField="NgaySinh" HeaderText="Ngày sinh" />
                <asp:BoundField DataField="DiaChi" HeaderText="Địa chỉ" HtmlEncode="False" />
                <asp:ButtonField CommandName="btnSua" Text="Sửa" />
                <asp:ButtonField CommandName="btnXoa" Text="Xóa" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    </form>
</body>
</html>
