<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style3
        {
            width: 129px;
            text-align: left;
        }
        .style4
        {
            width: 129px;
            text-align: left;
            height: 23px;
        }
        .style5
        {
            height: 23px;
        }
        .style6
        {
            width: 129px;
            text-align: left;
            height: 26px;
        }
        .style7
        {
            height: 26px;
        }
        .style8
        {
            height: 23px;
            width: 181px;
        }
        .style9
        {
            width: 181px;
        }
        .style10
        {
            height: 26px;
            width: 181px;
        }
        .style11
        {
            color: #FF0000;
            font-style: italic;
        }
        #Reset1
        {
            width: 71px;
            text-align: right;
        }
    </style>
</head>
<body background="images/back.jpg">
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style4" style="color: #F7F7CD">
                User Name:</td>
            <td class="style8">
                <asp:TextBox ID="un" runat="server" Width="185px"></asp:TextBox>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="un" CssClass="style11" ErrorMessage="Please enter Username!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3" style="color: #F7F7CD">
                E-mail:</td>
            <td class="style9">
                <asp:TextBox ID="email" runat="server" Width="185px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="email" CssClass="style11" ErrorMessage="Email required!"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="email" ErrorMessage="Enter valid E-mail ID!" 
                    style="color: #FF0000; font-style: italic" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style6" style="color: #F7F7CD">
                Password:</td>
            <td class="style10">
                <asp:TextBox ID="pass" runat="server" TextMode="Password" Width="185px"></asp:TextBox>
            </td>
            <td class="style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="pass" CssClass="style11" ErrorMessage="Select a Password!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3" style="color: #F7F7CD">
                Confirm Password:</td>
            <td class="style9">
                <asp:TextBox ID="rpass" runat="server" TextMode="Password" Width="185px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="rpass" CssClass="style11" 
                    ErrorMessage="Confirm the password!"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="pass" ControlToValidate="rpass" 
                    ErrorMessage="Passwords do not match!" 
                    style="color: #FF0000; font-style: italic"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style3" style="color: #F7F7CD">
                Gender</td>
            <td class="style9">
                <asp:DropDownList ID="gen" runat="server" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="185px">
                    <asp:ListItem>Select Gender</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="gen" CssClass="style11" ErrorMessage="Select Gender!" 
                    InitialValue="Select Gender"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style9">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
                <input id="Reset1" type="reset" value="reset" /></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <div>
    
    </div>
    </form>
</body>
</html>
