<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="CSS/loginstylesheet.css" rel="stylesheet" />
</head>
<body class="login-page">
    <div class="container">
        <div class="left-side"></div>
        <div class="right-side">
            <form id="form1" runat="server" class="login-form">
                <h1 class="login-title">Sign In</h1>
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" Text="UserName" CssClass="form-label"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-input"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" Text="Password" CssClass="form-label"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" CssClass="form-input"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" CssClass="form-button" />
                </div>
                <div class="form-group">
                    <a href="Registration.aspx">New User?</a>
                </div>
                <asp:Label ID="Label3" runat="server" CssClass="login-message"></asp:Label>
            </form>
        </div>
    </div>
</body>
</html>
