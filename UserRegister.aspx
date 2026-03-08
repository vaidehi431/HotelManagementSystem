<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserRegister.aspx.cs" Inherits="HotelManagementSystem.UserRegister" %>


<!DOCTYPE html>
<html>
<head>
    <title>User Registration</title>

    <style>
        body {
            font-family: Arial;
            background: #eef2f5;
        }

        .container {
            width: 360px;
            margin: 100px auto;
            background: white;
            padding: 25px;
            border-radius: 8px;
        }

        .input-box {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
        }

        .btn {
            width: 100%;
            padding: 10px;
            background: #003580;
            color: white;
            border: none;
        }
    </style>
</head>

<body>
<form runat="server">
    <div class="container">
        <h2>User Registration</h2>

        <label>Name</label>
        <asp:TextBox ID="txtName" runat="server"
            CssClass="input-box" Placeholder="Full Name"></asp:TextBox>

        <label>Mobile Number</label>
        <asp:TextBox ID="txtMobile" runat="server"
            CssClass="input-box" Placeholder="Mobile Number"></asp:TextBox>

        <label>Username</label>
        <asp:TextBox ID="txtUsername" runat="server"
            CssClass="input-box" Placeholder="Username"></asp:TextBox>

        <label>Password</label>
        <asp:TextBox ID="txtPassword" runat="server"
            TextMode="Password" CssClass="input-box" Placeholder="Password"></asp:TextBox>

        <asp:Button ID="btnRegister" runat="server"
            Text="Register" CssClass="btn" OnClick="btnRegister_Click" />

        <asp:Label ID="lblMsg" runat="server"></asp:Label>
    </div>
</form>

</body>
</html>
