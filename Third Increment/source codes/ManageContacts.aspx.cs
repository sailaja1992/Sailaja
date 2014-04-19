using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class ManageContacts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from Userdata where UserName='" + name.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (temp == 1)
            {
                Response.Write("Oops! Contact already EXISTS!");
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
            string InsertQuery = "insert into Contactdata (ContactName,Email,Phone) values(@Uname, @Email, @Phone)";
            SqlCommand com = new SqlCommand(InsertQuery, conn);

            com.Parameters.AddWithValue("@Uname", name.Text);
            com.Parameters.AddWithValue("@Email", em.Text);
            com.Parameters.AddWithValue("@Phone", ph.Text);

            com.ExecuteNonQuery();
            Response.Redirect("ContactList.aspx");
            Response.Write("Contact added");

            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("ERROR:" + ex.ToString());

        }
    }
    protected void button2_Click(object sender, EventArgs e)
    {
        try
        {
            Guid newGuid = Guid.NewGuid();


            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string InsertQuery = "delete from Contactdata where ContactName=@Uname";
            SqlCommand com = new SqlCommand(InsertQuery, conn);

            com.Parameters.AddWithValue("@Uname", name.Text);
            com.Parameters.AddWithValue("@Email", em.Text);
            com.Parameters.AddWithValue("@Phone", ph.Text);

            com.ExecuteNonQuery();
            Response.Redirect("ContactList.aspx");
            Response.Write("contact deleted");

            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("ERROR:" + ex.ToString());

        }
    }
}