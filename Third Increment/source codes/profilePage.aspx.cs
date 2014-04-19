using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

    public partial class profilePage : System.Web.UI.Page
    {
        string strConnString = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
        string str;
        SqlCommand com;

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        conn.Open();
        str = "select * from profileinfo";
        com = new SqlCommand(str, conn);
        SqlDataReader reader = com.ExecuteReader();
        reader.Read();
            label7.Text = reader["pn"].ToString();
            reader.Close();
            conn.Close();
            conn.Open();
            SqlDataReader reader1 = com.ExecuteReader();
            reader1.Read();
            label8.Text = reader1["dob"].ToString();
            reader1.Close();
            conn.Close();
            conn.Open();
            SqlDataReader reader2 = com.ExecuteReader();
            label9.Text = reader2["city"].ToString();
            reader2.Close();
            conn.Close();
            conn.Open();
            SqlDataReader reader3 = com.ExecuteReader();
            reader3.Read();
            label10.Text = reader3["emp"].ToString();
            reader3.Close();
            conn.Close();
            conn.Open();
            SqlDataReader reader4 = com.ExecuteReader();
            reader4.Read();
            label11.Text = reader4["phn"].ToString(); 
        reader4.Close();
        conn.Close();
        conn.Open();
        SqlDataReader reader5 = com.ExecuteReader();
            reader5.Read();
            label12.Text = reader5["occ"].ToString();
            reader5.Close();
        conn.Close();
        label1.Text += label7.Text;
        label2.Text += label8.Text;
        label3.Text += label9.Text;
        label4.Text += label10.Text;
        label5.Text += label11.Text;
        label6.Text += label12.Text;
        conn.Close();
    }
    protected void button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("EditProfile.aspx");
    }
}