using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Customer
/// </summary>
public class Customer
{
    public string Name, Address, City, Zipcode, Phone, Email, State;
    public int CustomerID;

	public Customer() {	}

    public Customer(string name, string address, string city, string zipcode, 
        string phone, string email, string state, int customerid){
        this.Name = name;
        this.Address = address;
        this.City = city;
        this.Zipcode = zipcode;
        this.Phone = phone;
        this.Email = email;
        this.State = state;
        this.CustomerID = customerid;
    }
}