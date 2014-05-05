<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Bootbusiness | Short description about company">
    <meta name="author" content="Your name">
    <title>Freakout!</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap responsive -->
    <link href="css/bootstrap-responsive.min.css" rel="stylesheet">
    <!-- Font awesome - iconic font with IE7 support --> 
    <link href="css/font-awesome.css" rel="stylesheet">
    <link href="css/font-awesome-ie7.css" rel="stylesheet">
    <!-- Bootbusiness theme -->
    <link href="css/boot-business.css" rel="stylesheet">
  </head>
  <body>
    <!-- Start: HEADER -->
    <header>
      <!-- Start: Navigation wrapper -->
      <div class="navbar navbar-fixed-top">
        <div class="navbar-inner">
          <div class="container">
            <a href="Default.aspx" class="brand brand-bootbus">Freak Out!</a>
            
    </header>
    <!-- End: HEADER -->
    <!-- Start: MAIN CONTENT -->
    <div class="content">
      <div class="container">
        <div class="page-header">
          <h1>Are you a newbie? Sign up here</h1>
        </div>
        <div class="row">
          <div class="span6 offset3">
            <h4 class="widget-header"><i class="icon-gift"></i> Be a part of FreakOut!</h4>
            <div class="widget-body">
              <div class="center-align">
                <form runat="server" class="form-horizontal form-signin-signup">
                  <table class="style1">
        <tr>
            <td class="style4" style="color: #030000">
                User Name:</td>
            <td class="style8">
                <asp:TextBox ID="un" runat="server" Width="185px" placeholder="Enter Username"></asp:TextBox>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="un" CssClass="style11" ErrorMessage="Please enter Username!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3" style="color: #030000">
                E-mail:</td>
            <td class="style9">
                <asp:TextBox ID="email" runat="server" Width="185px" placeholder="Enter email address"></asp:TextBox>
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
            <td class="style6" style="color: #030000">
                Password:</td>
            <td class="style10">
                <asp:TextBox ID="pass" runat="server" TextMode="Password" Width="185px" placeholder="Choose Password"></asp:TextBox>
            </td>
            <td class="style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="pass" CssClass="style11" ErrorMessage="Select a Password!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3" style="color: #030000">
                Confirm Password:</td>
            <td class="style9">
                <asp:TextBox ID="rpass" runat="server" TextMode="Password" Width="185px" placeholder="Re-enter Password"></asp:TextBox>
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
        </table>
                  <div>
                  <br>
                    <asp:button runat="server" ID="button1" type="submit" value="Signup" 
                          class="btn btn-primary btn-large" BackColor="#66FFFF" ForeColor="#030000" 
                          onclick="button1_Click" Text="Sign Up"></asp:button>
                  </div>
                </form>
                <h4><i class="icon-question-sign"></i> Already have an account?</h4>
                <a href="sign_in.aspx" class="btn btn-large bottom-space">Sign in</a>
                
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- End: MAIN CONTENT -->
    <!-- Start: FOOTER -->
    
    <!-- End: FOOTER -->
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/boot-business.js"></script>
  </body>
</html>
