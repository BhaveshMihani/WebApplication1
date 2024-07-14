<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1 style="margin-left: 480px">Login Page</h1>
        <div style="margin-left: 440px">
            <asp:Label ID="Label1" runat="server" Text="UserName"></asp:Label>
            :<asp:TextBox ID="TextBox1" runat="server" Width="166px"></asp:TextBox>
            <br />
            <br />
            <br />
            Password:<asp:TextBox ID="TextBox2" runat="server" Width="166px"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
        </div>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
