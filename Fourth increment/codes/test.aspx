<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Location</title>
<style type="text/css">
html { height: 100% }
body { height: 100%; margin: 0; padding: 0 }
#map_canvas { height: 100% }
</style>
<script type="text/javascript"
src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB1NqoN3J2QDaq-7Rd4PvitbT3g8XkRC28&sensor=false">
</script>
<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false&libraries=places">
</script>
<script type="text/javascript">
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(success);
    } else {
        alert("Geo Location is not supported on your current browser!");
    }
    function success(position) {
        var lat = position.coords.latitude;
        var long = position.coords.longitude;
        var city = position.coords.locality;
        var myLatlng = new google.maps.LatLng(lat, long);
        var myOptions = {
            center: myLatlng,
            zoom: 12,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
        var marker = new google.maps.Marker({
            position: myLatlng,
            title: "lat: " + lat + " long: " + long
        });

        marker.setMap(map);
        var infowindow = new google.maps.InfoWindow({ content: "<b>User Address</b><br/> Latitude:" + lat + "<br /> Longitude:" + long + "" });
        infowindow.open(map, marker);
    }
</script>
</head>
<body >
<form id="form1" runat="server">
<div id="map_canvas" style="width: 1200px; height: 850px" align="center">
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Back" />
</div>
</form>
</body>
</html>
