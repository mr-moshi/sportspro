using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Customers : System.Web.UI.Page
{
    Customer selectedCustomer = new Customer();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        lblConfirm.Text = "";

        if (Page.IsPostBack) {
            ddlCustomers_SelectedIndexChanged(ddlCustomers, null);
        }
    }
    protected void ddlCustomers_SelectedIndexChanged(object sender, EventArgs e)
    {
        fillLabels();
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (Session["customerList"] == null)
            Session["customerList"] = new List<Customer>();
        var sessionListCopy = (List<Customer>)Session["customerList"];
        sessionListCopy.Add((Customer)Session["currentCustomer"]);
        Session["customerList"] = sessionListCopy;
        lblConfirm.Text = "User added!";
    }
    protected void btnDisplay_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/ContactList.aspx", false);
    }
    protected void fillLabels()
    {
        DataView dvSQL = (DataView)sqlDDLCustomer.Select(DataSourceSelectArguments.Empty);

        foreach (DataRowView drvSQL in dvSQL)
        {
            if (drvSQL["CustomerID"].ToString() == ddlCustomers.SelectedValue)
                selectedCustomer = new Customer(drvSQL["Name"].ToString(), drvSQL["Address"].ToString(),
                    drvSQL["City"].ToString(), drvSQL["Zipcode"].ToString(), drvSQL["Phone"].ToString(),
                    drvSQL["Email"].ToString(), drvSQL["State"].ToString(), (int)drvSQL["CustomerID"]);
        }
        dvSQL.Dispose();

        Session["currentCustomer"] = selectedCustomer;

        lblAddress1.Text = selectedCustomer.Address;
        lblAddress2.Text = selectedCustomer.City + ", " + selectedCustomer.State + " " + selectedCustomer.Zipcode;
        lblEmail.Text = selectedCustomer.Email;
        lblPhone.Text = selectedCustomer.Phone;
    }
}