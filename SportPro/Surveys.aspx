<%@ Page Title="Surveys" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Surveys.aspx.cs" Inherits="Surveys" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" Runat="Server">
     <hgroup class="title">
        <h1><%: Title %>&nbsp;-&nbsp;</h1>
        <h2>Collect Feedback from customers</h2>
    </hgroup>
    <section>
       <p>&nbsp;</p>
        <div>
             <table>
                 <tr>
                     <td>Enter Customer ID:</td>
                     <td><asp:TextBox ID="IDTxtBx" runat="server" Width="176px"></asp:TextBox></td>
                     <td class="auto-style1"><asp:Button ID="getIncidentsBtn" runat="server" Text="Get Incidents" /></td>
                 </tr>
                 <tr>
                     <td colspan="3"><asp:ListBox ID="incidentsListBx" runat="server" Width="496px"></asp:ListBox></td>
                 </tr>
             </table>
              <section>
                <div>
                    <p><strong>Please rate this incident by the following categories:</strong></p>
                </div>
             </section>
            <table>
             <tr>
                 <td>Response Time:</td><td>Not Satisfied<asp:RadioButton value="1" GroupName="ResTime" ID="ResponseTime_NotSatisfied" runat="server"/></td>
                 <td>Somewhat Satisfied<asp:RadioButton value="2" GroupName="ResTime" ID="ResponseTime_SomewhatSatisfied" runat="server" /></td>
                 <td>Satisfied<asp:RadioButton value="3" GroupName="ResTime" ID="ResponseTime_Satisfied" runat="server" /></td>
                 <td>Completely Satisfied<asp:RadioButton value="4" GroupName="ResTime" ID="ResponseTime_CompletelySatisfied" runat="server" /></td></tr>
             <tr>
                 <td>Technician Efficiency:</td>
                 <td>Not Satisfied<asp:RadioButton value="1" GroupName="TechEff" ID="TechEff_NotSatisfied" runat="server" /></td>
                 <td>Somewhat Satisfied<asp:RadioButton value="2" GroupName="TechEff" ID="TechEff_SomewhatSatisfied" runat="server" /></td>
                 <td>Satisfied<asp:RadioButton value="3" GroupName="TechEff" ID="TechEff_Satisfied" runat="server" /></td>
                 <td>Completely Satisfied<asp:RadioButton value="4" GroupName="TechEff" ID="TechEff_CompletelySatisfied" runat="server" /></td>
             </tr>
             <tr>
                 <td>Problem Resolution:</td>
                 <td>Not Satisfied<asp:RadioButton value="1" GroupName="ProbRes" ID="ProbRes_NotSatisfied" runat="server" /></td>
                 <td>Somewhat Satisfied<asp:RadioButton value="2" GroupName="ProbRes" ID="ProbRes_SomewhatSatisfied" runat="server" /></td>
                 <td>Satisfied<asp:RadioButton value="3" GroupName="ProbRes" ID="ProbRes_Satisfied" runat="server" /></td>
                 <td>Completely Satisfied<asp:RadioButton value="4" GroupName="ProbRes" ID="ProbRes_CompletelySatisfied" runat="server" /></td>
             </tr>
         </table>
            <br />
            <table class="auto-style2">
                            <tr>
                                <td>Additional Comments:</td>
                                <td><asp:TextBox TextMode="multiline" ID="AddComments" runat="server" Width="496px" Height="80px"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td colspan="2" >
                                    <asp:CheckBox ID="CheckBox1" runat="server" /> Please contact me to discuss this incident
                                </td>
                                
                            </tr>
                            <tr>
                                <td><asp:RadioButton GroupName="contact" ID="RadioButton1" runat="server" />Contact by Email</td>
                                <td><asp:RadioButton GroupName="contact" ID="RadioButton2" runat="server" />Contact by Phone</td>
                            </tr>
                        </table>
        </div>
     </section>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
        .auto-style1 {
            width: 70px;
        }
        .auto-style2 {
            width: 100%;
        }
    </style>
    </asp:Content>

