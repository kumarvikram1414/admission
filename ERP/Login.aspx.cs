using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
   // SqlConnection con = new SqlConnection()
    protected void Page_Load(object sender, EventArgs e)
    {
        try {
           // if (!IsPostBack)
            //Session.Contents.Clear();
            //Session.Abandon();
            //Session.Clear();
             
        
        } 
        catch { }
    }
    protected void login()
    {
        try
        {
            string username = TextBox1.Text.Trim();
            if(username == "")
            {
                throw new Exception("Please Enter Valid Username");
            }
            string password = TextPassword.Text.Trim();
            if (password == "")
            {
                throw new Exception("Please Enter Valid Password");
            }
            //con = erpdb.getconnection;
            if (con.State != ConnectionState.Open)
                con.Open();
            string sql = "select username,passkey,status,roll from login_auth where status='1' and username=@username  and passkey=@passkey ";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@username", username.ToString());
            cmd.Parameters.AddWithValue("@passkey", password.ToString());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt != null && dt.Rows.Count > 0)
            {
                //session establisment
                Session["username"] = dt.Rows[0]["username"].ToString();
                Session["roll"] = dt.Rows[0]["roll"].ToString();
                Response.Redirect("admin/admindashboard.aspx",false);
            }
            else
            {
                lblmsg.Text = "Incorrect Username & Password";
            }
        }catch( Exception ex)
        {
            lblmsg.Text = ex.Message;
            lblmsg.ForeColor = System.Drawing.Color.Red;
        }
    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        login();
    }
}