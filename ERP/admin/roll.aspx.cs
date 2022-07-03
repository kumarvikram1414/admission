using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class admin_roll : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        try
        {
            if (con.State != ConnectionState.Open)
                con.Open();
            string sqlquery = "insert into emp_role (rolecode,rolename,status,doe) values (@rolecode,@rolename,@status,@doe)";
            SqlCommand cmd = new SqlCommand(sqlquery, con);
            cmd.Parameters.AddWithValue("@rolecode", ddlstatus.SelectedValue);
            cmd.Parameters.AddWithValue("@rolename", txtrolename.Text.Trim());
            cmd.Parameters.AddWithValue("@status",RadioButtonList1.SelectedValue);
            cmd.Parameters.AddWithValue("@doe", System.DateTime.Now.ToLocalTime());
           int i= cmd.ExecuteNonQuery();
            if(i>0)
            {
                lblmsg.Text = "Sucessfully Saved";
            }
            else
            {
                lblmsg.Text = "! Failed";
            }



        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message;
        }
        finally
        {
            if (con.State != ConnectionState.Closed)
            con.Close();
        }
    }

    protected void btnreset_Click(object sender, EventArgs e)
    {

    }
}