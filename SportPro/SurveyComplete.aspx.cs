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
        ResponseMessage.Text = "Success!";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Surveys.aspx");
    }
}