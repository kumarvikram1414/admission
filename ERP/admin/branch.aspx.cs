using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class admin_branch : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if(!IsPostBack)
            {
                bindcourse();
            }

        }
        catch (Exception ex)
        {

        }
    }
    protected void bindcourse()
    {
        try
        {
            if (con.State != ConnectionState.Open)
                con.Open();
            string sqlquery = "select course_name,idd from course where status='1'";
            SqlCommand cmd = new SqlCommand(sqlquery, con);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            if (dt != null && dt.Rows.Count > 0)
            {
                ddlcourses.DataSource = dt;
                
                ddlcourses.DataValueField = "idd";
                ddlcourses.DataTextField = "course_name";
                ddlcourses.DataBind();
                //ddlcourses.Items.Add("Select");
                ddlcourses.Items.Insert(0, "Select");


            }
            else
            {
                ddlcourses.DataSource = null;
                ddlcourses.DataBind();
                ddlcourses.Items.Insert(0, "Select");
            }

            
        }
        catch (Exception e)
        {

        }
        finally
        {
            if (con.State != ConnectionState.Closed)
                con.Close();
        }
    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        try {
        
        if(ddlcourses.SelectedIndex==0)
            {
                throw new Exception("Please select Course");
            }



        
        }catch(Exception ex)
        { }
    }

    protected void btnreset_Click(object sender, EventArgs e)
    {

    }
}