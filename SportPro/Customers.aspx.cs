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
        if (!Page.IsPostBack) {
            ddlCustomers_SelectedIndexChanged(ddlCustomers, null);
        }
    }
    protected void ddlCustomers_SelectedIndexChanged(object sender, EventArgs e)
    {
        fillLabels();
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

        lblAddress1.Text = selectedCustomer.Address;
        lblAddress2.Text = selectedCustomer.City + ", " + selectedCustomer.State + " " + selectedCustomer.Zipcode;
        lblEmail.Text = selectedCustomer.Email;
        lblPhone.Text = selectedCustomer.Phone;
    }
}