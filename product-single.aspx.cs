using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class product_single : System.Web.UI.Page
{
    string str;
    List<string> urlList = new List<string>();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            str = Request.QueryString["id"];
            if (str == null)
            {
                Response.Redirect("http://localhost:59491/products.html");
            }
            Debug.WriteLine(str);

            LiteralDesc.Text = "<p>Lorem ipsum dolor sit amet," +
                            "consectetur adipiscing elit." +
                            "In dolor ante, euismod in" +
                           "ullamcorper vitae," +
                            "consectetur quis enim. Nam" +
                            "vehicula mattis tempus." +
                            "Cras interdum lacus" +
                            "rhoncus augue aliquam" +
                            "accumsan.Sed cursus" +
                            "tortor sed lacinia convallis.</p>";

            LiteralTitle.Text = "<h1 style=\"margin: 0\">Product 1</h1>";

            if (Request.QueryString["category"] == "uniquemooncake")
            {
                Literal1.Text = "style=\"color:orange\"";

            }
            if (Request.QueryString["category"] == "standardmooncake")
            {
                Literal2.Text = "style=\"color:orange\"";

            }
            if (Request.QueryString["category"] == "pastry")
            {
                Literal3.Text = "style=\"color:orange\"";

            }
            if (Request.QueryString["category"] == "festive")
            {
                Literal4.Text = "style=\"color:orange\"";

            }
            if (Request.QueryString["category"] == "tin")
            {
                Literal5.Text = "style=\"color:orange\"";

            }

            if (Request.QueryString["category"] == "retail")
            {
                Literal6.Text = "style=\"color:orange\"";

            }
            if (Request.QueryString["category"] == "wine")
            {
                Literal7.Text = "style=\"color:orange\"";

            }
            if (Request.QueryString["category"] == "others")
            {
                Literal8.Text = "style=\"color:orange\"";

            }

            hyp1.NavigateUrl = Session["Pathing"].ToString();

            using (SqlConnection conn = new SqlConnection("Server = 'axensionsqlone.database.windows.net'; Database = DesignPackagingConcept; User ID = axension88; Password = DonkeyE!ephant;"))
            {
                SqlCommand cmd = new SqlCommand("Select pdesc,pImage,pname from dpcproducts where pid=@id;", conn);
                cmd.Parameters.AddWithValue("id", str);
                conn.Open();

                using (SqlDataReader rdr = cmd.ExecuteReader())
                {
                    while (rdr.Read())
                    {
                        LiteralDesc.Text = rdr.GetString(0);
                        LiteralImg.Text = "<img class=\"img-responsive heroimage\" src=\"http://admindpc.azurewebsites.net/" + rdr.GetString(1) + "\"/>";
                        LiteralTitle.Text = "<h1 style=\"margin: 0\">" + rdr.GetString(2) + "</h1>";
                        LiteralClient.Text = rdr.GetString(2);
                        lblName.Text = rdr.GetString(2);

                    }
                }

            }
            if (str != null)
            {
                using (SqlConnection conn = new SqlConnection("Server = 'axensionsqlone.database.windows.net'; Database = DesignPackagingConcept; User ID = axension88; Password = DonkeyE!ephant;"))
                {
                    SqlCommand cmd = new SqlCommand("Select * from dpcaltimages where productid=@id;", conn);
                    cmd.Parameters.AddWithValue("id", str);
                    conn.Open();

                    using (SqlDataReader rdr = cmd.ExecuteReader())
                    {
                        while (rdr.Read())
                        {
                            urlList.Add(rdr.GetString(2));
                            urlList.Add(rdr.GetString(3));
                            urlList.Add(rdr.GetString(4));
                            urlList.Add(rdr.GetString(5));

                        }
                    }

                }

                for (int i = 0; i < urlList.Count; i++)
                {
                    Debug.WriteLine("item: "+urlList[i]);
                    if (urlList[i].Equals(""))
                    {
                        urlList.RemoveAt(i);
                    }
                }
                JavaScriptSerializer serializer = new JavaScriptSerializer();
                HiddenField1.Value = serializer.Serialize(urlList);

            }
        }
        catch (Exception ex)
        {
            Debug.WriteLine(ex.Message);
        }
        
    }
}