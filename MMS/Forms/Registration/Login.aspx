<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MMS.Forms.Registration.Login" %>

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
        <div class="login">

            <h1>Login</h1>



            <asp:Label ID="Label1" runat="server" Text="Username:"></asp:Label>

            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
          

            <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>

            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

            <div class="button">


                <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
               
            </div>



            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Forms/Registration/Registration.aspx">click here to register</asp:LinkButton>

        </div>

    </form>
</body>
</html>
