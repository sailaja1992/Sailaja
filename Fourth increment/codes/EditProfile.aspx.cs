using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class EditProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void button2_Click(object sender, EventArgs e)
    {
        try
        {
            Guid newGuid = Guid.NewGuid();


            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string InsertQuery = "insert into profileinfo (pn,dob,city,emp,phn,occ) values(@pn, @dob, @city, @emp, @phn, @occ)";
            SqlCommand com = new SqlCommand(InsertQuery, conn);

            com.Parameters.AddWithValue("@pn", pn.Text);
            com.Parameters.AddWithValue("@dob", dob.Text);
            com.Parameters.AddWithValue("@city", city.Text);
            com.Parameters.AddWithValue("@emp", emp.Text);
            com.Parameters.AddWithValue("@phn", phn.Text);
            com.Parameters.AddWithValue("@occ", occ.Text);
            com.ExecuteNonQuery();
            Response.Redirect("profileinfo.aspx");


            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("ERROR:" + ex.ToString());

        }
    }
    
}