<%@ Page Title="Contact List" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ContactList.aspx.cs" Inherits="ContactList" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" Runat="Server">
     <hgroup class="title">
        <h1><%: Title %>&nbsp;-&nbsp;</h1>
        <h2>Manage contacts</h2>
    </hgroup>
    <section>
       
           <div Style="width: 760px; height: 413px; float: left">
                <asp:ListBox ID="ListBox1" runat="server" Height="210px" Width="462px"></asp:ListBox>                       
         
          <div style="height: 79px; width: 373px">

           <div style="width: 327px; height: 41px;">
               <asp:Button ID="btnEmptyList" runat="server" Text="Empty List" Height="34px" Width="132px" />
               <asp:Button ID="btnRemoveContact" runat="server" Height="34px" Text="Remove Contact" Width="146px" OnClick="btnRemoveContact_Click" />
            <asp:Button ID="btnSelectAdditionalCusts" runat="server" Text="Select Additional Customers" />
           </div>
         
        </div>  
        
           </div> 

     </section>
</asp:Content>
