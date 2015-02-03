<%@ Page Title="" Language="C#" MasterPageFile="~/PL/NestedMasterAdmin.master" AutoEventWireup="true" CodeBehind="AddMedicines.aspx.cs" Inherits="WebApplication4.PL.AddMedicines" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="style1">
        <tr>
            <td class="style9" colspan="2" style="height: 18px; width: 225px">
            </td>
            <td class="style9" colspan="2" style="height: 18px">
            </td>
        </tr>
        <tr>
            <td colspan="2" style="color: #006666; width: 225px">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="color: #006666; height: 23px; width: 225px">
                &nbsp;</td>
            <td style="color: #006666; height: 23px; width: 225px">
                MedicineId</td>
            <td style="height: 23px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td style="height: 23px">
            </td>
        </tr>
        <tr>
            <td style="height: 23px; color: #006666; width: 225px">
                &nbsp;</td>
            <td style="height: 23px; color: #006666; width: 225px">
                MedicineName</td>
            <td style="height: 23px">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td style="height: 23px">
            </td>
        </tr>
        <tr>
            <td style="color: #006666; width: 225px">
                &nbsp;</td>
            <td style="color: #006666; width: 225px">
                Quantity</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" MaxLength="3"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Please enter only numbers" 
                    style="color: #009999" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="color: #006666; width: 225px; height: 23px">
                &nbsp;</td>
            <td style="color: #006666; width: 225px; height: 23px">
                Price Per Unit</td>
            <td style="height: 23px">
                <asp:TextBox ID="TextBox4" runat="server" MaxLength="8"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="Not a valid amount" 
                    style="color: #009999" ValidationExpression="^[1-9]\d*\.\d{3}$"></asp:RegularExpressionValidator>
            </td>
            <td style="height: 23px">
            </td>
        </tr>
        <tr>
            <td style="color: #006666; width: 225px">
                &nbsp;</td>
            <td style="color: #006666; width: 225px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="color: #006666; width: 225px">
                &nbsp;</td>
            <td style="color: #006666; width: 225px">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Add" 
                    ForeColor="#009999" Height="29px" Width="55px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="color: #006666; width: 225px">
                &nbsp;</td>
            <td style="color: #006666; width: 225px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
