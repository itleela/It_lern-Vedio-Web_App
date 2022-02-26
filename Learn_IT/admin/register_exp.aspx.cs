using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class admin_register_exp : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\Learn_IT\Learn_IT\App_Data\learnit_database.mdf;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        string name = Request.Form["TextBox1"];
        string email = Request.Form["TextBox2"];
        string pass = Request.Form["TextBox3"];
        string mob = Request.Form["TextBox4"];

        int a = 1;
        con.Open();

        SqlCommand cmd = new SqlCommand("Insert into reg_exp values(@ex_name,@ex_email,@ex_pass,@ex_mob,@ex_status)", con);

        cmd.Parameters.AddWithValue("@ex_name", name);
        cmd.Parameters.AddWithValue("@ex_email", email);
        cmd.Parameters.AddWithValue("@ex_pass", pass);
        cmd.Parameters.AddWithValue("@ex_mob", mob);
        cmd.Parameters.AddWithValue("@ex_status", a);
      


        cmd.ExecuteNonQuery();




        con.Close();
        Response.Redirect("Alogint.aspx");
    }
}