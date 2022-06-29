using System;
using System.Configuration;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class PatientDetails : Page
{
    private readonly SqlConnection _objSqlConnection = new SqlConnection(ConfigurationManager.AppSettings["sqlConnectionString"]);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userID"] == null) Response.Redirect("~/Login.aspx");

        GridDisplay();
        tblUpdate.Visible = false;
        if (!IsPostBack)
        {
            _objSqlConnection.Open();
            var cmdhotel = new SqlCommand(" select * from HotelName where Is_Active=1 order by HotelName", _objSqlConnection);
            var drhotel = cmdhotel.ExecuteReader();
            ddl_hotelname.DataSource = drhotel;
            ddl_hotelname.DataTextField = "HotelName";
            ddl_hotelname.DataValueField = "HotelName";
            ddl_hotelname.DataBind();
            ddl_hotelname.Items.Insert(0, "-- Select Hotel --");
            ddl_hotelname.Items[0].Value = "0";
            ddl_hotelname.SelectedIndex = 0;
            drhotel.Close();
            _objSqlConnection.Close();
            //tblUpdate.Visible = false;

            _objSqlConnection.Open();
            var cmdCountry = new SqlCommand("select * from [Country_List] order by Country_Name ", _objSqlConnection);
            var drcountry = cmdCountry.ExecuteReader();
            ddl_country.DataSource = drcountry;
            ddl_country.DataTextField = "Country_Name";
            ddl_country.DataValueField = "Country_Name";
            ddl_country.DataBind();
            ddl_country.Items.Insert(0, "-- Select Country --");
            ddl_country.Items[0].Value = "0";
            ddl_country.SelectedIndex = 0;
            drcountry.Close();
            _objSqlConnection.Close();

            _objSqlConnection.Open();
            var cmdstaticteamdiag = new SqlCommand("  select * from St_TeamDiagnosis  where Static_IsActive=1 order by StaticTeamDiagnosis", _objSqlConnection);
            var drstaticteamdiag = cmdstaticteamdiag.ExecuteReader();
            ddl_staticteamdiagnosis.DataSource = drstaticteamdiag;
            ddl_staticteamdiagnosis.DataTextField = "StaticTeamDiagnosis";
            ddl_staticteamdiagnosis.DataValueField = "StaticTeamDiagnosis";
            ddl_staticteamdiagnosis.DataBind();
            ddl_staticteamdiagnosis.Items.Insert(0, "-- Select Diagnosis --");
            ddl_staticteamdiagnosis.Items[0].Value = "0";
            ddl_staticteamdiagnosis.SelectedIndex = 0;
            drstaticteamdiag.Close();
            _objSqlConnection.Close();

            _objSqlConnection.Open();
            var cmdspteamdiag = new SqlCommand("  select * from sp_teamDiagnosis  where sp_IsActive=1 order by Sp_TeamDignosis ", _objSqlConnection);
            var drspteamdiag = cmdspteamdiag.ExecuteReader();
            ddl_opspecilistteamdignosis.DataSource = drspteamdiag;
            ddl_opspecilistteamdignosis.DataTextField = "Sp_TeamDignosis";
            ddl_opspecilistteamdignosis.DataValueField = "Sp_TeamDignosis";
            ddl_opspecilistteamdignosis.DataBind();
            ddl_opspecilistteamdignosis.Items.Insert(0, "-- Select Diagnosis --");
            ddl_opspecilistteamdignosis.Items[0].Value = "0";
            ddl_opspecilistteamdignosis.SelectedIndex = 0;
            drspteamdiag.Close();
            _objSqlConnection.Close();


            _objSqlConnection.Open();
            var cmdspteamdiagreferral = new SqlCommand("  select * from sp_teamDiagnosis  where sp_IsActive=1 order by Sp_TeamDignosis ", _objSqlConnection);
            var drspteamdiagrefrral = cmdspteamdiagreferral.ExecuteReader();
            ddl_referralreason.DataSource = drspteamdiagrefrral;
            ddl_referralreason.DataTextField = "Sp_TeamDignosis";
            ddl_referralreason.DataValueField = "Sp_TeamDignosis";
            ddl_referralreason.DataBind();
            ddl_referralreason.Items.Insert(0, "-- Select Referral reason --");
            ddl_referralreason.Items[0].Value = "0";
            ddl_referralreason.SelectedIndex = 0;
            drspteamdiagrefrral.Close();
            _objSqlConnection.Close();

            _objSqlConnection.Open();
            var cmdhospital = new SqlCommand("select * from [dbo].[Hospital_Name] where Hsp_Active=1 order by Hsp_name", _objSqlConnection);
            var drhospiatl = cmdhospital.ExecuteReader();
            ddl_admissionhospital.DataSource = drhospiatl;
            ddl_admissionhospital.DataTextField = "Hsp_name";
            ddl_admissionhospital.DataValueField = "Hsp_name";
            ddl_admissionhospital.DataBind();
            ddl_admissionhospital.Items.Insert(0, "-- Select Hospital --");
            ddl_admissionhospital.Items[0].Value = "0";
            ddl_admissionhospital.SelectedIndex = 0;
            drhospiatl.Close();
            _objSqlConnection.Close();
        }
    }


    public void GridDisplay()
    {
        _objSqlConnection.Open();

        //SqlCommand cmd5 = new SqlCommand("sp_creationDisplay", cn);
        var cmd5 = new SqlCommand("SP_PatientEntry_GV", _objSqlConnection);
        cmd5.CommandType = CommandType.StoredProcedure;
        //cmd5.Parameters.AddWithValue("did", Convert.ToInt16(Session["depart"].ToString()));
        //cmd5.Parameters.AddWithValue("did", District1.SelectedValue.ToString());
        var adap = new SqlDataAdapter(cmd5);
        var dsAll = new DataSet();
        adap.Fill(dsAll);
        gv.DataSource = dsAll.Tables[0];
        gv.DataBind();
        gv.Columns[0].ItemStyle.Width = 60;
        gv.Columns[1].ItemStyle.Width = 60;
        gv.Columns[2].ItemStyle.Width = 90;
        gv.Columns[3].ItemStyle.Width = 100;
        gv.Columns[4].ItemStyle.Width = 100;
        gv.Columns[5].ItemStyle.Width = 100;
        gv.Columns[6].ItemStyle.Width = 100;
        gv.Columns[7].ItemStyle.Width = 50;
        _objSqlConnection.Close();
    }

    protected void lnkView_Click(object sender, EventArgs e)
    {
        var grdrow = (GridViewRow)((LinkButton)sender).NamingContainer;
        if (grdrow.Cells[1].Text.Length != 6)
        {
            tblUpdate.Visible = true;
            //selOne.Visible = true;
            //TargetDate.Visible = false;
            //selOne.SelectedIndex = -1;
            //remUp.Text = "";
            tidLbl.Text = grdrow.Cells[1].Text;
            remUpdate.Focus();
        }
    }


    protected void btn_Save_PatientDet(object sender, EventArgs e)
    {

        try
        {
            if (InputValidationCheck())
            {
                var hotelname = ddl_hotelname.SelectedItem.Value;
                var patiententrydate = PatientDate.Text;
                var patientname = txt_patientname.Text;
                var country = ddl_country.SelectedItem.Value;
                var age = txt_age.Text;

                var sex = ddl_sex.SelectedItem.Value;
                var address = txt_address.Text;
                var opdaycare = ddl_opdaycare.SelectedItem.Value;
                var opstaticteamtr = ddl_opstaticteamtreated.SelectedItem.Value;
                var opstaticteamdiag = ddl_staticteamdiagnosis.SelectedItem.Value;

                var specialistteam = ddl_opspecilistteam.SelectedItem.Value;
                var specialistteamdiag = ddl_opspecilistteamdignosis.SelectedItem.Value;
                var ivfluids = ddl__ivfluids.SelectedItem.Value;
                var investigation = ddl_bloodinvestigation.SelectedItem.Value;
                var rtpcr = ddl_rtpcr.SelectedItem.Value;

                var covidstatus = ddl_covidpositive.SelectedItem.Value;
                var referral = ddl_refrral.SelectedItem.Value;
                var referralreason = ddl_referralreason.SelectedItem.Value;
                var shiftedambulance = ddl_shiftedbyambualnce.SelectedItem.Value;
                var mlc = ddl_mlc.SelectedItem.Value;

                var user = Session["userID"] == null ? string.Empty : Session["userID"].ToString();
                //string location = Session["location"] == null ? string.Empty : Session["location"].ToString();

                //string user = userID.Text;

                var sqlValues = string.Format("'{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}','{12}','{13}','{14}','{15}','{16}','{17}','{18}','{19}','{20}' ", hotelname, patiententrydate, patientname, country, age, sex, address, opdaycare, opstaticteamtr, opstaticteamdiag, specialistteam, specialistteamdiag, ivfluids, investigation, rtpcr, covidstatus, referral, referralreason, shiftedambulance, mlc, user);
                var strInsertQry = "INSERT INTO PATIENT_ENTRY (HOTELNAME,PATIENT_CHECKED_DTM,PATIENT_NAME,PATIENT_COUNTRY,AGE,SEX,P_ADDRESS,OP_DAYCARE,OP_STATICTEAMTREATED,STATICTEAM_DIAGNOSIS,OP_TREATED_SPECILISTTEAM,SPECIALISTTEAM_DIAGNOSIS,IV_FLUIDS_GIVEN,BLOOD_INVESTIGATION,RTPCR,COVID_POSITIVE,IS_REFERRAL,REASON_FOR_REFERAL,SHIFTED_AMBULANCE,MLC,USER_ID) values(" + sqlValues + ")";

                var objSqlCmd = new SqlCommand(strInsertQry, _objSqlConnection);
                objSqlCmd.CommandType = CommandType.Text;
                _objSqlConnection.Open();
                objSqlCmd.ExecuteNonQuery();
                lblresult.ForeColor = System.Drawing.Color.Green;
                lblresult.Text = "Data added successfully!";
                ClearInputFields();
            }
        }
        catch (Exception ex)
        {
            Response.Write("Exception in Saving data: " + ex.Message);
        }
        finally
        {
            _objSqlConnection.Close();
        }

        GridDisplay();
    }



    #region InputValidationCheck
    private bool InputValidationCheck()
    {
        lblresult.ForeColor = System.Drawing.Color.Red;
        if (ddl_hotelname.SelectedIndex == 0)
        {
            lblresult.Text = "Select Hotel";
            return false;
        }
        if (PatientDate.Text.Trim() == "")
        {
            lblresult.Text = "Select Date and Time";
            return false;
        }
        if (txt_patientname.Text.Trim() == "")
        {
            lblresult.Text = "Enter Patient Name";
            return false;
        }

        if (ddl_country.SelectedIndex == 0)
        {
            lblresult.Text = "Select Country";
            return false;
        }
        if (txt_age.Text.Trim() == "")
        {
            lblresult.Text = "Enter Age";
            return false;
        }
        if (ddl_sex.SelectedIndex == 0)
        {
            lblresult.Text = "Select Sex";
            return false;
        }

        if (txt_address.Text.Trim() == "")
        {
            lblresult.Text = "Enter Address";
            return false;
        }
        if (ddl_opdaycare.SelectedIndex == 0)
        {
            lblresult.Text = "Select OP/Day Care";
            return false;
        }
        if (ddl_opstaticteamtreated.SelectedIndex == 0)
        {
            lblresult.Text = "Select Static Treated";
            return false;
        }

        if (ddl_staticteamdiagnosis.SelectedIndex == 0)
        {
            lblresult.Text = "Select Diagnosis";
            return false;
        }
        if (ddl_opspecilistteam.SelectedIndex == 0)
        {
            lblresult.Text = "Select Specialist treated";
            return false;
        }
        if (ddl_opspecilistteamdignosis.SelectedIndex == 0)
        {
            lblresult.Text = "Select Specialist Diagnosis";
            return false;
        }
        if (ddl__ivfluids.SelectedIndex == 0)
        {
            lblresult.Text = "Select IV";
            return false;
        }
        if (ddl_bloodinvestigation.SelectedIndex == 0)
        {
            lblresult.Text = "Select Investigation";
            return false;
        }

        if (ddl_rtpcr.SelectedIndex == 0)
        {
            lblresult.Text = "Select RT-PCR";
            return false;
        }
        if (ddl_covidpositive.SelectedIndex == 0)
        {
            lblresult.Text = "Select Covid Status";
            return false;
        }
        if (ddl_refrral.SelectedIndex == 0)
        {
            lblresult.Text = "Select Referral";
            return false;
        }

        if (ddl_referralreason.SelectedIndex == 0)
        {
            lblresult.Text = "Select Referral Reason";
            return false;
        }
        if (ddl_shiftedbyambualnce.SelectedIndex == 0)
        {
            lblresult.Text = "Select Shifted Ambulance";
            return false;
        }

        if (ddl_mlc.SelectedIndex == 0)
        {
            lblresult.Text = "Select MLC";
            return false;
        }


        return true;
    }

    #endregion

    #region ClearInputs
    private void ClearInputFields()
    {
        ddl_sex.SelectedIndex = 0;

        ddl_country.SelectedIndex = 0;
        ddl_hotelname.SelectedIndex = 0;
        ddl_opdaycare.SelectedIndex = 0;
        ddl_opstaticteamtreated.SelectedIndex = 0;
        ddl_staticteamdiagnosis.SelectedIndex = 0;
        ddl_opspecilistteam.SelectedIndex = 0;
        ddl_opspecilistteamdignosis.SelectedIndex = 0;
        ddl__ivfluids.SelectedIndex = 0;
        ddl_bloodinvestigation.SelectedIndex = 0;

        ddl_rtpcr.SelectedIndex = 0;
        ddl_covidpositive.SelectedIndex = 0;
        ddl_refrral.SelectedIndex = 0;
        ddl_referralreason.SelectedIndex = 0;
        ddl_shiftedbyambualnce.SelectedIndex = 0;

        PatientDate.Text = "";
        txt_patientname.Text = "";
        txt_age.Text = "";
        txt_address.Text = "";


    }
    #endregion


    #region updatevalidation
    private bool UpdateValidationCheck()
    {
        lblresult.ForeColor = System.Drawing.Color.Red;




        if (txt_admitteddatetime.Text.Trim() == "")
        {
            lblresult.Text = "Enter Admitted Date";
            return false;
        }

        if (ddl_dischargedstatus.SelectedIndex == 0)
        {
            lblresult.Text = "Select Dischare Status";
            return false;
        }

        if (ddl_admissionhospital.SelectedIndex == 0)
        {
            lblresult.Text = "Select Admitted Hospital";
            return false;
        }

        if (txt_dischargeddate.Text.Trim() == "")
        {
            lblresult.Text = "Enter Discharge Date";
            return false;
        }
        return true;
    }
    #endregion
    protected void gv_DataBound(object sender, EventArgs e)
    {

    }

    protected void gv_RowDataBound(object sender, GridViewRowEventArgs e)
    {

    }

    private void clearinput_forupdate()
    {
        ddl_admissionhospital.SelectedIndex = 0;
        txt_admitteddatetime.Text = "";
        ddl_dischargedstatus.SelectedIndex = 0;
        txt_dischargeddate.Text = "";

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        try
        {
            if (UpdateValidationCheck())
            {
                var admittedhospital = ddl_admissionhospital.SelectedItem.Value;
                var admitteddate = txt_admitteddatetime.Text;
                var dischargedstatus = ddl_dischargedstatus.SelectedItem.Value;
                var dischargeddate = txt_dischargeddate.Text;

                _objSqlConnection.Open();
                var cmd3 = new SqlCommand("update PATIENT_ENTRY set ADMITTED_DTM ='" + admitteddate + "' , ADMITTED_HOSPITAL = '" + admittedhospital + "',P_DISCHARGED='" + dischargedstatus + "',P_DISCHARGE_DTM='" + dischargeddate + "' where PATIENT_ID = " + Convert.ToInt32(tidLbl.Text.Trim()), _objSqlConnection);

                cmd3.ExecuteNonQuery();
                _objSqlConnection.Close();
                lblresult.ForeColor = System.Drawing.Color.Green;
                lblresult.Text = "Patient Discharge status updated successfully!";
                clearinput_forupdate();
            }
        }

        catch (Exception ex)
        {
            Response.Write("Exception in Saving data: " + ex.Message);
        }
        finally
        {
            _objSqlConnection.Close();
        }

        GridDisplay();
        tblUpdate.Visible = false;
    }
}