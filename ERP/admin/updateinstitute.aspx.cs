using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class admin_updateinstitute : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        try {
            string institutename = Request.QueryString["val"].ToString();
            lblinstitute.Text = institutename.ToString();
            show(lblinstitute.Text);
           // updateinstute(institutename);


        }
        catch(Exception ex)
        {

        }
    }


    protected void show(string instite)
    {
        try
        {
            if (con.State != ConnectionState.Open)
                con.Open();
            string sqlquery = "select * from Institute where Institute_Name=@Institute_Name";
            SqlCommand cmd = new SqlCommand(sqlquery, con);
            cmd.Parameters.AddWithValue("@Institute_Name", lblinstitute.Text);

            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            if(dt!=null && dt.Rows.Count>0)
            {
                txtname.Text = instite.ToString();
                txtname.Enabled = false;
                txtcity.Text = dt.Rows[0]["City"].ToString();
            }


           



        }
        catch (Exception ex)
        {
            lblinstitute.Text = ex.Message;
        }
        finally
        {
            if (con.State != ConnectionState.Closed)
                con.Close();
        }
    }
    protected void updateinstute( string instite)
    {
        try
        {
            if (con.State != ConnectionState.Open)
                con.Open();
            string sqlquery = "update Institute set Tag_Line=@Tag_Line,Address=@Address,City=@City,District=@District,State=@State," +
                "Country=@Country where Institute_Name=@Institute_Name";
            SqlCommand cmd = new SqlCommand(sqlquery, con);

            cmd.Parameters.AddWithValue("@Institute_Name", txtname.Text.Trim());
            cmd.Parameters.AddWithValue("@Tag_Line", txttagline.Text.Trim());
            cmd.Parameters.AddWithValue("@Address", txtaddress.Text.Trim());
            cmd.Parameters.AddWithValue("@City", txtcity.Text.Trim());
            cmd.Parameters.AddWithValue("@District", txtdistrict.Text.Trim());
            cmd.Parameters.AddWithValue("@State", txtstate.Text.Trim());
            cmd.Parameters.AddWithValue("@Country", txtcountry.Text.Trim());

            //cmd.Parameters.AddWithValue("@Pin", txtpin.Text);
            //cmd.Parameters.AddWithValue("@Phone", txtphone.Text.Trim());
            //cmd.Parameters.AddWithValue("@Email", txtemail.Text.Trim());
            //cmd.Parameters.AddWithValue("@Website", txtwebsite.Text.Trim());

            //cmd.Parameters.AddWithValue("@College_Code",txtcollegecode.Text.Trim());
            //cmd.Parameters.AddWithValue("@Contect_Person", txtcontactperson.Text.Trim());
            //cmd.Parameters.AddWithValue("@University", txtuniversity.Text.Trim());
            //cmd.Parameters.AddWithValue("@UGC_APPROVED", rblugc .SelectedValue);
            //cmd.Parameters.AddWithValue("@AICTE", rblaicte.SelectedValue);

            //cmd.Parameters.AddWithValue("@Status", rblstatus.SelectedValue);
            //cmd.Parameters.AddWithValue("@DOE", (txtdoe.Text.Trim() == "" ? null : Convert.ToDateTime(txtdoe.Text.Trim()).ToString("MM/dd/yyyy")));
            //cmd.Parameters.AddWithValue("@users", txtuser.Text.Trim());

            int i = cmd.ExecuteNonQuery();


            if (i > 0)
            {
                lblinstitute.Text = "Sucessfully Saved";
            }
            else
            {
                lblinstitute.Text = "! Failed";
            }



        }
        catch (Exception ex)
        {
            lblinstitute.Text = ex.Message;
        }
        finally
        {
            if (con.State != ConnectionState.Closed)
                con.Close();
        }
    }

    protected void submit_Click(object sender, EventArgs e)
    {
        updateinstute(lblinstitute.Text.Trim());
    }

   

    protected void btncancel_Click(object sender, EventArgs e)
    {

    }
}