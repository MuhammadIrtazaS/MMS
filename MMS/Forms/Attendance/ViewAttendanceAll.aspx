<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Generics/Student.Master" AutoEventWireup="true" CodeBehind="ViewAttendanceAll.aspx.cs" Inherits="MMS.Forms.Attendance.ViewAttendance" %>

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
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
                <Columns>
                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                    <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
                    <asp:BoundField DataField="meal_name" HeaderText="meal_name" SortExpression="meal_name" />
                    <asp:BoundField DataField="user_id" HeaderText="user_id" SortExpression="user_id" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mms_dbConnectionString2 %>" SelectCommand="SELECT [date], [time], [meal_name], [user_id] FROM [attendance]"></asp:SqlDataSource>
            <asp:Button ID="Button1" runat="server" PostBackUrl="~/Forms/Attendance/MarkAttendance.aspx" Text="Mark Attendance" />
        </div>
    </div>
</asp:Content>
