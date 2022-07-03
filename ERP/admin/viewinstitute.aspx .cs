using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class admin_viewinstitute : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                bindinstitute();
            }
        
        }catch(Exception ex)
        {

        }

    }
    protected void bindinstitute()
    {
        try 
        {
            if (con.State != ConnectionState.Open)
                con.Open();
            string sqlquery = "select Institute_Name,Tag_Line,Address,City,District,State," +
                "Country,Pin,Phone,Email,Website,College_Code,Contect_Person,University,UGC_APPROVED,AICTE,Status," +
                "DOE,users from Institute where Status='1' ";
            SqlCommand cmd = new SqlCommand(sqlquery, con);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            if (dt != null && dt.Rows.Count > 0)
            {
               // lblmsg.Text = dt.Rows[0]["Institute_Name"].ToString();

                grdinstitute.DataSource = dt;
                grdinstitute.DataBind();

            }
            else
            {
                grdinstitute.DataSource = null;
                grdinstitute.DataBind();
                lblmsg.Text = "No Record found";

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

    protected void grdinstitute_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void grdinstitute_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        try {
        
              
        
        
        
        
        }
        catch (Exception ex)
        { 
        
        
        
        }


    }

    protected void grdinstitute_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            if (e.CommandName == "cmdedit")
            {
                Response.Redirect("updateinstitute.aspx?val=" + e.CommandArgument.ToString() + "", false);
            }


                if (e.CommandName== "cmddelete")
            {
                if (con.State != ConnectionState.Open)
                    con.Open();
                string sqlstring = "delete from Institute where Institute_Name='"+e.CommandArgument.ToString()+"'";
                SqlCommand cmddelete = new SqlCommand(sqlstring, con);
             int i= cmddelete.ExecuteNonQuery();
                if(i>0)
                {
                    lblmsg.Text = "Successfully Record deleted";
                }
                else
                {
                    lblmsg.Text = "Failed!";
                }
            }
        }
        catch (Exception ex)
        {
            
        }
    }

    protected void grdinstitute_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

    }
}