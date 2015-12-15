//------------------------------------------------------------
// Copyright (c) Microsoft Corporation.  All rights reserved.
//------------------------------------------------------------

using System;
using System.Web.UI;

public partial class MyMasterPage : Microsoft.IdentityServer.Web.UI.MasterPage
{
    protected void Page_Load( object sender, EventArgs e )
    {
        //PageTitleLabel.Text = Page.Title;
        STSLabel.Text = FriendlyName;
    }
}
