using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class admin_payment_details : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void signup()
    {
        try
        {
            if (con.State != ConnectionState.Open)
                con.Open();
            string sqlquery = "insert into adm_paydetails(payment_mathod,payment_amount,payment_date,payment_maker_name,status) values" +
                " (@payment_mathod,@payment_amount,@payment_date,@payment_maker_name,@status)";
            SqlCommand cmd = new SqlCommand(sqlquery, con);


          

            cmd.Parameters.AddWithValue("@payment_mathod", paymentmathod.Text.Trim());
            cmd.Parameters.AddWithValue("@payment_amount", paymentamount.Text.Trim());
            cmd.Parameters.AddWithValue("@payment_date", paymentdate.Text.Trim());                                                                  
            cmd.Parameters.AddWithValue("@payment_maker_name", paymentmakername.Text.Trim());
            cmd.Parameters.AddWithValue("@status", status.Text.Trim());
         
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
        catch (Exception e)
        {
            lblinstitute.Text = e.Message;
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