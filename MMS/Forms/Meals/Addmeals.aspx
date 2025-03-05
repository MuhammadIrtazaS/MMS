<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Generics/Staff.Master" AutoEventWireup="true" CodeBehind="Addmeals.aspx.cs" Inherits="MMS.Forms.Meals.Addmeals" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/Mealsstylesheet.css" rel="stylesheet" />
    <style>
        body {
            background: url("../Images/chef.jpg");
            background-size: cover;
        }
                .menu-link{
            
    border: 1px solid var(--secondary-color);
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="controlsmeal">
            <asp:Label ID="Label1" runat="server" Text="Meal Name"></asp:Label>
            <asp:TextBox ID="meal_name_fld" runat="server"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text="Time"></asp:Label>
            <asp:RadioButtonList ID="me_rl" runat="server">
                <asp:ListItem Value="M">Morning</asp:ListItem>
                <asp:ListItem Value="E">Evening</asp:ListItem>
            </asp:RadioButtonList>
            <asp:Label ID="Label3" runat="server" Text="Day"></asp:Label>
            <asp:DropDownList ID="day_dl" runat="server" CssClass="drop">
                <asp:ListItem Value="Mon">Monday</asp:ListItem>
                <asp:ListItem Value="Tue">Tuesday</asp:ListItem>
                <asp:ListItem Value="Wed">Wednesday</asp:ListItem>
                <asp:ListItem Value="Thu">Thursday</asp:ListItem>
                <asp:ListItem Value="Fri">Friday</asp:ListItem>
                <asp:ListItem Value="Sat">Saturday</asp:ListItem>
                <asp:ListItem Value="Sun">Sunday</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label4" runat="server" Text="Price"></asp:Label>
            <asp:TextBox ID="price_fld" runat="server"></asp:TextBox>
            <div class="submit">
                <asp:Button ID="save_btn" runat="server" Text="Save" CssClass="submit" OnClick="save_btn_Click" />
            </div>
        </div>
    </section>
</asp:Content>
