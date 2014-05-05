<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManageContacts.aspx.cs" Inherits="ManageContacts" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">



<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Bootbusiness | Short description about company">
    <meta name="author" content="Your name">
    <title>add/remove</title>
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
            <a href="home.aspx" class="brand brand-bootbus">HOME</a>
            <!-- Below button used for responsive navigation -->
            <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <!-- Start: Primary navigation -->
            <div class="nav-collapse collapse">        
              <ul class="nav pull-right">
                
                  
                    
                
               
                <li><a id="A2" href="ContactList.aspx" runat="server">View Contacts</a></li>
                </ul>
                </div>

            
    </header>
    <!-- End: HEADER -->
    <!-- Start: MAIN CONTENT -->
    <div class="content">
      <div class="container">
        <div class="page-header">
          <h1>Add or delete contact</h1>
        </div>
        <div class="row">
          <div class="span6 offset3">
            <h4 class="widget-header"><i class="icon-gift"></i> Provide contact details</h4>
            <div class="widget-body">
              <div class="center-align">
                <form id="Form1" runat="server" class="form-horizontal form-signin-signup">
                  <table class="style1">
        <tr>
            <td class="style4" style="color: #030000">
               Name:</td>
            <td class="style8">
                <asp:TextBox ID="name" runat="server" Width="185px" placeholder="Enter name"></asp:TextBox>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="name" CssClass="style11" 
                    ErrorMessage="Please enter the name!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3" style="color: #030000">
                E-mail:</td>
            <td class="style9">
                <asp:TextBox ID="em" runat="server" Width="185px" 
                    placeholder="Enter email address"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="em" CssClass="style11" ErrorMessage="Email required!"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="em" ErrorMessage="Enter valid E-mail ID!" 
                    style="color: #FF0000; font-style: italic" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style6" style="color: #030000">
                Phone number:</td>
            <td class="style10">
                <asp:TextBox ID="ph" runat="server"  Width="185px" 
                    placeholder="Enter Phone Number"></asp:TextBox>
            </td>
            <td class="style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="ph" CssClass="style11" 
                    ErrorMessage="Enter valid phone number"></asp:RequiredFieldValidator>
            </td>
        </tr>
       
        </table>
                  <div>
                  
                    <asp:button runat="server" ID="button1" type="submit" value="Signup" 
                          class="btn btn-primary btn-large" BackColor="#66FFFF" ForeColor="#030000" 
                          onclick="button1_Click" Text="Add"></asp:button>
                  </div>
                
                <div><asp:button runat="server" ID="button2" type="submit" value="Signup" 
                          class="btn btn-primary btn-large" BackColor="#66FFFF" ForeColor="#030000" 
                          onclick="button2_Click" Text="Remove"></asp:button>
                    <br />
                   
              </div>
              
                
              </div>
              </form>
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
