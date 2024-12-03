<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LoginAndRegFinal.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Login</title>
        <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 100%;
            max-width: 400px;
            margin: 50px auto;
            padding: 20px;
            background: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            border-radius: 8px;
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }
        input[type="text"], input[type="password"], button {
            width: 100%;
            padding: 10px;
            margin: 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        button {
            background-color: #28a745;
            color: #fff;
            font-size: 16px;
            cursor: pointer;
        }
        button:hover {
            background-color: #218838;
        }
        .signup-link {
            text-align: center;
            margin-top: 15px;
        }
        .signup-link a {
            color: #007bff;
            text-decoration: none;
        }
        .signup-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            
            <h2>LOGIN</h2>
            <div class="form-group">
                <br />
            <br />
            User Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:TextBox ID="TxtUsername" runat="server" OnTextChanged="TxtUsername_TextChanged" CssClass="form-control"></asp:TextBox>
                <br />
            <br />
            PassWord&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TxtPassword" runat="server" OnTextChanged="TxtPassword_TextChanged" CssClass="form-control"></asp:TextBox>
                <br />
            <br />
            <br />
            &nbsp;
            <asp:Button ID="BtnLogin" runat="server" OnClick="BtnLogin_Click" Text="Login" Height="38px" style="margin-left: 73px; background-color: #33CC33" Width="239px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                <br />
                Don&#39;t have an account? <asp:Button ID="BtnSignup" runat="server" OnClick="BtnSignup_Click" Text="SignUp" style="background-color: #66CCFF" Width="99px" />
            <br />
            <br />
            <asp:Label ID="LblError" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            </div>
        </div>
    </form>
</body>
</html>
