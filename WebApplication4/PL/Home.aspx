<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication4.PL.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style7
        {
            height: 75px;
        }
        .style8
        {
            height: 75px;
            width: 515px;
        }
        .style9
        {
            width: 515px;
        }
        .style10
        {
            font-size: smaller;
            background-color: #FFFFFF;
        }
        .style12
        {
            width: 90px;
            height: 169px;
        }
        .style13
        {
            width: 515px;
            height: 169px;
        }
        .style15
        {
            width: 515px;
            color: #009999;
            font-family: Georgia;
            font-size: large;
            text-align: center;
        }
        .style16
        {
            height: 130px;
            width: 90px;
        }
        .style17
        {
            height: 130px;
            width: 515px;
        }
        .style18
        {
            height: 130px;
        }
        .style19
        {
            height: 75px;
            width: 27px;
        }
        .style20
        {
            width: 27px;
        }
        .style21
        {
            height: 130px;
            width: 27px;
        }
        .style22
        {
            height: 75px;
            width: 236px;
        }
        .style23
        {
            width: 236px;
        }
        .style24
        {
            height: 130px;
            width: 236px;
        }
        .style25
        {
            font-size: smaller;
            height: 11px;
            background-color: #FF9933;
        }
        .style26
        {
            height: 37px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td class="style10" rowspan="2">
                &nbsp;</td>
            <td colspan="4" class="style26">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
        </tr>
        <tr>
            <td class="style8">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Image ID="Image1" runat="server" />
<br />
                        <asp:Timer ID="Timer1" runat="server" Interval="2000" ontick="Timer1_Tick1">
                        </asp:Timer>
<br />
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
            <td class="style19" 
                
                style="background-image: none; background-repeat: no-repeat; background-position: center center">
            </td>
            <td class="style22" 
                
                style="background-image: url('../Images/followus1.png'); background-repeat: no-repeat; background-position: center center">
            </td>
            <td class="style7" 
                
                style="background-image: none; background-repeat: no-repeat; background-position: center center">
            </td>
        </tr>
        <tr>
            <td class="style25" colspan="5">
                </td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td style="background-image: none; background-repeat: no-repeat; background-position: center center" 
                class="style20" rowspan="3">
                </td>
            <td style="background-image: url('../Images/home3.png'); background-repeat: no-repeat; background-position: center center" 
                class="style23" rowspan="3">
                </td>
            <td style="background-image: none; background-repeat: no-repeat; background-position: center center" 
                rowspan="3">
                </td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style15">
                What can Aarogya Pharmacy do for you today?</td>
        </tr>
        <tr>
            <td class="style12">
                </td>
            <td class="style13" 
                style="background-image: url('../Images/home2.png'); background-repeat: no-repeat; background-position: center center">
                </td>
        </tr>
        <tr>
            <td class="style16">
                </td>
            <td class="style17">
                </td>
            <td style="background-image: none; background-repeat: no-repeat; background-position: center center" 
                class="style21">
                </td>
            <td style="background-image: url('../Images/home4.png'); background-repeat: no-repeat; background-position: center center" 
                class="style24">
                </td>
            <td style="background-image: none; background-repeat: no-repeat; background-position: center center" 
                class="style18">
                </td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td style="background-image: none; background-repeat: no-repeat; background-position: center center" 
                colspan="3">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
