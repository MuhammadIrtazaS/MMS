<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="MMS.Forms.Registration.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../CSS/Registrationstylesheet.css" rel="stylesheet" />
    <style>
        body{
            background: url("../Images/food-truck.jpg");
            background-size: cover;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
                <div class="login2">

            <h1>Register</h1>
             

            <asp:Label ID="Label3" runat="server" Text="Name"></asp:Label>

            <asp:TextBox ID="name_fld" runat="server"></asp:TextBox>

            <asp:Label ID="Label4" runat="server" Text="Roll no:"></asp:Label>

            <asp:TextBox ID="roll_no_fld" runat="server"></asp:TextBox>

            <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>

            <asp:TextBox ID="password_fld" runat="server"></asp:TextBox>

            <asp:Label ID="Label6" runat="server" Text="Confirm Password"></asp:Label>

            <asp:TextBox ID="conf_pass_fld" runat="server"></asp:TextBox>

            <div class="button2">
            <asp:Button ID="register_btn" runat="server" Text="Register" OnClick="register_btn_clicked" />
            </div>

            <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/Forms/Registration/Login.aspx">Click here to login</asp:LinkButton>


        </div>

       
    </form>
</body>
</html>
