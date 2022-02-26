using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class admin_addc : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    

   

    protected void Button1_Click1(object sender, EventArgs e)
    {

        string path = "~/images/" + FileUpload1.FileName.ToString();
        FileUpload1.SaveAs(Server.MapPath(path));


     string city = DropDownList1.SelectedValue;

        Response.Write(city);
        con.Open();
        SqlCommand cmd = new SqlCommand("Insert into Product Values (@Cat_id,@P_brand,@P_model,@P_price,@P_quantity,@P_image)", con);
        cmd.Parameters.AddWithValue("@Cat_id", city);
        cmd.Parameters.AddWithValue("@P_brand", TextBox1.Text);
        cmd.Parameters.AddWithValue("@P_model", TextBox2.Text);
        cmd.Parameters.AddWithValue("@P_price", TextBox3.Text);
        cmd.Parameters.AddWithValue("@P_quantity", TextBox4.Text);
        cmd.Parameters.AddWithValue("@P_image", path);
        cmd.ExecuteNonQuery();
        con.Close();

        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert('Producted Added successfully. ');window.location='Dashboard.aspx ';", true);

    }
}