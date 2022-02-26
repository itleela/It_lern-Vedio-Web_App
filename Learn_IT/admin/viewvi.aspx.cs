using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class admin_viewc : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\Learn_IT\Learn_IT\App_Data\learnit_database.mdf;Integrated Security=True");


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            con.Open();
            SqlCommand cmd2 = new SqlCommand("select * from addvideos where Expert_id='"+Session["exemail"].ToString()+"' ", con);
            SqlDataReader rd2 = cmd2.ExecuteReader();

            if (rd2.HasRows)
            {
                Repeater1.DataSource = rd2;
                Repeater1.DataBind();

            }
            con.Close();
        }
    }
}