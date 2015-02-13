<%@ Page Title="Blank Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="BlankPage.aspx.cs" Inherits="BlankPage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" Runat="Server">
     <hgroup class="title">
        <h1><%: Title %>&nbsp;-&nbsp;</h1>
        <h2>Description...</h2>
    </hgroup>
    <section>
       <p>&nbsp;</p>
        <div>
            <p>
                Page content...
            </p>
        </div>
     </section>
</asp:Content>
