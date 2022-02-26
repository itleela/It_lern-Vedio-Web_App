using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class admin_edit_vedio : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\Learn_IT\Learn_IT\App_Data\learnit_database.mdf;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        string vedio_id = Request.QueryString["id"].ToString();


        con.Open();
        SqlCommand cmd2 = new SqlCommand("select * from addvideos where Id='" + vedio_id + "' ", con);
        cmd2.ExecuteScalar();
        SqlDataAdapter da = new SqlDataAdapter(cmd2);
        DataSet ds = new DataSet();
        da.Fill(ds);
        con.Close();


        Image2.ImageUrl = ds.Tables[0].Rows[0]["poster"].ToString();
        string i = ds.Tables[0].Rows[0]["Cost"].ToString();
        id.Text = ds.Tables[0].Rows[0]["Id"].ToString();

        vedio_cost.Text = i;


    }

    protected void submitbutton_Click(object sender, EventArgs e)
    {

        Random random = new Random();
        int value = random.Next(10000);

        string path1 = "~/images/";
        string extension1 = System.IO.Path.GetExtension(u_poster.PostedFile.FileName);

        string path4 = path1 + value + extension1;
        u_poster.SaveAs(Server.MapPath(path1 + value + extension1));



        string path = "~/video/";
        string extension = System.IO.Path.GetExtension(u_vedio.PostedFile.FileName);

        string path3 = path + value + extension;
        u_vedio.SaveAs(Server.MapPath(path + value + extension));

        



        if (path3==null || path==null)
        {
            Response.Write("<script language=javascript>alert('Invalid ID or Password!!!');</script>");
        }
        else
        {
            con.Open();
            
            SqlCommand cmd = new SqlCommand("update addvideos set Cost='" + vedio_cost.Text + "', Upload_File='" + path3 + "', poster='" + path4 + "' where  Id='" + id.Text + "' ", con);
            
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("viewvi.aspx");
        }
       

    }
}