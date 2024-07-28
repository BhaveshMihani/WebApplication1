<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="WebApplication1.Registration" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Page</title>
    <link href="CSS/registrationcss.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <div class="left-side"></div>
        <div class="right-side">
            <form id="form1" runat="server" class="form-container">
                <h2>Registration Page</h2>
                <div class="form-group">
                    <asp:Label ID="Label3" runat="server" Text="Name: " CssClass="form-label"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-input"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label5" runat="server" Text="Username: " CssClass="form-label"></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-input"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label4" runat="server" Text="Email: " CssClass="form-label"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-input"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label6" runat="server" Text="Password: " CssClass="form-label"></asp:Label>
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" CssClass="form-input"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label7" runat="server" Text="Confirm Password: " CssClass="form-label"></asp:Label>
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="Password" CssClass="form-input"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" CssClass="form-button" />
                </div>
                <div class="form-group">
                    <a href="WebForm1.aspx" class="olduser">Already a User?</a>
                </div>
                <asp:Label ID="Label8" runat="server" CssClass="label8"></asp:Label>
            </form>
        </div>
    </div>
</body>
</html>
