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


public partial class Login : System.Web.UI.Page
{
            static readonly string scriptexpired =
        "<script language=\"javascript\">\n" +
        "alert(\"Your Log Access Has Expired!\");\n" +
        "</script>";

         static readonly string scriptdisabled =
        "<script language=\"javascript\">\n" +
        "alert(\"This Package Is Not Active!\");\n" +
        "</script>";


    static readonly string scripterror =
   "<script language=\"javascript\">\n" +
   "alert(\"Wrong Username/Password!\");\n" +
   "</script>";

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void loginBtn_Click(object sender, EventArgs e)
    {
        string salt;
        string password;
        int logaccess;

        Session.Clear();
        SqlConnection con = new SqlConnection("Server = 'axensionsqlone.database.windows.net'; Database = DesignPackagingConcept; User ID = axension88; Password = DonkeyE!ephant;");

        con.Open();
        // var password = System.Text.Encoding.UTF8.GetBytes(Password.Text);
        Type csType = this.GetType();

        SqlCommand loginAdmin = new SqlCommand("Select * from dpcrPackages where rpEmail=@Email", con);
        loginAdmin.Parameters.AddWithValue("@Email", txtEmail.Text);

        SqlDataReader dr = loginAdmin.ExecuteReader();
        while (dr.Read())
        {
            if (dr.HasRows == true)
            {
                string id = dr[0].ToString();
                string status = dr[2].ToString();
                salt = dr[7].ToString();
                password = dr[4].ToString();
                logaccess = int.Parse(dr[5].ToString());
                Session["Login"] = "T";
                if (status == "Draft" )
                {
                     ClientScript.RegisterStartupScript(csType, "This package is not available currently.", scriptdisabled);
                }

                else{
                //var passwording = System.Text.Encoding.UTF8.GetBytes(Password.Text);
                if (RandomPass(salt, txtPass.Text) == password)
                {
                    if (logaccess > 0)
                    {
                        SqlConnection conn = new SqlConnection("Server = 'axensionsqlone.database.windows.net'; Database = DesignPackagingConcept; User ID = axension88; Password = DonkeyE!ephant;");
                        int updatedaccess = logaccess - 1;
                        conn.Open();
                        SqlCommand updatelog = new SqlCommand("Update dpcrPackages SET rpAccess=@access, rpUpdatedTime=@date where rpID=@id ", conn);
                        updatelog.Parameters.AddWithValue("@access", updatedaccess);
                        updatelog.Parameters.AddWithValue("@id", id);
                        updatelog.Parameters.AddWithValue("@date", DateTime.Now);

                        updatelog.ExecuteNonQuery();
                        conn.Close();
                        Debug.WriteLine("Rotator Package Updated!");
                        Response.Redirect("CustomerView.aspx?rmID=" + id);
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(csType, "You Have Reached The Log Access Limit", scriptexpired);
                    }
                }

                }

            }
            else
            {
                
                Response.Redirect("LoginCustomer.aspx");
            }
        }
        con.Close();

    }




    public static string RandomPass(string salt, string password)
    {
        var saltt = System.Text.Encoding.UTF8.GetBytes(salt);
        var passwordt = System.Text.Encoding.UTF8.GetBytes(password);

        var hmacSHA1 = new HMACSHA1(saltt);
        var saltedHash = hmacSHA1.ComputeHash(passwordt);

        return System.Text.Encoding.UTF8.GetString(saltedHash);

    }
}