using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class aboutus : System.Web.UI.Page
{

    static List<job> joblist = new List<job>();

    protected void Page_Load(object sender, EventArgs e)
    {
        joblist = loadAvailJobs();
        if (joblist.Count == 0)
        {
            Literal1.Text = "<h3><i>Sorry, there are no job openings as of now. Check back later.</i></h3>";
            accordion.InnerHtml = "";
        }

        else
        {
            foreach (var job in joblist)
            {
                if (job.Status.Equals("Published"))
                {
                    Literal2.Text += "<h3>" + job.PositionName + "</h3>" +
                   "<div>" +
                       "<h4><strong> Job Description </strong></h4>" +

                            "<p>" + job.JobDescription + "</p>" +

                       "<h4><strong> Requirements </strong></h4>" +
                      "<p>" + job.JobRequirement + "</p>" +
                   "</div> ";
                }
               
            }

        }
        
    }
    
    public List<job> loadAvailJobs()
    {
      
        using (SqlConnection conn = new SqlConnection("Server = 'axensionsqlone.database.windows.net'; Database = DesignPackagingConcept; User ID = axension88; Password = DonkeyE!ephant;"))
        {
            SqlCommand cmd = new SqlCommand("Select * from availablejobs;", conn);
            conn.Open();
            List<job> arr = new List<job>();
            using (SqlDataReader rdr = cmd.ExecuteReader())
            {
                while (rdr.Read())
                {
                    arr.Add(new job(rdr.GetString(0), rdr.GetString(1), rdr.GetString(2), rdr.GetString(3), rdr.GetDateTime(4).ToShortDateString(), rdr.GetString(5)));
                }
            }
            return arr;
        }
}
}