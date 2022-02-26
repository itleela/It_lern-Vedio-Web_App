using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class admin_addv : System.Web.UI.Page
{
    string o = ""; string q = ""; string mm = "";
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\Learn_IT\Learn_IT\App_Data\learnit_database.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    //protected void Button1_Click(object sender, EventArgs e)
    //{
    //    con.Open();
    //    SqlCommand cmd = new SqlCommand("Insert into Category (Cat_name) Values (@Cat_name)", con);

    //    cmd.Parameters.AddWithValue("@Cat_name", TextBox1.Text);


    //    cmd.ExecuteNonQuery();
    //    con.Close();

    //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert('Category Added successfully. ');window.location='Dashboard.aspx ';", true);

    //}

    protected void submitbutton_Click(object sender, EventArgs e)
    {
        DateTime temp;

        temp = Convert.ToDateTime(u_date.Text);
        o = temp.ToString("dd/MM/yyyy");
        q = TextBox1.Text;
        DateTime dt = Convert.ToDateTime(o);

        DateTime newDate = dt.AddDays(Convert.ToDouble(q));

        mm = newDate.ToString("dd/MM/yyyy");
        Random random = new Random();
        int value = random.Next(10000);

        string path1 = "~/images/";
        string extension1 = System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName);

        string path4 = path1 + value + extension1;
        FileUpload1.SaveAs(Server.MapPath(path1 + value + extension1));
      


        string path = "~/video/";
        string extension= System.IO.Path.GetExtension(video_upload.PostedFile.FileName);
     
        string path3 = path + value + extension;
        video_upload.SaveAs(Server.MapPath(path + value + extension));
        con.Open();

        SqlCommand cmd = new SqlCommand("Insert into addvideos values(@v_name,@v_desc,@Expert_Id,@Cost,@Upload_date,@nofday,@Upload_File,@poster)", con);

        cmd.Parameters.AddWithValue("@v_name", v_name.Text);
        cmd.Parameters.AddWithValue("@v_desc", v_desc.Text);
        cmd.Parameters.AddWithValue("@Expert_Id", Session["exemail"].ToString());
        cmd.Parameters.AddWithValue("@Cost", v_cost.Text);
        cmd.Parameters.AddWithValue("@Upload_date", o);
        cmd.Parameters.AddWithValue("@nofday", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Upload_File", path3);
        cmd.Parameters.AddWithValue("@poster", path4);
        cmd.ExecuteNonQuery();

        Response.Redirect("dashboard.aspx");
        con.Close();

    }

   
}