<%@ Page Title="Customers" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Customers.aspx.cs" Inherits="Customers" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" Runat="Server">
     <hgroup class="title">
        <h1><%: Title %>&nbsp;-&nbsp;</h1>
        <h2>Search and view your customer contact information</h2> 
    </hgroup>
    <section>
       <p>&nbsp;</p>
        <div>

        </div>
        <asp:Table ID="Table1" runat="server">
            <asp:TableRow></asp:TableRow>
        </asp:Table>
        
     </section>
</asp:Content>
