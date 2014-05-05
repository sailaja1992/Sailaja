<%@ Page Language="C#" AutoEventWireup="true" CodeFile="weather.aspx.cs" Inherits="weather" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!DOCTYPE HTML>
<html lang="en">
  <head>
    <meta charset="utf-8">
      <title>
        Climate check
      </title>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta name="description" content="">
      <meta name="author" content="">
      <!-- Styles -->
      <link href="css/bootstrap.css" rel="stylesheet">
      <link href="css/style.css" rel="stylesheet">
      <link rel='stylesheet' id='prettyphoto-css'  href="css/prettyPhoto.css" type='text/css' media='all'>
      <link href="css/fontello.css" type="text/css" rel="stylesheet">
      <!--[if lt IE 7]>
<link href="css/fontello-ie7.css" type="text/css" rel="stylesheet">

<![endif]-->
      <!-- Google Web fonts -->
      <link href='http://fonts.googleapis.com/css?family=Quattrocento:400,700' rel='stylesheet' type='text/css'>
      <link href='http://fonts.googleapis.com/css?family=Patua+One' rel='stylesheet' type='text/css'>
      <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
      <style>
        body {
          padding-top: 60px;
          /* 60px to make the container go all the way to the bottom of the topbar */
        }
      </style>
      <link href="css/bootstrap-responsive.css" rel="stylesheet">
      <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
      <!--[if lt IE 9]>
<script src="http://html5shim.googlecode.com/svn/trunk/html5.js">
</script>
<![endif]-->
      <!-- Favicon -->
      <link rel="shortcut icon" href="img/favicon.ico">
      <!-- JQuery -->
      <script type="text/javascript" src="js/jquery.js">
      </script>
      <!-- Load ScrollTo -->
      <script type="text/javascript" src="js/jquery.scrollTo-1.4.2-min.js">
      </script>
      <!-- Load LocalScroll -->
      <script type="text/javascript" src="js/jquery.localscroll-1.2.7-min.js">
      </script>
      <!-- prettyPhoto Initialization -->
      <script type="text/javascript" charset="utf-8">
          $(document).ready(function () {
              $("a[rel^='prettyPhoto']").prettyPhoto();
          }
                         );
      </script>
      </head>
      <body>
          <form id="form1" runat="server">
        <!--******************** NAVBAR ********************-->
        <div class="navbar-wrapper">
          <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="navbar-inner">
              <div class="container">
                <!-- Responsive Navbar Part 1: Button for triggering responsive navbar (not covered in tutorial). Include responsive CSS to utilize. -->
                <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                  
                  <span class="icon-bar">
                  </span>
                  
                  <span class="icon-bar">
                  </span>
                  
                  <span class="icon-bar">
                  </span>
                  
                </a>
                <h1 class="brand">
                  <a href="#top">
                    Freak Out!
                  </a>
                </h1>
                <!-- Responsive Navbar Part 2: Place all navbar contents you want collapsed withing .navbar-collapse.collapse. -->
                <nav class="pull-right nav-collapse collapse">
                  <ul id="menu-main" class="nav">
                    
                    <li>
                      <a title="team" href="hostevent.aspx" runat="server">
                        Back
                      </a>
                    </li>
                    <li>
                      <a title="contact" href="home.aspx">
                        LogOut
                      </a>
                    </li>
                  </ul>
                </nav>
              </div>
              <!-- /.container -->
            </div>
            <!-- /.navbar-inner -->
          </div>
          <!-- /.navbar -->
        </div>
        <!-- /.navbar-wrapper -->
        <div id="top">
        </div>
        <!-- ******************** HeaderWrap ********************-->
        <div id="headerwrap">
          <header class="clearfix">
            <h1>
              <span>
                Plan ahead!
              </span>
              Check the climate before you start!
            </h1>
            <div class="container">
              <div class="row">
                <div class="span12">
                  <h2>
                    Enter the name city and state
                  </h2>
                    <asp:TextBox ID="name" runat="server" placeholder="London,UK"></asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
&nbsp;<br />
                    <br />
                    <h2>
                    <asp:Label ID="desc" runat="server"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Temp"></asp:Label>
&nbsp;:
                    <asp:Label ID="tem" runat="server"></asp:Label>
&nbsp;<asp:Label ID="Label4" runat="server" Text="'F"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="Wind"></asp:Label>
&nbsp;:
                    <asp:Label ID="win" runat="server"></asp:Label>
                    </h2>
                </div>
              </div>
              
          </div>
          <!-- /.container -->
        </section>
        <hr>
        <div class="footer-wrapper">
          <div class="container">
            <footer>
             
            </footer>
          </div>
          <!-- ./container -->
        </div>
        <!-- Loading the javaScript at the end of the page -->
        <script type="text/javascript" src="js/bootstrap.js">
        </script>
        <script type="text/javascript" src="js/jquery.prettyPhoto.js">
        </script>
        <script type="text/javascript" src="js/site.js">
        </script>
        
        <!--ANALYTICS CODE-->
        <script type="text/javascript">
            var _gaq = _gaq || [];
            _gaq.push(['_setAccount', 'UA-29231762-1']);
            _gaq.push(['_setDomainName', 'dzyngiri.com']);
            _gaq.push(['_trackPageview']);

            (function () {
                var ga = document.createElement('script');
                ga.type = 'text/javascript';
                ga.async = true;
                ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
                var s = document.getElementsByTagName('script')[0];
                s.parentNode.insertBefore(ga, s);
            }
          )();
            function place_onclick() {

            }

        </script>
          </form>
      </body>
</html>

