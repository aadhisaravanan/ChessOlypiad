using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

public partial class Login : Page
{
    private readonly SqlConnection _objSqlConnection = new SqlConnection(ConfigurationManager.AppSettings["sqlConnectionString"]);

    //SqlConnection objSqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlconn"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {
        Session["userid"] = null;
        Session["pass"] = null;
        Errmsg.Text = "";
        passScreen.Visible = false;
        cMsg.Visible = false;
    }
    protected void login_Click(object sender, EventArgs e)
    {
        _objSqlConnection.Open();
        var cmdAll = new SqlCommand("select * from LoginMaster where userID='"+ uid.Text +"' and Password='"+ pw.Text +"'", _objSqlConnection);
        var dr = cmdAll.ExecuteReader();
        if (dr.HasRows == true)
        {
            dr.Read();
            Session["userid"] = dr[1].ToString();
            Session["pass"] = dr[2].ToString();
            //Session["pages"] = dr[3].ToString();
            Session["location"] = dr[3].ToString();
            //Session["depart"] = dr[4].ToString();
            if (Session["userid"].ToString() != uid.Text)
            {
                Errmsg.Text = "User ID / Password are Case sensitive";
            }
            else
            {
                //if (dr[3].ToString() == "0")
                //{
                //    Response.Redirect("~/creation.aspx");
                //}
                //else
                //{
                //    Response.Redirect("~/vandrupdate.aspx");
                //}
                //
                Response.Redirect("~/creation.aspx");
            }
        }
        else
        {
            Errmsg.Text = "Invalid User ID / Password";
        }
        _objSqlConnection.Close();
    }
    protected void changePass_Click(object sender, EventArgs e)
    {
        passScreen.Visible = true;
    }
    protected void passSub_Click(object sender, EventArgs e)
    {
        _objSqlConnection.Open();
        var cmdC = new SqlCommand("select * from LoginMaster where userID='"+ uidC.Text +"' and Password='"+ passC.Text +"'", _objSqlConnection);
        var drC = cmdC.ExecuteReader();
        var sno = -1;
        if (drC.HasRows == true)
        {
            drC.Read();
            sno = Convert.ToInt16(drC[0].ToString());
            drC.Close();
            var cmdU = new SqlCommand("update loginmaster set Password='" + npassC.Text + "' where id=" + sno, _objSqlConnection);
            var j = cmdU.ExecuteNonQuery();
            if (j > 0)
            {
                cMsg.Visible = true;
                cMsg.Text = "Password changed Successfully";
            }
        }
        else
        {
            Errmsg.Text = "Invalid User ID / Password";
        }
        _objSqlConnection.Close();
    }
}
