using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Serialization;
using System.Net;
using System.Collections;

public partial class weather : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string place1 = name.Text;
        string description = "";
        decimal temp = 0;
        decimal wind = 0;


        string url = String.Format("http://api.openweathermap.org/data/2.5/weather?q="+place1+"");
        WebClient serviceRequest = new WebClient();
        string response = serviceRequest.DownloadString(new Uri(url));
        JavaScriptSerializer parser = new JavaScriptSerializer();
        dynamic info = parser.Deserialize<dynamic>(response);
        description = info["weather"][0]["description"];
        temp = info["main"]["temp"];
        wind = info["wind"]["speed"];
        desc.Text = description;
        tem.Text = temp.ToString();
        win.Text = wind.ToString();
    }
}