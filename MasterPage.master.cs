using System;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["userid"].ToString() == null)
        //{
        //    Response.Redirect("~/Login.aspx");
        //}
        var currentPage = System.IO.Path.GetFileName(Request.Url.AbsolutePath);
        if (currentPage == "Login.aspx")
        {
            creation1.Visible = false;
            //vru.Visible = false;
            mc.Visible = false;
            logout.Visible = false;
        }
        try
        {
            if (currentPage == "creation.aspx")
            {
                creation1.Visible = true;
                //vru.Visible = false;
                mc.Visible = true;
                logout.Visible = true;
                userName.Text = "Welcome  To " + Session["userid"];
                lbl_medicallocation.Text = "Hotel Name : " + Session["location"];
                creation1.BackColor = System.Drawing.Color.Blue;
                creation1.ForeColor = System.Drawing.Color.White;
            }

            if (currentPage == "vandrupdate.aspx")
            {
                if (Session["pages"].ToString() == "0")
                {
                    creation1.Visible = true;
                    //vru.Visible = true;
                    mc.Visible = true;
                    logout.Visible = true;
                    userName.Text = "Welcome  To " + Session["userid"];
                }
                else
                {
                    creation1.Visible = false;
                    //vru.Visible = true;
                    mc.Visible = false;
                    logout.Visible = true;
                    userName.Text = "Welcome  To " + Session["userid"] + " Department";
                    lbl_medicallocation.Text = "Hotel Name : " + Session["location"];
                    //lbl_medicallocation.Text = Session["location"].ToString();
                }
                //vru.BackColor = System.Drawing.Color.Blue;
                //vru.ForeColor = System.Drawing.Color.White;
            }

            if (currentPage == "PatientDetails.aspx")
            {
                creation1.Visible = true;
                //vru.Visible = false;
                mc.Visible = true;
                logout.Visible = true;
                userName.Text = "Welcome  To " + Session["userid"];
                lbl_medicallocation.Text = "Hotel Name : " + Session["location"];
                mc.BackColor = System.Drawing.Color.Blue;
                mc.ForeColor = System.Drawing.Color.White;
            }

        }
        catch
        {
            Response.Redirect("~/Login.aspx");
        }

        //if (Session["pages"].ToString() == "0")
        //{
        //    creation1.Visible = true;
        //    vru.Visible = true;
        //    mc.Visible = true;
        //    logout.Visible = true;
        //    userName.Text = "Welcome  To " + Session["userid"].ToString();
        //}
        //else
        //{
        //    creation1.Visible = false;
        //    vru.Visible = true;
        //    mc.Visible = false;
        //    logout.Visible = true;
        //    userName.Text = "Welcome  To " + Session["userid"].ToString() + " Department";
        //}

    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Login.aspx");
    }
    protected void mc_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/PatientDetails.aspx");
    }

    protected void creation1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/creation.aspx");
    }

    protected void vru_Click(object sender, EventArgs e)
    {
        //Response.Redirect("~/vandrupdate.aspx");
    }
}
