using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class admin_viewdepartmentcontacts : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                binddepartmentcontacts();
            }

        }
        catch (Exception ex)
        {

        }

    }
    protected void binddepartmentcontacts()
    {
        try
        {
            if (con.State != ConnectionState.Open)
                con.Open();
            string sqlquery = "select Department_Id,institute_id,Frist_Name,Middle_Name,Last_Name,Mobile,Email_ID,Age,Status from Admission_Department_contacts_erp  ";
            SqlCommand cmd = new SqlCommand(sqlquery, con);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            if (dt != null && dt.Rows.Count > 0)
            {
                // lblmsg.Text = dt.Rows[0]["Institute_Name"].ToString();

                grddepartmentcontacts.DataSource = dt;
                grddepartmentcontacts.DataBind();

            }
            else
            {
                grddepartmentcontacts.DataSource = null;
                grddepartmentcontacts.DataBind();
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