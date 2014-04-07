<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    
    <title>
      PlanMyRoute
    </title>
    <meta name="generator" content="Bootply" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" rel="stylesheet">
    
    <!--[if lt IE 9]>
<script src="//html5shim.googlecode.com/svn/trunk/html5.js">
</script>
<![endif]-->
      
      
      
      
      
      
      
      
      
      
      <!-- CSS code from Bootply.com editor -->
      
      <style type="text/css">
        /* BOOTSTRAP 3.x GLOBAL STYLES
        -------------------------------------------------- */
        body {
          padding-bottom: 40px;
          color: #5a5a5a;
        }
        
        
        
        /* CUSTOMIZE THE NAVBAR
        -------------------------------------------------- */
        
        /* Special class on .container surrounding .navbar, used for positioning it into place. */
        .navbar-wrapper {
          position: absolute;
          top: 0;
          left: 0;
          right: 0;
          z-index: 10;
        }
        
        
        
        /* CUSTOMIZE THE CAROUSEL
        -------------------------------------------------- */
        
        /* Carousel base class */
        .carousel {
          margin-bottom: 60px;
        }
        /* Since positioning the image, we need to help out the caption */
        .carousel-caption {
          z-index: 10;
        }
        
        /* Declare heights because of positioning of img element */
        .carousel .item {
          height: 661px;
          background-color:#555;
              top: 0px;
          }
        .carousel img {
          position: absolute;
          top: 0;
          left: 0;
          min-height: 400px;
        }
        
        
        
        /* MARKETING CONTENT
        -------------------------------------------------- */
        
        /* Pad the edges of the mobile views a bit */
        .marketing {
          padding-left: 15px;
          padding-right: 15px;
        }
        
        /* Center align the text within the three columns below the carousel */
        .marketing .col-lg-4 {
          text-align: center;
          margin-bottom: 20px;
        }
        .marketing h2 {
          font-weight: normal;
        }
        .marketing .col-lg-4 p {
          margin-left: 10px;
          margin-right: 10px;
        }
        
        
        /* Featurettes
        ------------------------- */
        
        .featurette-divider {
          margin: 80px 0;
          /* Space out the Bootstrap <hr> more */
        }
        .featurette {
          padding-top: 120px;
          /* Vertically center images part 1: add padding above and below text. */
          overflow: hidden;
          /* Vertically center images part 2: clear their floats. */
        }
        .featurette-image {
          margin-top: -120px;
          /* Vertically center images part 3: negative margin up the image the same amount of the padding to center it. */
        }
        
        /* Give some space on the sides of the floated elements so text doesn't run right into it. */
        .featurette-image.pull-left {
          margin-right: 40px;
        }
        .featurette-image.pull-right {
          margin-left: 40px;
        }
        
        /* Thin out the marketing headings */
        .featurette-heading {
          font-size: 50px;
          font-weight: 300;
          line-height: 1;
          letter-spacing: -1px;
        }
        
        
        
        /* RESPONSIVE CSS
        -------------------------------------------------- */
        
        @media (min-width: 768px) {
          
          /* Remve the edge padding needed for mobile */
          .marketing {
            padding-left: 0;
            padding-right: 0;
          }
          
          /* Navbar positioning foo */
          .navbar-wrapper {
            margin-top: 20px;
            margin-bottom: -90px;
            /* Negative margin to pull up carousel. 90px is roughly margins and height of navbar. */
          }
          /* The navbar becomes detached from the top, so we round the corners */
          .navbar-wrapper .navbar {
            border-radius: 4px;
          }
          
          /* Bump up size of carousel content */
          .carousel-caption p {
            margin-bottom: 20px;
            font-size: 21px;
            line-height: 1.4;
          }
          
        }
        
      </style>
  </head>
  
  <!-- HTML code from Bootply.com editor -->
  
  <body  >
    
    <div class="navbar-wrapper">
      <div class="container">
        <div class="navbar navbar-inverse navbar-static-top">
          
          <div class="navbar-header">
            <a class="navbar-toggle" data-toggle="collapse" data-target=".nav-collapse">
              <span class="icon-bar">
              </span>
              <span class="icon-bar">
              </span>
              <span class="icon-bar">
              </span>
            </a>
            <a class="navbar-brand" href="#">
             PlanMyRoute
            </a>
          </div>
          <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
              
              <li>
                <a href="signup.aspx" runat="server" >
                  Login
                </a>
              </li>
              <li>
                <a href="#contact">
                  Contact
                </a>
              </li>
             
            </ul>
          </div>
          
        </div>
      </div>
      <!-- /container -->
    </div>
    <!-- /navbar wrapper -->
    
    
    <!-- Carousel
================================================== -->
      <div id="myCarousel" class="carousel slide">
        <!-- Indicators -->
        <ol class="carousel-indicators">
          <li data-target="#myCarousel" data-slide-to="0" class="active">
          </li>
          <li data-target="#myCarousel" data-slide-to="1">
          </li>
          <li data-target="#myCarousel" data-slide-to="2">
          </li>
        </ol>
        <div class="carousel-inner">
          <div class="item active">
            <img src="http://www.travelsworlds.com/wp-content/uploads/2013/12/beach-clipart-black-and-whitebeach-trip-clip-art---vector-clip-art-online-royalty-free-fs7dfwv0.png" 
                  class="img-responsive" width="1500" >
            <div class="container">
              <div class="carousel-caption" align="center">
                <h1 align="center" 
                      style="color: #FFFFFF; font-size: 50px; background-color: #666666;">
                  Welcome to PlanMyRoute
                </h1>
               
                  <p>
                    <a class="btn btn-lg btn-primary" href="http://getbootstrap.com">
                      Learn More
                    </a>
                  </p>
                </pthis>
              </div>
            </div>
          </div>
          <div class="item">
            <img src="http://www.swisscoopers.com/wp-content/uploads/2011/07/zz_Road_Trip_Signs.jpg" 
                  class="img-responsive" width="1500">
            <div class="container">
              <div class="carousel-caption">
                <h1 align="center" style="color: #FFFFFF; font-size: 75px">
                  travel, create your trip route, add photos, share with friends
                </h1>
                
                <p>
                  <a class="btn btn-large btn-primary" href="#">
                    Learn More
                  </a>
                </p>
              </div>
            </div>
          </div>
          <div class="item">
            <img src="http://thegospelcoalition.org/blogs/tgc/files/2013/04/Road-Trip.jpg" 
                  class="img-responsive" height="500"width="1500">
            <div class="container">
              <div class="carousel-caption">
                <h1>
                  Don't get LOST! connect to the maps and travel safe! :)
                </h1>
               
                <p>
                  <a class="btn btn-large btn-primary" href="#">
                    Learn More
                  </a>
                </p>
              </div>
            </div>
          </div>
        </div>
        <!-- Controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
          <span class="icon-prev">
          </span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
          <span class="icon-next">
          </span>
        </a>
        
      </div>
      <!-- /.carousel -->
      
     
        <!-- FOOTER -->
        
    
      <!-- /.container -->
      
      <script type='text/javascript' src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js">
      </script>
      
      
      <script type='text/javascript' src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js">
      </script>
      
      
      
      
      
      
      <!-- JavaScript jQuery code from Bootply.com editor -->
      
      <script type='text/javascript'>

          $(document).ready(function () {



          }
                         );
          
      </script>
      
  </body>
</html>
