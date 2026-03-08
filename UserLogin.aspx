<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="HotelManagementSystem.UserLogin" %>
   

<!DOCTYPE html>
<html>
<head runat="server">
    <title>User Login</title>
    <style>
    body {
        font-family: 'Segoe UI', Arial;
        background: #f4f6f8;
    }

    .form-container {
        width: 400px;
        margin: 80px auto;
        background: white;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 4px 15px rgba(0,0,0,0.2);
    }

    h2 {
        text-align: center;
        color: #003580;
        margin-bottom: 20px;
    }

    label {
        font-weight: 600;
        color: #333;
    }

    input[type=text],
    input[type=password] {
        width: 100%;
        padding: 10px;
        margin-top: 5px;
        margin-bottom: 15px;
        border-radius: 5px;
        border: 1px solid #ccc;
    }

    .btn {
        width: 100%;
        padding: 10px;
        background: #003580;
        color: white;
        border: none;
        border-radius: 25px;
        font-size: 16px;
        cursor: pointer;
    }

    .btn:hover {
        background: #0057b8;
    }

    .message {
        text-align: center;
        margin-top: 10px;
        color: green;
    }
</style>

</head>
<body>
    <form id="form1" runat="server">
        <h2>User Login</h2>

        Username:
        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
        <br /><br />

        Password:
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        <br /><br />

        <asp:Button ID="btnLogin" runat="server" Text="Login"
            OnClick="btnLogin_Click" />
        <br /><br />

        <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>
    </form>
</body>
</html>
