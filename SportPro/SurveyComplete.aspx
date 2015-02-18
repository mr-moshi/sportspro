<%@ Page Title="Survey Complete" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="SurveyComplete.aspx.cs" Inherits="SurveyComplete" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" Runat="Server">
     <hgroup class="title">
        <h1>Surveys<%: Title %>&nbsp;-&nbsp;</h1>
        <h2>
           <asp:Label ID="ResponseMessage" runat="server" ForeColor="#00CC00"></asp:Label>
         </h2>
    </hgroup>
     <table">
         <tr>
             <td>&nbsp;</tr></table><section>
        <div>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Return to Survey" />

        </div>
     </section>
     </asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
    </asp:Content>

