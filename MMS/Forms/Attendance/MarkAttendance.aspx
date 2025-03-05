<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Generics/Staff.Master" AutoEventWireup="true" CodeBehind="MarkAttendance.aspx.cs" Inherits="MMS.Forms.Attendance.MarkAttendance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            background: url("../Images/italian_food.jpg");
            background-size: cover;
        }

        .attendence-link {
            border: 1px solid var(--secondary-color);
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mark-attendance">
        <div class="controls">
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:mms_dbConnectionString2 %>" SelectCommand="SELECT [name] FROM [meal]"></asp:SqlDataSource>
            <asp:TextBox ID="find_fld" CssClass="search-bar" runat="server"></asp:TextBox>
            <asp:Button ID="find_btn" runat="server" Text="Find" OnClick="find_btn_Click" /><br />
        </div>

        <div class="data">
            <asp:TextBox ID="roll_no_fld" runat="server" Enabled="False"></asp:TextBox>
            <asp:Label ID="name_lbl" runat="server" Text="No user found..."></asp:Label>
            <div class="user-info">
                <div class="user-left">
                    <asp:RadioButtonList ID="me_rl" runat="server">
                        <asp:ListItem Selected="True" Value="M">Morning</asp:ListItem>
                        <asp:ListItem Value="E">Evening</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                <div class="user-right">
                    <asp:TextBox ID="date_fld" CssClass="date-picker" runat="server" TextMode="Date">Select Date</asp:TextBox><br />
                    <asp:DropDownList ID="meals_list" runat="server" DataSourceID="SqlDataSource2" DataTextField="name" DataValueField="name"></asp:DropDownList>
                </div>
            </div>
            <asp:Button ID="save_btn" runat="server" Text="Save" OnClick="save_btn_Click" />
            <asp:Button ID="show_btn" runat="server" Text="View Attendance" OnClick="save_btn_Click" PostBackUrl="~/Forms/Attendance/ViewAttendanceAll.aspx" />
        </div>
    </div>
</asp:Content>
