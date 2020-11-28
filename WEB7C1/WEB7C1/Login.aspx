<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WEB7C1.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            right: 756px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1" style="border:solid 1px red;display:inline-block">
        <tr>
            <td class="auto-style1">Tài khoản:</td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Mật khẩu:</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox2" runat="server" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4" colspan="2" style="text-align:center">
                <asp:Button ID="Button1" runat="server" Text="Đăng nhập" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
