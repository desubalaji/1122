<%@ Page Title="" Language="C#" MasterPageFile="~/PL/NestedMasterStoreKeeper.master" AutoEventWireup="true" CodeBehind="DailySalesReport.aspx.cs" Inherits="WebApplication4.PL.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="style1">
    <tr>
        <td style="width: 169px">
            &nbsp;</td>
        <td colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 169px">
            &nbsp;</td>
        <td colspan="2">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button1" 
                runat="server" onclick="Button1_Click" 
                Text="Click to Generate Report" Width="165px" 
                style="text-align: center; color: #006666; font-family: Georgia" />
        </td>
    </tr>
    <tr>
        <td style="width: 169px">
            &nbsp;</td>
        <td colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 169px">
            &nbsp;</td>
        <td colspan="2">
            <asp:GridView ID="GridView1" runat="server" ForeColor="#006666">
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td style="width: 169px">
            &nbsp;</td>
        <td colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 169px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
