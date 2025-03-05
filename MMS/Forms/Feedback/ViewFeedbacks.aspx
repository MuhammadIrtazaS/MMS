<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Generics/Staff.Master" AutoEventWireup="true" CodeBehind="ViewFeedbacks.aspx.cs" Inherits="MMS.Forms.Feedback.ViewFeedbacks" %>
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
    <div class="content">
        <div class="data">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
                <Columns>
                    <asp:BoundField DataField="text" HeaderText="text" SortExpression="text" />
                    <asp:BoundField DataField="ratings" HeaderText="ratings" SortExpression="ratings" />
                    <asp:BoundField DataField="meal" HeaderText="meal" SortExpression="meal" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mms_dbConnectionString2 %>" SelectCommand="SELECT [text], [ratings], [meal] FROM [feedback]"></asp:SqlDataSource>

        </div>
    </div>
</asp:Content>
