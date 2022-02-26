using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class admin_viewp : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            con.Open();
            SqlCommand cmd2 = new SqlCommand("select a.*,b.* from Product as a,Category as b where a.Cat_id=b.Cat_id", con);
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