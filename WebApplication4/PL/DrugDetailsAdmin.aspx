<%@ Page Title="" Language="C#" MasterPageFile="~/PL/NestedMasterAdmin.master" AutoEventWireup="true" CodeBehind="DrugDetailsAdmin.aspx.cs" Inherits="WebApplication4.PL.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="style1">
    <tr>
        <td colspan="3">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="height: 33px; width: 221px">
            </td>
        <td style="width: 300px; height: 33px; margin-left: 120px; text-align: center; font-weight: 700; font-size: large;">
            <span style="color: #009999">List of all&nbsp; the drugs in the Store</span></td>
        <td style="width: 239px; height: 33px; margin-left: 120px;">
            </td>
    </tr>
    <tr>
        <td style="width: 221px">
            &nbsp;</td>
        <td style="width: 239px; margin-left: 120px;" colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 221px">
            &nbsp;</td>
        <td style="width: 300px; margin-left: 120px;">
            <asp:GridView ID="GridView1" runat="server" style="color: #009999">
            </asp:GridView>
        </td>
        <td style="width: 239px; margin-left: 120px;">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 221px">
            &nbsp;</td>
        <td style="width: 239px; margin-left: 120px;" colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 221px">
            &nbsp;</td>
        <td style="width: 239px; margin-left: 120px;" colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 221px">
            &nbsp;</td>
        <td style="width: 239px; margin-left: 120px;" colspan="2">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Print" 
                ForeColor="#009999" Width="56px" style="text-align: center" />
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
