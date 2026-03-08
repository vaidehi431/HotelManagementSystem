<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="HotelManagementSystem.Default" %>



<!DOCTYPE html>
<html>
<head>
    <title>Hotel Management System</title>

    <style>
        body {
            margin: 0;
            font-family: Arial;
            background: #eef2f5;
        }

        /* HEADER */
        .header {
            background: #003580;
            color: white;
            padding: 15px 40px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-size: 22px;
            font-weight: bold;
        }

        .btn {
            padding: 8px 15px;
            background: white;
            color: #003580;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-left: 10px;
        }

        /* MODAL BACKGROUND */
        .modal {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0,0,0,0.5);
        }

        /* MODAL BOX */
        .modal-content {
            background: white;
            width: 360px;
            margin: 120px auto;
            padding: 25px;
            border-radius: 8px;
            position: relative;
        }

        .input-box {
            width: 100%;
            padding: 10px;
            margin-bottom: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .close {
            position: absolute;
            top: 10px;
            right: 15px;
            cursor: pointer;
            font-weight: bold;
        }
    </style>
</head>

<body>
<form runat="server">

    <!-- HEADER -->
    <div class="header">
        <div class="logo">🏨 Hotel Management</div>
        <div>
            <button type="button" class="btn" onclick="openLogin()">Login</button>
            <button type="button" class="btn" onclick="openRegister()">Register</button>
        </div>
    </div>

    <!-- LOGIN POPUP -->
    <div id="loginModal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeLogin()">✖</span>
            <h3>User Login</h3>

            <asp:TextBox ID="txtLoginUsername" runat="server"
                CssClass="input-box" Placeholder="Username"></asp:TextBox>

            <asp:TextBox ID="txtLoginPassword" runat="server"
                TextMode="Password" CssClass="input-box" Placeholder="Password"></asp:TextBox>

            <asp:Button ID="btnLogin" runat="server"
                Text="Login" CssClass="btn" OnClick="btnLogin_Click" />

            <asp:Label ID="lblLoginMsg" runat="server"></asp:Label>
        </div>
    </div>

    <!-- REGISTRATION POPUP -->
    <div id="registerModal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeRegister()">✖</span>
            <h3>User Registration</h3>

            <asp:TextBox ID="txtName" runat="server"
                CssClass="input-box" Placeholder="Full Name"></asp:TextBox>

            <asp:TextBox ID="txtMobile" runat="server"
                CssClass="input-box" Placeholder="Mobile Number"></asp:TextBox>

            <asp:TextBox ID="txtRegUsername" runat="server"
                CssClass="input-box" Placeholder="Username"></asp:TextBox>

            <asp:TextBox ID="txtRegPassword" runat="server"
                TextMode="Password" CssClass="input-box" Placeholder="Password"></asp:TextBox>

            <asp:Button ID="btnRegister" runat="server"
                Text="Register" CssClass="btn" OnClick="btnRegister_Click" />

            <asp:Label ID="lblRegMsg" runat="server"></asp:Label>
        </div>
    </div>

</form>

<!-- JAVASCRIPT -->
<script>
    function openLogin() {
        document.getElementById("loginModal").style.display = "block";
    }
    function closeLogin() {
        document.getElementById("loginModal").style.display = "none";
    }

    function openRegister() {
        document.getElementById("registerModal").style.display = "block";
    }
    function closeRegister() {
        document.getElementById("registerModal").style.display = "none";
    }
</script>

</body>
</html>
