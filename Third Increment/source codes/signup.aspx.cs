using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from Userdata where UserName='" + un.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (temp == 1)
            {
                Response.Write("Oops! User already EXISTS!");
            }

            conn.Close();
        }
    }
    protected void button1_Click(object sender, EventArgs e)
    {
         try
        {
            Guid newGuid = Guid.NewGuid();


            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string InsertQuery = "insert into Userdata (UserName,Email,Password) values(@Uname, @Email, @Password)";
            SqlCommand com = new SqlCommand(InsertQuery, conn);
         
            com.Parameters.AddWithValue("@Uname", un.Text);
            com.Parameters.AddWithValue("@Email", email.Text);
            com.Parameters.AddWithValue("@Password", pass.Text);
            
            com.ExecuteNonQuery();
            Response.Redirect("sign_in.aspx");
            Response.Write("Registration complete");

            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("ERROR:" + ex.ToString());

        }
    }
}
