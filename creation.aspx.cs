using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Globalization;
public partial class creation : System.Web.UI.Page
{
    SqlConnection objSqlConnection = new SqlConnection(ConfigurationSettings.AppSettings["sqlconn"].ToString());
    //SqlConnection objSqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlconn"].ToString());
    SqlDataReader drDist;
    SqlCommand cmdDist;
    protected void Page_PreRender(object sender, EventArgs e)
    {
        //RV1.MinimumValue = DateTime.Now.Date.ToString("dd-MM-yy");
        //RV1.MaximumValue = DateTime.Now.Date.AddYears(90).ToString("dd-MM-yy");
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        Myclass mc = new Myclass();
        if (mc.GetSession("userID") == null)
            Response.Redirect("~/Login.aspx");
        if (!IsPostBack)
        {
            //cn.Open();
            //cmdDist = new SqlCommand("select * from DepartmentMaster", cn);
            //drDist = cmdDist.ExecuteReader();
            //District.DataSource = drDist;
            //District.DataTextField = "DepartmentName";
            //District.DataValueField = "DepartmentID";
            //District.DataBind();
            //District.Items.Insert(0, "-- Select --");
            //District.Items[0].Value = "0";
            //District.SelectedIndex = 0;
            //drDist.Close();

            //SqlCommand cmdDist1 = new SqlCommand("select * from DepartmentMaster", cn);
            //SqlDataReader drDist1 = cmdDist1.ExecuteReader();
            //District1.DataSource = drDist1;
            //District1.DataTextField = "DepartmentName";
            //District1.DataValueField = "DepartmentID";
            //District1.DataBind();
            //District1.Items.Insert(0, "-- Select Department --");
            //District1.Items[0].Value = "0";
            //District1.SelectedIndex = 0;
            //drDist1.Close();
            //cn.Close();

        }
        //OpenDTM.Text = DateTime.Now.ToLongDateString();
        //RV1.MinimumValue = DateTime.Today.AddYears(1).ToShortDateString();
        //RV1.MaximumValue = DateTime.Today.ToShortDateString();
        GridDisplay();


    }

    #region Save
    protected void Button1_Click(object sender, EventArgs e)
    {
        //DateTime ckdate = Convert.ToDateTime(TargetDate.Text);
        //if (ckdate < DateTime.Now)
        //{
        //    Label7.Text = "Enter future date";
        //    //TaskD.Text = "";
        //    District.SelectedIndex = 0;
        //    TargetDate.Text = "";
        //    return;
        //}
        //int TID;
        //cn.Open();
        //SqlCommand cmd1 = new SqlCommand("select top 1 TaskID from TaskMain order by TaskID desc", cn);
        //SqlDataReader dr1 = cmd1.ExecuteReader();
        //if (dr1.HasRows == true)
        //{
        //    dr1.Read();
        //    TID = Convert.ToInt32(dr1[0].ToString())+1;
        //}
        //else
        //{
        //    TID = 1001;
        //}
        //cn.Close();
        //SqlCommand cmd2 = new SqlCommand("SP_INSERT_FOODSafety_DPH", cn);
        //cmd2.CommandType = CommandType.StoredProcedure;
        //cmd2.Parameters.AddWithValue("INSPECTED_HOTEL", DDL_HotelInspected.SelectedItem);
        ////cmd2.Parameters.AddWithValue("ODTM", DateTime.Now);
        //////cmd2.Parameters.AddWithValue("Det", TaskD.Text);
        //////cmd2.Parameters.AddWithValue("ToD", District.SelectedIndex);
        ////cmd2.Parameters.AddWithValue("Stat", 1);
        ////cmd2.Parameters.AddWithValue("CDTM", System.DBNull.Value);
        //cn.Open();
        //int i = cmd2.ExecuteNonQuery();
        //testL.Text = "Task Created Successfully";
        //cn.Close();
        //if (i != 0)
        //    testL.Text = "Inserted Main table";

        //int TSID;
        //cn.Open();
        //SqlCommand cmd3 = new SqlCommand("select TaskSubID from TaskSub order by TaskSubID desc", cn);
        //SqlDataReader dr3 = cmd3.ExecuteReader();
        //if (dr3.HasRows == true)
        //{
        //    dr3.Read();
        //    TSID = Convert.ToInt32(dr3[0].ToString())+1;
        //}
        //else
        //{
        //    TSID=1;
        //}
        //cn.Close();

        //SqlCommand cmd4 = new SqlCommand("sp_insertTS", cn);
        //cmd4.CommandType = CommandType.StoredProcedure;
        //cmd4.Parameters.AddWithValue("TSID", TSID);
        //cmd4.Parameters.AddWithValue("TID", TID);
        ////cmd4.Parameters.AddWithValue("TDTM", TargetDate.Text);
        //cn.Open();
        //int j = cmd4.ExecuteNonQuery();
        //if (i !=0 && j != 0)
        //    testL.Text = "Task Created Successfully";
        //cn.Close();
        ////TaskD.Text = "";
        //District.SelectedIndex = 0;
        //TargetDate.Text = "";
        //Label7.Text = "";
        //GridDisplay();
        //testL.Text = TID.ToString();

        try
        {
            if (InputValidationCheck())
            {
                string hotelinspected = DDL_HotelInspected.SelectedItem.Value;
                string restaurant = DDL_Restaurants.SelectedItem.Value;
                string eateries = DDL_Eateries.SelectedItem.Value;
                string streetfood = DDL_streetfood.SelectedItem.Value;
                string otherFBOS = ddl_OtherFBOs.SelectedItem.Value;

                string statutory = txt_statutory.Text;
                string surveillance = txt_surveillance.Text;
                string noticeissued = txt_noticeissued.Text;
                string compounding = txt_compounding.Text;
                string quantityseized = txt_Quantityseized.Text;

                string qtySeizedProhibitedPlastic = txt_QtySeizedProhibitedPlastic.Text;
                string qtySeizedOtherFoods = txt_QtySeizedOtherFoods.Text;
                string ruco = txt_ruco.Text;
                string surplusFoodCollected = txt_SurplusFoodCollected.Text;
                string incidenceFoodPoisoning = txt_IncidenceFoodPoisoning.Text;

                string fogging = DDL_Fogging.SelectedItem.Value;
                string disinfection = DDL_Disinfection.SelectedItem.Value;
                string chlorination = DDL_Chlorination.SelectedItem.Value;
                string larvicidal = DDL_Larvicidal.SelectedItem.Value;

                string swap = txtswap.Text;
                string mp = txtmp.Text;
                string kitchen = ddl_kitchen.SelectedItem.Value;
                string selfreportd = txt_selfreportd.Text;
                string totalcasesunder = txt_totalcasesunder.Text;
                string preauthraised = txt_preauthraised.Text;
                string preauthclaimed = txt_preauthclaimed.Text;
                string patientAyushTrt = txt_patientAyushTrt.Text;
                string underyoga = txt_underyoga.Text;

                string user = Session["userID"] == null ? string.Empty : Session["userID"].ToString();
                string location = Session["location"] == null ? string.Empty : Session["location"].ToString();
            
                //string user = userID.Text;

                string sqlValues = string.Format("'{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}','{12}','{13}','{14}','{15}','{16}','{17}','{18}','{19}','{20}','{21}','{22}','{23}','{24}','{25}','{26}','{27}','{28}','{29}','{30}' ", hotelinspected, restaurant, eateries, streetfood, otherFBOS, statutory, surveillance, noticeissued, compounding, quantityseized, qtySeizedProhibitedPlastic,qtySeizedOtherFoods, ruco, surplusFoodCollected, incidenceFoodPoisoning, fogging, disinfection, chlorination, larvicidal, swap, mp, kitchen, selfreportd, totalcasesunder, preauthraised, preauthclaimed, patientAyushTrt, underyoga,location,user, DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"));
                string strInsertQry = "INSERT INTO  FOODSAFETY_DETAILS (INSPECTED_HOTEL,	RESTAURANT_INSPECTED,	EATERIES_INSPECTED,	STREETFOOD_INSPECTED,	FBOS_INSPECTED,	STATUTORY_SAMP_LIFTED,	SURVEILLANCE_SAM_LIFTED,	NOTICE_ISSUED,	COMPOUNDING_OFFENCE,	QTY_SEIZED_PROHIBITED_FOOD,	QTY_SEIZED_PROHIBITED_PLASTIC,	QTY_SEIZED_OTHER_FOOD,	RUCO,	SURPLUS_FOOD_COLLECTED,	INCIDENCE_FOOD_POISINING,	FOGGING,	DISINFECTION,	CHLORINATION,	SWAP,	LARVICIDAL,	KITCHEN_HYGIENE,	SMEARForMP,	SELFREPORTED,	TOTAL_CASESUNDES_SCHME,	PRE_AUTHRAISED,	PER_AUTHCLAIMED,	PATIENT_AYUSH,	UNDER_YOGO,HOTELNAME,USER_ID,UPDATED_DTM) values(" + sqlValues + ")";

                SqlCommand objSQLCmd = new SqlCommand(strInsertQry, objSqlConnection);
                objSQLCmd.CommandType = CommandType.Text;
                objSqlConnection.Open();
                objSQLCmd.ExecuteNonQuery();
                lblresult.ForeColor = System.Drawing.Color.Green;
                lblresult.Text = "Data added successfully!";
                ClearInputFields();
            }
        }
        catch(Exception ex)
        {
            Response.Write("Exception in Saving data: " + ex.Message.ToString());
        }
        finally
        {
            objSqlConnection.Close();
        }

        GridDisplay();
    }

    #endregion

    #region Grid
    public void GridDisplay()
    {
        objSqlConnection.Open();
        SqlCommand cmd5 = new SqlCommand("SP_FOOD_DTLS_GV", objSqlConnection);
        cmd5.CommandType = CommandType.StoredProcedure;
        //cmd5.Parameters.AddWithValue("did", Convert.ToInt16(Session["depart"].ToString()));
        //cmd5.Parameters.AddWithValue("did", District1.SelectedValue.ToString());
        SqlDataAdapter adap = new SqlDataAdapter(cmd5);
        DataSet dsAll = new DataSet();
        adap.Fill(dsAll);
        gv.DataSource = dsAll.Tables[0];
        gv.DataBind();
        //string headStr = "Pending Cases to CLOSE";
        //gv.Caption = headStr;
        gv.Columns[0].ItemStyle.Width = 50;
        gv.Columns[1].ItemStyle.Width = 50;
        gv.Columns[2].ItemStyle.Width = 50;
        gv.Columns[3].ItemStyle.Width = 50;
        gv.Columns[4].ItemStyle.Width = 50;
        gv.Columns[5].ItemStyle.Width = 50;
        gv.Columns[6].ItemStyle.Width = 50;
        gv.Columns[7].ItemStyle.Width = 50;
        objSqlConnection.Close();
    }
    #endregion

    #region InputValidationCheck
    private bool InputValidationCheck()
    {
        lblresult.ForeColor = System.Drawing.Color.Red;
        if (DDL_HotelInspected.SelectedIndex == 0)
        {
            lblresult.Text = "Select Inspected Hotel";
            return false;
        }
        if (DDL_Restaurants.SelectedIndex == 0)
        {
            lblresult.Text = "Select Inspected Restaurant";
            return false;
        }
        if (DDL_streetfood.SelectedIndex == 0)
        {
            lblresult.Text = "Select Inspected Street Food";
            return false;
        }

        if (ddl_OtherFBOs.SelectedIndex == 0)
        {
            lblresult.Text = "Select OtherFBOs";
            return false;
        }
        if (DDL_Fogging.SelectedIndex == 0)
        {
            lblresult.Text = "Select Hotel Fogging Status";
            return false;
        }
        if (DDL_Disinfection.SelectedIndex == 0)
        {
            lblresult.Text = "Select Hotel Disinfection Status";
            return false;
        }

        if (DDL_Chlorination.SelectedIndex == 0)
        {
            lblresult.Text = "Select Hotel Chlorination Status";
            return false;
        }
        if (DDL_Larvicidal.SelectedIndex == 0)
        {
            lblresult.Text = "Select Hotel Larvicidal Status";
            return false;
        }
        if (ddl_kitchen.SelectedIndex == 0)
        {
            lblresult.Text = "Select Hotel Kitchen Status";
            return false;
        }

        if (txt_statutory.Text.Trim() == "")
        {
            lblresult.Text = "Enter Statutory Samples lifted Details";
            return false;
        }
        if (txt_surveillance.Text.Trim() == "")
        {
            lblresult.Text = "Enter Surveillance Samples lifted Details";
            return false;
        }
        if (txt_noticeissued.Text.Trim() == "")
        {
            lblresult.Text = "Enter Notices Issued Details";
            return false;
        }
        if (txt_compounding.Text.Trim() == "")
        {
            lblresult.Text = "Enter Compounding offence imposed";
            return false;
        }
        if (txt_Quantityseized.Text.Trim() == "")
        {
            lblresult.Text = "Enter Qty Seized - Prohibited Foods";
            return false;
        }

        if (txt_QtySeizedProhibitedPlastic.Text.Trim() == "")
        {
            lblresult.Text = "Enter Qty Seized - Prohibited Plastic";
            return false;
        }
        if (txt_QtySeizedOtherFoods.Text.Trim() == "")
        {
            lblresult.Text = "Enter Qty Seized - Other Foods";
            return false;
        }
        if (txt_ruco.Text.Trim() == "")
        {
            lblresult.Text = "Enter RUCO Details";
            return false;
        }

        if (txt_SurplusFoodCollected.Text.Trim() == "")
        {
            lblresult.Text = "Enter Surplus Food Collected Details";
            return false;
        }
        if (txt_IncidenceFoodPoisoning.Text.Trim() == "")
        {
            lblresult.Text = "Enter Incidence of Food Poisoning Details";
            return false;
        }

        if (txtswap.Text.Trim() == "")
        {
            lblresult.Text = "Enter Swap Details";
            return false;
        }
        if (txtmp.Text.Trim() == "")
        {
            lblresult.Text = "Enter Smear For MP Details";
            return false;
        }

        if (txt_selfreportd.Text.Trim() == "")
        {
            lblresult.Text = "Enter Self Reported Details";
            return false;
        }
        if (txt_totalcasesunder.Text.Trim() == "")
        {
            lblresult.Text = "Enter Total Cases under scheme";
            return false;
        }
        if (txt_preauthraised.Text.Trim() == "")
        {
            lblresult.Text = "Enter Pre Auth raised Details";
            return false;
        }
        if (txt_preauthclaimed.Text.Trim() == "")
        {
            lblresult.Text = "Enter Pre Auth Claimed Details";
            return false;
        }

        if (txt_patientAyushTrt.Text.Trim() == "")
        {
            lblresult.Text = "Enter Patient wanted AYUSH Treatement";
            return false;
        }
        if (txt_underyoga.Text.Trim() == "")
        {
            lblresult.Text = "Enter Patient Details under Yoga";
            return false;
        }

        return true;
    }

    #endregion

    #region ClearInputs
    private void ClearInputFields()
    {
        DDL_HotelInspected.SelectedIndex = 0;

        DDL_Fogging.SelectedIndex = 0;
        DDL_Disinfection.SelectedIndex = 0;
        DDL_Chlorination.SelectedIndex = 0;
        DDL_Larvicidal.SelectedIndex = 0;
        DDL_Restaurants.SelectedIndex = 0;
        DDL_Eateries.SelectedIndex = 0;
        DDL_streetfood.SelectedIndex = 0;
        ddl_OtherFBOs.SelectedIndex = 0;
        ddl_kitchen.SelectedIndex = 0;

        txt_statutory.Text = "";
        txt_surveillance.Text = "";
        txt_noticeissued.Text = "";
        txt_compounding.Text = "";
        txt_Quantityseized.Text = "";
        txt_QtySeizedProhibitedPlastic.Text = "";
        txt_QtySeizedOtherFoods.Text = "";
        txt_ruco.Text = "";
        txt_SurplusFoodCollected.Text = "";
        txt_IncidenceFoodPoisoning.Text = "";
        txtswap.Text = "";
        txtmp.Text = "";
        txt_selfreportd.Text = "";
        txt_totalcasesunder.Text = "";
        txt_preauthraised.Text = "";
        txt_preauthclaimed.Text = "";
        txt_patientAyushTrt.Text = "";
        txt_underyoga.Text = "";

    }
    #endregion

    protected void gv_DataBound(object sender, EventArgs e)
    {
        //for (int i = 0; i < gv.Rows.Count; i++)
        //{

        //    CultureInfo culture = new CultureInfo("en-US");
        //    string dtStr = gv.Rows[i].Cells[4].Text;
        //    DateTime dt = DateTime.Parse(dtStr);
        //    string tstatus = gv.Rows[i].Cells[6].Text;
        //    //DateTime dt = Convert.ToDateTime(dtStr.ToString());
        //    //string dt1 = dtStr;

        //    //DateTime dt = DateTime.ParseExact(gv.Rows[i].Cells[4].ToString(), "(yyyy, M, d)", CultureInfo.InvariantCulture);
        //    //TimeSpan ts = dt.Subtract(DateTime.Now);
        //    int totDays = (dt - DateTime.Today).Days;
        //    if (totDays <= 0 && tstatus!="Closed")
        //    {
        //        gv.Rows[i].Cells[4].BackColor = System.Drawing.Color.Tomato;
        //        gv.Rows[i].Cells[4].ForeColor = System.Drawing.Color.White;
        //        //string val = gv.Rows[i].Cells[0].Text.Trim();
        //        if (gv.Rows[i].Cells[0].Text.Trim() != "&nbsp;")
        //        {
        //            gv.Rows[i].Cells[0].BackColor = System.Drawing.Color.Tomato;
        //            gv.Rows[i].Cells[0].ForeColor = System.Drawing.Color.White;
        //        }
        //    }
        //    if (tstatus == "Closed")
        //    {
        //        gv.Rows[i].BackColor = System.Drawing.Color.LightGreen;
        //        gv.Rows[i].ForeColor = System.Drawing.Color.Black;
        //    }

        //    //int ct = totDays;
        //    //totsec = totsec + Convert.ToInt16(gv.Rows[i].Cells[4].Text) * 60;
        //    //totsec = totsec + Convert.ToInt16(gv.Rows[i].Cells[5].Text);
        //    //if (totsec <= 2700)
        //    //{
        //    //    gv.Rows[i].Cells[0].BackColor = System.Drawing.Color.Red;
        //    //    gv.Rows[i].Cells[0].ForeColor = System.Drawing.Color.White;
        //    //}
        //    //if (totsec > 2700 && totsec <= 5400)
        //    //{
        //    //    gv.Rows[i].Cells[0].BackColor = System.Drawing.Color.Yellow;
        //    //    gv.Rows[i].Cells[0].ForeColor = System.Drawing.Color.Black;
        //    //}
        //    //if (totsec > 5400)
        //    //{
        //    //    gv.Rows[i].Cells[0].BackColor = System.Drawing.Color.Green;
        //    //    gv.Rows[i].Cells[0].ForeColor = System.Drawing.Color.White;
        //    //}
        }
    }
    //protected void District1_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    //Label7.Text = District1.SelectedValue.ToString();
    //}
    //protected void gv_RowDataBound(object sender, GridViewRowEventArgs e)
    //{
    //    e.Row.Cells[5].Text = e.Row.Cells[5].Text.Replace("|", "<hr/>");
    //}
