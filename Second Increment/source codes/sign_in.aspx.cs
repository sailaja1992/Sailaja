using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class sign_in : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void button2_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
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
            string password = passcom.ExecuteScalar().ToString().Replace(" ", "");
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
}
