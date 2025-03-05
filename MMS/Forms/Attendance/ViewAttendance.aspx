<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Generics/Student.Master" AutoEventWireup="true" CodeBehind="ViewAttendance.aspx.cs" Inherits="MMS.Forms.Attendance.ViewAttendance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body{
            background: url("../Images/italian_food.jpg");
            background-size: cover;
        }
                .attendence-link{
            
    border: 1px solid var(--secondary-color);
}
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
        <!-- <div class="controls">
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>January</asp:ListItem>
                <asp:ListItem Selected="True">February</asp:ListItem>
                <asp:ListItem>March</asp:ListItem>
            </asp:DropDownList>
        </div> -->
        <div class="data">
            <asp:Table ID="Table1" runat="server" BackColor="White" CellPadding="5" CellSpacing="5">
                <asp:TableRow runat="server" TableSection="TableHeader">
                    <asp:TableCell runat="server">Date</asp:TableCell>
                    <asp:TableCell runat="server">Morning</asp:TableCell>
                    <asp:TableCell runat="server">Evening</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">12-06-2024</asp:TableCell>
                    <asp:TableCell runat="server">180</asp:TableCell>
                    <asp:TableCell runat="server">160</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
    <asp:TableCell runat="server">12-01-2025</asp:TableCell>
    <asp:TableCell runat="server">170</asp:TableCell>
    <asp:TableCell runat="server">150</asp:TableCell>
</asp:TableRow>
                <asp:TableRow runat="server">
    <asp:TableCell runat="server">12-02-2024</asp:TableCell>
    <asp:TableCell runat="server">200</asp:TableCell>
    <asp:TableCell runat="server">100</asp:TableCell>
</asp:TableRow>
            </asp:Table>
        </div>
    </div>
</asp:Content>
