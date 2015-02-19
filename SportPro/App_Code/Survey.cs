using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Survey
/// </summary>
public class Survey
{
    private int customerID;
    private int incidentID;
    private int repsonseTime;
    private int techEfficiency;
    private int resolution;
    private string comments;
    private bool contact;
    private string contactby;

	public Survey(){}

    public Survey(int incidentID)
    {
        this.incidentID = incidentID;
    }

    public Survey(int customerID,int incidentID,int responseTime,int techEfficiency,int resolution,string comments,bool contact,string contactBy)
    {
        this.customerID = customerID;
        this.incidentID = incidentID;
        this.repsonseTime = responseTime;
        this.techEfficiency = techEfficiency;
        this.resolution = resolution;
        this.comments = comments;
        this.contact = contact;
        this.contactby = contactBy;
    }
    public int CustomerID
    { 
        get
        {
            return this.customerID;
        }
        set
        {
            this.customerID = value;
        }
    }
    public int IncidentID 
    { 
        get
        {
            return this.incidentID;
        }
        set
        {
            this.incidentID = value;
        }
    }
    public int ResponseTime 
    {
        get
        {
            return this.repsonseTime;
        }

        set
        {
            this.repsonseTime = value;
        }
    }
    public int TechEfficiency
    {
        get
        {
            return this.techEfficiency;
        }

        set
        {
            this.techEfficiency = value;
        }
    }
    public int Resolution 
    {
        get
        {
            return this.resolution;
        }
 
        set
        {
            this.resolution = value;
        }
    }
    public string Comments
    {
        get
        {
            return this.comments;
        }

        set
        {
            this.comments = value;
        }
    }
    public bool Contact
    {
        get
        {
            return this.contact;
        }

        set
        {
            this.contact = value;
        }
    }
    public string ContactBy 
    {
        get
        {
            return this.contactby;
        }

        set
        {
            this.contactby  = value;
        }
    }

    //public override string ToString()
    //{
    //    return "Response: " + this.ResponseTime + "\nTech: " + this.TechEfficiency
    //        + "\nProb: " + this.Resolution + "\nContact: " + this.ContactBy;
    //}
}