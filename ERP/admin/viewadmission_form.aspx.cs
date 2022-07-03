using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class admin_viewadmission_form : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                bindadmission_form();
            }

        }
        catch (Exception ex)
        {

        }

    }
    protected void bindadmission_form()
    {
        try
        {
            if (con.State != ConnectionState.Open)
                con.Open();
            string sqlquery = "select institute_id,s_firstname,s_midname,s_lastname,s_fathername,s_mothername,s_dob,s_aadharno,s_mobileno,s_gardianname,s_gardianmobileno,s_aadress,s_county_id,s_state_id,s_district_id,s_city,s_block,s_ps,s_pin,s_email,s_status,s_gender from admission_form  ";
            SqlCommand cmd = new SqlCommand(sqlquery, con);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            if (dt != null && dt.Rows.Count > 0)
            {
                // lblmsg.Text = dt.Rows[0]["Institute_Name"].ToString();

                grdadmission_form.DataSource = dt;
                grdadmission_form.DataBind();

            }
            else
            {
                grdadmission_form.DataSource = null;
                grdadmission_form.DataBind();
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
    protected void grdadmission_form_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void grdadmission_form_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        try
        {






        }
        catch (Exception ex)
        {



        }


    }

    protected void grdadmission_form_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            if (e.CommandName == "cmdedit")
            {
                Response.Redirect("updateadmission_form.aspx?val=" + e.CommandArgument.ToString() + "", false);
            }


            if (e.CommandName == "cmddelete")
            {
                if (con.State != ConnectionState.Open)
                    con.Open();
                string sqlstring = "delete from admission_form where institute_id='" + e.CommandArgument.ToString() + "'";
                SqlCommand cmddelete = new SqlCommand(sqlstring, con);
                int i = cmddelete.ExecuteNonQuery();
                if (i > 0)
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

    protected void grdadmission_form_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

    }
}
