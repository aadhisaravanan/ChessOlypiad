using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Collections;
using System.Data.SqlClient;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.IO;

public partial class Login : System.Web.UI.Page
{
    SqlConnection objSqlConnection = new SqlConnection(ConfigurationSettings.AppSettings["sqlconn"].ToString());

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
        objSqlConnection.Open();
        SqlCommand cmdAll = new SqlCommand("select * from LoginMaster where userID='"+ uid.Text +"' and Password='"+ pw.Text +"'", objSqlConnection);
        SqlDataReader dr = cmdAll.ExecuteReader();
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
        objSqlConnection.Close();
    }
    protected void changePass_Click(object sender, EventArgs e)
    {
        passScreen.Visible = true;
    }
    protected void passSub_Click(object sender, EventArgs e)
    {
        objSqlConnection.Open();
        SqlCommand cmdC = new SqlCommand("select * from LoginMaster where userID='"+ uidC.Text +"' and Password='"+ passC.Text +"'", objSqlConnection);
        SqlDataReader drC = cmdC.ExecuteReader();
        int sno = -1;
        if (drC.HasRows == true)
        {
            drC.Read();
            sno = Convert.ToInt16(drC[0].ToString());
            drC.Close();
            SqlCommand cmdU = new SqlCommand("update loginmaster set Password='" + npassC.Text + "' where id=" + sno, objSqlConnection);
            int j = cmdU.ExecuteNonQuery();
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
        objSqlConnection.Close();
    }
}
