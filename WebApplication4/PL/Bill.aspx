<%@ Page Title="" Language="C#" MasterPageFile="~/PL/NestedMasterStoreKeeper.master" AutoEventWireup="true" CodeBehind="Bill.aspx.cs" Inherits="WebApplication4.PL.Bill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
        <br />
        <table class="style1">
            <tr>
                <td colspan="2">
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" style="color: #006666">
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="width: 177px">
                    &nbsp;</td>
                <td style="width: 153px">
            <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                Text="Generate Bill" Width="90px" 
                style="color: #009999; font-size: small; font-family: Georgia; " />
                </td>
                <td>
            <asp:Button ID="Button4" runat="server" Text="Print" Width="75px" 
                onclick="Button4_Click" 
                style="font-size: small; font-family: Georgia; color: #009999" />
                </td>
            </tr>
        </table>
    </p>
</asp:Content>
