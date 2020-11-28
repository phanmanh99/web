<%@ Page Title="" Language="C#" MasterPageFile="~/MaterPage.Master" AutoEventWireup="true" CodeBehind="ThemSinhVien.aspx.cs" Inherits="WEB7C2.ThemSinhVien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table>
        <tr>
            <td class="auto-style1">Mã sinh viên:</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style1">Họ và tên:</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Lớp:</td>
            <td class="auto-style1">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>58K1</asp:ListItem>
                    <asp:ListItem>58K2</asp:ListItem>
                    <asp:ListItem>58K3</asp:ListItem>
                    <asp:ListItem>58K4</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Tỉnh:</td>
            <td class="auto-style1">
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>Nghệ An</asp:ListItem>
                    <asp:ListItem>Hà Tĩnh</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Điện thoại:</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Hình ảnh:</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Thêm" OnClick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" Text="Xóa" OnClick="Button2_Click" />
            </td>
        </tr>
    </table>

</asp:Content>
