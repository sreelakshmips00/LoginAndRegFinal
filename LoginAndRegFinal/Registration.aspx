<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="LoginAndRegFinal.Registration" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Registration</title>

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
        input[type="text"], input[type="email"], input[type="password"], button {
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
        .back-link {
            text-align: center;
            margin-top: 15px;
        }
        .back-link a {
            color: #007bff;
            text-decoration: none;
        }
        .back-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
         <div class="container">
      
            <h2>REGISTRATION</h2><br />
            <div class="form-group">
            User Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TxtUsername" runat="server" OnTextChanged="TxtUsername_TextChanged" CssClass="form-control"></asp:TextBox>
            &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtUsername" ErrorMessage="User name cannot be blank" ForeColor="#990000" ValidationGroup="G1">*</asp:RequiredFieldValidator>
            <br />
            <br />
            EMail&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TxtEmail" runat="server" OnTextChanged="TxtEmail_TextChanged" CssClass="form-control"></asp:TextBox>
            &nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtEmail" ErrorMessage="Invalid Email" ForeColor="#990000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="G1">*</asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtEmail" ErrorMessage="Email cannot be blank" ForeColor="#990000" ValidationGroup="G1">*</asp:RequiredFieldValidator>
            <br />
            <br />
            Phone Number&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TxtPhoneNumber" runat="server" OnTextChanged="TxtPhoneNumber_TextChanged" CssClass="form-control"></asp:TextBox>
            &nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TxtPhoneNumber" ErrorMessage="Invalid phone number" ForeColor="#990000" ValidationExpression="^\d{10}$" ValidationGroup="G1">*</asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtPhoneNumber" ErrorMessage="Phone number cannot be blank" ForeColor="#990000" ValidationGroup="G1">*</asp:RequiredFieldValidator>
            <br />
            <br />
            Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TxtPassword" runat="server" OnTextChanged="TxtPassword_TextChanged" TextMode="Password" CssClass="form-control"></asp:TextBox>
            &nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TxtPassword" ErrorMessage="Password must be at least 8 characters long and include a mix of letters and numbers." ForeColor="#990000" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$" ValidationGroup="G1">*</asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtPassword" ErrorMessage="Password cannot be blank" ForeColor="#990000" ValidationGroup="G1">*</asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="G1" />
            <br />
            <asp:Button ID="BtnRegister" runat="server" OnClick="BtnRegister_Click" Text="Register" ValidationGroup="G1" Height="37px" style="margin-top: 0px; background-color: #33CC33" Width="396px" />
            &nbsp;<br />
            </div>
        </div>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
