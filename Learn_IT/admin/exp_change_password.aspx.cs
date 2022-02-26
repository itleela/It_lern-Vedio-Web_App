using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class admin_exp_change_password : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\Learn_IT\Learn_IT\App_Data\learnit_database.mdf;Integrated Security=True");
    //SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Dell\Desktop\Learn_IT\Learn_IT\App_Data\learnit_database.mdf;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_change_pass_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select ex_pass from reg_exp where  ex_email='" + Session["exemail"].ToString() + "' ", con);

        cmd.ExecuteScalar();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        con.Close();

        string i = ds.Tables[0].Rows[0]["ex_pass"].ToString();
        if (i == oldpasswordtxt.Text)
        {

            con.Open();
            SqlCommand cmd1 = new SqlCommand("update reg_exp set ex_pass=@newpassword where ex_email='" + Session["exemail"].ToString() + "'", con);

            cmd1.Parameters.AddWithValue("@newpassword", newpasswordtxt.Text);
            cmd1.Parameters["@newpassword"].Value = newpasswordtxt.Text;
            cmd1.ExecuteNonQuery();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert('Your pasword change Succesfully. ');window.location='dashboard.aspx ';", true);

            con.Close();
        }

        else
        {
            Response.Write("<script language=javascript>alert('Kindly enter valid Old Password');</script>");

        }
    }
}