using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


/// <summary>
/// Summary description for ContactList
/// </summary>
public class CustomerList
{
    private List<Customer> Customer;
    public int Count;

    public CustomerList()
    {
        this.Customer = new List<Customer>();
        Count = 0;

    }
 
    public Customer this[int index]
    {
        get
        {
            return Customer[index];
        }

        set
        {
            Customer[index] = value;
        }
    }

    public Customer this[string name]
    {
        get
        {
            int indexOf = this.Customer.FindIndex(f => f.Name == name);

            if(indexOf >= 0)
            {
                return Customer[indexOf];
            }else
                return null;
           
        }

        set
        {
            int indexOf = this.Customer.FindIndex(f => f.Name == name);

            if (indexOf >= 0)
            {
                Customer[indexOf] = value;
            }
        }
    }

    public static CustomerList GetCustomers()
    {
        CustomerList session = (CustomerList)HttpContext.Current.Session["customerList"];
                
        if (HttpContext.Current.Session["customerList"] == null)
        {
            session = new CustomerList();
            HttpContext.Current.Session["customerList"] = session;
        }
       
        return session;  
    }
    public void AddItem(Customer customer)
    {
        var currentList = (CustomerList)HttpContext.Current.Session["customerList"];
        currentList.Customer.Add(customer);
        HttpContext.Current.Session["customerList"] = currentList;
        Count++;
    }
    public void RemoveAt(int index)
    {
        this[index] = null;
        Count--;
    }
    public void Clear()
    {
        foreach(Customer i in Customer)
        {
            this.Customer = null;
            Count--;
        }
    }



}