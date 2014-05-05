<%@ Page Language="C#" AutoEventWireup="true" CodeFile="hostevent.aspx.cs" Inherits="hostevent" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!DOCTYPE html>
<html lang="en">
  
  <head>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">
  
  <title>
    FreakOut!
  </title>
  
  <!-- Bootstrap core CSS -->
  <link href="css/bootstrap.css" rel="stylesheet">
  
  <!-- Add custom CSS here -->
  <link href="css/stylish-portfolio.css" rel="stylesheet">
  <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">
      <style type="text/css">
          .style1
          {
              font-weight: normal;
          }
      </style>
  </head>
  
  <body>
    
    <!-- Side Menu -->
  <a id="menu-toggle" href="#" class="btn btn-primary btn-lg toggle">
    <i class="fa fa-bars">
    </i>
  </a>
  <div id="sidebar-wrapper">
    <ul class="sidebar-nav">
      <a id="menu-close" href="#" class="btn btn-default btn-lg pull-right toggle">
        <i class="fa fa-times">
        </i>
      </a>
      <li class="sidebar-brand">
        <a href="home.aspx">
          Host Event
        </a>
      </li>
      <li>
        <a href="test.aspx">
          Current Location
        </a>
      </li>
      <li>
        <a runat="server" href="weather.aspx">
          Check Climate
        </a>
      </li>
      <li>
        <a runat="server" href="search1.aspx">
          Search by city name
        </a>
      </li>
      <li>
        <a runat="server" href="search2.aspx">
          Search by latitude-longitude 
        </a>
      </li>
      
    </ul>
  </div>
  <!-- /Side Menu -->
  
  <!-- Full Page Image Header Area -->
  <div id="top" class="header">
    <div class="vert-text">
      <h1>
        Wanna host event?</h1>
        <h1>
            &nbsp;</h1>
        <h1>
        &nbsp;Go step by step :)
      </h1>
      <h3>
        <em>
        <b>
          Search..!
          </b>
        </em>
          <span class="style1"><em>Locate where u r.....
        </em></span>
      </h3>
        <h3>
            <em>
            <b>
            Decide..! 
           </b>
        </em>
            <span class="style1"><em>Check the climate.....
       </em></span>
      </h3>
        <h3>
            <em>
            <b>
            <span class="style1"><strong>Explore..!</strong></span
       </b>
       </em>
            <span class="style1"><em>Browse through venues.....
      </em></span>
      </h3>
      
    </div>
  </div>
  <!-- /Full Page Image Header Area -->
  
  
  <!-- Footer -->
  <footer>
    <div class="container">
      <div class="row">
        <div class="col-md-6 col-md-offset-3 text-center">
          <ul class="list-inline">
            <li>
              <i class="fa fa-facebook fa-3x">
              </i>
            </li>
            <li>
              <i class="fa fa-twitter fa-3x">
              </i>
            </li>
            <li>
              <i class="fa fa-dribbble fa-3x">
              </i>
            </li>
          </ul>
          <div class="top-scroll">
            <a href="#top">
              <i class="fa fa-circle-arrow-up scroll fa-4x">
              </i>
            </a>
          </div>
          <hr>
          
        </div>
      </div>
    </div>
  </footer>
  <!-- /Footer -->
  
  <!-- JavaScript -->
  <script src="js/jquery-1.10.2.js">
  </script>
  <script src="js/bootstrap.js">
  </script>
  
  <!-- Custom JavaScript for the Side Menu and Smooth Scrolling -->
  <script>
      $("#menu-close").click(function (e) {
          e.preventDefault();
          $("#sidebar-wrapper").toggleClass("active");
      }
                          );
  </script>
  <script>
      $("#menu-toggle").click(function (e) {
          e.preventDefault();
          $("#sidebar-wrapper").toggleClass("active");
      }
                           );
  </script>
  
  
</body>

</html>
