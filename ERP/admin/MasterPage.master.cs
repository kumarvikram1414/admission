using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

            string user = Session["username"].ToString();

            if (Session["username"] == null)
            {
                Response.Redirect("../logout.aspx", false);
            }


        }


        catch (Exception ex)
        {
            Response.Redirect("../logout.aspx", true);
        }
    }
}
