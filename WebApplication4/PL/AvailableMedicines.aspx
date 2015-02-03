<%@ Page Title="" Language="C#" MasterPageFile="~/PL/NestedMasterAdmin.master" AutoEventWireup="true" CodeBehind="AvailableMedicines.aspx.cs" Inherits="WebApplication4.PL.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="style1">
        <span style="color: #003300">
    <tr>
        <td style="width: 394px">
            &nbsp;</td>
        <td style="width: 397px" colspan="3">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 394px; height: 34px;">
            </td>
        <td style="width: 216px; text-align: center; height: 34px;" class="style12" 
            colspan="2">
            <strong style="color: #009999">Available Medicines in the Store</strong></td>
        <td style="width: 397px; height: 34px;">
            </span></td>
    </tr>
    <tr>
        <td style="width: 394px">
            &nbsp;</td>
        <td style="width: 216px; text-align: center;" colspan="2">
            &nbsp;</td>
        <td style="width: 397px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 394px">
            &nbsp;</td>
        <td style="width: 216px" colspan="2">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="MedicineId" DataSourceID="SqlDataSource1" style="color: #009999">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="MedicineId" HeaderText="MedicineId" ReadOnly="True" 
                        SortExpression="MedicineId" />
                    <asp:BoundField DataField="MedicineName" HeaderText="MedicineName" 
                        SortExpression="MedicineName" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                        SortExpression="Quantity" />
                    <asp:BoundField DataField="PricePerTablet" HeaderText="PricePerTablet" 
                        SortExpression="PricePerTablet" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:AarogyaPharmacyConnectionString6 %>" 
                DeleteCommand="DELETE FROM [MedicinesList] WHERE [MedicineId] = @MedicineId" 
                InsertCommand="INSERT INTO [MedicinesList] ([MedicineId], [MedicineName], [Quantity], [PricePerTablet]) VALUES (@MedicineId, @MedicineName, @Quantity, @PricePerTablet)" 
                SelectCommand="SELECT * FROM [MedicinesList]" 
                UpdateCommand="UPDATE [MedicinesList] SET [MedicineName] = @MedicineName, [Quantity] = @Quantity, [PricePerTablet] = @PricePerTablet WHERE [MedicineId] = @MedicineId">
                <DeleteParameters>
                    <asp:Parameter Name="MedicineId" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MedicineId" Type="String" />
                    <asp:Parameter Name="MedicineName" Type="String" />
                    <asp:Parameter Name="Quantity" Type="Int32" />
                    <asp:Parameter Name="PricePerTablet" Type="Double" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="MedicineName" Type="String" />
                    <asp:Parameter Name="Quantity" Type="Int32" />
                    <asp:Parameter Name="PricePerTablet" Type="Double" />
                    <asp:Parameter Name="MedicineId" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
        <td style="width: 397px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 394px">
            &nbsp;</td>
        <td style="width: 397px" colspan="3">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 394px">
            &nbsp;</td>
        <td style="width: 182px">
            &nbsp;</td>
        <td style="width: 216px">
        <span style="color: #003300">
            <asp:Button ID="Button2" runat="server" Text="Add Medicines" 
                onclick="Button2_Click" ForeColor="#009999" />

        </td>
        <td style="width: 397px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 394px">
            &nbsp;</td>
        <td style="width: 397px" colspan="3">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
