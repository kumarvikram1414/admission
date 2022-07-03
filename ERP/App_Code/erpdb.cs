using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data.Sql;
using System.Web.Configuration;

/// <summary>
/// Summary description for db
/// </summary>
public class erpdb
{
    public static SqlConnection con, con1, conOnlne;
    public static SqlTransaction tran, tranOnline;
    public static SqlDataAdapter da, daOnline, da3;
    public static SqlCommand cmd, cmdOnline, cmd3;
    public static DataSet ds, ds1, dsOnline, ds3;
    public static SqlDataReader dr, drOnline;

    public static int rows, chk, iid, ids, chk1, chk3, chkOnline;
    public static string sid;
    public static DataTable Dt, Dt1, DtOnline;
    public erpdb()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public static SqlConnection getconnection
    {
        get
        {
            try
            {
               
                con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);

                return con;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }


        }
    }


}