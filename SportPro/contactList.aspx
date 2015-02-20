<%@ Page Title="Contact List" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ContactList.aspx.cs" Inherits="ContactList" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" Runat="Server">
     <hgroup class="title">
        <h1><%: Title %>&nbsp;-&nbsp;</h1>
        <h2>Manage contacts</h2>
    </hgroup>
    <section>
       <p>&nbsp;</p>
        <div style="height: 363px">
          
            <asp:ListBox ID="ListBox1" runat="server" Height="242px" Width="632px" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged"></asp:ListBox>
            
            <div style="height: 75px; width: 645px">
                <asp:Button ID="btnEmptyList" runat="server" Text="Empty List" OnClick="btnEmptyList_Click" />
                <asp:Button ID="btnRemoveContact" runat="server" Text="Remove Contact" OnClick="btnRemoveContact_Click" CausesValidation="False"/>
                <asp:Button ID="btnSelectAddCusts" runat="server" Text="Select Additional Customers" OnClick="btnSelectAddCusts_Click" />
            </div>
        </div>
     </section>
</asp:Content>
