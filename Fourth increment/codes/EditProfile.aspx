<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditProfile.aspx.cs" Inherits="EditProfile" %>

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
                  <small>
                    Edit Profile
                  </small>
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
                 <table class="style2" align="center">
        <tr>
            <td class="style4" style="color:#030000" title="Profile Name">
                Profile Name</td>
            <td class="style5">
                <asp:TextBox ID="pn" runat="server" Width="185px" 
                    ></asp:TextBox>
            </td>
            <td class="style5">
                </td>
        </tr>
        <tr>
            <td class="style3" style="color:#030000">
                &nbsp;&nbsp; Birth Date</td>
            <td>
                <asp:TextBox ID="dob" runat="server" TextMode="Date" Width="185px" 
                    ></asp:TextBox>
            </td>
            </tr>
            </table>
                 <table class="style2" align="center">
        <tr>
            <td class="style4" style="color:#030000" id="PName0" title="Profile Name">
                Lives in</td>
            <td class="style5">
                <asp:TextBox ID="city" runat="server" Width="185px" 
                    ></asp:TextBox>
            </td>
            <td class="style5">
                </td>
        </tr>
        <tr>
            <td class="style3" style="color:#030000">
                &nbsp; Email</td>
            <td>
                <asp:TextBox ID="emp" runat="server" TextMode="Email" Width="185px" 
                    ></asp:TextBox>
            </td>
            </tr>
            </table>
                 <table class="style2" align="center">
        <tr>
            <td class="style4" style="color:#030000" id="PName1" title="Profile Name">
                &nbsp;&nbsp; Phone#</td>
            <td class="style5">
                <asp:TextBox ID="phn" runat="server" Width="185px"  
                    TextMode="Number"></asp:TextBox>
            </td>
            <td class="style5">
                </td>
        </tr>
        <tr>
            <td class="style3" style="color:#030000">
                Occupation</td>
            <td>
                <asp:TextBox ID="occ" runat="server" Width="185px" 
                    ></asp:TextBox>
            </td>
            </tr>
            </table>
              
              
      </div>
    </div>
    <div class="row">
            <div class="span10 offset1">
       
            <asp:button runat="server" align="center" type="submit" value="Signin" 
                     class="btn btn-primary btn-large" ID="update" style="color: #000000" Text="Save " 
                     onclick="button2_Click" Width="882px"></asp:button>
                     
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
      </form>
    </body>
  </html>
  