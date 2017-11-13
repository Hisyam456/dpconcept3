using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.SqlServer.Server;

public partial class product_view : System.Web.UI.Page
{
     string cat = "calendar";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["category"] != null)
        {
            cat = Request.QueryString["category"];
            
            
        }
        if (Request.QueryString["category"] == "uniquemooncake")
        {
            Literal1.Text = "style=\"color:orange\"";
            catName.Text = "Unique Mooncake Boxes";

        }
        if (Request.QueryString["category"] == "standardmooncake")
        {
            Literal2.Text = "style=\"color:orange\"";
            catName.Text = "Standard Mooncake Box";

        }
        if (Request.QueryString["category"] == "pastry")
        {
            Literal3.Text = "style=\"color:orange\"";
            catName.Text = "Cake and Pastry";

        }
        if (Request.QueryString["category"] == "festive")
        {
            Literal4.Text = "style=\"color:orange\"";
            catName.Text = "Festives Gift Box";

        }
        if (Request.QueryString["category"] == "tin")
        {
            Literal9.Text = "style=\"color:orange\"";
            catName.Text = "Tin Boxes";

        }
        
        if (Request.QueryString["category"] == "retail")
        {
            Literal6.Text = "style=\"color:orange\"";
            catName.Text = "Retail & Corporate";

        }
        if (Request.QueryString["category"] == "wine")
        {
            Literal7.Text = "style=\"color:orange\"";
            catName.Text = "Wine/Chocolate";

        }
        if (Request.QueryString["category"] == "others")
        {
            Literal8.Text = "style=\"color:orange\"";
            catName.Text = "Others";

        }
        loadProducts(loadFromDatabase());
        string path = HttpContext.Current.Request.Url.PathAndQuery;
        Debug.WriteLine("Pathing" + path);
        Session["Pathing"] = path;
    }

    public List<product> loadFromDatabase()
    {
        using (SqlConnection conn = new SqlConnection("Server = 'axensionsqlone.database.windows.net'; Database = DesignPackagingConcept; User ID = axension88; Password = DonkeyE!ephant;"))
        {
            SqlCommand cmd = new SqlCommand("Select pimage,pid,pcat from dpcproducts where pcat=@category ;", conn);
            cmd.Parameters.AddWithValue( "@category", cat);
            conn.Open();
            List<product> arr = new List<product>();
            using (SqlDataReader rdr = cmd.ExecuteReader())
            {
                while (rdr.Read())
                {
                   
                    arr.Add(new product(rdr.GetInt32(1),rdr.GetString(0), rdr.GetString(2)));
                }
            }
            return arr;
        }
    }

    //public void loadProducts(List<product> products)
    //{
    //    TableRow row = new TableRow();
    //    TableCell cell = new TableCell();
    //    var count = 0;
    //    if (products.Count < 4)
    //    {
    //        foreach (var product in products)
    //        {
    //            Debug.WriteLine("This is causing the problem");
    //            cell = new TableCell();
    //            cell.Text = "<a href=\"product-single.aspx?id=" + product.id + "&category=" + product.category + "\"><div class=\"frameborder\"><img class=\"img-responsive\" src=\"" + product.imageurl + "\"/></div></a>";
    //            row.Cells.Add(cell);
    //        }
    //        producttable.Rows.Add(row);
    //    }
    //    else
    //    {
    //        foreach (var product in products)
    //        {
    //            Debug.WriteLine(count);
    //            if (count == 2)
    //            {

    //                Debug.WriteLine("<img style=\"max-width:150px;max-height:150px;\" src=\"" + product.imageurl + "\"/>");
    //                cell = new TableCell();
    //                cell.Text = "<a href=\"product-single.aspx?id=" + product.id + "&category=" + product.category + "\"><div class=\"frameborder\"><img class=\"img-responsive\" src=\"" + product.imageurl + "\"/></div></a>";
    //                row.Cells.Add(cell);
    //                count++;
    //            }
    //            if (count <= 3)
    //            {
                    
    //                Debug.WriteLine("<img style=\"max-width:150px;max-height:150px;\" src=\"" + product.imageurl + "\"/>");
    //                cell = new TableCell();
    //                cell.Text = "<a href=\"product-single.aspx?id=" + product.id + "&category=" + product.category + "\"><div class=\"frameborder\"><img class=\"img-responsive\" src=\"" + product.imageurl + "\"/></div></a>";
    //                row.Cells.Add(cell);
    //                count++;
    //            }
    //            else if  (count == 4 ) {
                    
    //                Debug.WriteLine("Adding new row");
    //                producttable.Rows.Add(row);
    //                row = new TableRow();
    //                count = 0;

    //            }
    //            producttable.Rows.Add(row);

    //        }
    //    }

    //}
    public void loadProducts(List<product> products)
    {
        var count = 0;
        string tablehtml="";
       
            foreach (var product in products)
            {
              
                
                tablehtml+="<div class=\"col-md-3 itemshelve\"><a href=\"product-single.aspx?id=" + product.id + "&category=" + product.category +
                "\"><div class=\"frameborder crop-container\"><img class=\"img-responsive cropper\" src=\"http://admindpc.azurewebsites.net/" + product.imageurl 
                + "\"/></div></a></div>";

            }

        
            PlaceHolder1.Controls.Add(new LiteralControl(tablehtml));
        

    }
}