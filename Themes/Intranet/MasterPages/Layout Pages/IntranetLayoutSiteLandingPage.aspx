﻿<%@ Page language="C#"   Inherits="Microsoft.SharePoint.Publishing.PublishingLayoutPage,Microsoft.SharePoint.Publishing,Version=14.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" meta:progid="SharePoint.WebPartPage.Document" %>
<%@ Register Tagprefix="SharePointWebControls" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="PublishingNavigation" Namespace="Microsoft.SharePoint.Publishing.Navigation" Assembly="Microsoft.SharePoint.Publishing, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="CustomControls" Namespace="WET.Theme.intranet.WebControls" Assembly="WET.Theme.Intranet, Version=1.0.0.0, Culture=neutral, PublicKeyToken=04a860f987069351" %>
<asp:Content ContentPlaceholderID="PlaceHolderCSS1" runat="server">     
    <SharePointWebControls:UIVersionedContent ID="UIVersionedContent2" UIVersion="4" runat="server">
		<ContentTemplate>
			<SharePointWebControls:CssRegistration name="<% $SPUrl:~sitecollection/Style Library/~language/Core Styles/page-layouts-21.css %>" runat="server"/>
			<PublishingWebControls:EditModePanel ID="EditModePanel1" runat="server">
				<!-- Styles for edit mode only-->
				<SharePointWebControls:CssRegistration ID="CssRegistration2" name="<% $SPUrl:~sitecollection/Style Library/~language/Core Styles/edit-mode-21.css %>"
					After="<% $SPUrl:~sitecollection/Style Library/~language/Core Styles/page-layouts-21.css %>" runat="server"/>
			</PublishingWebControls:EditModePanel>
		</ContentTemplate>
	</SharePointWebControls:UIVersionedContent>
</asp:Content>

<asp:Content ContentPlaceholderID="PlaceHolderPageTitle" runat="server">
	<SharePointWebControls:FieldValue id="PageTitle" FieldName="Title" runat="server"/>
</asp:Content>

<asp:Content ContentPlaceholderID="PlaceHolderPageTitleInTitleArea" runat="server">
    <style>
    #gcwu-bc {
        display:none !important;
    }
    #wb-cont {
        display:none !important;
    }
</style>
	<SharePointWebControls:FieldValue id="PageTitleInTitleArea" FieldName="Title" runat="server"/>
</asp:Content>

<asp:Content ContentPlaceholderID="PlaceHolderBodyLeftBorder" runat="server">
    <div id="wb-body">
</asp:Content>

<asp:Content ContentPlaceholderID="PlaceHolderLeftNavBar" runat="server"/>

<asp:Content ContentPlaceholderID="PlaceHolderMain" runat="server">
    <div id="cont" class="center">
        <div class="span-2">
            <WebPartPages:WebPartZone runat="server" id="WebPartZoneTopLeft" Title="Top Left">
            </WebPartPages:WebPartZone>
        </div>
        <div class="span-6">
            <WebPartPages:WebPartZone runat="server" id="WebPartZoneTopRight" Title="Top Right">
            </WebPartPages:WebPartZone>
        </div>
        <div class="span-3">
            <WebPartPages:WebPartZone runat="server" id="WebPartZoneLeftColumn" Title="Left Column">
            </WebPartPages:WebPartZone>
        </div>
        <div class="span-3">
            <WebPartPages:WebPartZone runat="server" id="WebPartZoneCenterColumn" Title="Center Column">
            </WebPartPages:WebPartZone>
        </div>
        <div class="span-2">
            <WebPartPages:WebPartZone runat="server" id="WebPartZoneRightColumn" Title="Right Column">
            </WebPartPages:WebPartZone>
        </div>
        <div class="clear"></div>
        <div class="span-8">
            <WebPartPages:SPProxyWebPartManager runat="server" id="ProxyWebPartManager"></WebPartPages:SPProxyWebPartManager>
            <PublishingWebControls:RichHtmlField FieldName="PublishingPageContent" HasInitialFocus="True" MinimumEditHeight="400px" runat="server"></PublishingWebControls:RichHtmlField>
	        <PublishingWebControls:editmodepanel runat="server" id="editmodepanel1">
			    <!-- Add field controls here to bind custom metadata viewable and editable in edit mode only.-->
			    <table width="100%" cellpadding="10" cellspacing="0" class="editModePanel">
				    <tr>
					    <td>
						    <SharePointWebControls:TextField runat="server" id="TitleField" FieldName="Title" DisplaySize="100" />
					    </td>
				    </tr>
                    <tr>
				        <td>
				            <SharePointWebControls:NoteField FieldName="dc.description" DisplaySize="100" runat="server"></SharePointWebControls:NoteField>
				        </td>
			        </tr>
			        <tr>
				        <td>
				            <SharePointWebControls:NoteField FieldName="meta_keywords" DisplaySize="100" runat="server"></SharePointWebControls:NoteField>
				        </td>
			        </tr>
			        <tr>
				        <td>
				            <SharePointWebControls:NoteField FieldName="dc.subject" DisplaySize="100" runat="server"></SharePointWebControls:NoteField>
				        </td>
			        </tr>
                    <!-- BEGIN - Custom Metadata Fields Below here -->
				
                    <!-- END - Custom Metadata Fields Below here -->
			    </table>
		    </PublishingWebControls:editmodepanel>
        </div>
    </div>
</asp:Content>

<asp:Content ContentPlaceholderID="PlaceHolderAdditionalPageHead" runat="server"> 
	<CustomControls:PageMetadata runat="server"></CustomControls:PageMetadata>
</asp:Content>
<asp:Content ContentPlaceholderID="PlaceHolderLastModifiedDate" runat="server"> 
	<CustomControls:LastModifiedDate runat="server"></CustomControls:LastModifiedDate>
</asp:Content>
