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

        for (int i = 0; i < customers.Count; i++)
        {   
                ListBox1.Items.Add(customers[i].ToString());
        }       
    }
    protected void btnSelectAddCusts_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Customers.aspx",false);
    }
    protected void btnEmptyList_Click(object sender, EventArgs e)
    {
        CustomerList.GetCustomers().Clear();
        ListBox1.Items.Clear();
    }
    protected void btnRemoveContact_Click(object sender, EventArgs e)
    {
        int indexOf = ListBox1.SelectedIndex;

        if(indexOf >=0)
        {
            CustomerList.GetCustomers().RemoveAt(indexOf);
            ListBox1.Items.Clear();
            Page_Load(btnRemoveContact, null);
        }
       
   
    }
    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
}