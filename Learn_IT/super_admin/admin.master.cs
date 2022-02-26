using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_admin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["exemail"]==null)
        {
            Response.Redirect("super_admin_logint.aspx");

        }
        else
        {

            Label1.Text=Session["exemail"].ToString();
        }
        
    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();


        Response.Redirect("super_admin_logint.aspx");

    }


  
}
