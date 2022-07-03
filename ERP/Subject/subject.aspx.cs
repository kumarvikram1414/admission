using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Subject_subject : System.Web.UI.Page

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
            string sqlquery = "insert into subject (institute_id,subject_code,course_id,branch_id,sem_id,date_of_entry,status) values (4,@subject_code,@course_id,@branch_id,@sem_id,@date_of_entry,1)";
            SqlCommand cmd = new SqlCommand(sqlquery, con);




            //cmd.Parameters.AddWithValue("@institute_id", institute_id.Text.Trim());
            cmd.Parameters.AddWithValue("@subject_code", subjectcode.Text.Trim());
            cmd.Parameters.AddWithValue("@course_id", courseid.Text.Trim());
            cmd.Parameters.AddWithValue("@branch_id", branchid.Text.Trim());
            cmd.Parameters.AddWithValue("@sem_id", semid.Text.Trim());
            cmd.Parameters.AddWithValue("@date_of_entry", dateofentry.Text.Trim());
            //cmd.Parameters.AddWithValue("@status", status.Text.Trim());

            int i = cmd.ExecuteNonQuery();


            if (i > 0)
            {
                lblsubject.Text = "Sucessfully Saved";
            }
            else
            {
                lblsubject.Text = "! Failed";
            }

        }
        catch (Exception e)
        {
            lblsubject.Text = e.Message;
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