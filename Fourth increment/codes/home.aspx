<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Bootbusiness | Short description about company">
    <meta name="author" content="Your name">
    <title>MyHome</title>
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
            <a href="home.aspx" class="brand brand-bootbus">FreakOut HOME</a>
            <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <!-- Start: Primary navigation -->
            <div class="nav-collapse collapse">        
              <ul class="nav pull-right">
            <li><a href="Default.aspx">Logout</a></li>
            </ul>
            </div>
    </header>
    <!-- End: HEADER -->
    <!-- Start: MAIN CONTENT -->
    <div class="content">
      <!-- Start: PRODUCT LIST -->
        <div class="container">
          <div class="page-header">
            
    
        <h1><asp:Label ID="label_welcome" runat="server" ForeColor="#3366FF" 
            Text="Welcome ..." style="font-size: xx-large"></asp:Label></h1>
    
    
          </div>
          <div class="row-fluid">
            <ul class="thumbnails">
              <li class="span3">
                <div class="thumbnail">
                  <img src="img/eventcalender.jpg" alt="product name"/>
                  <div class="caption">
                    <h3>Fun Bulletin</h3>
                    <p>
                        Update/ View your schedules and plan according</p>
                  </div>
                  <div class="widget-footer" style="background-color: #C0C0C0 ">
                    <p>
                      <a href="calendar.aspx" class="btn btn-primary" style="color: #000000">Edit</a>
                    </p>
                  </div>
                </div>
              </li>
              <li class="span3">
                <div class="thumbnail">
                  <img src="img/managecontacts.jpg" alt="product name"/>
                  <div class="caption">
                    <h3>Manage Contacts</h3>
                    <p>
                      Add or remove the contact details of your friends
                    </p>
                  </div>
                  <div class="widget-footer" style="background-color: #C0C0C0 ">
                    <p>
                      <a href="ManageContacts.aspx" class="btn btn-primary"style="color: #000000">Add/Remove</a>
                    </p>
                  </div>
                </div>
              </li>
              <li class="span3">
                <div class="thumbnail">
                  <img src="img/email_host.png" alt="product name"/>
                  <div class="caption">
                    <h3>Send out invitations</h3>
                    <p>
                        Email your friends and find out if they wanna join you :D</p>
                  </div>
                  <div class="widget-footer" style="background-color: #C0C0C0 ">
                    <p>
                      <a href="email.aspx" class="btn btn-primary" style="color: #000000">View</a>
                    </p>
                  </div>
                </div>
              </li>
              <li class="span3">
                <div class="thumbnail">
                  <img src="img/hostevent.png" alt="product name">
                  <div class="caption">
                    <h3>Create Event</h3>
                    <p>
                      Search for the events of your choice
                       and send out invitations to your friends
                    </p>
                  </div>
                  <div class="widget-footer"style="background-color: #C0C0C0 ">
                    <p>
                      <a href="hostevent.aspx" class="btn btn-primary" style="color: #000000">Host now</a>
                    </p>
                  </div>
                </div>
              </li>
            </ul>
          </div>
          
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/boot-business.js"></script>
  </body>
</html>

