using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegisConnectionString"].ConnectionString);
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
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Guid newGuid = Guid.NewGuid();


            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegisConnectionString"].ConnectionString);
            conn.Open();
            string InsertQuery = "insert into Userdata (ID,UserName,Email,Password,Gender) values(@ID, @Uname, @Email, @Password, @Gender)";
            SqlCommand com = new SqlCommand(InsertQuery, conn);
            com.Parameters.AddWithValue("@ID", newGuid.ToString());
            com.Parameters.AddWithValue("@Uname", un.Text);
            com.Parameters.AddWithValue("@Email", email.Text);
            com.Parameters.AddWithValue("@Password", pass.Text);
            com.Parameters.AddWithValue("@Gender", gen.SelectedItem.ToString());
            com.ExecuteNonQuery();
            Response.Redirect("Admin.aspx");
            Response.Write("Registration complete");

            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("ERROR:" + ex.ToString());

        }
    }
}