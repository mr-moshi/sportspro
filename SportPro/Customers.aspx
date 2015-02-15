<%@ Page Title="Customers" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Customers.aspx.cs" Inherits="Customers" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" Runat="Server">
     <hgroup class="title">
        <h1><%: Title %>&nbsp;-&nbsp;</h1>
        <h2>Search and view your customer contact information</h2>
    </hgroup>
        <br /><br />
        <label>Select a customer:&nbsp;</label>
     <asp:DropDownList OnDataBound="ddlCustomers_SelectedIndexChanged" ID="ddlCustomers" runat="server" DataSourceID="sqlDDLCustomer" DataTextField="Name" DataValueField="CustomerID" OnSelectedIndexChanged="ddlCustomers_SelectedIndexChanged" AutoPostBack="True">
     </asp:DropDownList>
     <asp:SqlDataSource ID="sqlDDLCustomer" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupport %>" SelectCommand="SELECT DISTINCT * FROM [Customers] ORDER BY [Name]"></asp:SqlDataSource>
     <br />

     <table class="auto-style1">
         <tr>
             <td class="auto-style2">Address: </td>
             <td><asp:Label ID="lblAddress1" runat="server"></asp:Label></td>
         </tr>
         <tr>
             <td class="auto-style2">&nbsp;</td>
             <td><asp:Label ID="lblAddress2" runat="server"></asp:Label></td>
         </tr>
         <tr>
             <td class="auto-style2">Phone: </td>
             <td><asp:Label ID="lblPhone" runat="server"></asp:Label></td>
         </tr>
         <tr>
             <td class="auto-style2">Email: </td>
             <td>
                 <asp:Label ID="lblEmail" runat="server"></asp:Label>
             </td>
         </tr>
     </table>
    <asp:Button ID="btnAdd" runat="server" Text="Add to Contact List" OnClick="btnAdd_Click" />

     <asp:Button ID="btnDisplay" runat="server" OnClick="btnDisplay_Click" Text="Display Contact List" />
     <br />
     <asp:Label ID="lblConfirm" runat="server" Font-Bold="True" Font-Size="Medium" CssClass="message-success"></asp:Label>

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

