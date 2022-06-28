<%@  Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="creation.aspx.cs" Inherits="creation" Title="Creation Page" %>

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
        .auto-style5 {
            width: 302px;
        }
        .auto-style7 {
            height: 382px;
            width: 471px;
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
    .auto-style12 {
        width: 245px;
    }
    .auto-style13 {
        width: 203px;
    }
    .auto-style14 {
        width: 230px;
    }
    .auto-style15 {
        width: 113px;
    }

    .center {
  margin-left: 100px;
  margin-right: 100px;
}
        .auto-style16 {
            width: 500px;
        }
    </style>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <table class="center"  background="/images/chessbackground.jpg" border="1pt">
<tr> 
    <div align="center" width="1000px">

   
    <th colspan="2" class="auto-style16">


        <table class="center" style="background-color:#feeebd"; width="600px" border="1pt" cellspacing="5px" cellpadding="5px">
    <tr>
       <th colspan="4" style="color:darkblue;font-size:30px;">  Food Safety   </th>
    </tr>
<tr>
    <td class="auto-style10">
    <asp:Label ID="lbl_hotelinspected" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="#3D8A2F" Text="Hotels inspected"></asp:Label>
     </td>


       <td class="auto-style11" style="text-align: left">
        <asp:DropDownList ID="DDL_HotelInspected" runat="server" Height="20px" Width="100px" 
            ValidationGroup="cp">
   <asp:ListItem Text="-- Please Selet --" Value="-- Please Selet --"></asp:ListItem>
   <asp:ListItem Text="YES" Value="YES"></asp:ListItem>
   <asp:ListItem Text="NO" Value="NO"></asp:ListItem>
        </asp:DropDownList>
        <br />
    </td>

        <td class="style1">
        <asp:Label ID="lbl_RestaurantIns" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="#3D8A2F" Text="Restaurants inspected"></asp:Label>
        </td>
           <td style="text-align: left">
        <asp:DropDownList ID="DDL_Restaurants" runat="server" Height="20px" Width="100px" 
            ValidationGroup="cp">
   <asp:ListItem Text="-- Please Selet --" Value="-- Please Selet --"></asp:ListItem>
   <asp:ListItem Text="YES" Value="YES"></asp:ListItem>
   <asp:ListItem Text="NO" Value="NO"></asp:ListItem>
        </asp:DropDownList>
        <br />
    </td>
    
</tr>



<tr>
    <td class="auto-style10">
    <asp:Label ID="lbl_Eateris" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="#3D8A2F" Text="Eateries inspected"></asp:Label>
     </td>

       <td class="auto-style11" style="text-align: left">
        <asp:DropDownList ID="DDL_Eateries" runat="server" Height="20px" Width="100px" 
            ValidationGroup="cp">
   <asp:ListItem Text="-- Please Selet --" Value="-- Please Selet --"></asp:ListItem>
   <asp:ListItem Text="YES" Value="YES"></asp:ListItem>
   <asp:ListItem Text="NO" Value="NO"></asp:ListItem>
        </asp:DropDownList>
    </td>

        <td class="style1">
        <asp:Label ID="lbl_streetfood" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="#3D8A2F" Text="Street Food Vendors"></asp:Label>
        </td>


           <td style="text-align: left">
        <asp:DropDownList ID="DDL_streetfood" runat="server" Height="20px" Width="100px" 
            ValidationGroup="cp">
   <asp:ListItem Text="-- Please Selet --" Value="-- Please Selet --"></asp:ListItem>
   <asp:ListItem Text="YES" Value="YES"></asp:ListItem>
   <asp:ListItem Text="NO" Value="NO"></asp:ListItem>
        </asp:DropDownList>
    </td>
    
    </tr>


   

    <tr >
        <th colspan="2">
        <asp:Label ID="lbl_otherFBOsIns" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="#3D8A2F" Text="Other FBOs inspected"></asp:Label>

           <td style="text-align: left" class="auto-style5">
        <asp:DropDownList ID="ddl_OtherFBOs" runat="server" Height="20px" Width="100px" 
            ValidationGroup="cp">
   <asp:ListItem Text="-- Please Selet --" Value="-- Please Selet --"></asp:ListItem>
   <asp:ListItem Text="YES" Value="YES"></asp:ListItem>
   <asp:ListItem Text="NO" Value="NO"></asp:ListItem>
        </asp:DropDownList>
    </td>
            </th>
    </tr>

     <tr>
    <td class="auto-style10" style="text-align: left">
    <asp:Label ID="lbl_Statutory" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="#3D8A2F" Text="Statutory Samples lifted"></asp:Label>
    </td>
    <td style="margin-left: 40px; text-align: left;" class="auto-style11">
        <asp:TextBox ID="txt_statutory" runat="server" Width="50px" Height="20px" 
           ValidationGroup="cp"></asp:TextBox>
        <br />
 
    </td>

      <td class="style1" style="text-align: left">
    <asp:Label ID="lbl_surveillance" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="#3D8A2F" Text="Surveillance Samples lifted"></asp:Label>
    </td>
    <td style="margin-left: 40px; text-align: left;">
        <asp:TextBox ID="txt_surveillance" runat="server" Width="50px" Height="20px" 
           ValidationGroup="cp"></asp:TextBox>
        <br />
 
    </td>

</tr>

    <tr>
    <td class="auto-style10" style="text-align: left">
    <asp:Label ID="lbl_notice" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="#3D8A2F" Text="Notices Issued"></asp:Label>
    </td>
    <td style="margin-left: 40px; text-align: left;" class="auto-style11">
        <asp:TextBox ID="txt_noticeissued" runat="server" Width="50px" Height="20px" 
           ValidationGroup="cp"></asp:TextBox>
        <br />
 
    </td>

      <td class="style1" style="text-align: left">
    <asp:Label ID="lbl_compu" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="#3D8A2F" Text="Compounding offence imposed"></asp:Label>
    </td>
    <td style="margin-left: 40px; text-align: left;">
        <asp:TextBox ID="txt_compounding" runat="server" Width="50px" Height="20px" 
           ValidationGroup="cp"></asp:TextBox>
        <br />
 
    </td>

</tr>

    <tr>
    <td class="auto-style10" style="text-align: left">
    <asp:Label ID="lbl_Quantityseized" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="#3D8A2F" Text="Qty Seized - Prohibited Foods"></asp:Label>
    </td>
    <td style="margin-left: 40px; text-align: left;" class="auto-style11">
        <asp:TextBox ID="txt_Quantityseized" runat="server" Width="50px" Height="20px" 
           ValidationGroup="cp"></asp:TextBox>
        <br />
 
    </td>

      <td class="style1" style="text-align: left">
    <asp:Label ID="lbl_QtySeizedProhibitedPlastic" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="#3D8A2F" Text="Qty Seized - Prohibited Plastic"></asp:Label>
    </td>
    <td style="margin-left: 40px; text-align: left;">
        <asp:TextBox ID="txt_QtySeizedProhibitedPlastic" runat="server" Width="50px" Height="20px" 
           ValidationGroup="cp"></asp:TextBox>
        <br />
 
    </td>

</tr>

    <tr>
    <td class="auto-style10" style="text-align: left">
    <asp:Label ID="lbl_QtySeizedOtherFoods" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="#3D8A2F" Text="Qty Seized - Other Foods"></asp:Label>
    </td>
    <td style="margin-left: 40px; text-align: left;" class="auto-style11">
        <asp:TextBox ID="txt_QtySeizedOtherFoods" runat="server" Width="50px" Height="20px" 
           ValidationGroup="cp"></asp:TextBox>
        <br />
 
    </td>

      <td class="style1" style="text-align: left">
    <asp:Label ID="lbl_RUCO" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="#3D8A2F" Text="RUCO"></asp:Label>
    </td>
    <td style="margin-left: 40px; text-align: left;">
        <asp:TextBox ID="txt_ruco" runat="server" Width="50px" Height="20px" 
           ValidationGroup="cp"></asp:TextBox>
        <br />
 
    </td>

</tr>

    <tr>
    <td class="auto-style10" style="text-align: left">
    <asp:Label ID="lbl_SurplusFoodCollected" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="#3D8A2F" Text="Surplus Food Collected"></asp:Label>
    </td>
    <td style="margin-left: 40px; text-align: left;" class="auto-style11">
        <asp:TextBox ID="txt_SurplusFoodCollected" runat="server" Width="50px" Height="20px" 
           ValidationGroup="cp"></asp:TextBox>
        <br />
 
    </td>

      <td class="style1" style="text-align: left">
    <asp:Label ID="lbl_IncidenceFoodPoisoning" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="#3D8A2F" Text="Incidence of Food Poisoning"></asp:Label>
    </td>
    <td style="margin-left: 40px; text-align: left;">
        <asp:TextBox ID="txt_IncidenceFoodPoisoning" runat="server" Width="50px" Height="20px" 
           ValidationGroup="cp"></asp:TextBox>
        <br />
 
    </td>

</tr>



</table>


    </th>
  
 <td align="center" class="auto-style7">


 <table  class="center" style="background-color:#70163C"; width="600px" border="1pt" cellspacing="5px" cellpadding="5px">
    <tr>
       <th colspan="4" style="color:goldenrod;font-size:30px;">  DPH & DDHS   </th>
    </tr>
<tr style="background-color:#7F96FF;color:#ffffff;">
    <td class="style1">
    <asp:Label ID="lbl_fogging" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="#3D8A2F" Text="Fogging"></asp:Label>
     </td>
<%--    </td><td style="text-align: left">
        <asp:Label ID="OpenDTM" runat="server"></asp:Label>
    --%>

       <td class="auto-style5" style="text-align: left">
        <asp:DropDownList ID="DDL_Fogging" runat="server" Height="20px" Width="100px" 
            ValidationGroup="cp">
   <asp:ListItem Text="-- Please Selet --" Value="-- Please Selet --"></asp:ListItem>
   <asp:ListItem Text="YES" Value="YES"></asp:ListItem>
   <asp:ListItem Text="NO" Value="NO"></asp:ListItem>
        </asp:DropDownList>
        <br />
    </td>

        <td class="style1">
        <asp:Label ID="lbl_disinfection" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="#3D8A2F" Text="Disinfection"></asp:Label>
        </td>
           <td style="text-align: left">
        <asp:DropDownList ID="DDL_Disinfection" runat="server" Height="20px" Width="100px" 
            ValidationGroup="cp">
   <asp:ListItem Text="-- Please Selet --" Value="-- Please Selet --"></asp:ListItem>
   <asp:ListItem Text="YES" Value="YES"></asp:ListItem>
   <asp:ListItem Text="NO" Value="NO"></asp:ListItem>
        </asp:DropDownList>
        <br />
    </td>
    
</tr>



    <tr>
    <td class="style1">
    <asp:Label ID="lbl_chlorination" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="#3D8A2F" Text="Chlorination"></asp:Label>
     </td>

       <td class="auto-style5" style="text-align: left">
        <asp:DropDownList ID="DDL_Chlorination" runat="server" Height="20px" Width="100px" 
            ValidationGroup="cp">
   <asp:ListItem Text="-- Please Selet --" Value="-- Please Selet --"></asp:ListItem>
   <asp:ListItem Text="YES" Value="YES"></asp:ListItem>
   <asp:ListItem Text="NO" Value="NO"></asp:ListItem>
        </asp:DropDownList>
    </td>

        <td class="style1">
        <asp:Label ID="lbl_larvicidal" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="#3D8A2F" Text="Larvicidal Spary"></asp:Label>
        </td>
           <td style="text-align: left">
        <asp:DropDownList ID="DDL_Larvicidal" runat="server" Height="20px" Width="100px" 
            ValidationGroup="cp">
   <asp:ListItem Text="-- Please Selet --" Value="-- Please Selet --"></asp:ListItem>
   <asp:ListItem Text="YES" Value="YES"></asp:ListItem>
   <asp:ListItem Text="NO" Value="NO"></asp:ListItem>
        </asp:DropDownList>
    </td>
    
    </tr>


    <tr>
    <td class="style1" style="text-align: left">
    <asp:Label ID="lblswap" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="#3D8A2F" Text="Swap"></asp:Label>
    </td>
    <td style="margin-left: 40px; text-align: left;" class="auto-style5">
        <asp:TextBox ID="txtswap" runat="server" Width="50px" Height="20px" 
           ValidationGroup="cp"></asp:TextBox>
        <br />
 
    </td>

      <td class="style1" style="text-align: left">
    <asp:Label ID="lblmp" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="#3D8A2F" Text="Smear For MP"></asp:Label>
    </td>
    <td style="margin-left: 40px; text-align: left;">
        <asp:TextBox ID="txtmp" runat="server" Width="50px" Height="20px" 
           ValidationGroup="cp"></asp:TextBox>
        <br />
 
    </td>

</tr>

    <tr >
        <th colspan="2">
        <asp:Label ID="lbl_kitchen" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="#3D8A2F" Text="Kitchen Hygiene check"></asp:Label>

           <td style="text-align: left" class="auto-style5">
        <asp:DropDownList ID="ddl_kitchen" runat="server" Height="20px" Width="100px" 
            ValidationGroup="cp">
   <asp:ListItem Text="-- Please Selet --" Value="-- Please Selet --"></asp:ListItem>
   <asp:ListItem Text="YES" Value="YES"></asp:ListItem>
   <asp:ListItem Text="NO" Value="NO"></asp:ListItem>
        </asp:DropDownList>
    </td>
            </th>
    </tr>
<%--<tr><td class="auto-style6" style="text-align: left">
    &nbsp;</td>
    <td class="auto-style4" style="text-align: left">
        &nbsp;</td>

</tr>--%>

<%--<tr><td class="style1" style="text-align: left">
    &nbsp;</td><td style="text-align: left" class="auto-style5">
        &nbsp;</td></tr>

<tr>
    <td colspan="2" align="center">
    
    </td>

</tr>--%>



    &nbsp;

</table>

&nbsp

 <table  class="center" style="background-color:#70163C"; width="600px" border="1pt" cellspacing="5px" cellpadding="5px">
    <tr>
       <th colspan="4" style="color:white;font-size:30px;">  CMCHIS </th>
    </tr>

<tr>
    <td class="auto-style12" style="text-align: left">
    <asp:Label ID="lbl_selfreportd" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="#3D8A2F" Text="Self Reported"></asp:Label>
    </td>
    <td style="margin-left: 40px; text-align: left;" class="auto-style5">
        <asp:TextBox ID="txt_selfreportd" runat="server" Width="50px" Height="20px" 
           ValidationGroup="cp"></asp:TextBox>
        <br />
 
    </td>

      <td class="style1" style="text-align: left">
    <asp:Label ID="lbl__totalcasesunder" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="#3D8A2F" Text="Total Cases under scheme"></asp:Label>
    </td>
    <td style="margin-left: 40px; text-align: left;">
        <asp:TextBox ID="txt_totalcasesunder" runat="server" Width="50px" Height="20px" 
           ValidationGroup="cp"></asp:TextBox>
        <br />
 
    </td>

</tr>

<tr>
    <td class="auto-style12" style="text-align: left">
    <asp:Label ID="lbl_preauthraised" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="#3D8A2F" Text="Pre Auth raised"></asp:Label>
    </td>
    <td style="margin-left: 40px; text-align: left;" class="auto-style13">
        <asp:TextBox ID="txt_preauthraised" runat="server" Width="50px" Height="20px" 
           ValidationGroup="cp"></asp:TextBox>
        <br />
 
    </td>

      <td class="style1" style="text-align: left">
    <asp:Label ID="lbl_preauthclaimed" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="#3D8A2F" Text="Pre Auth Claimed"></asp:Label>
    </td>
    <td style="margin-left: 40px; text-align: left;">
        <asp:TextBox ID="txt_preauthclaimed" runat="server" Width="50px" Height="20px" 
           ValidationGroup="cp"></asp:TextBox>
        <br />
 
    </td>

</tr>





<%--<tr><td class="auto-style6" style="text-align: left">
    &nbsp;</td>
    <td class="auto-style4" style="text-align: left">
        &nbsp;</td>

</tr>--%>

<%--<tr><td class="style1" style="text-align: left">
    &nbsp;</td><td style="text-align: left" class="auto-style5">
        &nbsp;</td></tr>

<tr>
    <td colspan="2" align="center">
    
    </td>

</tr>--%>



    &nbsp;

</table>

 &nbsp
 <table  class="center" style="background-color:#70163C; width="600px" border="1pt" cellspacing="5px" cellpadding="5px">
    <tr>
       <th colspan="4" style="color:white;font-size:25px;"> Yoga & NP </th>
    </tr>

<tr>
    <td class="auto-style14" style="text-align: left">
    <asp:Label ID="lbl_patientAyushTrt" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="#3D8A2F" Text="Patient wanted AYUSH Treatement"></asp:Label>
    </td>
    <td style="margin-left: 40px; text-align: left;" class="auto-style15">
        <asp:TextBox ID="txt_patientAyushTrt" runat="server" Width="50px" Height="20px" 
           ValidationGroup="cp"></asp:TextBox>
        <br />
 
    </td>

      <td class="style1" style="text-align: left">
    <asp:Label ID="lbl_underyoga" runat="server" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="Small" ForeColor="#3D8A2F" Text="Parti. under Yoga"></asp:Label>
    </td>
    <td style="margin-left: 40px; text-align: left;">
        <asp:TextBox ID="txt_underyoga" runat="server" Width="50px" Height="20px" 
           ValidationGroup="cp"></asp:TextBox>
        <br />
 
    </td>

</tr>







<%--<tr><td class="auto-style6" style="text-align: left">
    &nbsp;</td>
    <td class="auto-style4" style="text-align: left">
        &nbsp;</td>

</tr>--%>

<%--<tr><td class="style1" style="text-align: left">
    &nbsp;</td><td style="text-align: left" class="auto-style5">
        &nbsp;</td></tr>

<tr>
    <td colspan="2" align="center">
    
    </td>

</tr>--%>



    &nbsp;

</table>

</td>
 </div>
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

     <asp:Button ID="Button1" runat="server" BorderColor="#FF9900" 
        BorderStyle="Solid" Font-Bold="True" Font-Names="Verdana" 
        style="text-align: justify" Text="Save" onclick="Button1_Click" 
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
            ForeColor="Black" ondatabound="gv_DataBound" EnableModelValidation="True" 
              >
            <RowStyle BackColor="#ccf7fc" />
            <FooterStyle BackColor="#CCCC99"  />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
            
            <Columns>
<asp:BoundField DataField="ID" HeaderText="S.No" ReadOnly="True" SortExpression="ID"></asp:BoundField>
<asp:BoundField DataField="HotelName" HeaderText="Hotel Name" ReadOnly="True"></asp:BoundField>
<asp:BoundField DataField="UserName" HeaderText="User Name" ReadOnly="True"></asp:BoundField>
<asp:BoundField DataField="HotelInspected" HeaderText="Hotel Inspected" ReadOnly="True" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="Restaurant" HeaderText="Restaurant" ReadOnly="True"></asp:BoundField>
<asp:BoundField DataField="EeatersInspected" HeaderText="Eeaters Inspected" ReadOnly="True"></asp:BoundField>
<asp:BoundField DataField="StreedFood" HeaderText="Streed Food" ReadOnly="True" HtmlEncode="False"></asp:BoundField>
                <asp:BoundField DataField="FBOS" HeaderText="FBOS" />
                <asp:BoundField DataField="Satutory" HeaderText="Statutory Samples lifted" />
                <asp:BoundField DataField="Surveillance" HeaderText="Surveillance Samples lifted" />
             <asp:BoundField DataField="NoticeIssued" HeaderText="Notices issued" />
             <asp:BoundField DataField="Compounding" HeaderText="Compounding offence imposed" />
             <asp:BoundField DataField="ProhibitedFood" HeaderText="Qty Seized - Prohibited Foods" />
             <asp:BoundField DataField="SeizedPlastic" HeaderText="Qty Seized - Prohibited Plastic" />
             <asp:BoundField DataField="SeizedFood" HeaderText="Qty Seized - Other Foods" />
             <asp:BoundField DataField="RUCO" HeaderText="RUCO" />
             <asp:BoundField DataField="FoodCollected" HeaderText="Surplus Food Collected" />
             <asp:BoundField DataField="foodpoisoning" HeaderText="Incidence of Food Poisoning" />
<asp:BoundField DataField="FOGGING" HeaderText="Fogging"></asp:BoundField>
                <asp:BoundField DataField="Disinfection" HeaderText="Disinfection" />
                <asp:BoundField DataField="Chlorination" HeaderText="Chlorination" />
                <asp:BoundField DataField="SWAP" HeaderText="Swab" />
                <asp:BoundField DataField="Larvicidal" HeaderText="Larvicidal Spary" />
                <asp:BoundField DataField="KitchenChecked" HeaderText="Kitchen Checked" />
                <asp:BoundField DataField="MP" HeaderText="Smear For MP" />
                <asp:BoundField DataField="SELFREPORTED" HeaderText="Self Reported" />
                <asp:BoundField DataField="TotalCases" HeaderText="Total Cases under scheme" />
                <asp:BoundField DataField="PreAuthRaised" HeaderText="Pre Auth raised" />
                <asp:BoundField DataField="PreAuthClaimed" HeaderText="Pre Auth Claimed" />
                <asp:BoundField DataField="PatientwantedAYUSH" HeaderText="Patient wanted AYUSH Treatement" />
                <asp:BoundField DataField="UnderYOGA" HeaderText="Under Yoga" />
                <asp:BoundField DataField="UpdatedDateTime" DataFormatString="{0:dd MMM yyyy}" HeaderText="Entered Date" HtmlEncode="False" ReadOnly="True" SortExpression="ClosedDate" />
            </Columns>
        </asp:GridView>

            </div>
        <br /><br /><br /><br />
</td></tr>



</asp:Content>

