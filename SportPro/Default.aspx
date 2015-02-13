<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
     <hgroup class="title">
        <h1><%: Title %></h1>
        <h2>Welcome to SportsPro Support Portal</h2>
    </hgroup>
    <section>
        <ol class="round">
            <li class="one">
                <h5>Getting Started</h5>
                Go to <a href= "#x">Customers</a> section to search for your customer information.
            </li>
            <li class="two">
                <h5>What do you think about our service?</h5>
                <a href="#">Submit a survey</a> to provide your feedbac for any support we have provided to you recently.
            </li>
        </ol>
     </section>
    <section>
        <h4>Group Members</h4>
        <ol>
            <li>Student Name</li>
            <li>Student Name</li>
        </ol>
    </section>
   
</asp:Content>