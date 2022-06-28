<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" Title="Login Page" %>
<%@ MasterType VirtualPath="~/MasterPage.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 155px;
            text-align: justify;
        }
        .style2
        {
            width: 149px;
        }
        #passScreen
        {
            width: 469px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    &nbsp;<br />
<br />
<br />
<br />
<br />
<table width="500px" align="center" cellpadding="2" cellspacing="5">
<tr><td colspan="2" style="text-align: center">
    <asp:Label ID="Label1" runat="server" Text="Login Page" Font-Bold="True" 
        Font-Names="Verdana" ForeColor="#663300"></asp:Label></td></tr>
<tr><td class="style1">
    <asp:Label ID="Label2" runat="server" Text="User ID" Font-Bold="True" 
        Font-Names="Verdana" ForeColor="#996633"></asp:Label></td><td>
    <asp:TextBox ID="uid" runat="server" Width="170px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="uidErr" runat="server" ControlToValidate="uid" 
            ErrorMessage="Enter User ID"></asp:RequiredFieldValidator>
</td></tr>
<tr><td class="style1">
    <asp:Label ID="Label3" runat="server" Text="Password" Font-Bold="True" 
        Font-Names="Verdana" ForeColor="#996600"></asp:Label></td><td>
<asp:TextBox ID="pw" runat="server" TextMode="Password" Width="170px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="passErr" runat="server" ControlToValidate="pw" 
            ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
</td></tr>
<tr><td colspan="2" style="text-align: center">


    <asp:Button ID="login" runat="server" Text="Submit" BackColor="#669999" 
        Font-Bold="True" Font-Names="Verdana" ForeColor="Blue" 
        onclick="login_Click" />
    
          
        </td></tr>
        <tr><td colspan="2">
            <asp:Label ID="Errmsg" runat="server" Font-Bold="True" Font-Names="Verdana" 
                Font-Size="Small" ForeColor="Red"></asp:Label></td></tr>
                <tr><td colspan="2">&nbsp;</td></tr>
                <tr><td colspan="2">
                    <asp:LinkButton ID="changePass" runat="server" onclick="changePass_Click" 
                        ValidationGroup="cpass">Change Password</asp:LinkButton>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="cMsg" runat="server" Font-Bold="True" Font-Size="Small" 
                        ForeColor="#009900"></asp:Label>
                    </td></tr>
                    <tr><td colspan="2" align="left">
                    <table cellpadding="2" cellspacing="2" runat="server" id="passScreen">
                    <tr><td class="style2">User ID</td><td>
                        <asp:TextBox ID="uidC" runat="server" ValidationGroup="cpass"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="uidC" ErrorMessage="User ID" ValidationGroup="cpass"></asp:RequiredFieldValidator>
                        </td></tr>
                    <tr><td class="style2">Password</td><td>
                        <asp:TextBox ID="passC" runat="server" ValidationGroup="cpass" 
                            TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="passC" ErrorMessage="Current Password" 
                            ValidationGroup="cpass"></asp:RequiredFieldValidator>
                        </td></tr>
                    <tr><td class="style2">New Password</td><td>
                        <asp:TextBox ID="npassC" runat="server" ValidationGroup="cpass" 
                            TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="npassC" ErrorMessage="New Password" ValidationGroup="cpass"></asp:RequiredFieldValidator>
                        </td></tr>
                        <tr><td colspan="2" align="center">
                            <asp:Button ID="passSub" runat="server" Text="Change Password" 
                                ValidationGroup="cpass" onclick="passSub_Click" /></td></tr>
                    </table>
                    
                    </td></tr>
                    
</table>
<br />
<br />
<br />
<br />
<br />
</div>
</asp:Content>

