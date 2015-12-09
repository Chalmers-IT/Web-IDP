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

    <div class="loginTitle">
        <asp:Label Text="<%$ Resources:CommonResources, FormsSignInHeader%>" runat="server" />
    </div>
    <div class="login">
        <div class="username">
            <div class="input">
                <asp:TextBox runat="server" ID="UsernameTextBox" autocomplete="off" 
                             placeholder="<%$ Resources:CommonResources, UsernameLabel%>"></asp:TextBox>            
            </div>
            <div class="TextColorSecondary TextSizeSmall">
                <!--- <appro>
                <asp:Label Text="<%$ Resources:CommonResources, UsernameExample%>" runat="server" />
                --->
            </div>
        </div>
        <div class="password">
            <div class="input">
                <asp:TextBox runat="server" ID="PasswordTextBox" TextMode="Password" autocomplete="off"
                             placeholder="<%$ Resources:CommonResources, PasswordLabel%>"></asp:TextBox>
            </div>
        </div>
        <div>
            <div class="TextSizeSmall TextColorError">
                <asp:Label ID="ErrorTextLabel" runat="server" Text="" Visible="False"></asp:Label>
            </div>
        </div>
        <div>
            <div class="RightAlign GroupXLargeMargin">
                <asp:Button ID="SubmitButton" runat="server" Text="<%$ Resources:CommonResources, FormsSignInButtonText%>" OnClientClick="return AuthIntegrated(this);" OnClick="SubmitButton_Click" CssClass="Resizable"/>
            </div>
        </div>
    </div>
</asp:Content>
