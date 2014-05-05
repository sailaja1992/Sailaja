<%@ Page Language="C#" AutoEventWireup="true" CodeFile="profilePage.aspx.cs" Inherits="profilePage" %>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Bootbusiness | Short description about company">
    <meta name="author" content="Your name">
    <title>
      FreakOut!
    </title>
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
      <form id="form1" runat="server">
    <!-- Start: HEADER -->
    <header>
      <!-- Start: Navigation wrapper -->
      <div class="navbar navbar-fixed-top">
        <div class="navbar-inner">
          <div class="container">
            <a href="home.aspx" class="brand brand-bootbus">
              FreakOut!
            </a>
            <!-- Below button used for responsive navigation -->
            <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
              <span class="icon-bar">
              </span>
              <span class="icon-bar">
              </span>
              <span class="icon-bar">
              </span>
            </button>
            <!-- Start: Primary navigation -->
            <div class="nav-collapse collapse">
              
              <ul class="nav pull-right">
              <li>
                  <a href="Default.aspx">
                    Log Out
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <!-- End: Navigation wrapper -->
      
    </header>
    <!-- End: HEADER -->
    <!-- Start: Main content -->
    <div class="content">
      
      <div class="container">
        <!-- Start: Product description -->
        <airticle class="article">
          <div class="row bottom-space">
            <div class="span12">
              <div class="page-header">
                <h1>
                  My Profile
                  
                </h1>
              </div>
            </div>
            <div class="span12 center-align">
              <img src="http://placehold.it/800x300" class="thumbnail product-snap" 
                    height="300" width="800">
              
            </div>
          </div>
          <div class="row">
            <div class="span10 offset1">
              
              
        <h1><asp:Label ID="label_welcome" runat="server" ForeColor="#3366FF" 
            Text="Profile Information" style="font-size: xx-large"></asp:Label></h1>
      </div>
    </div>
    <div class="row">
            <div class="span10 offset1">
       
            <div class="span10 offset1">
              
              
                <h1><asp:Label ID="label1" runat="server" 
            Text="Profile Name:" ></asp:Label>
                    <asp:Label ID="label7" runat="server" Text="Srujana"></asp:Label>
                </h1>
                <h1><asp:Label ID="label2" runat="server"  
            Text="Birth Date:" ></asp:Label>
                    <asp:Label ID="label8" runat="server" Text="05/24/1992"></asp:Label>
                </h1>
                <h1><asp:Label ID="label3" runat="server"  
            Text="Lives in:" ></asp:Label>
                    <asp:Label ID="label9" runat="server">Kansas City</asp:Label>
                </h1>
                <h1><asp:Label ID="label4" runat="server"  
            Text="Email:" ></asp:Label>
                    <asp:Label ID="label10" runat="server">sruja24@gmail.com</asp:Label>
                </h1>
                <h1><asp:Label ID="label5" runat="server"  
            Text="Phone# :" ></asp:Label>
                    <asp:Label ID="label11" runat="server">9063694800</asp:Label>
                </h1>
            <h1><asp:Label ID="label6" runat="server"  
            Text="Occupation:" ></asp:Label>
                <asp:Label ID="label12" runat="server">student</asp:Label>
                </h1>
      </div>
       
                     </div>
                     </div>

  
  <!-- End: Main content -->
  
      <!-- End: FOOTER -->
      <script type="text/javascript" src="js/jquery.min.js">
      </script>
      <script type="text/javascript" src="js/bootstrap.min.js">
      </script>
      <script type="text/javascript" src="js/boot-business.js">
      </script>
       
            <asp:button runat="server" align="center" type="submit" value="Signin" 
                     class="btn btn-primary btn-large" ID="update" 
              style="color: #000000" Text="Make changes" 
                     onclick="button2_Click" Width="882px"></asp:button>
                     
                     </form>
    </body>
  </html>
  