<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-family: "Comic Sans MS";
            font-size: x-large;
            text-align: center;
            color: #993399;
        }
        .style2
        {
            width: 100%;
        }
        .style3
        {
            width: 449px;
            text-align: right;
        }
        .style4
        {
            width: 449px;
            text-align: right;
            height: 49px;
        }
        .style5
        {
            height: 49px;
        }
    </style>
</head>
<body style="background-color: #FFF4DF" 
    background="images/back.jpg">
    <form id="form1" runat="server">
    <div class="style1">
    
        <h1>Welcome to FreakOut! Login Page</h1></div>
    <table class="style2" align="center">
        <tr>
            <td class="style4" style="color:#E9D1F0">
                User Name:</td>
            <td class="style5">
                <asp:TextBox ID="un" runat="server" Width="185px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="un" ErrorMessage="Please enter Username" 
                    style="color: #F7F7CD; font-style: italic"></asp:RequiredFieldValidator>
            </td>
            <td class="style5">
                </td>
        </tr>
        <tr>
            <td class="style3" style="color:#E9D1F0">
                Password:</td>
            <td>
                <asp:TextBox ID="pass" runat="server" TextMode="Password" Width="185px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="pass" ErrorMessage="Please enter Password" 
                    style="color: #F7F7CD; font-style: italic"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="FreakOut :)" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/registration.aspx">New User? Register here!</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    
    
    <asp:ScriptManager ID="ScriptManager1" runat="server">
     </asp:ScriptManager>
     <asp:UpdatePanel ID="UpdatePanel1" runat="server">
     <ContentTemplate>
     <asp:Timer runat="server" ID="timer1" Interval="1000" 
        ontick="Unnamed1_Tick">
        </asp:Timer>
        <asp:Image runat="server" ID="image1" Height="168px" Width="172px">
        </asp:Image>
     </ContentTemplate>
    </asp:UpdatePanel>
        
       
    </form>
    
   
</body>
</html>
