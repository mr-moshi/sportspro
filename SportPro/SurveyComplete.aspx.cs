using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SurveyComplete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["contactMethod"] != null)
            ResponseMessage.Text = "A customer service agent will contact you within 24 hours.";
    }

    protected void ReturnSurveyBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Surveys.aspx", false);
    }
}