using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SetImageURL();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegisConnectionString"].ConnectionString);
        conn.Open();
        string checkuser = "select count(*) from Userdata where UserName='" + un.Text + "'";
        SqlCommand com = new SqlCommand(checkuser, conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        conn.Close();
        if (temp == 1)
        {
            conn.Open();
            string checkpasswordquery = "select password from Userdata where UserName='" + un.Text + "'";
            SqlCommand passcom = new SqlCommand(checkpasswordquery, conn);
            string password = passcom.ExecuteScalar().ToString().Replace(" ","");
            if (password == pass.Text)
            {
                Session["New"] = un.Text;
                Response.Write("Password is correct");
                Response.Redirect("home.aspx");
            }
            else
            {
                Response.Write("Password is incorrect!");
            }

        }
        else
        {
            Response.Write("Username is invalid");
        }
    }
    protected void Unnamed1_Tick(object sender, EventArgs e)
    {
        SetImageURL();
    }

    private void SetImageURL()
    {
        Random _rand = new Random();
        int i = _rand.Next(1, 2);
        image1.ImageUrl = "~/images/" + i.ToString() + ".jpg";
    }
}