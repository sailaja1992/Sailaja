<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sign_in.aspx.cs" Inherits="sign_in" %>

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
           </div>
           </div>
           </div>
    </header>
    <!-- End: HEADER -->
    <!-- Start: MAIN CONTENT -->
    <div class="content">
      <div class="container">
        <div class="page-header">
          <h1>Welcome, Sign in here</h1>
        </div>
        <div class="row">
          <div class="span6 offset3">
            <h4 class="widget-header"><i class="icon-lock"></i> Start Freaking out!</h4>
            <div class="widget-body">
              <div class="center-align">
                <form runat="server" class="form-horizontal form-signin-signup">
                 <table class="style2" align="center">
        <tr>
            <td class="style4" style="color:#030000">
                User Name:</td>
            <td class="style5">
                <asp:TextBox ID="un" runat="server" Width="185px" placeholder="Enter Username"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="un" ErrorMessage="Please enter Username" 
                    style="color: #FC031C; font-style: italic" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style5">
                </td>
        </tr>
        <tr>
            <td class="style3" style="color:#030000">
                Password:</td>
            <td>
                <asp:TextBox ID="pass" runat="server" TextMode="Password" Width="185px" placeholder="Enter Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="pass" ErrorMessage="Please enter Password" 
                    style="color: #FC031C; font-style: italic" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            </tr>
            </table>
             <asp:button runat="server" type="submit" value="Signin" 
                     class="btn btn-primary btn-large" ID="button2" style="color: #000000" Text="Sign In" 
                     onclick="button2_Click"></asp:button>
               
                <h4><i class="icon-question-sign"></i> Don't have an account?</h4>
                <a href="signup.aspx" class="btn btn-large bottom-space">Signup</a>
            </form>
                       
                    </div>
                    </div>
                    </div>
                    </div>
                   
                 
                
    <!-- End: FOOTER -->
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/boot-business.js"></script>
  </body>
</html>
