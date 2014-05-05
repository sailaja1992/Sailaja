using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Serialization;
using System.Net;
using System.Collections;

public partial class search2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void button2_Click(object sender, EventArgs e)
    {
        string lat = lt.Text;
        string lon = ln.Text;
        string genre = LF.Text;
        //1
        decimal lat1 = 0;
        decimal longitute1 = 0;
        string name1 = "";
        string address1 = "";
        //2
        decimal lat2 = 0;
        decimal longitute2 = 0;
        string name2 = "";
        string address2 = "";
        //3
        decimal lat3 = 0;
        decimal longitute3 = 0;
        string name3 = "";
        string address3 = "";
        //4
        decimal lat4 = 0;
        decimal longitute4 = 0;
        string name4 = "";
        string address4 = "";
        //5
        decimal lat5 = 0;
        decimal longitute5 = 0;
        string name5 = "";
        string address5 = "";
        //1
        string url = String.Format("https://api.foursquare.com/v2/venues/search?ll="+lat+","+lon+"&client_id=35D45DZIUTWLWAHCPLPNJWRNAMDZMJOGXHFDB0WAKXRGHZMK%20&client_secret=T5LEOKROJDTPAXV35RNFJQCW2ZILMNJFLPT4SJCVUF3DLSCA%20&v=20130815%20&query="+genre+"&limit=5");
        WebClient serviceRequest = new WebClient();
        string response = serviceRequest.DownloadString(new Uri(url));
        JavaScriptSerializer parser = new JavaScriptSerializer();
        dynamic info = parser.Deserialize<dynamic>(response);
        name1 = info["response"]["venues"][0]["name"];

        lat1 = info["response"]["venues"][0]["location"]["lat"];

        longitute1 = info["response"]["venues"][0]["location"]["lng"];
        Labelname1.Text = name1;
        //
        string url01 = String.Format("https://maps.googleapis.com/maps/api/geocode/json?latlng=" + lat1 + "," + longitute1 + "&sensor=false&key=AIzaSyB1NqoN3J2QDaq-7Rd4PvitbT3g8XkRC28");
        WebClient serviceRequest01 = new WebClient();
        string response01 = serviceRequest01.DownloadString(new Uri(url01));
        JavaScriptSerializer parser01 = new JavaScriptSerializer();
        dynamic info01 = parser.Deserialize<dynamic>(response01);
        address1 = info01["results"][0]["formatted_address"];
        Labeladd1.Text = address1;
        //2
        string url2 = String.Format("https://api.foursquare.com/v2/venues/search?ll=" + lat + "," + lon + "&client_id=35D45DZIUTWLWAHCPLPNJWRNAMDZMJOGXHFDB0WAKXRGHZMK%20&client_secret=T5LEOKROJDTPAXV35RNFJQCW2ZILMNJFLPT4SJCVUF3DLSCA%20&v=20130815%20&query=" + genre + "&limit=5");
        WebClient serviceRequest2 = new WebClient();
        string response2 = serviceRequest.DownloadString(new Uri(url2));
        JavaScriptSerializer parser2 = new JavaScriptSerializer();
        dynamic info2 = parser.Deserialize<dynamic>(response);
        name2 = info2["response"]["venues"][1]["name"];

        lat2 = info2["response"]["venues"][1]["location"]["lat"];

        longitute2 = info2["response"]["venues"][1]["location"]["lng"];
        Labelname2.Text = name2;
        //
        string url02 = String.Format("https://maps.googleapis.com/maps/api/geocode/json?latlng=" + lat1 + "," + longitute1 + "&sensor=false&key=AIzaSyB1NqoN3J2QDaq-7Rd4PvitbT3g8XkRC28");
        WebClient serviceRequest02 = new WebClient();
        string response02 = serviceRequest02.DownloadString(new Uri(url02));
        JavaScriptSerializer parser02 = new JavaScriptSerializer();
        dynamic info02 = parser.Deserialize<dynamic>(response02);
        address2 = info02["results"][2]["formatted_address"];
        Labeladd2.Text = address2;
        //3
        string url3 = String.Format("https://api.foursquare.com/v2/venues/search?ll=" + lat + "," + lon + "&client_id=35D45DZIUTWLWAHCPLPNJWRNAMDZMJOGXHFDB0WAKXRGHZMK%20&client_secret=T5LEOKROJDTPAXV35RNFJQCW2ZILMNJFLPT4SJCVUF3DLSCA%20&v=20130815%20&query=" + genre + "&limit=5");
        WebClient serviceRequest3 = new WebClient();
        string response3 = serviceRequest.DownloadString(new Uri(url3));
        JavaScriptSerializer parser3 = new JavaScriptSerializer();
        dynamic info3 = parser.Deserialize<dynamic>(response);
        name3 = info3["response"]["venues"][2]["name"];

        lat3 = info3["response"]["venues"][2]["location"]["lat"];

        longitute3 = info3["response"]["venues"][2]["location"]["lng"];
        Labelname3.Text = name3;
        //
        string url03 = String.Format("https://maps.googleapis.com/maps/api/geocode/json?latlng=" + lat1 + "," + longitute1 + "&sensor=false&key=AIzaSyB1NqoN3J2QDaq-7Rd4PvitbT3g8XkRC28");
        WebClient serviceRequest03 = new WebClient();
        string response03 = serviceRequest03.DownloadString(new Uri(url03));
        JavaScriptSerializer parser03 = new JavaScriptSerializer();
        dynamic info03 = parser.Deserialize<dynamic>(response03);
        address3 = info03["results"][2]["formatted_address"];
        Labeladd3.Text = address3;
        //4
        string url4 = String.Format("https://api.foursquare.com/v2/venues/search?ll=" + lat + "," + lon + "&client_id=35D45DZIUTWLWAHCPLPNJWRNAMDZMJOGXHFDB0WAKXRGHZMK%20&client_secret=T5LEOKROJDTPAXV35RNFJQCW2ZILMNJFLPT4SJCVUF3DLSCA%20&v=20130815%20&query=" + genre + "&limit=5");
        WebClient serviceRequest4 = new WebClient();
        string response4 = serviceRequest.DownloadString(new Uri(url4));
        JavaScriptSerializer parser4 = new JavaScriptSerializer();
        dynamic info4 = parser.Deserialize<dynamic>(response);
        name4 = info4["response"]["venues"][3]["name"];

        lat4 = info4["response"]["venues"][3]["location"]["lat"];

        longitute4 = info4["response"]["venues"][3]["location"]["lng"];
        Labelname4.Text = name4;
        //
        string url04 = String.Format("https://maps.googleapis.com/maps/api/geocode/json?latlng=" + lat1 + "," + longitute1 + "&sensor=false&key=AIzaSyB1NqoN3J2QDaq-7Rd4PvitbT3g8XkRC28");
        WebClient serviceRequest04 = new WebClient();
        string response04 = serviceRequest04.DownloadString(new Uri(url04));
        JavaScriptSerializer parser04 = new JavaScriptSerializer();
        dynamic info04 = parser.Deserialize<dynamic>(response04);
        address4 = info04["results"][2]["formatted_address"];
        Labeladd4.Text = address4;
        //5
        string url5 = String.Format("https://api.foursquare.com/v2/venues/search?ll=" + lat + "," + lon + "&client_id=35D45DZIUTWLWAHCPLPNJWRNAMDZMJOGXHFDB0WAKXRGHZMK%20&client_secret=T5LEOKROJDTPAXV35RNFJQCW2ZILMNJFLPT4SJCVUF3DLSCA%20&v=20130815%20&query=" + genre + "&limit=5");
        WebClient serviceRequest5 = new WebClient();
        string response5 = serviceRequest.DownloadString(new Uri(url5));
        JavaScriptSerializer parser5 = new JavaScriptSerializer();
        dynamic info5 = parser.Deserialize<dynamic>(response);
        name5 = info5["response"]["venues"][4]["name"];

        lat5 = info5["response"]["venues"][4]["location"]["lat"];

        longitute5 = info5["response"]["venues"][4]["location"]["lng"]; 
        Labelname5.Text = name5;
        //
        string url05 = String.Format("https://maps.googleapis.com/maps/api/geocode/json?latlng=" + lat1 + "," + longitute1 + "&sensor=false&key=AIzaSyB1NqoN3J2QDaq-7Rd4PvitbT3g8XkRC28");
        WebClient serviceRequest05 = new WebClient();
        string response05 = serviceRequest05.DownloadString(new Uri(url05));
        JavaScriptSerializer parser05 = new JavaScriptSerializer();
        dynamic info05 = parser.Deserialize<dynamic>(response05);
        address5 = info05["results"][2]["formatted_address"];
        Labeladd5.Text = address5;
    }
}