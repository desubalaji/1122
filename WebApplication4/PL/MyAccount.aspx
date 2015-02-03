<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MyAccount.aspx.cs" Inherits="WebApplication4.PL.MyAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style40
        {
            width: 15px;
        }
        .style41
        {
            width: 462px;
        }
        .style42
        {
            width: 132px;
        }
        .style43
        {
            width: 457px;
            color: #009999;
            font-size: x-large;
            font-family: Georgia;
        }
        .style44
        {
            width: 462px;
            font-size: large;
            font-weight: bold;
            color: #0000CC;
            background-color: #FFFFCC;
        }
        .style45
        {
            font-size: large;
            font-weight: bold;
            color: #0000CC;
            background-color: #FFFFCC;
        }
        .style48
        {
            width: 132px;
            font-size: medium;
            color: #006666;
        }
        .style49
        {
            width: 462px;
            font-family: Georgia;
            font-size: medium;
            color: #006666;
        }
    .style50
    {
        width: 238px;
    }
        .style51
        {
            width: 328px;
        }
        .style53
        {
            color: #FF3300;
        }
        .style54
        {
        width: 147px;
    }
        .style55
        {
            width: 15px;
            height: 23px;
        }
        .style56
        {
            width: 238px;
            height: 23px;
        }
        .style57
        {
            width: 328px;
            height: 23px;
        }
        .style58
        {
            width: 132px;
            height: 23px;
        }
        .style59
        {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td class="style40">
                &nbsp;</td>
            <td class="style43" colspan="2">
                <strong>Login or Create an Account</strong></td>
            <td colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style40">
                &nbsp;</td>
            <td class="style41" colspan="2">
                &nbsp;</td>
            <td colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style40">
                &nbsp;</td>
            <td class="style44" colspan="2">
                New Staff</td>
            <td class="style45" colspan="3" style="background-color: #FFFFFF">
                &nbsp;Registered Staff
            </td>
        </tr>
        <tr>
            <td class="style40">
                &nbsp;</td>
            <td class="style41" colspan="2">
                &nbsp;</td>
            <td colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style40">
                &nbsp;</td>
            <td class="style49" colspan="2">
                By creating an account with our store, you will be able to move through
            </td>
            <td class="style48">
                User Name</td>
            <td class="style54">
                <asp:TextBox ID="TextBox1" runat="server" Height="21px" Width="126px"></asp:TextBox>
            </td>
            <td class="style53">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style40">
                &nbsp;</td>
            <td class="style49" colspan="2">
                the software faster and track the medicines in the store quicker.</td>
            <td class="style48">
                Password</td>
            <td class="style54">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Height="21px" 
                    Width="126px" ></asp:TextBox>
            </td>
            <td class="style17">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style40">
                &nbsp;</td>
            <td class="style41" colspan="2">
                &nbsp;</td>
            <td class="style42">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style40">
                &nbsp;</td>
            <td class="style50">
                &nbsp;</td>
            <td class="style51">
                &nbsp;</td>
            <td class="style42">
                &nbsp;</td>
            <td colspan="2">
                <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember me" />
            </td>
        </tr>
        <tr>
            <td class="style55">
                </td>
            <td class="style56">
                </td>
            <td class="style57">
                </td>
            <td class="style58">
                </td>
            <td colspan="2" class="style59">
                </td>
        </tr>
        <tr>
            <td class="style40">
                &nbsp;</td>
            <td class="style50">
                &nbsp;</td>
            <td class="style51">
                <span class="style17">
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    style="height: 26px; margin-left: 0px; color: #009999;" 
                    Text="Create an Account" Width="124px" />
                </span>
            </td>
            <td class="style42">
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Forgot Password</asp:LinkButton>
            </td>
            <td colspan="2">
                <span class="style17">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Login" 
                    style="color: #009999" />
                </span>
            </td>
        </tr>
        <tr>
            <td class="style40">
                &nbsp;</td>
            <td class="style50">
                &nbsp;</td>
            <td class="style51">
                &nbsp;</td>
            <td class="style42">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style40">
                &nbsp;</td>
            <td class="style50">
                &nbsp;</td>
            <td class="style51">
                &nbsp;</td>
            <td class="style42">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style40">
                &nbsp;</td>
            <td class="style50">
                &nbsp;</td>
            <td class="style51">
                &nbsp;</td>
            <td class="style42">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
