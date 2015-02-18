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

    }
    protected void getIncidentsBtn_Click(object sender, EventArgs e)
    {
        Incident currentIncident = null;
        DataView dvSQL = (DataView)sqlIncident.Select(DataSourceSelectArguments.Empty);
        incidentsListBx.Items.Clear();
        incidentsListBx.Items.Add("--Select an Incident--");
        if (dvSQL != null)
        {
            foreach (DataRowView drvSQL in dvSQL)
            {
                currentIncident = new Incident((int)drvSQL["IncidentID"], (int)drvSQL["CustomerID"], drvSQL["ProductCode"].ToString(), (int)drvSQL["TechID"], (DateTime)drvSQL["DateOpened"], (DateTime)drvSQL["DateClosed"], drvSQL["Title"].ToString(), drvSQL["Description"].ToString());

                incidentsListBx.Items.Add(new ListItem(currentIncident.CustomerIncidentDisplay(), drvSQL["IncidentID"].ToString()));
            }

        }
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
        args.IsValid = (Email.Checked == true || Phone.Checked == true);}
    protected void submitBtn_Click(object sender, EventArgs e)
    {
        //Page.Validate();
        if (Page.IsValid)
        {
            Response.Redirect("~/SurveyComplete.aspx", false);
            //string mystring = ResTimeBtnList.SelectedIndex.ToString();
        }
        var incidentVal = incidentsListBx.SelectedValue;

        DataView dvIncident = (DataView)sqlIncident.Select(DataSourceSelectArguments.Empty);
        string contactMethod = "";
        Survey sportProSurvey = null;

        foreach (DataRowView drvSQL in dvIncident)
        {
            if (drvSQL["IncidentID"].ToString() == incidentVal)
            {
                if(Phone.Checked)
                    contactMethod = Phone.Text;
                if(Email.Checked)
                    contactMethod = Email.Text;
                sportProSurvey = new Survey((int)drvSQL["CustomerID"], (int)drvSQL["IncidentID"], int.Parse(ResTimeBtnList.SelectedValue), int.Parse(TechEffBtnList.SelectedValue), int.Parse(ProbResBtnList.SelectedValue), AddCommentsTxtBx.Text, (bool)contactChkBx.Checked, contactMethod);
            }
        }

        HttpContext.Current.Session["surveySession"] = sportProSurvey;
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
