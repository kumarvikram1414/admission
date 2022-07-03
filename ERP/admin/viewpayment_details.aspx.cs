using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class admin_viewpayment_details : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                bindpayment_details();
            }

        }
        catch (Exception ex)
        {

        }


    }

    protected void bindpayment_details()
    {
        try
        {
            if (con.State != ConnectionState.Open)
                con.Open();
            string sqlquery = "select institute_id,payment_mathord,payment_amount,payment_date,payment_maker_name,status from Admission_payment_details  ";
            SqlCommand cmd = new SqlCommand(sqlquery, con);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            if (dt != null && dt.Rows.Count > 0)
            {
                // lblmsg.Text = dt.Rows[0]["Institute_Name"].ToString();

                grdpayment_details.DataSource = dt;
                grdpayment_details.DataBind();

            }
            else
            {
                grdpayment_details.DataSource = null;
                grdpayment_details.DataBind();
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
}
