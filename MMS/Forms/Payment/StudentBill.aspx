<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Generics/Student.Master" AutoEventWireup="true" CodeBehind="StudentBill.aspx.cs" Inherits="MMS.Forms.Payment.StudentBill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body{
            background: url("../Images/coin_stack.jpg");
            background-size: cover;
        }
                .payment-link{
            
    border: 1px solid var(--secondary-color);
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="student-bill">

            <!-- Student Bill Table -->
            <div class="table-container">
                <div class="data">
                    <asp:Label ID="Label1" runat="server" Text="TotalMeals" CssClass="heading"></asp:Label>
                    <asp:Label ID="total_meals_lbl" runat="server" Text="30" CssClass="value"></asp:Label>
                </div>

                <div class="data">
                    <asp:Label ID="Label3" runat="server" Text="Total bill" CssClass="heading"></asp:Label>
                    <asp:Label ID="total_bill_lbl" runat="server" Text="5000" CssClass="value"></asp:Label>
                </div>

                <div class="data">
                    <asp:Label ID="Label5" runat="server" Text="Status" CssClass="heading"></asp:Label>
                    <asp:Label ID="Label6" runat="server" Text="Unpaid" CssClass="value"></asp:Label>
                </div>
            </div>
        </div>
    
</asp:Content>
