<%@ Page Title="Customers" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Customers.aspx.cs" Inherits="Customers" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" Runat="Server">
     <hgroup class="title">
        <h1><%: Title %>&nbsp;-&nbsp;</h1>
        <h2>Search and view your customer contact information</h2>
    </hgroup>
        <br /><br />
        <label>Select a customer: 
     <asp:DropDownList ID="ddlCustomers" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="CustomerID" OnSelectedIndexChanged="ddlCustomers_SelectedIndexChanged">
     </asp:DropDownList>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupport %>" SelectCommand="SELECT DISTINCT * FROM [Customers] ORDER BY [Name]"></asp:SqlDataSource>
     </label>
     <br />

     <table class="auto-style1">
         <tr>
             <td class="auto-style2">Address: </td>
             <td><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
         </tr>
         <tr>
             <td class="auto-style2">&nbsp;</td>
             <td><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
         </tr>
         <tr>
             <td class="auto-style2">Phone: </td>
             <td><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
         </tr>
         <tr>
             <td class="auto-style2">Email: </td>
             <td>&nbsp;</td>
         </tr>
     </table>

</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 83px;
        }
    </style>
</asp:Content>

