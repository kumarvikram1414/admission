using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class admin_updateadmission_form : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string instituteid = Request.QueryString["val"].ToString();
            lbladmission_form.Text = instituteid.ToString();
            show(lbladmission_form.Text);
            // updateinstute(institutename);


        }
        catch (Exception ex)
        {

        }
    }


    protected void show(string instite)
    {
        try
        {
            if (con.State != ConnectionState.Open)
                con.Open();
            string sqlquery = "select * from admission_form where institute_id=institute_id";
            SqlCommand cmd = new SqlCommand(sqlquery, con);
            cmd.Parameters.AddWithValue("@institute_id", lbladmission_form.Text);

            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            if (dt != null && dt.Rows.Count > 0)
            {
                firstname.Text = instite.ToString();
                firstname.Enabled = false;
                city.Text = dt.Rows[0]["City"].ToString();
            }






        }
        catch (Exception ex)
        {
            lbladmission_form.Text = ex.Message;
        }
        finally
        {
            if (con.State != ConnectionState.Closed)
                con.Close();
        }
    }
    protected void updateadmission_form(string instite)
    {
        try
        {
            if (con.State != ConnectionState.Open)
                con.Open();
            string sqlquery = "insert into admission_form (institute_id,s_firstname,s_midname,s_lastname,s_fathername,s_mothername,s_dob,s_aadharno,s_mobileno,s_gardianname,s_gardianmobileno,s_aadress,s_county_id,s_state_id,s_district_id,s_city,s_block,s_ps,s_pin,s_email,s_status,s_gender,users) values (@institute_id,@s_firstname,@s_midname,@s_lastname,@s_fathername,@s_mothername,@s_dob,@s_aadharno,@s_mobileno,@s_gardianname,@s_gardianmobileno,@s_aadress,@s_county_id,@s_state_id,@s_district_id,@s_city,@s_block,@s_ps,@s_pin,@s_email,@s_status,@s_gender,@users)";
            SqlCommand cmd = new SqlCommand(sqlquery, con);

            cmd.Parameters.AddWithValue("@institute_id", institute_id.Text.Trim());
            cmd.Parameters.AddWithValue("@s_firstname", firstname.Text.Trim());
            cmd.Parameters.AddWithValue("@s_midname", midname.Text.Trim());
            cmd.Parameters.AddWithValue("@s_lastname", lastname.Text.Trim());
            cmd.Parameters.AddWithValue("@s_fathername", fathername.Text.Trim());
            cmd.Parameters.AddWithValue("@s_mothername", mothername.Text.Trim());
            cmd.Parameters.AddWithValue("@s_dob", dob.Text.Trim());

            cmd.Parameters.AddWithValue("@s_aadharno", adharno.Text.Trim());
            cmd.Parameters.AddWithValue("@s_mobileno", mobileno.Text.Trim());
            cmd.Parameters.AddWithValue("@s_gardianname", guardianname.Text.Trim());
            cmd.Parameters.AddWithValue("@s_gardianmobileno", guardianmobileno.Text.Trim());
            cmd.Parameters.AddWithValue("@s_aadress", address.Text.Trim());


            cmd.Parameters.AddWithValue("@s_county_id", country.Text.Trim());
            cmd.Parameters.AddWithValue("@s_state_id", state.Text.Trim());
            cmd.Parameters.AddWithValue("@s_district_id", district.Text.Trim());
            cmd.Parameters.AddWithValue("@s_city", city.Text.Trim());
            cmd.Parameters.AddWithValue("@s_block", block.Text.Trim());


            cmd.Parameters.AddWithValue("@s_ps", ps.Text.Trim());
            cmd.Parameters.AddWithValue("@s_pin", pin.Text.Trim());
            cmd.Parameters.AddWithValue("@s_email", email.Text.Trim());
            cmd.Parameters.AddWithValue("@s_status", status.Text.Trim());

            cmd.Parameters.AddWithValue("@s_gender", gender.Text.Trim());
            cmd.Parameters.AddWithValue("@users", users.Text.Trim());



            int i = cmd.ExecuteNonQuery();


            if (i > 0)
            {
                lbladmission_form.Text = "Sucessfully Saved";
            }
            else
            {
                lbladmission_form.Text = "! Failed";
            }

        }
        catch (Exception e)
        {
            lbladmission_form.Text = e.Message;
        }
        finally
        {
            if (con.State != ConnectionState.Closed)
                con.Close();
        }
    }

    protected void submit_Click(object sender, EventArgs e)
    {
        updateadmission_form(lbladmission_form.Text.Trim());
    }



    protected void btncancel_Click(object sender, EventArgs e)
    {

    }
}