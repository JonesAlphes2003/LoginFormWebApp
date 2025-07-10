<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="LoginFormWebApp.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Form</title>
    <style>
        body{
            text-align:center;
            margin-top:10rem;
            font-size:2rem;
        }
        form{
            border:solid;
            margin-left:30%;
            margin-right:30%;
            padding:5px;
        }
        div{
            padding:5px;
        }
        .btn-login{
            margin-left:12px;

        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Login Form" ForeColor="#FF0066"></asp:Label>
        </div>
        <div>
            <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Height="35px"></asp:TextBox>

        </div>
         <div>
         <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
         <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Height="35px"></asp:TextBox>

       </div>
        <div>
            <asp:Button Cssclass="btn-lobin" ID="Button1" runat="server" Text="Login" BackColor="#009900" ForeColor="White" Height="30px" Width="80px" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="Cancel" BackColor="#CC0000" ForeColor="White" Height="30px" Width="80px" />
        </div>
    </form>
</body>
</html>
