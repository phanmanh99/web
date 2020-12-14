<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WFKhoaDaoTao_Linq.aspx.cs" Inherits="cau2.WFKhoaDaoTao_Linq" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 131px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            NHẬP - SỬA - XÓA KHOA ĐÀO TẠO<br />
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">Mã Khoa:</td>
                    <td>
                        <asp:TextBox ID="txtMaKhoa" runat="server" Width="76px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Tên Khoa:</td>
                    <td>
                        <asp:TextBox ID="txtTenKhoa" runat="server" Width="264px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Điện thoại:</td>
                    <td>
                        <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnThem" runat="server" Text="Thêm mới" OnClick="btnThem_Click" />
&nbsp;<asp:Button ID="btnGhi" runat="server" Text="Ghi" OnClick="btnGhi_Click" />
                    </td>
                </tr>
            </table>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="GridView1_RowCommand">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="MaKhoa" HeaderText="Mã Khoa" />
                <asp:BoundField DataField="TenKhoa" HeaderText="Tên Khoa" />
                <asp:BoundField DataField="Phone" HeaderText="Điện Thoại" />
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
