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
public partial class CustomerProduct : System.Web.UI.Page
{
    
    string rotatorID;
    SqlCommand cmd;

    SqlDataAdapter da;
    DataTable dt;
    DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {
        if ((string)Session["Login"] != "T")
        {
            Response.Redirect("Login.aspx");
        }

        rotatorID = Request.QueryString["imageID"];
        //  RepeterData();
        if(rotatorID == null)
        {
            Response.Redirect("login.aspx");
        }
        ListCustomers();
        hyp1.NavigateUrl = Session["PathCust"].ToString();
        if (!Page.IsPostBack)
        {
            using (SqlConnection conn = new SqlConnection("Server = 'axensionsqlone.database.windows.net'; Database = DesignPackagingConcept; User ID = axension88; Password = DonkeyE!ephant;"))
            {
                conn.Open();
                SqlCommand com = new SqlCommand("Select * from dpcrImages Where rmID = @currentID", conn);
                com.Parameters.AddWithValue("@currentID", rotatorID);

                SqlDataReader dr = com.ExecuteReader();

                while (dr.Read())
                {
                    if (dr.HasRows == true)
                    {

                        lblname.Text = dr[1].ToString();
                        lblDesc.Text = dr[4].ToString();
                        lblclient.Text = dr[1].ToString();
                        dr.Close();
                        conn.Close();
                        return;
                    }

                }
                if (dr.HasRows == false)
                {
                    dr.Close();
                    conn.Close();
                    Response.Redirect("login.aspx");

                }
            }

        }

    }

    private void ListCustomers()
    {
        //Connection String From Web.Config File
        SqlConnection con = new SqlConnection("Server = 'axensionsqlone.database.windows.net'; Database = DesignPackagingConcept; User ID = axension88; Password = DonkeyE!ephant;");

        SqlCommand retrieve = new SqlCommand("Select * from custView where rmID = @id", con);
        retrieve.Parameters.AddWithValue("@id", rotatorID);

        con.Open();


        DataTable dt = new DataTable();
        // give commadText and connection 
        SqlDataAdapter adp = new SqlDataAdapter(retrieve);

        adp.Fill(dt);
        con.Close();
        Datalist1.DataSource = dt; // DataTable given into DataList Data Source
        Datalist1.DataBind();  // Bind the DataList
    }


}