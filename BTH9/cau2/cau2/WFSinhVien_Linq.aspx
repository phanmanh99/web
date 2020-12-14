<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WFSinhVien_Linq.aspx.cs" Inherits="cau2.WFSinhVien_Linq" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 181px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            NHẬP - SỬA - XÓA SINH VIÊN<br />
        </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">Khoa đào tạo:</td>
                <td>
                    <asp:DropDownList ID="ddlKhoa" runat="server" AutoPostBack="True" Height="16px" OnSelectedIndexChanged="ddlKhoa_SelectedIndexChanged" Width="115px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Lớp BC:</td>
                <td>
                    <asp:TextBox ID="txtLop" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Mã sinh viên:</td>
                <td>
                    <asp:TextBox ID="txtMasv" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Họ và tên:</td>
                <td>
                    <asp:TextBox ID="txtHoten" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Ngày sinh:</td>
                <td>
                    <asp:TextBox ID="txtNgaysinh" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Địa chỉ:</td>
                <td>
                    <asp:TextBox ID="txtDiachi" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Button ID="btnGhi" runat="server" OnClick="btnGhi_Click" Text="Ghi" />
                    <asp:Button ID="btnThem" runat="server" OnClick="btnThem_Click" Text="Thêm" />
                </td>
            </tr>
        </table>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="GridView1_RowCommand">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="MaKhoa" HeaderText="Mã khoa" />
                <asp:BoundField DataField="LopBC" HeaderText="Lớp BC" />
                <asp:BoundField DataField="MaSV" HeaderText="Mã sinh viên" />
                <asp:BoundField DataField="HoTen" HeaderText="Họ và tên" />
                <asp:BoundField DataField="NgaySinh" HeaderText="Ngày sinh" />
                <asp:BoundField DataField="DiaChi" HeaderText="Địa chỉ" />
                <asp:ButtonField CommandName="btnSua" Text="Sửa" ButtonType="Button" />
                <asp:ButtonField CommandName="btnXoa" Text="Xóa" ButtonType="Button" />
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
