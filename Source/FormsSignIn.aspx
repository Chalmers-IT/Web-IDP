<%@ Page Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true"  ValidateRequest="false"
    CodeFile="FormsSignIn.aspx.cs" Inherits="FormsSignIn" Title="<%$ Resources:CommonResources, FormsSignInPageTitle%>"
    EnableViewState="false" runat="server"%>
<%@ OutputCache Location="None" %>

<asp:Content ID="FormsSignInContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script language="JavaScript"><!--
    //xmlhttp = new XMLHttpRequest();
    //xmlhttp.open("GET","/test.aspx",true);
    //xmlhttp.send(null);
    function AuthIntegrated(target)
    {	var form = target.form;
	// see if username is non-empty
	if (form.elements["<%=UsernameTextBox.ClientID%>"].value) return true;
	// if it wasn't, then jump to integrated logon
	self.location.replace(form.action.replace("\/adfs\/ls\/","/adfs/ls/auth/integrated/"));
	return false;	// cancel submit
    }
    //-->
    </script>

    <div class="GroupXLargeMargin"><asp:Label Text="<%$ Resources:CommonResources, FormsSignInHeader%>" runat="server" /></div>
    <table class="UsernamePasswordTable">
        <tr>
            <td>
                <span class="Label"><asp:Label Text="<%$ Resources:CommonResources, UsernameLabel%>" runat="server" /></span>
            </td>
            <td>
                <asp:TextBox runat="server" ID="UsernameTextBox" autocomplete="off"></asp:TextBox>            
            </td>
            <td class="TextColorSecondary TextSizeSmall">
                <!--- <appro>
                <asp:Label Text="<%$ Resources:CommonResources, UsernameExample%>" runat="server" />
                --->
            </td>
        </tr>
        <tr>
            <td>
                <span class="Label"><asp:Label Text="<%$ Resources:CommonResources, PasswordLabel%>" runat="server" /></span>
            </td>
            <td>
                <asp:TextBox runat="server" ID="PasswordTextBox" TextMode="Password" autocomplete="off"></asp:TextBox>            
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td></td>
            <td colspan="2" class="TextSizeSmall TextColorError">
                <asp:Label ID="ErrorTextLabel" runat="server" Text="" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <div class="RightAlign GroupXLargeMargin">
                    <asp:Button ID="SubmitButton" runat="server" Text="<%$ Resources:CommonResources, FormsSignInButtonText%>" OnClientClick="return AuthIntegrated(this);" OnClick="SubmitButton_Click" CssClass="Resizable"/>
                </div>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
