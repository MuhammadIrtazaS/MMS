<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Generics/Staff.Master" AutoEventWireup="true" CodeBehind="PaymentRecords.aspx.cs" Inherits="MMS.Forms.Payment.PaymentRecords" %>
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
    <div class="payment-records">


         <div class="data">
     <asp:Table ID="Table1" runat="server" BackColor="White" CellPadding="5" CellSpacing="5">
         <asp:TableRow runat="server" TableSection="TableHeader">
             <asp:TableCell runat="server">StudentID</asp:TableCell>
             <asp:TableCell runat="server">Total Meals</asp:TableCell>
             <asp:TableCell runat="server">Total Bill</asp:TableCell>
             <asp:TableCell runat="server">Status</asp:TableCell>
         </asp:TableRow>

     </asp:Table>
 </div>
        

           
    </div>
</asp:Content>
