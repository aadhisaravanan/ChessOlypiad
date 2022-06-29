using System;
using System.Web.UI;

public partial class Default : Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userID"] == null) Response.Redirect("~/Login.aspx");
    }
}
