using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;

public partial class admin_departmentcontacts : System.Web.UI.Page
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
            string sqlquery = "insert into Admission_Department_contacts_erp(Department_Id,institute_id,Frist_Name,Middle_Name,Last_Name,Mobile,Email_ID,Age,Status) values  (@Department_Id,@institute_id,@Frist_Name,@Middle_Name,@Last_Name,@Mobile,@Email_ID,@Age,@Status)";
            SqlCommand cmd = new SqlCommand(sqlquery, con);


            cmd.Parameters.AddWithValue("@Department_Id", Departmentid.Text.Trim());
            cmd.Parameters.AddWithValue("@institute_id", institute_id.Text.Trim());
            cmd.Parameters.AddWithValue("@Frist_Name", Fristname.Text.Trim());
            cmd.Parameters.AddWithValue("@Middle_Name", Middlename.Text.Trim());
            cmd.Parameters.AddWithValue("@Last_Name", Lastname.Text.Trim());
            cmd.Parameters.AddWithValue("@Mobile", Mobile.Text.Trim());
            cmd.Parameters.AddWithValue("@Email_ID", Emailid.Text.Trim());
            cmd.Parameters.AddWithValue("@Age", Age.Text.Trim());
            cmd.Parameters.AddWithValue("@Status", Status.Text.Trim());

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