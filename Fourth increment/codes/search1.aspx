<%@ Page Language="C#" AutoEventWireup="true" CodeFile="search1.aspx.cs" Inherits="search1" %>

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
            <a href="home.aspx" class="brand brand-bootbus">Freak Out!</a>
           </div>
           </div>
           </div>
    </header>
    <!-- End: HEADER -->
    <!-- Start: MAIN CONTENT -->
    <div class="content">
      <div class="container">
        <div class="page-header">
          <h1>Select event here</h1>
        </div>
        <div class="row">
          <div class="span6 offset3">
            <h4 class="widget-header"><i class="icon-lock"></i> Start Freaking out!</h4>
            <div class="widget-body">
              <div class="center-align">
                <form id="Form1" runat="server" class="form-horizontal form-signin-signup">
                 <table class="style2" align="center">
        <tr>
            <td class="style4" style="color:#030000">
               Enter City Name:</td>
            <td class="style5">
                <asp:TextBox ID="CityName" runat="server" Width="185px" 
                    placeholder="Enter City Name"></asp:TextBox>
                
            </td>
            <td class="style5">
                </td>
        </tr>
        <tr>
            <td class="style4" style="color:#030000">
               Enter State Name:</td>
            <td class="style5">
                <asp:TextBox ID="StateName" runat="server" Width="185px" 
                    placeholder="Enter State Name" ></asp:TextBox>
                
            </td>
            </tr>
            <tr>
            <td class="style4" style="color:#030000">
               Looking for:</td>
            <td class="style5">
                <asp:TextBox ID="LF" runat="server" Width="185px" 
                    placeholder="coffee/shopping/..." ></asp:TextBox>
                
            </td>
            </tr>
            </table>

             <asp:button runat="server" type="submit" value="Search" 
                     class="btn btn-primary btn-large" ID="button2" style="color: #000000" 
                     Text="Search" onclick="button2_Click"  
                     ></asp:button>
               <div class="center-align">
                <div class="row bottom-space">
          <div class="span1 offset1">
            
          </div>
          <div class="span9">
            <h4>
                <asp:Label ID="Labelname1" runat="server"></asp:Label>
            </h4>
              <p>
                  <asp:Label ID="Labeladd1" runat="server"></asp:Label>
              </p>
          </div>
        </div>
        <div class="row bottom-space">
          
          <div class="span9">
            <h4>
                <asp:Label ID="Labelname2" runat="server"></asp:Label>
            </h4>
            <p>
                <asp:Label ID="Labeladd2" runat="server"></asp:Label>
            </p>
          </div>
        </div>
        <div class="row bottom-space">
          
          <div class="span9">
            <h4>
                <asp:Label ID="Labelname3" runat="server"></asp:Label>
            </h4>
            <p>
                <asp:Label ID="Labeladd3" runat="server"></asp:Label>
            </p>
          </div>
        </div>
        <div class="row bottom-space">
         
          <div class="span9">
            <h4>
                <asp:Label ID="Labelname4" runat="server"></asp:Label>
            </h4>
            <p>
                <asp:Label ID="Labeladd4" runat="server"></asp:Label>
            </p>
          </div>
        </div>
        <div class="row bottom-space">
          
          <div class="span9">
            <h4>
                <asp:Label ID="Labelname5" runat="server"></asp:Label>
            </h4>
            <p>
                <asp:Label ID="Labeladd5" runat="server"></asp:Label>
            </p>
          </div>
          </div>

            </div>  
            </div> 
            </form>
                      <form method="get" action = "http://www.google.com/search"> <div style = "border:3px solid black;padding :6px; width: 30em;"> <table border="0" cellpadding ="0" > <tr> <td> <input type = "text" name= "q" size="25" maxlength="255" value="" /> <input type="submit" value="Google Search" /></td></tr> <tr> <td align= "centre" style ="font size:80%"></td></tr></table> </div></form> 
                    
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
