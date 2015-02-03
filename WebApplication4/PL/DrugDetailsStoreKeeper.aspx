<%@ Page Title="" Language="C#" MasterPageFile="~/PL/NestedMasterStoreKeeper.master" AutoEventWireup="true" CodeBehind="DrugDetailsStoreKeeper.aspx.cs" Inherits="WebApplication4.PL.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="style1" style="color: #009999">
        <tr>
            <td style="width: 198px">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 198px">
                &nbsp;</td>
            <td colspan="2" style="color: #009999">
                <asp:GridView ID="GridView1" runat="server" ForeColor="#003300" 
                    onpageindexchanging="GridView1_PageIndexChanging" style="color: #009999">
                <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:CheckBox ID="chkCtrl" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
           <%-- <asp:BoundField DataField="MedicineId" HeaderText="MedicineId" ItemStyle-Width="70" />
            <asp:BoundField DataField="MedicineName" HeaderText="MedicineName" ItemStyle-Width="150" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" ItemStyle-Width="50" />
             <asp:BoundField DataField="PricePerTablet" HeaderText="PricePerTablet" ItemStyle-Width="50" />--%>
                    
        </Columns>
                </asp:GridView>
            &nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 198px; height: 30px;">
                </td>
            <td style="height: 30px; width: 205px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td style="height: 30px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 198px">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Select" 
                    UseSubmitBehavior="False" ForeColor="#009999" />
            </td>
        </tr>
    </table>
</asp:Content>
