using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ContactList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var customers = CustomerList.GetCustomers();
      //  Customer bob = customers[0];
        
        for(int i=0;i<customers.Count;i++)
        {
            ListBox1.Items.Add(customers[i].ToString());
        }
    }
    protected void btnSelectAddCusts_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Customers.aspx",false);
    }
}