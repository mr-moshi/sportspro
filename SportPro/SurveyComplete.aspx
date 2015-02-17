<%@ Page Title="Survey Complete" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="SurveyComplete.aspx.cs" Inherits="SurveyComplete" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" Runat="Server">
     <hgroup class="title">
        <h1>Surveys<%: Title %>&nbsp;-&nbsp;</h1>
        <h2>Collect feedback from costumers</h2>
    </hgroup>
     <table">
         <tr>
             <td>Enter Customer ID:</td>
             <td><asp:TextBox ID="IDTxtBx" runat="server" Width="176px"></asp:TextBox></td>
             <td><asp:Button ID="getIncidentsBtn" runat="server" Text="Get Incidents" />;</td>
         </tr>
     </table>
    
    <section>
        <div>
            <p>
                <strong>Please rate this incident by the following categories:</strong>
            </p>

        </div>
     </section>
     <table class="auto-style1">
         <tr>
             <td>
                 Response Time:</td>
             <td>
                 <asp:RadioButton ID="RadioButton1" runat="server"/>
             </td>
             <td>
                 <asp:RadioButton ID="RadioButton4" runat="server" />
             </td>
             <td>
                 <asp:RadioButton ID="RadioButton5" runat="server" />
             </td>
             <td>
                 <asp:RadioButton ID="RadioButton6" runat="server" />
             </td>
         </tr>
         <tr>
             <td>
                 Technician Efficiency:</td>
             <td>
                 <asp:RadioButton ID="RadioButton2" runat="server" />
             </td>
             <td>
                 <asp:RadioButton ID="RadioButton7" runat="server" />
             </td>
             <td>
                 <asp:RadioButton ID="RadioButton9" runat="server" />
             </td>
             <td>
                 <asp:RadioButton ID="RadioButton10" runat="server" />
             </td>
         </tr>
         <tr>
             <td>
                 <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
             </td>
             <td>
                 <asp:RadioButton ID="RadioButton3" runat="server" />
             </td>
             <td>
                 <asp:RadioButton ID="RadioButton8" runat="server" />
             </td>
             <td>
                 <asp:RadioButton ID="RadioButton11" runat="server" />
             </td>
             <td>
                 <asp:RadioButton ID="RadioButton12" runat="server" />
             </td>
         </tr>
     </table>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>

