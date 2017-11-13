using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for job
/// </summary>
public class job
{
    public job(string id, string position, string desc,string requirement, string createdon,string status )
    {
        this.id = id;
        PositionName = position;
        JobDescription = desc;
        JobRequirement = requirement;
        CreatedOn = createdon;
        Status = status;
    }

    string id { get; set; }
    public string PositionName { get; set; }
    public string JobDescription { get; set; }
    public string JobRequirement { get; set; }
    public string CreatedOn { get; set; }
    public string Status { get; set; }
}