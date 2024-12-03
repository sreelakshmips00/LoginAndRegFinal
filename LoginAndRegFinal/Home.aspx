<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="LoginAndRegFinal.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Home</title>

</head>
<body>
    <p>
        <br />
    </p>
    <form id="form1" runat="server">
        <div style="text-align: center;">
            <h2>Welcome, <asp:Label ID="LblUsername" runat="server" Text="Label"></asp:Label>!</h2>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="BtnLogout" runat="server" OnClick="BtnLogout_Click" Text="Logout" />
        </div>
    </form>
</body>
</html>
