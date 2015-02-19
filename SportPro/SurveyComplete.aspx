<%@ Page Title="Survey Complete" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="SurveyComplete.aspx.cs" Inherits="SurveyComplete" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" Runat="Server">
     <hgroup class="title">
        <h1>Survey Completed</h1>
    </hgroup>
    <asp:Label ID="DefaulrResponseMessage" runat="server" ForeColor="#00CC00" Text="Thank you for your Feedback!"></asp:Label><br />
    <asp:Label ID="ResponseMessage" runat="server" ForeColor="#00CC00"></asp:Label><br />
     <table">
         <tr>
             <td>&nbsp;</tr></table><section>
        <div>
            <asp:Button ID="ReturnSurveyBtn" runat="server" OnClick="ReturnSurveyBtn_Click" Text="Return to Survey" />

        </div>                 
     </section>
     </asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
    </asp:Content>

