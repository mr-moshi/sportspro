using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Customers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ddlCustomers_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataView dvSQL = (DataView)sqlDDLCustomer.Select(DataSourceSelectArguments.Empty);
        Customer selectedCustomer = new Customer();
        foreach (DataRowView drvSQL in dvSQL)
        {
            if (drvSQL["CustomerID"].ToString() == ddlCustomers.SelectedValue)
                selectedCustomer = new Customer(drvSQL["Name"].ToString(), drvSQL["Address"].ToString(), 
                    drvSQL["City"].ToString(), drvSQL["Zipcode"].ToString(), drvSQL["Phone"].ToString(), 
                    drvSQL["Email"].ToString(), (Char)drvSQL["State"], (int)drvSQL["CustomerID"]);
        }

        lblAddress1.Text = selectedCustomer.Address;
    }
}