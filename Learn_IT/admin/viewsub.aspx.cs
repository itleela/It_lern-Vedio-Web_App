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
        string email = Request.QueryString["id"].ToString();
        if (!Page.IsPostBack)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select a.*,b.* from sub_video as b,addvideos as a where b.U_email='"+email+"' and a.Id=b.V_id ", con);
            SqlDataReader rd2 = cmd.ExecuteReader();

            if (rd2.HasRows)
            {
                Repeater1.DataSource = rd2;
                Repeater1.DataBind();

            }
            con.Close();
        }
    }
}