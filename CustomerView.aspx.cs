using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Net.Mail;
using System.Reflection;
using System.Security.Cryptography;
using System.Web;
using System.Web.Configuration;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CustomerView : System.Web.UI.Page
{
    string rmpID;
    SqlCommand cmd;

    SqlDataAdapter da;

    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((string)Session["Login"] != "T")
        {
            Response.Redirect("Login.aspx");
        }

        rmpID = Request.QueryString["rmID"];

        RepeterData();

        string path = HttpContext.Current.Request.Url.PathAndQuery;
        Debug.WriteLine("Pathing" + path);
        Session["PathCust"] = path;
    }

    public void RepeterData()

    {
        SqlConnection con = new SqlConnection("Server = 'axensionsqlone.database.windows.net'; Database = DesignPackagingConcept; User ID = axension88; Password = DonkeyE!ephant;");
        con.Open();

        cmd = new SqlCommand("Select * from custView Where rotatorPackageID=@id", con);
        cmd.Parameters.AddWithValue("@id", rmpID);

        DataSet ds = new DataSet();

        da = new SqlDataAdapter(cmd);

        da.Fill(ds);

        rptCustomers.DataSource = ds;

        rptCustomers.DataBind();



    }
}