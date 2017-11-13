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


public partial class awards : System.Web.UI.Page
{
    
    SqlCommand cmd;

    SqlDataAdapter da;

    DataSet ds;
    string rmpID = "2016";
    public string awid;

    protected void Page_Load(object sender, EventArgs e)
    {
         
        if (Request.QueryString["cat"] == null)
        {
           Response.Redirect("awards.aspx?cat=2016&imageID=3&awardSelected=3");

        }
       
        if (Request.QueryString["cat"] == "2016")
        {
            Literal3.Text = "style=\"color:orange\"";
            awid = "3";

        }
        if (Request.QueryString["cat"] == "2015")
        {
            Literal4.Text = "style=\"color:orange\"";
            awid = "8";

        }
        if (Request.QueryString["cat"] == "PreviousAwards")
        {
            Literal5.Text = "style=\"color:orange\"";
            awid = "11";
        }

       
        rmpID = Request.QueryString["cat"];

        RepeterData();

       

        if (!Page.IsPostBack)
        {
            if (Request.QueryString["imageID"] != null)
            {
                awid = Request.QueryString["imageID"];
            }

            using (SqlConnection conn = new SqlConnection("Server = 'axensionsqlone.database.windows.net'; Database = DesignPackagingConcept; User ID = axension88; Password = DonkeyE!ephant;"))
            {
               
                conn.Open();
                SqlCommand com = new SqlCommand("Select awDesc, awPic2 from dpcAwards Where awID = @currentID", conn);
                com.Parameters.AddWithValue("@currentID", awid);

                SqlDataReader dr = com.ExecuteReader();

                while (dr.Read())
                {
                    if (dr.HasRows == true)
                    {
                        lblDesc.Text = dr[0].ToString();
                        Literal2.Text = "http://admindpc.azurewebsites.net/" + dr[1].ToString();
                         
                        dr.Close();
                        conn.Close();
                        return;
                    }

                }
                if (dr.HasRows == false)
                {
                    dr.Close();
                    conn.Close();
                    Response.Redirect("awards.aspx");

                }
            }

        }
    }

    public void RepeterData()

    {
        SqlConnection con = new SqlConnection("Server = 'axensionsqlone.database.windows.net'; Database = DesignPackagingConcept; User ID = axension88; Password = DonkeyE!ephant;");
        con.Open();

        cmd = new SqlCommand("Select * from dpcAwards Where awCat=@id", con);
        cmd.Parameters.AddWithValue("@id", rmpID);
       
        DataSet ds = new DataSet();

        da = new SqlDataAdapter(cmd);

        da.Fill(ds);

        rptCustomers.DataSource = ds;

        rptCustomers.DataBind();



    }
}