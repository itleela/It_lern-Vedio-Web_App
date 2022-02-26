using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Viewer : System.Web.UI.MasterPage
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\Learn_IT\Learn_IT\App_Data\learnit_database.mdf;Integrated Security=True");
    //SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Dell\Desktop\Learn_IT\Learn_IT\App_Data\learnit_database.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["email"]==null)
        {
            Label1.Visible=false;
            Label2.Visible=false;
            LinkButton1.Visible=false;
            LinkButton2.Visible=false;
            change_pass.Visible=false;
            reg.Visible=true;
            log.Visible=true;
        }
        else
        {
            Label1.Visible=true;
            Label2.Visible=true;
            change_pass.Visible=true;
            Label2.Text= "!! " + Session["email"].ToString();
            LinkButton1.Visible=true;
            LinkButton2.Visible=true;
            reg.Visible=false;
            log.Visible=false;

        }
        if (!Page.IsPostBack)
        {

            categorynamemethod();
        }

    }
    public void categorynamemethod()
    {
        SqlCommand cmd = new SqlCommand("select * from addvideos", con);

        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.HasRows)
        {
            Repeater1.DataSource = rd;
            Repeater1.DataBind();
        }
        else
        {
            Response.Write("No Details are available");
        }
        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select email, password from register where Email = '" + TextBox2.Text + "' and Password = '" + TextBox3.Text + "'", con);

        con.Open();

        var check = cmd.ExecuteReader();
        if (check.HasRows)
        {
            Session["email"] = TextBox2.Text;
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert('Your are login Succesfully. ');window.location='Home.aspx ';", true);



        }
        else
        {

            Response.Write("<script language=javascript>alert('ERROR');</script>");


        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("Home.aspx");

    }

  

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("myvedio.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("detail1.aspx?key=" + TextBox1.Text);
    }
    protected void change_pass_Click(object sender, EventArgs e)
    {
        Response.Redirect("change_password.aspx");

    }
}
