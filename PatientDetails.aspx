<%@  Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PatientDetails.aspx.cs" Inherits="PatientDetails" Title="Patient Details" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 200px;
        }
    .style2
    {
        width: 100px;
        height: 50px;
    }
    .style3
    {
        height: 51px;
    }
        .auto-style8 {
            width: 1856px;
        }
        .auto-style10 {
            width: 357px;
        }
        .auto-style11 {
            width: 140px;
        }
    
    .center {
  margin-left: 10px;
  margin-right: 10px;
}
        .auto-style16 {
            width: 500px;
        }
    </style>




</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="center" background="/images/chessbackground.jpg" width=100%" border="1pt">
<tr> 
    <th colspan="3" class="auto-style16">


        <table class="center" style="background-color:#feeebd"; width="800px" border="1pt" cellspacing="5px" cellpadding="5px">
    <tr>
       <th colspan="4" style="color:darkblue;font-size:40px;">  DMS & DME   </th>
    </tr>
<tr>
    <td class="auto-style10">
    <asp:Label ID="lbl_hotelName" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="#3D8A2F" Text="Hotel Name"></asp:Label>
     </td>


       <td class="auto-style11" style="text-align: left">
        <asp:DropDownList ID="ddl_hotelname" runat="server" Height="20px" Width="300px" 
            ValidationGroup="cp">
   <asp:ListItem Text="-- Please Selet --" Value="-- Please Selet --"></asp:ListItem>
<%--   <asp:ListItem Text="ITC WELCOME" Value="ITC WELCOME"></asp:ListItem>
   <asp:ListItem Text="NO" Value="NO"></asp:ListItem>--%>
        </asp:DropDownList>
        <br />
    </td>

        <td class="style1">
        <asp:Label ID="lbl_admissiondatetime" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="#3D8A2F" Text="DateTime"></asp:Label>
        </td>
          <td><asp:TextBox ID="PatientDate" style="text-align: left" runat="server" Width="200px" ValidationGroup="cp"></asp:TextBox>
        <asp:CalendarExtender ID="CalendarExtender2" TargetControlID="PatientDate" Format="dd-MMM-yyyy hh:mm:ss" runat="server">
        </asp:CalendarExtender>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="PatientDate" ErrorMessage="Date" 
            ValidationGroup="cp"></asp:RequiredFieldValidator>
        
    </td>
    
</tr>



<tr>
    <td class="auto-style10">
    <asp:Label ID="lbl_PatientName" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="#3D8A2F" Text="Enter Patient Name"></asp:Label>
     </td>

      <td style="margin-left: 40px; text-align: left;" class="auto-style11">
        <asp:TextBox ID="txt_patientname" runat="server" Width="200px" Height="20px" 
           ValidationGroup="cp"></asp:TextBox>
        <br />
 
    </td>


        <td class="style1">
        <asp:Label ID="lbl_country" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="#3D8A2F" Text="Country"></asp:Label>
        </td>
           <td class="style3" style="text-align: left">
        <asp:DropDownList ID="ddl_country" runat="server" Height="30px" Width="200px" 
            ValidationGroup="cp">
        </asp:DropDownList>
    </td>
    
    </tr>

    <tr >
        <td class="auto-style10">
    <asp:Label ID="lbl_age" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="#3D8A2F" Text="Age"></asp:Label>
     </td>
        <td style="margin-left: 40px; text-align: left;" class="auto-style11">
        <asp:TextBox ID="txt_age" runat="server" Width="50px" Height="20px" 
           ValidationGroup="cp"></asp:TextBox>
           
</td>
        <td class="auto-style10" style="text-align: center">
    <asp:Label ID="lbl_sex" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="#3D8A2F" Text="Sex"></asp:Label>
    </td>
     <td class="auto-style11" style="text-align: left">
        <asp:DropDownList ID="ddl_sex" runat="server" Height="20px" Width="100px" 
            ValidationGroup="cp">
   <asp:ListItem Text="-- Please Selet --" Value="-- Please Selet --"></asp:ListItem>
   <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
   <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
        </asp:DropDownList>
        <br />
    </td>
    </tr>

     <tr>
    

      <td class="auto-style10" style="text-align: center">
    <asp:Label ID="lbl_address" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="#3D8A2F" Text="Address"></asp:Label>
    </td>
   <td style="margin-left: 40px; text-align: left;">
        <asp:TextBox ID="txt_address" runat="server" Width="300px" Height="50px" 
            TextMode="MultiLine" ValidationGroup="cp"></asp:TextBox>
        <br />
    </td>

         <td class="style1" style="text-align: center">
    <asp:Label ID="lbl_daycare" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="#3D8A2F" Text="OP/ Day Care"></asp:Label>
    </td>
    <td class="auto-style11" style="text-align: left">
        <asp:DropDownList ID="ddl_opdaycare" runat="server" Height="20px" Width="100px" 
            ValidationGroup="cp">
   <asp:ListItem Text="-- Please Selet --" Value="-- Please Selet --"></asp:ListItem>
   <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
   <asp:ListItem Text="No" Value="No"></asp:ListItem>
        </asp:DropDownList>
        <br />
    </td>

</tr>

   

    <tr>
    <td class="auto-style10" style="text-align: center">
    <asp:Label ID="lbl_OPStaticTeamtreated" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="#3D8A2F" Text="OP Static Team Treated"></asp:Label>
    </td>
    <td class="auto-style11" style="text-align: left">
        <asp:DropDownList ID="ddl_opstaticteamtreated" runat="server" Height="20px" Width="100px" 
            ValidationGroup="cp">
   <asp:ListItem Text="-- Please Selet --" Value="-- Please Selet --"></asp:ListItem>
   <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
   <asp:ListItem Text="No" Value="No"></asp:ListItem>
        </asp:DropDownList>
        <br />
    </td>

      <td class="style1" style="text-align: center">
    <asp:Label ID="lbl_StaticTeamDiagnosis" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="#3D8A2F" Text="Static Team Diagnosis"></asp:Label>
    </td>
           <td class="style3" style="text-align: left">
        <asp:DropDownList ID="ddl_staticteamdiagnosis" runat="server" Height="30px" Width="200px" 
            ValidationGroup="cp">
             <asp:ListItem Text="-- Please Selet --" Value="-- Please Selet --"></asp:ListItem>
        </asp:DropDownList>
    </td>

</tr>

    <tr>
    <td class="auto-style10" style="text-align: center">
    <asp:Label ID="lbl_opspecilistteam" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="#3D8A2F" Text="OP Treated Specialist Team"></asp:Label>
    </td>
    <td class="auto-style11" style="text-align: left">
        <asp:DropDownList ID="ddl_opspecilistteam" runat="server" Height="20px" Width="100px" 
            ValidationGroup="cp">
   <asp:ListItem Text="-- Please Selet --" Value="-- Please Selet --"></asp:ListItem>
   <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
   <asp:ListItem Text="No" Value="No"></asp:ListItem>
        </asp:DropDownList>
        <br />
    </td>

      <td class="style1" style="text-align: center">
    <asp:Label ID="lbl_opspecilistteamdignosis" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="#3D8A2F" Text="Specialist Team Diagnosis"></asp:Label>
    </td>
           <td class="style3" style="text-align: left">
        <asp:DropDownList ID="ddl_opspecilistteamdignosis" runat="server" Height="30px" Width="200px" 
            ValidationGroup="cp">
            <asp:ListItem Text="-- Please Selet --" Value="-- Please Selet --"></asp:ListItem>
        </asp:DropDownList>
    </td>

</tr>

    <tr>
    <td class="auto-style10" style="text-align: center">
    <asp:Label ID="lbl_ivfluids" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="#3D8A2F" Text="IV fluids Given"></asp:Label>
    </td>
    <td class="auto-style11" style="text-align: left">
        <asp:DropDownList ID="ddl__ivfluids" runat="server" Height="20px" Width="100px" 
            ValidationGroup="cp">
   <asp:ListItem Text="-- Please Selet --" Value="-- Please Selet --"></asp:ListItem>
   <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
   <asp:ListItem Text="No" Value="No"></asp:ListItem>
        </asp:DropDownList>
        <br />
    </td>

      <td class="style1" style="text-align: center">
    <asp:Label ID="lbl_bloodinvestigation" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="#3D8A2F" Text="Blood Investigation(CBG/ECG)"></asp:Label>
    </td>
     <td class="auto-style11" style="text-align: left">
        <asp:DropDownList ID="ddl_bloodinvestigation" runat="server" Height="20px" Width="100px" 
            ValidationGroup="cp">
   <asp:ListItem Text="-- Please Selet --" Value="-- Please Selet --"></asp:ListItem>
   <asp:ListItem Text="CBG" Value="CBG"></asp:ListItem>
   <asp:ListItem Text="ECG" Value="ECG"></asp:ListItem>
        </asp:DropDownList>
        <br />
    </td>

</tr>

<tr>
    <td class="auto-style10" style="text-align: center">
    <asp:Label ID="lbl_rtpcr" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="#3D8A2F" Text="RT PCR"></asp:Label>
    </td>
    <td class="auto-style11" style="text-align: left">
        <asp:DropDownList ID="ddl_rtpcr" runat="server" Height="20px" Width="100px" 
            ValidationGroup="cp">
   <asp:ListItem Text="-- Please Selet --" Value="-- Please Selet --"></asp:ListItem>
   <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
   <asp:ListItem Text="No" Value="No"></asp:ListItem>
        </asp:DropDownList>
        <br />
    </td>

      <td class="style1" style="text-align: center">
    <asp:Label ID="lbl_covidpositive" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="#3D8A2F" Text="Covid Positive"></asp:Label>
    </td>
     <td class="auto-style11" style="text-align: left">
        <asp:DropDownList ID="ddl_covidpositive" runat="server" Height="20px" Width="100px" 
            ValidationGroup="cp">
   <asp:ListItem Text="-- Please Selet --" Value="-- Please Selet --"></asp:ListItem>
   <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
   <asp:ListItem Text="No" Value="No"></asp:ListItem>
        </asp:DropDownList>
        <br />
    </td>

</tr>

<tr>
    <td class="auto-style10" style="text-align: center">
    <asp:Label ID="lbl_referral" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="#3D8A2F" Text="Referral"></asp:Label>
    </td>
    <td class="auto-style11" style="text-align: left">
        <asp:DropDownList ID="ddl_refrral" runat="server" Height="20px" Width="100px" 
            ValidationGroup="cp">
   <asp:ListItem Text="-- Please Selet --" Value="-- Please Selet --"></asp:ListItem>
   <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
   <asp:ListItem Text="No" Value="No"></asp:ListItem>
        </asp:DropDownList>
        <br />
    </td>

      <td class="style1" style="text-align: center">
    <asp:Label ID="lbl_referralreason" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="#3D8A2F" Text="Referral reason"></asp:Label>
    </td>
      <td class="style3" style="text-align: left">
        <asp:DropDownList ID="ddl_referralreason" runat="server" Height="30px" Width="200px" 
            ValidationGroup="cp">
        </asp:DropDownList>
    </td>

</tr>

    <tr>
    <td class="auto-style10" style="text-align: center">
    <asp:Label ID="lbl_shiftedbyambulance" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="#3D8A2F" Text="Shifted by 108 Ambulance"></asp:Label>
    </td>
    <td class="auto-style11" style="text-align: left">
        <asp:DropDownList ID="ddl_shiftedbyambualnce" runat="server" Height="20px" Width="100px" 
            ValidationGroup="cp">
   <asp:ListItem Text="-- Please Selet --" Value="-- Please Selet --"></asp:ListItem>
   <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
   <asp:ListItem Text="No" Value="No"></asp:ListItem>
        </asp:DropDownList>
        <br />
    </td>

      <td class="style1" style="text-align: center">
    <asp:Label ID="lbl_mlc" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="#3D8A2F" Text="MLC"></asp:Label>
    </td>
      <td class="style3" style="text-align: left">
        <asp:DropDownList ID="ddl_mlc" runat="server" Height="30px" Width="200px" 
            ValidationGroup="cp">
               <asp:ListItem Text="-- Please Selet --" Value="-- Please Selet --"></asp:ListItem>
   <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
   <asp:ListItem Text="No" Value="No"></asp:ListItem>
        </asp:DropDownList>
    </td>

</tr>

<%--            <tr>
        <td class="style1">
        <asp:Label ID="lbl_Admissiondatetime" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="#3D8A2F" Text="Admitted Date and Time"></asp:Label>
        </td>
          <td><asp:TextBox ID="txt_admittedtime" runat="server" Width="100px" ValidationGroup="cp"></asp:TextBox>
        <asp:CalendarExtender ID="CalendarExtender1" TargetControlID="Admitteddatetime" Format="dd-MMM-yyyy" runat="server">
        </asp:CalendarExtender>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="Admitteddatetime" ErrorMessage="Date" 
            ValidationGroup="cp"></asp:RequiredFieldValidator>
        
    </td>

                <td class="auto-style10">
    <asp:Label ID="lbl_discharged" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="#3D8A2F" Text="Discharged"></asp:Label>
     </td>
       <td class="auto-style11" style="text-align: left">
        <asp:DropDownList ID="ddl_discharged" runat="server" Height="20px" Width="100px" 
            ValidationGroup="cp">
   <asp:ListItem Text="-- Please Selet --" Value="-- Please Selet --"></asp:ListItem>
   <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
   <asp:ListItem Text="NO" Value="NO"></asp:ListItem>
        </asp:DropDownList>
        <br />
    </td>
    
</tr>--%>

</table>


   
  <td align="center">
    <div id="tblUpdate" runat="server">
    <br />
        <table width="500px" style="background-color:violet"  cellpadding="5" cellspacing="5" border="5pt">
        <tr><td>
    <asp:Label ID="lbl_patientid" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="Black" Text="Patient ID"></asp:Label>
            </td><td style="text-align: left">
                <asp:Label ID="tidLbl" runat="server" Font-Bold="True" Font-Names="Verdana" 
                    Font-Size="Small" ForeColor="#336600"></asp:Label>
            </td></tr>
            <tr>
                 <td class="style1">
        <asp:Label ID="lbl_admissiondate" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="Black" Text="Admitted Date & time"></asp:Label>
        </td>
          <td><asp:TextBox ID="txt_admitteddatetime" style="text-align: left" runat="server" Width="200px" ValidationGroup="cp"></asp:TextBox>
        <asp:CalendarExtender ID="CalendarExtender1" TargetControlID="txt_admitteddatetime" Format="dd-MMM-yyyy hh:mm:ss" runat="server">
        </asp:CalendarExtender>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txt_admitteddatetime" ErrorMessage="Date" 
            ValidationGroup="cp"></asp:RequiredFieldValidator>
              </td>
            </tr>
            <tr>
         <td class="auto-style10" style="text-align: center">
    <asp:Label ID="lbl" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="Black" Text="Discharged Status"></asp:Label>
    </td>
    <td class="auto-style11" style="text-align: left">
        <asp:DropDownList ID="ddl_dischargedstatus" runat="server" Height="20px" Width="100px" 
            ValidationGroup="cp">
   <asp:ListItem Text="-- Please Selet --" Value="-- Please Selet --"></asp:ListItem>
   <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
   <asp:ListItem Text="No" Value="No"></asp:ListItem>
        </asp:DropDownList>
        <br />
    </td>
        
            </tr>
            <tr>

                 <td class="style1" style="text-align: center">
    <asp:Label ID="lbl_admissionhospital" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="Black" Text="Admission Hospital"></asp:Label>
    </td>
      <td class="style3" style="text-align: left">
        <asp:DropDownList ID="ddl_admissionhospital" runat="server" Height="30px" Width="200px" 
            ValidationGroup="cp">
        </asp:DropDownList>
    </td>
            </tr>
                 <tr>
                 <td class="style1">
        <asp:Label ID="lbl_dischargedatetime" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="Black" Text="Dischared Date & time"></asp:Label>
        </td>
          <td><asp:TextBox ID="txt_dischargeddate" style="text-align: left" runat="server" Width="200px" ValidationGroup="cp"></asp:TextBox>
        <asp:CalendarExtender ID="CalendarExtender3" TargetControlID="txt_dischargeddate" Format="dd-MMM-yyyy hh:mm:ss" runat="server">
        </asp:CalendarExtender>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txt_dischargeddate" ErrorMessage="Date" 
            ValidationGroup="cp"></asp:RequiredFieldValidator>
              </td>
            </tr>
                    
                    <tr><td colspan="2" align="center">
    <asp:Button ID="remUpdate" runat="server" BorderColor="#FF9900" 
        BorderStyle="Solid" Font-Bold="True" Font-Names="Verdana" 
        style="text-align: justify" Text="Update" onclick="Button1_Click" 
        ValidationGroup="mc" />
                        </td></tr>
        </table>
        <br />
    </div>
    </td>
 

</tr>





</table>

<table>
       <tr>
<td colspan="2" align="center">
           <br />
    <asp:Label ID="lblresult" runat="server" Font-Bold="True" Font-Names="Verdana" 
               Font-Size="Small" ForeColor="#009900"></asp:Label>
    <br />   

    </td>
   </tr>
<tr>

    <td align="center" class="auto-style8">
<br />

     <asp:Button ID="btn_Save_Patient" runat="server" BorderColor="#FF9900" 
        BorderStyle="Solid" Font-Bold="True" Font-Names="Verdana" 
        style="text-align: justify" Text="Submit" onclick="btn_Save_PatientDet" 
        ValidationGroup="cp" Font-Size="XX-Large" />
        <br />
    <br />
</td>

</tr>

    

</table>
    
    <tr>
    <td align="center" class="auto-style8">

    

          <br /><br />

        <div align="center" style="overflow-x:auto;width:1200px">
     <asp:GridView ID="gv" runat="server" BackColor="White"  AutoGenerateColumns="False"
            BorderColor="Brown" BorderStyle="Solid" BorderWidth="2pt" CellPadding="4" 
            ForeColor="Black" onrowdatabound="gv_RowDataBound" 
        ondatabound="gv_DataBound" EnableModelValidation="True">
            <RowStyle BackColor="#F7F7DE" />
            <FooterStyle BackColor="#CCCC99" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
            <Columns>
            
<%--<asp:HyperLinkField DataTextField="TaskID" DataNavigateUrlFields="TaskID" DataNavigateUrlFormatString="~/update.aspx?Id={0}" Target="_blank"
            HeaderText="TaskID" ItemStyle-Width = "100" />--%>
                           <asp:TemplateField HeaderText="Modify">
        <ItemTemplate>
       <asp:LinkButton runat="server" ID="lnkView" OnClick="lnkView_Click">Modify</asp:LinkButton>
         </ItemTemplate>
       </asp:TemplateField>

             <asp:BoundField DataField="PATIENT_ID" HeaderText="Patient ID" ReadOnly="true" SortExpression="TaskID" />
<asp:BoundField DataField="HOTELNAME" HeaderText="Hotel Name"></asp:BoundField>
             <asp:BoundField HeaderText="Entry Date &amp; Time" ReadOnly="true" SortExpression="PATIENT_CHECKED_DTM" DataFormatString="{0:dd MMM yyyy}"  HtmlEncode="false" />
             <asp:BoundField DataField="PATIENT_NAME" HeaderText="Patient Name" ReadOnly="true" />
             <asp:BoundField DataField="PATIENT_COUNTRY" HeaderText="Country" ReadOnly="true" />
             <asp:BoundField DataField="AGE" HeaderText="Age" ReadOnly="true"  HtmlEncode="false" />
             <asp:BoundField DataField="SEX" HeaderText="Sex" ReadOnly="true" />
             <asp:BoundField DataField="P_ADDRESS" HeaderText="Adress" ReadOnly="true" />

                <asp:BoundField DataField="OP_DAYCARE" HeaderText="OP / DayCare" />
                <asp:BoundField DataField="OP_STATICTEAMTREATED" HeaderText="OP Static Team Treated" />
                <asp:BoundField DataField="STATICTEAM_DIAGNOSIS" HeaderText="Static Team Diagnosis" />
                <asp:BoundField DataField="OP_TREATED_SPECILISTTEAM" HeaderText="OP Treated Specialist Team" />
                <asp:BoundField DataField="SPECIALISTTEAM_DIAGNOSIS" HeaderText="Specialist Team Diagnosis" />
                <asp:BoundField DataField="IV_FLUIDS_GIVEN" HeaderText="IV Fluids" />
                <asp:BoundField DataField="BLOOD_INVESTIGATION" HeaderText="Investigation" />
                <asp:BoundField DataField="RTPCR" HeaderText="RT-PCR" />
                <asp:BoundField DataField="COVID_POSITIVE" HeaderText="Covid Positive" />
                <asp:BoundField DataField="IS_REFERRAL" HeaderText="Referral" />
                <asp:BoundField DataField="REASON_FOR_REFERAL" HeaderText="Reason for Referral" />
                <asp:BoundField DataField="SHIFTED_AMBULANCE" HeaderText="Shifted By" />
                <asp:BoundField DataField="ADMITTED_HOSPITAL" HeaderText="Admitted Hospital" />

            </Columns>
        </asp:GridView>

            </div>
        <br /><br /><br /><br />
</td></tr>



</asp:Content>

