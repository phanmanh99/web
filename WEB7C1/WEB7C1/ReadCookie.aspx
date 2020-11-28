﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReadCookie.aspx.cs" Inherits="WEB7C1.ReadCookie" %>

<%@ Register src="ucMenu.ascx" tagname="ucMenu" tagprefix="uc1" %>
<%@ Register src="ucLeft.ascx" tagname="ucLeft" tagprefix="uc2" %>
<%@ Register src="ucFooter.ascx" tagname="ucFooter" tagprefix="uc3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-color:yellow; color:red">
        <uc1:ucMenu ID="ucMenu1" runat="server" />
            <span style="float:right">
                Xin chào Admin | 
                <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Red" Font-Underline="false" OnClick="LinkButton1_Click">Đăng xuất</asp:LinkButton>
            </span>
            </div>
        <uc2:ucLeft ID="ucLeft1" runat="server" />
        <uc3:ucFooter ID="ucFooter1" runat="server" />
    </form>
</body>
</html>
