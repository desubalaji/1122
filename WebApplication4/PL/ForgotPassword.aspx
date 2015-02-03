<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="WebApplication4.PL.ForgotPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style7
        {
            width: 269px;
        }
        .style8
        {
            width: 269px;
            color: #009999;
        }
        .style9
        {
            width: 269px;
            color: #009999;
            height: 23px;
        }
        .style10
        {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                Enter your username</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" style="color: #009999"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style8">
                Select Security Question:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" style="color: #009999">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>What is your favourite colour</asp:ListItem>
                    <asp:ListItem>What is your nick name</asp:ListItem>
                    <asp:ListItem>What is your Mothers maiden name</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style8">
                Enter answer here:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" 
                    style="color: #009999"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Enter new Password</td>
            <td class="style10">
                <asp:TextBox ID="TextBox3" runat="server" style="color: #009999"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="#006666" BorderColor="White" 
                    onclick="Button1_Click" Text="Submit" ForeColor="#009999" 
                    style="background-color: #CCCCCC" />
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
