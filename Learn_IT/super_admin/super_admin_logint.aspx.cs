using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

public partial class admin_Alogint : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\Learn_IT\Learn_IT\App_Data\learnit_database.mdf;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        string email = Request.Form["TextBox1"];
        string pass = Request.Form["TextBox2"];
        SqlCommand cmd1 = new SqlCommand("Select * from supar_admin where email='" + email + "' and password='" + pass + "'", con);
        con.Open();
        var check = cmd1.ExecuteReader();
        if (check.HasRows)
        {
            Session["exemail"] = email;

            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert('Your are Login successfully. ');window.location='dashboard.aspx ';", true);
        }
        else
        {
            Response.Write("<script language=javascript>alert('Invalid ID or Password!!!');</script>");


        }



    }


}