﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Surveys : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ScriptManager.GetCurrent(this.Page).SetFocus(IDTxtBx);

        Email.Attributes.Add("value", "email");
        Phone.Attributes.Add("value", "phone");
    }
    protected void getIncidentsBtn_Click(object sender, EventArgs e)
    {
        if (!Page.IsValid) return;

        SurveyPanel.Enabled = false;
        ResTimeVal.Enabled = false;
        TechEffVal.Enabled = false;
        ProbResVal.Enabled = false;

        Incident currentIncident = null;
        string Incidents = "SELECT * FROM [Incidents] WHERE (([DateClosed] IS NOT NULL) AND ([CustomerID] = @CustomerID)) ORDER BY [DateClosed]";
        string Customers = "SELECT * FROM [Customers] WHERE [CustomerID] = @CustomerID";

        sqlIncident.SelectCommand = Customers;
        DataView dvSQL = (DataView)sqlIncident.Select(DataSourceSelectArguments.Empty);
        if (dvSQL.Count == 0)
            lblMissing.Text = "User does not exist!";
        else
        {
            sqlIncident.SelectCommand = Incidents;
            dvSQL = (DataView)sqlIncident.Select(DataSourceSelectArguments.Empty);
            incidentsListBx.Items.Clear();

            if (dvSQL.Count != 0)
            {
                lblMissing.Text = "&nbsp;";

                incidentsListBx.Items.Add(new ListItem("--Select an Incident--", "none"));
                foreach (DataRowView drvSQL in dvSQL)
                {
                    currentIncident = new Incident((int)drvSQL["IncidentID"], (int)drvSQL["CustomerID"], drvSQL["ProductCode"].ToString(), (int)drvSQL["TechID"], (DateTime)drvSQL["DateOpened"], (DateTime)drvSQL["DateClosed"], drvSQL["Title"].ToString(), drvSQL["Description"].ToString());

                    incidentsListBx.Items.Add(new ListItem(currentIncident.CustomerIncidentDisplay(), drvSQL["IncidentID"].ToString()));
                }

                ScriptManager.GetCurrent(this.Page).SetFocus(incidentsListBx);
                incidentsListBx.SelectedIndex = 0;
            }
            else
                lblMissing.Text = "No Incidents Available!";
        }

        dvSQL.Dispose();
    }
    protected void incidentsListBx_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        if (incidentsListBx.SelectedIndex != 0)
        {
            SurveyPanel.Enabled = true;
            ResTimeVal.Enabled = true;
            TechEffVal.Enabled = true;
            ProbResVal.Enabled = true;
        }
        else
        {
            SurveyPanel.Enabled = false;
            ResTimeVal.Enabled = false;
            TechEffVal.Enabled = false;
            ProbResVal.Enabled = false;
        }
    }
    protected void Contact_Validation_Server(object source, ServerValidateEventArgs args)
    {
        args.IsValid = (Email.Checked == true || Phone.Checked == true);
    }
    protected void submitBtn_Click(object sender, EventArgs e)
    {
        Page.Validate();
        if (Page.IsValid)
        {
            Response.Redirect("~/SurveyComplete.aspx", false);
            //string mystring = ResTimeBtnList.SelectedIndex.ToString();

            var incidentVal = incidentsListBx.SelectedValue;

            DataView dvIncident = (DataView)sqlIncident.Select(DataSourceSelectArguments.Empty);
            string contactMethod = "";
            Survey sportProSurvey = null;

            foreach (DataRowView drvSQL in dvIncident)
            {
                if (drvSQL["IncidentID"].ToString() == incidentVal)
                {
                    if (Phone.Checked)
                        contactMethod = Phone.Attributes["value"].ToString();
                    if (Email.Checked)
                        contactMethod = Email.Attributes["value"].ToString();
                    sportProSurvey = new Survey((int)drvSQL["CustomerID"], (int)drvSQL["IncidentID"],
                        int.Parse(ResTimeBtnList.SelectedValue), int.Parse(TechEffBtnList.SelectedValue),
                        int.Parse(ProbResBtnList.SelectedValue), AddCommentsTxtBx.Text, (bool)contactChkBx.Checked,
                        contactMethod);
                }
            }
            HttpContext.Current.Session["contact"] = (bool)contactChkBx.Checked;
            HttpContext.Current.Session["surveySession"] = sportProSurvey;
        }
    }
    protected void contactChkBx_CheckedChanged(object sender, EventArgs e)
    {
        if (contactChkBx.Checked == true)
        {
            Email.Enabled = true;
            Phone.Enabled = true;
            contactVal.Enabled = true;
        }
        else
        {
            Email.Enabled = false;
            Phone.Enabled = false;
            contactVal.Enabled = false;
        }
    }

    protected void Contact_CheckedChanged(object sender, EventArgs e)
    {
        if (Phone.Checked == true)
            Session["contactMethod"] = "phone";
        else
            Session["contactMethod"] = "email";
    }
}
