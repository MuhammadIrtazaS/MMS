<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Generics/Staff.Master" AutoEventWireup="true" CodeBehind="ViewAttendanceAll.aspx.cs" Inherits="MMS.Forms.Attendance.ViewAttendanceAll" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="content">
        <div class="data">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." CssClass="grid-table" GridLines="None">
                <Columns>
                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                    <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
                    <asp:BoundField DataField="meal_name" HeaderText="meal_name" SortExpression="meal_name" />
                    <asp:BoundField DataField="user_id" HeaderText="user_id" SortExpression="user_id" />
                </Columns>
            </asp:GridView>

        </div>
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mms_dbConnectionString2 %>" SelectCommand="SELECT [date], [time], [meal_name], [user_id] FROM [attendance]"></asp:SqlDataSource>
    

</asp:Content>
