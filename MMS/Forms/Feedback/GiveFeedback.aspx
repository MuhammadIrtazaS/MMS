<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Generics/Student.Master" AutoEventWireup="true" CodeBehind="GiveFeedback.aspx.cs" Inherits="MMS.Forms.Feedback.GiveFeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body{
            background: url("../Images/healthy_food.jpg");
            background-size: cover;
        }
                .feedback-link{
            
    border: 1px solid var(--secondary-color);
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="give-feedback my-form">
        <h1>Feedback Page</h1>
        <asp:TextBox ID="text_fld" runat="server" Height="86px" TextMode="MultiLine"></asp:TextBox>
        <div class="meals-rattings">
            <asp:DropDownList ID="meal_list" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
                <asp:ListItem>A</asp:ListItem>
                <asp:ListItem>B</asp:ListItem>
                <asp:ListItem>C</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mms_dbConnectionString2 %>" SelectCommand="SELECT DISTINCT [name], [Id] FROM [meal]"></asp:SqlDataSource>
            <style>
                .rattings{
                    display: flex;
                }
                .rattings tr{
                    display: inline-block;
                }
            </style>
            <div class="rattings">
                <asp:RadioButtonList ID="rattings_list" runat="server" CssClass="rattings">
                    <asp:ListItem Value="1">1</asp:ListItem>
                    <asp:ListItem Value="2">2</asp:ListItem>
                    <asp:ListItem Value="3">3</asp:ListItem>
                    <asp:ListItem Value="4">4</asp:ListItem>
                    <asp:ListItem Value="5">5</asp:ListItem>
                </asp:RadioButtonList>
            </div>
        </div>
        <asp:Button ID="send_btn" runat="server" Text="Send" OnClick="send_btn_Click" />
    </div>
</asp:Content>
