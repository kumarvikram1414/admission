using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;




public partial class admin_admission_form : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {



    }


    protected void signup()
    {
        try
        {
            String fname = firstname.Text.Trim();
            if (con.State != ConnectionState.Open)
                con.Open();
            string sqlquery = "insert into admission_form (s_firstname,s_midname,s_lastname,s_fathername,s_mothername,s_dob,s_aadharno,s_mobileno,s_gardianname,s_gardianmobileno,s_aadress,s_county_id,s_state_id,s_district_id,s_city,s_block,s_ps,s_pin,s_email,s_status,s_gender,users) values (@s_firstname,@s_midname,@s_lastname,@s_fathername,@s_mothername,@s_dob,@s_aadharno,@s_mobileno,@s_gardianname,@s_gardianmobileno,@s_aadress,@s_county_id,@s_state_id,@s_district_id,@s_city,@s_block,@s_ps,@s_pin,@s_email,@s_status,@s_gender,@users)";
            SqlCommand cmd = new SqlCommand(sqlquery, con);

            Session["FirstName"] = firstname.Text;
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

            string sqlquery1 = "select s_id from admission_form where  s_firstname='fname'";
            SqlCommand cmd1 = new SqlCommand(sqlquery1, con);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            if (dt != null && dt.Rows.Count > 0)
            {
                // lblmsg.Text = dt.Rows[0]["Institute_Name"].ToString();

                lblid.Text = "dab";
                //lblid.DataBind();

            }
            else
            {
                //grdadmission_form.DataSource = null;
               // grdadmission_form.DataBind();
                lblmsg.Text = "No Record found";

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



    protected void btnlogin_Click(object sender, EventArgs e)
    {
        signup();

    }
}