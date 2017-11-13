using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for products
/// </summary>
public class product
{
    public product(int id, string imageurl, string category)
    {
        this.id = id;
        this.imageurl = imageurl;
        this.category = category;
    }

    public int id { get; set; }
    public string imageurl { get; set; }

    public string category { get; set; }
}