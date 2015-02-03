<%@ Page Title="" Language="C#" MasterPageFile="~/PL/NestedMasterStoreKeeper.master" AutoEventWireup="true" CodeBehind="Billing.aspx.cs" Inherits="WebApplication4.PL.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    &nbsp;&nbsp;&nbsp;
    <table class="style1" style="color: #009999">
    <tr>
        <td style="width: 142px">
            &nbsp;</td>
        <td style="width: 130px">
            &nbsp;</td>
        <td style="width: 11px">
            &nbsp;</td>
        <td colspan="2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td style="width: 76px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 142px">
            &nbsp;</td>
        <td colspan="5">
            &nbsp;</td>
        <td colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 142px">
            &nbsp;</td>
        <td colspan="5">
          
            <asp:GridView ID="GridView1" runat="server" AutoGenerateEditButton="True" 
                onrowcancelingedit="GridView1_RowCancelingEdit1" 
                onrowediting="GridView1_RowEditing" onrowupdating="GridView1_RowUpdating1" 
                onselectedindexchanged="GridView1_SelectedIndexChanged1">
            </asp:GridView>
          
        </td>
        <td colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
    <%--<asp:GridView ID="GridView2" runat="server" DataKeyNames="ID" 
            >
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:TextBox ID="txtedit" runat="server" ></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    </tr>
--%>
    <tr>
        <td style="width: 142px">
            &nbsp;</td>
        <td colspan="5">
            &nbsp;</td>
        <td colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 142px">
            &nbsp;</td>
        <td colspan="5">
            &nbsp;</td>
        <td colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 142px">
            &nbsp;</td>
        <td style="width: 130px">
            &nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Ok" 
                style="color: #006666; font-family: Georgia" Width="75px" />
        </td>
        <td style="width: 105px" colspan="2">
            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button2" runat="server" Text="Cancel" onclick="Button2_Click" 
                style="color: #009999; font-family: Georgia" />
        </td>
        <td style="width: 99px">
            &nbsp;
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td style="width: 76px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 142px">
            &nbsp;</td>
        <td colspan="5">
            &nbsp;</td>
        <td colspan="2">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
