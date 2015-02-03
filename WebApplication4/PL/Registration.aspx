<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="WebApplication4.PL.Registration" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .style11
        {
            color: #009933;
        }
        .style40
        {
            width: 133px;
        }
        .style41
        {
            width: 133px;
            height: 76px;
        }
        .style42
        {
            height: 76px;
            color: #009933;
            width: 32px;
            font-size: x-large;
        }
        .style43
        {
            color: #009933;
            font-family: Georgia;
            font-size: medium;
            background-color: #FFFFCC;
        }
        .style9
        {
            font-family: Georgia;
        }
        .style12
        {
            font-family: Georgia;
            color: #009933;
        }
        .style44
        {
            width: 91px;
        }
        .style48
        {
            width: 118px;
        }
        .style49
        {
            color: #009933;
            font-size: medium;
            background-color: #FFFFCC;
        }
        .style50
        {
            font-size: small;
            color: #009933;
        }
        .style52
        {
            width: 118px;
            font-size: small;
            color: #009933;
            font-family: Georgia;
        }
        .style54
        {
            width: 91px;
            color: #009933;
            font-family: Georgia;
        }
        .style55
        {
            width: 91px;
            font-size: small;
        }
        .style56
        {
            width: 118px;
            font-size: small;
        }
        .style57
        {
        }
        .style58
        {
            width: 118px;
            font-size: small;
            color: #009933;
            font-family: Georgia;
            height: 31px;
        }
        .style59
        {
            width: 91px;
            height: 31px;
        }
        .style60
        {
            font-size: small;
            height: 31px;
        }
        .style61
        {
            width: 133px;
            height: 31px;
        }
        .style62
        {
            width: 133px;
            height: 30px;
        }
        .style63
        {
            width: 118px;
            font-size: small;
            color: #009933;
            font-family: Georgia;
            height: 30px;
        }
        .style64
        {
            width: 91px;
            color: #009933;
            font-family: Georgia;
            height: 30px;
        }
        .style65
        {
            font-family: Georgia;
            color: #009933;
            height: 30px;
        }
        .style66
        {
            width: 224px;
            color: #009999;
            font-family: Georgia;
        }
        .style67
        {
            width: 135px;
            color: #009933;
            font-family: Georgia;
        }
        .style68
        {
            color: #009999;
        }
        .style70
        {
            width: 133px;
            color: #009999;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td class="style41">
            </td>
            <td class="style42" colspan="4">
                Create an Account</td>
        </tr>
        <tr>
            <td class="style40" style="background-color: #FFFFCC">
                &nbsp;</td>
            <td class="style49" colspan="4">
                Personal Information</td>
        </tr>
        <tr>
            <td class="style40">
                &nbsp;</td>
            <td class="style48">
                &nbsp;</td>
            <td class="style44" colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style40">
                &nbsp;</td>
            <td class="style52">
                First Name</td>
            <td class="style54" colspan="2">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="style51" MaxLength="20"></asp:TextBox>
            </td>
            <td class="style12">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Enter a valid first name" 
                    ValidationExpression="^[a-zA-Z'.\s]{1,50}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style40">
                &nbsp;</td>
            <td class="style52">
                Last Name</td>
            <td class="style54" colspan="2">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="style51" MaxLength="20"></asp:TextBox>
            </td>
            <td class="style12">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Enter a valid last name" 
                    ValidationExpression="^[a-zA-Z'.\s]{1,50}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style70">
                &nbsp;</td>
            <td class="style52">
                Gender</td>
            <td class="style67">
                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="style11" 
                    Height="16px" Width="133px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style66">
                &nbsp;</td>
            <td class="style50">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="DropDownList2" CssClass="style68" 
                    ErrorMessage="Please enter your gender"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style40">
                &nbsp;</td>
            <td class="style52">
                Date Of Birth</td>
            <td class="style54" colspan="2">
                <asp:TextBox ID="TextBox3" runat="server" CssClass="style51" 
                    ontextchanged="TextBox3_TextChanged" ></asp:TextBox>
            &nbsp;
                <cc1:CalendarExtender ID="CalendarExtender1" runat="server" PopupButtonID="imgPopup" TargetControlID="TextBox3">
                </cc1:CalendarExtender>
        </td>
            <td class="style12">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                    ControlToValidate="TextBox3" 
                    ErrorMessage="Please enter the date in MM/DD/YYY format" 
                    ValidationExpression="^(0?[1-9]|[12][0-9]|3[01])[\/\-](0?[1-9]|1[012])[\/\-]\d{4}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style61">
            </td>
            <td class="style58">
                Designation</td>
            <td class="style59" colspan="2">
                <asp:Label ID="Label1" runat="server" ForeColor="#009933" Text="Store Keeper"></asp:Label>
            </td>
            <td class="style60">
            </td>
        </tr>
        <tr>
            <td class="style62">
            </td>
            <td class="style63">
                Mobile No</td>
            <td class="style64" colspan="2">
                <asp:TextBox ID="TextBox4" runat="server" CssClass="style51" MaxLength="10"></asp:TextBox>
            </td>
            <td class="style65">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="TextBox4" CssClass="style50" 
                    ErrorMessage="Enter a valid mobile no." 
                    ValidationExpression="^[7-9]\d{9}$" Display="Dynamic"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style40">
                &nbsp;</td>
            <td class="style11">
                Select Security Question:</td>
            <td class="style44" colspan="2">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="26px" Width="143px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>What is your favourite colour</asp:ListItem>
                    <asp:ListItem>What is your nick name</asp:ListItem>
                    <asp:ListItem>What is your Mothers maiden name</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="DropDownList1" CssClass="style11" 
                    ErrorMessage="Security question mandatory"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style40">
                &nbsp;</td>
            <td class="style11">
                Enter answer here:</td>
            <td class="style44" colspan="2">
                <asp:TextBox ID="TextBox8" runat="server" TextMode="MultiLine" Height="23px" 
                    Width="141px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="TextBox8" CssClass="style11" 
                    ErrorMessage="Please answer the question selected"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style40">
                &nbsp;</td>
            <td class="style48">
                &nbsp;</td>
            <td class="style44" colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style40" style="background-color: #FFFFCC">
                &nbsp;</td>
            <td class="style43" colspan="4">
                Login Information</td>
        </tr>
        <tr>
            <td class="style40">
                &nbsp;</td>
            <td class="style48">
                &nbsp;</td>
            <td class="style44" colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style40">
                &nbsp;</td>
            <td class="style52">
                User Name</td>
            <td class="style54" colspan="2">
                <asp:TextBox ID="TextBox5" runat="server" CssClass="style57" Width="138px" 
                    MaxLength="10" ontextchanged="TextBox5_TextChanged"></asp:TextBox>
            </td>
            <td class="style12">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox5" CssClass="style50" 
                    ErrorMessage=" Enter your username"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style40">
                &nbsp;</td>
            <td class="style52">
                Password</td>
            <td class="style54" colspan="2">
                <asp:TextBox ID="TextBox6" runat="server" CssClass="style57" 
                    TextMode="Password" Width="138px" MaxLength="15"></asp:TextBox>
            </td>
            <td class="style12">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox6" CssClass="style50" 
                    ErrorMessage="Please enter your password"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style40">
                &nbsp;</td>
            <td class="style52">
                Confirm Password</td>
            <td class="style54" colspan="2">
                <asp:TextBox ID="TextBox7" runat="server" CssClass="style57" 
                    TextMode="Password" Width="137px" MaxLength="15"></asp:TextBox>
            </td>
            <td class="style12">
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox6" ControlToValidate="TextBox7" CssClass="style50" 
                    ErrorMessage="Passwords do not match"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style40">
                &nbsp;</td>
            <td class="style56">
                &nbsp;</td>
            <td class="style55" colspan="2">
                &nbsp;</td>
            <td class="style50">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style40">
                &nbsp;</td>
            <td class="style48">
                &nbsp;</td>
            <td class="style44" colspan="2">
                <span class="style11"><span class="style12"><span class="style9">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
                    style="height: 26px" Text="Submit" Width="61px" ForeColor="#009999" />
                </span></span></span>
            </td>
            <td>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
        </tr>
        <tr>
            <td class="style40">
                &nbsp;</td>
            <td class="style48">
                &nbsp;</td>
            <td class="style44" colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style40">
                &nbsp;</td>
            <td class="style48">
                &nbsp;</td>
            <td class="style44" colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
