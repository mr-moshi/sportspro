﻿<%@ Page Title="Surveys" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Surveys.aspx.cs" Inherits="Surveys" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" Runat="Server">
     <hgroup class="title">
        <h1><%: Title %>&nbsp;Survey -&nbsp;</h1>
        <h2>Collect Feedback from customers</h2>
    </hgroup>
    <section>
       <p>
           &nbsp;</p>
        <div>
            <table>
                 <tr>
                     <td class="auto-style6">Enter Customer ID:</td>
                     <td class="auto-style6"><asp:TextBox ID="IDTxtBx" runat="server" Width="176px" ValidationGroup="grpID"></asp:TextBox></td>
                     <td class="auto-style6"><asp:RequiredFieldValidator ID="cusIdVal" runat="server" ErrorMessage="This is Required" ControlToValidate="IDTxtBx" Display="Dynamic" ForeColor="Red" CssClass="message-error" ValidationGroup="grpID" ></asp:RequiredFieldValidator>
                         <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="IDTxtBx" ErrorMessage="Invalid Entry" Operator="DataTypeCheck" Type="Integer" CssClass="message-error" ValidationGroup="grpID"></asp:CompareValidator>
                     </td>
                     <td class="auto-style1"><asp:Button ID="getIncidentsBtn" runat="server" Text="Get Incidents" OnClick="getIncidentsBtn_Click" ValidationGroup="grpID" /></td>
                 </tr>
                <tr>
                    <td colspan="4">
                        <asp:Label ID="lblMissing" runat="server" CssClass="message-error" Text="&nbsp;"> </asp:Label></td>
                </tr>
                 <tr>
                     <td colspan="4"><asp:ListBox ID="incidentsListBx" runat="server" Width="623px" OnSelectedIndexChanged="incidentsListBx_SelectedIndexChanged" AutoPostBack="True"></asp:ListBox>
                         <asp:SqlDataSource ID="sqlIncident" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupport %>" SelectCommand="SELECT * FROM [Incidents] WHERE (([DateClosed] IS NOT NULL) AND ([CustomerID] = @CustomerID)) ORDER BY [DateClosed]" >
                             <SelectParameters>
                                 <asp:ControlParameter ControlID="IDTxtBx" Name="CustomerID" PropertyName="Text" Type="Int32" />
                             </SelectParameters>
                         </asp:SqlDataSource></td>
                     </tr>
             </table>
                         <asp:Panel ID="SurveyPanel" runat="server" Enabled="False">
                             <p><strong>Please rate this incident by the following categories:</strong></p>
                         
                             
                        <table>
                            <tr><td>
                                <asp:Label ID="ResTimLbl" runat="server" Text="Response Time: "></asp:Label>
                                </td><td><asp:RadioButtonList ID="ResTimeBtnList" RepeatColumns="4"
                                RepeatDirection="Horizontal" RepeatLayout="Table" runat="server" 
                                Width="630px" ValidationGroup="grpSubmit">
                                <asp:ListItem Value="1">Not Satisfied</asp:ListItem>
                                <asp:ListItem Value="2">Somewhat Satisfied</asp:ListItem>
                                <asp:ListItem Value="3">Satisfied</asp:ListItem>
                                <asp:ListItem Value="4">Completely Satisfied</asp:ListItem>
                            </asp:RadioButtonList></td>
            
                            <td><asp:RequiredFieldValidator runat="server" ID="ResTimeVal"
                                ControlToValidate="ResTimeBtnList" Text="Required" 
                                ForeColor="Red" Enabled="False" ValidationGroup="grpSubmit"></asp:RequiredFieldValidator></td>
                            </tr>

                            <tr><td><asp:Label ID="TechEffLbl" runat="server" Text="Technician Efficiency:"></asp:Label>
                                </td><td><asp:RadioButtonList ID="TechEffBtnList" RepeatColumns="4"
                                RepeatDirection="Horizontal" RepeatLayout="Table" runat="server" 
                               Width="628px" ValidationGroup="grpSubmit">
                                <asp:ListItem Value="1">Not Satisfied</asp:ListItem>
                                <asp:ListItem Value="2">Somewhat Satisfied</asp:ListItem>
                                <asp:ListItem Value="3">Satisfied</asp:ListItem>
                                <asp:ListItem Value="4">Completely Satisfied</asp:ListItem>
                            </asp:RadioButtonList></td>
            
                            <td><asp:RequiredFieldValidator runat="server" ID="TechEffVal"
                                ControlToValidate="TechEffBtnList" Text="Required" 
                                ForeColor="Red" Enabled="False" ValidationGroup="grpSubmit"></asp:RequiredFieldValidator></td>
                            </tr>

                            <tr><td><asp:Label ID="ProbResLbl" runat="server" Text="Problem Resolution:"></asp:Label>
                                </td><td><asp:RadioButtonList ID="ProbResBtnList" RepeatColumns="4"
                                RepeatDirection="Horizontal" RepeatLayout="Table" runat="server" 
                                Width="628px" ValidationGroup="grpSubmit">
                                <asp:ListItem Value="1">Not Satisfied</asp:ListItem>
                                <asp:ListItem Value="2">Somewhat Satisfied</asp:ListItem>
                                <asp:ListItem Value="3">Satisfied</asp:ListItem>
                                <asp:ListItem Value="4">Completely Satisfied</asp:ListItem>
                            </asp:RadioButtonList></td>
            
                            <td><asp:RequiredFieldValidator runat="server" ID="ProbResVal"
                                ControlToValidate="ProbResBtnList" Text="Required" 
                                ForeColor="Red" Enabled="False" Display="Dynamic" ValidationGroup="grpSubmit"></asp:RequiredFieldValidator></td>
                            </tr>
                        </table>

            <table class="auto-style2">
                            <tr>
                                <td class="auto-style9">Additional Comments:</td>
                                <td colspan="2" ><asp:TextBox TextMode="multiline" ID="AddCommentsTxtBx" runat="server" Width="496px" Height="80px"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td colspan="3" >
                                    <asp:CheckBox ID="contactChkBx" runat="server" AutoPostBack="True" OnCheckedChanged="contactChkBx_CheckedChanged" Text="Please contact me to discuss this incident " /> 
                                </td>
                            </tr>
                <script type="text/javascript" >

                        function Contact_Validation_Client(source, args)
                                {   
                                    if(document.getElementById("<%= Email.ClientID %>").checked || document.getElementById("<%= Phone.ClientID %>").checked)
                                    {
                                        args.IsValid = true;
                                    }
                                    else
                                    {
                                        args.IsValid = false;
                                    }
    
                                }
                                
                                </script>
                            <tr><td class="auto-style8"><asp:RadioButton id="Email" GroupName="contact"
                                    Text="Contact by Email" runat="server" Enabled="False" OnCheckedChanged="Contact_CheckedChanged" ValidationGroup="grpSubmit"/></td>
                                <td class="auto-style5"><asp:RadioButton id="Phone" GroupName="contact"
                                Text="Contact by Phone" runat="server" Enabled="False" OnCheckedChanged="Contact_CheckedChanged" ValidationGroup="grpSubmit"/></td>
            
                            <td class="auto-style4"><asp:CustomValidator id="contactVal" runat="server" Display="Dynamic" ErrorMessage="Required Selection" ClientValidationFunction="Contact_Validation_Client" OnServerValidate="Contact_Validation_Server" Enabled="False" ForeColor="Red" ValidationGroup="grpSubmit"></asp:CustomValidator></td>
                            </tr>
                            <tr>
                                <td class="auto-style9" ><asp:Button ID="submitBtn" runat="server" Text="Submit" OnClick="submitBtn_Click" /></td>
                                <td colspan="2"></td>
                            </tr>
                        </table>
                         
           </asp:Panel>
        </div>
     </section>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
        .auto-style1 {
            width: 70px;
            height: 36px;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style4 {
            height: 25px;
        }
        .auto-style5 {
            width: 247px;
            height: 25px;
        }
        .auto-style6 {
            height: 36px;
        }
        .auto-style7 {
            width: 151px;
        }
        .auto-style8 {
            height: 25px;
            width: 176px;
        }
        .auto-style9 {
            width: 176px;
        }
    </style>
    </asp:Content>

