using System;
using System.Web;

public class Incident
{
    private int incidentID;
    private int customerID;
    private string productCode;
    private int techID;
    private DateTime dateOpened;
    private DateTime dateClosed;
    private string title;
    private string description;

    public Incident() { }
    
    public Incident(int incidentID)
    {
        this.incidentID = incidentID;
    }

    public Incident(int incidentID,int customerID,string productCode,int techID,DateTime dateOpened,DateTime dateClosed,string title,string description)
    {
        this.incidentID = incidentID;
        this.customerID = customerID;
        this.productCode = productCode;
        this.techID = techID;
        this.dateOpened = dateOpened;
        this.dateClosed = dateClosed;
        this.title = title;
        this.description = description;
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
    public string ProductCode 
    { 
        get
        {
            return this.productCode;
        }
        set
        {
            this.productCode = value;
        }
    }
    public int TechID 
    {
        get
        {
            return this.techID;
        }
        set
        {
            this.techID = value;
        }
    }
    public DateTime DateOpened 
    {
        get
        {
            return this.dateOpened;
        }
        set
        {
            this.dateOpened = value;
        }
    }
    public DateTime DateClosed 
    { 
        get
        {
            return this.dateClosed;
        }
        set
        {
            this.dateClosed = value;
        }
    }
    public string Title 
    {
        get
        {
            return this.title;
        }
        set
        {
            this.title = value;
        }
    }
    public string Description 
    {
        get
        {
            return this.description;
        }
        set
        {
            this.description = value;
        }
    }

    public string CustomerIncidentDisplay()
    {
        return "Incident for product " + ProductCode
            +"\n" + dateOpened
            + " closed " + DateClosed.ToShortDateString()
            + " (" + Title + ")"
            + "\n"+ Description;
    }
}
