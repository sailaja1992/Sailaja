<%@ Page Language="C#" AutoEventWireup="true" CodeFile="search_event.aspx.cs" Inherits="search_event" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:Label ID="Label1" runat="server" Text="Enter City Name:"></asp:Label>
    <asp:TextBox ID="CityName" runat="server"></asp:TextBox>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Enter State Name:"></asp:Label>
        <asp:TextBox ID="StateName" runat="server"></asp:TextBox>
    </p>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="submit" />
    
    <div>
        <iframe width="425" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.com/maps?t=m&amp;sll=39.091919,-94.5757195&amp;sspn=0.8189232,1.40727&amp;q=events+nearby+kansascity&amp;ie=UTF8&amp;hq=&amp;hnear=kansascity&amp;ll=39.099726,-94.578567&amp;spn=0.649026,1.182404&amp;z=10&amp;output=embed"></iframe><br /><small><a href="https://www.google.com/maps?t=m&amp;sll=39.091919,-94.5757195&amp;sspn=0.8189232,1.40727&amp;q=kansascity&amp;ie=UTF8&amp;hq=&amp;hnear=kansascity&amp;ll=39.099726,-94.578567&amp;spn=0.649026,1.182404&amp;z=10&amp;source=embed" style="color:#0000FF;text-align:left">View Larger Map</a></small>
    </div>
    </form>
</body>
</html>
