<%@ Page Title="" Language="C#" MasterPageFile="~/PL/NestedMasterAdmin.master" AutoEventWireup="true" CodeBehind="OutOfStockMedicines.aspx.cs" Inherits="WebApplication4.PL.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="style1">
        <tr>
            <td style="width: 311px">
                &nbsp;</td>
            <td style="width: 298px">
                &nbsp;</td>
            <td style="width: 298px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 311px">
                &nbsp;</td>
            <td style="color: #006666; width: 298px;">
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            </td>
            <td style="color: #006666; width: 298px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 311px">
                &nbsp;</td>
            <td style="width: 298px">
                &nbsp;</td>
            <td style="width: 298px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 311px">
                &nbsp;</td>
            <td style="width: 298px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Print" 
                    ForeColor="#009999" Width="58px" />
            </td>
            <td style="width: 298px">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
