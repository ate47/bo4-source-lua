-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "x64:2c2f840fd2528321" ) --[[ @ 0]]
require( "x64:396b29a3176ada0f" ) --[[ @ 0]]
require( "x64:5ebe1d17ed0d7b9" ) --[[ @ 0]]
require( "ui/uieditor/widgets/fileshare/fullscreenpopup/fullscreenpopuptemplate" ) --[[ @ 0]]
require( "ui/uieditor/widgets/footer/fe_leftcontainer_notlobby" ) --[[ @ 0]]
require( "ui/uieditor/widgets/startmenu/options/startmenuoptionsmainframe" ) --[[ @ 0]]
require( "x64:25498fd235ed9285" ) --[[ @ 0]]
require( "x64:48a2bfd7fd77a149" ) --[[ @ 0]]

CoD.DemoFileshareUpload = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.DemoFileshareUpload = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "DemoFileshareUpload", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	if IsPC() then
		SetGlobalModelValueArg( "fileshareRoot.uploadTask.state", Enum[@"filesharetaskuistate"][@"fileshare_task_ui_idle"] ) --[[ @ 0]]
		CoD.FileshareUtility.UpdateCurrentQuota( f1_arg0 ) --[[ @ 0]]
		CoD.BaseUtility.InitControllerModel( f1_arg0, "DemoTitleText" ) --[[ @ 0]]
		CoD.BaseUtility.InitControllerModel( f1_arg0, "DemoDescText" ) --[[ @ 0]]
	else
		SetGlobalModelValueArg( "fileshareRoot.uploadTask.state", Enum[@"filesharetaskuistate"][@"fileshare_task_ui_idle"] ) --[[ @ 0]]
		CoD.FileshareUtility.UpdateCurrentQuota( f1_arg0 ) --[[ @ 0]]
	end
	self:setClass( CoD.DemoFileshareUpload ) --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_local1:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	local emptyFocusableNoCursorUpdate = nil --[[ @ 0]]
	
	emptyFocusableNoCursorUpdate = CoD.emptyFocusableNoCursorUpdate.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( emptyFocusableNoCursorUpdate ) --[[ @ 0]]
	self.emptyFocusableNoCursorUpdate = emptyFocusableNoCursorUpdate --[[ @ 0]]
	
	local FullscreenPopupTemplate = CoD.FullscreenPopupTemplate.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	FullscreenPopupTemplate:mergeStateConditions( {
		{
			stateName = "WorkingState",
			condition = function ( menu, element, event )
				return CoD.FileshareUtility.FileshareIsUploading()
			end
		},
		{
			stateName = "ErrorState",
			condition = function ( menu, element, event )
				return CoD.FileshareUtility.FileshareIsUploadingInError()
			end
		}
	} ) --[[ @ 0]]
	local TitleText = FullscreenPopupTemplate --[[ @ 0]]
	local TitleDescription = FullscreenPopupTemplate.subscribeToModel --[[ @ 0]]
	local LblPermissions = Engine[@"getglobalmodel"]() --[[ @ 0]]
	TitleDescription( TitleText, LblPermissions["fileshareRoot.uploadTask.state"], function ( f4_arg0 )
		f1_local1:updateElementState( FullscreenPopupTemplate, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f4_arg0:get(),
			modelName = "fileshareRoot.uploadTask.state"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	FullscreenPopupTemplate.Subtitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_29503CD034274830" ) ) --[[ @ 0]]
	FullscreenPopupTemplate.ErrorSubtitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_39C62D3C1C35DC01" ) ) --[[ @ 0]]
	FullscreenPopupTemplate.WorkingTitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_5C76223999D97EC9" ) ) --[[ @ 0]]
	FullscreenPopupTemplate.Title:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_34FBFD6B591E8B59" ) ) --[[ @ 0]]
	FullscreenPopupTemplate.DoneTitle:setText( LocalizeToUpperString( @"menu/new" ) ) --[[ @ 0]]
	self:addElement( FullscreenPopupTemplate ) --[[ @ 0]]
	self.FullscreenPopupTemplate = FullscreenPopupTemplate --[[ @ 0]]
	
	TitleDescription = LUI.UIText.new( 0.5, 0.5, -273, 829, 0.5, 0.5, -1, 20 ) --[[ @ 0]]
	TitleDescription:setRGB( ColorSet.T8__OFF__GRAY.r, ColorSet.T8__OFF__GRAY.g, ColorSet.T8__OFF__GRAY.b ) --[[ @ 0]]
	TitleDescription:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/description" ) ) --[[ @ 0]]
	TitleDescription:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	TitleDescription:setLetterSpacing( 2 ) --[[ @ 0]]
	TitleDescription:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	TitleDescription:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( TitleDescription ) --[[ @ 0]]
	self.TitleDescription = TitleDescription --[[ @ 0]]
	
	TitleText = LUI.UIText.new( 0.5, 0.5, -273, 829, 0.5, 0.5, -94, -73 ) --[[ @ 0]]
	TitleText:setRGB( ColorSet.T8__OFF__GRAY.r, ColorSet.T8__OFF__GRAY.g, ColorSet.T8__OFF__GRAY.b ) --[[ @ 0]]
	TitleText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/title" ) ) --[[ @ 0]]
	TitleText:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	TitleText:setLetterSpacing( 2 ) --[[ @ 0]]
	TitleText:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	TitleText:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( TitleText ) --[[ @ 0]]
	self.TitleText = TitleText --[[ @ 0]]
	
	LblPermissions = LUI.UIText.new( 0.5, 0.5, -267, -217, 0.5, 0.5, 88, 126 ) --[[ @ 0]]
	LblPermissions:setAlpha( 0 ) --[[ @ 0]]
	LblPermissions:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/fileshare_permissions" ) ) --[[ @ 0]]
	LblPermissions:setTTF( "default" ) --[[ @ 0]]
	LblPermissions:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	LblPermissions:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( LblPermissions ) --[[ @ 0]]
	self.LblPermissions = LblPermissions --[[ @ 0]]
	
	local AllowDownload0 = CoD.AllowDownload.new( f1_local1, f1_arg0, 0.5, 0.5, -304, -274, 0.5, 0.5, 136, 164 ) --[[ @ 0]]
	AllowDownload0:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( AllowDownload0 ) --[[ @ 0]]
	self.AllowDownload0 = AllowDownload0 --[[ @ 0]]
	
	local leftButtonBar = CoD.fe_LeftContainer_NOTLobby.new( f1_local1, f1_arg0, 0.5, 0.5, -350, 298, 0.5, 0.5, 188, 236 ) --[[ @ 0]]
	self:addElement( leftButtonBar ) --[[ @ 0]]
	self.leftButtonBar = leftButtonBar --[[ @ 0]]
	
	local SlotsUsedWidget = CoD.SlotsUsedWidget.new( f1_local1, f1_arg0, 0.5, 0.5, 181, 711, 0.5, 0.5, 83, 176 ) --[[ @ 0]]
	SlotsUsedWidget:mergeStateConditions( {
		{
			stateName = "Warning",
			condition = function ( menu, element, event )
				return CoD.FileshareUtility.IsLowOnSlots( f1_arg0 ) and not CoD.FileshareUtility.AreSlotsFull( f1_arg0 )
			end
		},
		{
			stateName = "SlotsFull",
			condition = function ( menu, element, event )
				return CoD.FileshareUtility.AreSlotsFull( f1_arg0 )
			end
		}
	} ) --[[ @ 0]]
	SlotsUsedWidget.Title:setText( LocalizeToUpperString( @"hash_50E192601D65F99E" ) ) --[[ @ 0]]
	SlotsUsedWidget:subscribeToGlobalModel( f1_arg0, "FileshareRoot", "currentCategoryQuota", function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			SlotsUsedWidget.Total:setText( f7_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	SlotsUsedWidget:subscribeToGlobalModel( f1_arg0, "FileshareRoot", "currentCategoryQuotaUsed", function ( model )
		local f8_local0 = model:get() --[[ @ 0]]
		if f8_local0 ~= nil then
			SlotsUsedWidget.Used:setText( f8_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	SlotsUsedWidget:subscribeToGlobalModel( f1_arg0, "FileshareRoot", "currentCategoryQuota", function ( model )
		local f9_local0 = model:get() --[[ @ 0]]
		if f9_local0 ~= nil then
			SlotsUsedWidget.totalBar:setShaderVector( 1, SetVectorComponent( 2, 1, CoD.GetVectorComponentFromString( f9_local0, 1 ), CoD.GetVectorComponentFromString( f9_local0, 2 ), CoD.GetVectorComponentFromString( f9_local0, 3 ), CoD.GetVectorComponentFromString( f9_local0, 4 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	SlotsUsedWidget:subscribeToGlobalModel( f1_arg0, "FileshareRoot", "currentCategoryQuota", function ( model )
		local f10_local0 = model:get() --[[ @ 0]]
		if f10_local0 ~= nil then
			SlotsUsedWidget.usedBar:setShaderVector( 1, SetVectorComponent( 2, 1, CoD.GetVectorComponentFromString( f10_local0, 1 ), CoD.GetVectorComponentFromString( f10_local0, 2 ), CoD.GetVectorComponentFromString( f10_local0, 3 ), CoD.GetVectorComponentFromString( f10_local0, 4 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	SlotsUsedWidget:subscribeToGlobalModel( f1_arg0, "FileshareRoot", "currentCategoryQuotaUsedPercent", function ( model )
		local f11_local0 = model:get() --[[ @ 0]]
		if f11_local0 ~= nil then
			SlotsUsedWidget.usedBar:setShaderVector( 2, SetVectorComponent( 4, 1, SetVectorComponent( 3, 0, SetVectorComponent( 1, 0, SwapVectorComponents( 1, 2, CoD.GetVectorComponentFromString( f11_local0, 1 ), CoD.GetVectorComponentFromString( f11_local0, 2 ), CoD.GetVectorComponentFromString( f11_local0, 3 ), CoD.GetVectorComponentFromString( f11_local0, 4 ) ) ) ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	SlotsUsedWidget:subscribeToGlobalModel( f1_arg0, "GlobalModel", "FileshareRoot.ready", function ( model )
		local f12_local0 = SlotsUsedWidget --[[ @ 0]]
		CoD.FileshareUtility.UpdateCurrentQuota( f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( SlotsUsedWidget ) --[[ @ 0]]
	self.SlotsUsedWidget = SlotsUsedWidget --[[ @ 0]]
	
	local GametypeOnMapName = LUI.UIText.new( 0.5, 0.5, -749, -289, 0.5, 0.5, 150, 171 ) --[[ @ 0]]
	GametypeOnMapName:setRGB( ColorSet.T8__OFF__GRAY.r, ColorSet.T8__OFF__GRAY.g, ColorSet.T8__OFF__GRAY.b ) --[[ @ 0]]
	GametypeOnMapName:setText( GetGameModeOnMapName() ) --[[ @ 0]]
	GametypeOnMapName:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	GametypeOnMapName:setLetterSpacing( 2 ) --[[ @ 0]]
	GametypeOnMapName:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	GametypeOnMapName:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( GametypeOnMapName ) --[[ @ 0]]
	self.GametypeOnMapName = GametypeOnMapName --[[ @ 0]]
	
	local Thumbnail = LUI.UIElement.new( 0.5, 0.5, -742, -296, 0.5, 0.5, -126.5, 134.5 ) --[[ @ 0]]
	Thumbnail:subscribeToGlobalModel( f1_arg0, "Demo", "savePopupThumbnailFileId", function ( model )
		local f13_local0 = model:get() --[[ @ 0]]
		if f13_local0 ~= nil then
			Thumbnail:setupImageViewer( GetImageViewerParams( "UI_SCREENSHOT_TYPE_THUMBNAIL", f13_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Thumbnail ) --[[ @ 0]]
	self.Thumbnail = Thumbnail --[[ @ 0]]
	
	local ThumbnailFrame = CoD.StartMenuOptionsMainFrame.new( f1_local1, f1_arg0, 0.5, 0.5, -749, -289, 0.5, 0.5, -133, 141 ) --[[ @ 0]]
	ThumbnailFrame:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	ThumbnailFrame:setAlpha( 0.04 ) --[[ @ 0]]
	self:addElement( ThumbnailFrame ) --[[ @ 0]]
	self.ThumbnailFrame = ThumbnailFrame --[[ @ 0]]
	
	local ButtonSave2 = CoD.EmblemOptionsButton.new( f1_local1, f1_arg0, 0.5, 0.5, -273, 127, 0.5, 0.5, 113, 173 ) --[[ @ 0]]
	ButtonSave2.Button.Title:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_38BF98F9DA1FC248" ) ) --[[ @ 0]]
	local f1_local14 = ButtonSave2 --[[ @ 0]]
	local f1_local15 = ButtonSave2.subscribeToModel --[[ @ 0]]
	local TitleTextBox = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local15( f1_local14, TitleTextBox["fileshareRoot.uploadTask.state"], function ( f14_arg0, f14_arg1 )
		CoD.Menu.UpdateButtonShownState( f14_arg1, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	ButtonSave2:registerEventHandler( "gain_focus", function ( element, event )
		local f15_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f15_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f15_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f15_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( ButtonSave2, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ENTER", function ( element, menu, controller, model )
		if not CoD.FileshareUtility.FileshareIsUploading() and not CoD.FileshareUtility.ShouldDisablePrivateUpload( controller ) then
			CoD.FileshareUtility.FilesharePrivateUpload( controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not CoD.FileshareUtility.FileshareIsUploading() and not CoD.FileshareUtility.ShouldDisablePrivateUpload( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ENTER" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( ButtonSave2 ) --[[ @ 0]]
	self.ButtonSave2 = ButtonSave2 --[[ @ 0]]
	
	f1_local15 = nil --[[ @ 0]]
	f1_local15 = LUI.UIElement.createFake() --[[ @ 0]]
	self.ButtonDescription2 = f1_local15 --[[ @ 0]]
	f1_local14 = nil --[[ @ 0]]
	f1_local14 = LUI.UIElement.createFake() --[[ @ 0]]
	self.ButtonTitle2 = f1_local14 --[[ @ 0]]
	TitleTextBox = nil --[[ @ 0]]
	
	TitleTextBox = CoD.DemoRenameTextBox.new( f1_local1, f1_arg0, 0.5, 0.5, -280, 132, 0.5, 0.5, -68, -8 ) --[[ @ 0]]
	TitleTextBox:mergeStateConditions( {
		{
			stateName = "InputState",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsControllerModelValueNonEmptyString( f1_arg0, "DemoTitleText" )
			end
		}
	} ) --[[ @ 0]]
	local f1_local17 = TitleTextBox --[[ @ 0]]
	local DescTextBox = TitleTextBox.subscribeToModel --[[ @ 0]]
	local f1_local19 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	DescTextBox( f1_local17, f1_local19.DemoTitleText, function ( f19_arg0 )
		f1_local1:updateElementState( TitleTextBox, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f19_arg0:get(),
			modelName = "DemoTitleText"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	TitleTextBox:subscribeToGlobalModel( f1_arg0, "Demo", "savePopupTitle", function ( model )
		local f20_local0 = model:get() --[[ @ 0]]
		if f20_local0 ~= nil then
			TitleTextBox.RenameText:setText( CoD.BaseUtility.LocalizeIfXHash( f20_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( TitleTextBox, "childFocusLost", function ( element )
		if CoD.ModelUtility.IsControllerModelValueNonEmptyString( f1_arg0, "DemoTitleText" ) and CoD.FileshareUtility.IsCurrentCategoryEqualToValue( "clip_private" ) then
			SetElementState( self, element, f1_arg0, "DefaultState" ) --[[ @ 0]]
			CoD.DemoUtility.SaveFileProperty( element, Enum[@"demokeyboardmodes"][@"demo_keyboard_clip_name_ingame"] ) --[[ @ 0]]
		elseif CoD.ModelUtility.IsControllerModelValueNonEmptyString( f1_arg0, "DemoTitleText" ) and CoD.FileshareUtility.IsCurrentCategoryEqualToValue( "screenshot_private" ) then
			SetElementState( self, element, f1_arg0, "DefaultState" ) --[[ @ 0]]
			CoD.DemoUtility.SaveFileProperty( element, Enum[@"demokeyboardmodes"][@"demo_keyboard_screenshot_name_ingame"] ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( TitleTextBox, "close", function ( element )
		if IsPC() then
			SetControllerModelValue( f1_arg0, "DemoTitleText", "" ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( TitleTextBox ) --[[ @ 0]]
	self.TitleTextBox = TitleTextBox --[[ @ 0]]
	
	DescTextBox = nil --[[ @ 0]]
	
	DescTextBox = CoD.DemoRenameTextBox.new( f1_local1, f1_arg0, 0.5, 0.5, -280, 132, 0.5, 0.5, 23, 83 ) --[[ @ 0]]
	DescTextBox:mergeStateConditions( {
		{
			stateName = "InputState",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsControllerModelValueNonEmptyString( f1_arg0, "DemoDescText" )
			end
		}
	} ) --[[ @ 0]]
	f1_local19 = DescTextBox --[[ @ 0]]
	f1_local17 = DescTextBox.subscribeToModel --[[ @ 0]]
	local f1_local20 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	f1_local17( f1_local19, f1_local20.DemoDescText, function ( f24_arg0 )
		f1_local1:updateElementState( DescTextBox, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f24_arg0:get(),
			modelName = "DemoDescText"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	DescTextBox:subscribeToGlobalModel( f1_arg0, "Demo", "savePopupDescription", function ( model )
		local f25_local0 = model:get() --[[ @ 0]]
		if f25_local0 ~= nil then
			DescTextBox.RenameText:setText( CoD.BaseUtility.LocalizeIfXHash( f25_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( DescTextBox, "childFocusLost", function ( element )
		if CoD.ModelUtility.IsControllerModelValueNonEmptyString( f1_arg0, "DemoDescText" ) and CoD.FileshareUtility.IsCurrentCategoryEqualToValue( "clip_private" ) then
			SetElementState( self, element, f1_arg0, "DefaultState" ) --[[ @ 0]]
			CoD.DemoUtility.SaveFileProperty( element, Enum[@"demokeyboardmodes"][@"demo_keyboard_clip_desc_ingame"] ) --[[ @ 0]]
		elseif CoD.ModelUtility.IsControllerModelValueNonEmptyString( f1_arg0, "DemoDescText" ) and CoD.FileshareUtility.IsCurrentCategoryEqualToValue( "screenshot_private" ) then
			SetElementState( self, element, f1_arg0, "DefaultState" ) --[[ @ 0]]
			CoD.DemoUtility.SaveFileProperty( element, Enum[@"demokeyboardmodes"][@"demo_keyboard_screenshot_desc_ingame"] ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( DescTextBox, "close", function ( element )
		if IsPC() then
			SetControllerModelValue( f1_arg0, "DemoDescText", "" ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( DescTextBox ) --[[ @ 0]]
	self.DescTextBox = DescTextBox --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Working",
			condition = function ( menu, element, event )
				return CoD.FileshareUtility.FileshareIsUploading()
			end
		},
		{
			stateName = "Fetching",
			condition = function ( menu, element, event )
				return not CoD.FileshareUtility.FileshareIsReadyToUpload( f1_arg0 )
			end
		}
	} ) --[[ @ 0]]
	f1_local19 = self --[[ @ 0]]
	f1_local17 = self.subscribeToModel --[[ @ 0]]
	f1_local20 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local17( f1_local19, f1_local20["fileshareRoot.uploadTask.state"], function ( f30_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f30_arg0:get(),
			modelName = "fileshareRoot.uploadTask.state"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:registerEventHandler( "occlusion_change", function ( self, event )
		local f31_local0 = nil --[[ @ 0]]
		if self.OcclusionChange then
			f31_local0 = self:OcclusionChange( event ) --[[ @ 0]]
		elseif self.super.OcclusionChange then
			f31_local0 = self.super:OcclusionChange( event ) --[[ @ 0]]
		end
		UpdateSelfState( self, f1_arg0 ) --[[ @ 0]]
		if not f31_local0 then
			f31_local0 = self:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f31_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], nil, function ( element, menu, controller, model )
		CoD.DemoUtility.UploadClip_GoBack( self, element, controller, menu ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], @"menu/back", nil, nil ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_xby_pstriangle"], nil, function ( element, menu, controller, model )
		if CoD.FileshareUtility.AreSlotsFull( controller ) then
			CoD.FileshareUtility.OpenDeleteFileshareFile( self, controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if CoD.FileshareUtility.AreSlotsFull( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xby_pstriangle"], @"hash_5A9A7F1FDCC1803E", nil, nil ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "setState", function ( element, controller, f36_arg2, f36_arg3, f36_arg4 )
		if IsMenuInState( f1_local1, "SlotsFull" ) then
			SetFocusToElement( self, "FullscreenPopupTemplate", controller ) --[[ @ 0]]
		elseif IsMenuInState( f1_local1, "DefaultState" ) then
			SetFocusToElement( self, "GunsmithInputButton", controller ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:subscribeToGlobalModel( f1_arg0, "FileshareRoot", "ready", function ( model )
		local f37_local0 = self --[[ @ 0]]
		if CoD.FileshareUtility.FileshareIsReadyToUpload( f1_arg0 ) and not FileshareShowcaseSlotsAvailable( f1_arg0 ) then
			SetState( self, "SlotsFull", f1_arg0 ) --[[ @ 0]]
		elseif CoD.FileshareUtility.FileshareIsReadyToUpload( f1_arg0 ) and FileshareShowcaseSlotsAvailable( f1_arg0 ) then
			SetState( self, "DefaultState", f1_arg0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:subscribeToGlobalModel( f1_arg0, "GlobalModel", "fileshareRoot.uploadTask.state", function ( model )
		local f38_local0 = self --[[ @ 0]]
		if CoD.ModelUtility.IsGlobalModelValueEqualToEnum( "fileshareRoot.uploadTask.state", Enum[@"filesharetaskuistate"][@"fileshare_task_ui_done"] ) then
			CoD.DemoUtility.UploadClip_GoBack( self, f38_local0, f1_arg0, f1_local1 ) --[[ @ 0]]
			CoD.FileshareUtility.ShowToast( f1_arg0, CoD.FileshareUtility.ToastTypes.UPLOAD ) --[[ @ 0]]
		elseif CoD.ModelUtility.IsGlobalModelValueEqualToEnum( "fileshareRoot.uploadTask.state", Enum[@"filesharetaskuistate"][@"fileshare_task_ui_error"] ) then
			CoD.FileshareUtility.ShowSimpleToast( f1_arg0, CoD.FileshareUtility.ToastTypes.ERROR ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	if CoD.isPC then
		emptyFocusableNoCursorUpdate.id = "emptyFocusableNoCursorUpdate" --[[ @ 0]]
	end
	FullscreenPopupTemplate.id = "FullscreenPopupTemplate" --[[ @ 0]]
	leftButtonBar:setModel( self.buttonModel, f1_arg0 ) --[[ @ 0]]
	if CoD.isPC then
		leftButtonBar.id = "leftButtonBar" --[[ @ 0]]
	end
	ButtonSave2.id = "ButtonSave2" --[[ @ 0]]
	f1_local15.id = "ButtonDescription2" --[[ @ 0]]
	f1_local14.id = "ButtonTitle2" --[[ @ 0]]
	if CoD.isPC then
		TitleTextBox.id = "TitleTextBox" --[[ @ 0]]
	end
	if CoD.isPC then
		DescTextBox.id = "DescTextBox" --[[ @ 0]]
	end
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	self.__defaultFocus = FullscreenPopupTemplate --[[ @ 0]]
	if CoD.isPC and (IsKeyboard( f1_arg0 ) or self.ignoreCursor) then
		self:restoreState( f1_arg0 ) --[[ @ 0]]
	end
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	f1_local17 = self --[[ @ 0]]
	f1_local17 = FullscreenPopupTemplate --[[ @ 0]]
	if IsPC() then
		CoD.PCUtility.LinkPCSmallCloseButtonToInput( f1_local1, f1_arg0, f1_local17, Enum[@"luibutton"][@"lui_key_xbb_pscircle"] ) --[[ @ 0]]
	end
	f1_local17 = SlotsUsedWidget --[[ @ 0]]
	CoD.FileshareUtility.UpdateCurrentQuota( f1_arg0 ) --[[ @ 0]]
	f1_local17 = TitleTextBox --[[ @ 0]]
	if IsPC() then
		CoD.PCUtility.SetElementEditBoxMaxChar( f1_local17, 16 ) --[[ @ 0]]
		CoD.PCUtility.MakeElementEditBoxRealtime( f1_local17, "DemoTitleText" ) --[[ @ 0]]
		CoD.PCUtility.SetupElementEditControlWithControllerModel( f1_local17, f1_arg0, f1_local1, "DemoTitleText" ) --[[ @ 0]]
	end
	f1_local17 = DescTextBox --[[ @ 0]]
	if IsPC() then
		CoD.PCUtility.SetElementEditBoxMaxChar( f1_local17, 64 ) --[[ @ 0]]
		CoD.PCUtility.MakeElementEditBoxRealtime( f1_local17, "DemoDescText" ) --[[ @ 0]]
		CoD.PCUtility.SetupElementEditControlWithControllerModel( f1_local17, f1_arg0, f1_local1, "DemoDescText" ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.DemoFileshareUpload.__resetProperties = function ( f39_arg0 )
	f39_arg0.SlotsUsedWidget:completeAnimation() --[[ @ 0]]
	f39_arg0.ThumbnailFrame:completeAnimation() --[[ @ 0]]
	f39_arg0.Thumbnail:completeAnimation() --[[ @ 0]]
	f39_arg0.GametypeOnMapName:completeAnimation() --[[ @ 0]]
	f39_arg0.ButtonSave2:completeAnimation() --[[ @ 0]]
	f39_arg0.ButtonDescription2:completeAnimation() --[[ @ 0]]
	f39_arg0.ButtonTitle2:completeAnimation() --[[ @ 0]]
	f39_arg0.TitleText:completeAnimation() --[[ @ 0]]
	f39_arg0.TitleDescription:completeAnimation() --[[ @ 0]]
	f39_arg0.TitleTextBox:completeAnimation() --[[ @ 0]]
	f39_arg0.DescTextBox:completeAnimation() --[[ @ 0]]
	f39_arg0.FullscreenPopupTemplate:completeAnimation() --[[ @ 0]]
	f39_arg0.SlotsUsedWidget:setAlpha( 1 ) --[[ @ 0]]
	f39_arg0.ThumbnailFrame:setAlpha( 0.04 ) --[[ @ 0]]
	f39_arg0.Thumbnail:setAlpha( 1 ) --[[ @ 0]]
	f39_arg0.GametypeOnMapName:setAlpha( 1 ) --[[ @ 0]]
	f39_arg0.ButtonSave2:setAlpha( 1 ) --[[ @ 0]]
	f39_arg0.ButtonDescription2:setAlpha( 1 ) --[[ @ 0]]
	f39_arg0.ButtonTitle2:setAlpha( 1 ) --[[ @ 0]]
	f39_arg0.TitleText:setAlpha( 1 ) --[[ @ 0]]
	f39_arg0.TitleDescription:setAlpha( 1 ) --[[ @ 0]]
	f39_arg0.TitleTextBox:setAlpha( 1 ) --[[ @ 0]]
	f39_arg0.DescTextBox:setAlpha( 1 ) --[[ @ 0]]
	f39_arg0.FullscreenPopupTemplate.Subtitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_29503CD034274830" ) ) --[[ @ 0]]
	f39_arg0.FullscreenPopupTemplate.WorkingTitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_5C76223999D97EC9" ) ) --[[ @ 0]]
	f39_arg0.FullscreenPopupTemplate.Title:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_34FBFD6B591E8B59" ) ) --[[ @ 0]]
	f39_arg0.FullscreenPopupTemplate.DoneTitle:setText( LocalizeToUpperString( @"menu/new" ) ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.DemoFileshareUpload.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f40_arg0, f40_arg1 )
			f40_arg0:__resetProperties() --[[ @ 0]]
			f40_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			f40_arg0.FullscreenPopupTemplate:completeAnimation() --[[ @ 0]]
			f40_arg0.clipFinished( f40_arg0.FullscreenPopupTemplate ) --[[ @ 0]]
			f40_arg0.SlotsUsedWidget:completeAnimation() --[[ @ 0]]
			f40_arg0.SlotsUsedWidget:setAlpha( 1 ) --[[ @ 0]]
			f40_arg0.clipFinished( f40_arg0.SlotsUsedWidget ) --[[ @ 0]]
			f40_arg0.GametypeOnMapName:completeAnimation() --[[ @ 0]]
			f40_arg0.GametypeOnMapName:setAlpha( 1 ) --[[ @ 0]]
			f40_arg0.clipFinished( f40_arg0.GametypeOnMapName ) --[[ @ 0]]
			f40_arg0.Thumbnail:completeAnimation() --[[ @ 0]]
			f40_arg0.Thumbnail:setAlpha( 1 ) --[[ @ 0]]
			f40_arg0.clipFinished( f40_arg0.Thumbnail ) --[[ @ 0]]
			f40_arg0.ThumbnailFrame:completeAnimation() --[[ @ 0]]
			f40_arg0.ThumbnailFrame:setAlpha( 0.04 ) --[[ @ 0]]
			f40_arg0.clipFinished( f40_arg0.ThumbnailFrame ) --[[ @ 0]]
			f40_arg0.ButtonSave2:completeAnimation() --[[ @ 0]]
			f40_arg0.ButtonSave2:setAlpha( 1 ) --[[ @ 0]]
			f40_arg0.clipFinished( f40_arg0.ButtonSave2 ) --[[ @ 0]]
			f40_arg0.ButtonDescription2:completeAnimation() --[[ @ 0]]
			f40_arg0.ButtonDescription2:setAlpha( 1 ) --[[ @ 0]]
			f40_arg0.clipFinished( f40_arg0.ButtonDescription2 ) --[[ @ 0]]
			f40_arg0.ButtonTitle2:completeAnimation() --[[ @ 0]]
			f40_arg0.ButtonTitle2:setAlpha( 1 ) --[[ @ 0]]
			f40_arg0.clipFinished( f40_arg0.ButtonTitle2 ) --[[ @ 0]]
		end
	},
	Working = {
		DefaultClip = function ( f41_arg0, f41_arg1 )
			f41_arg0:__resetProperties() --[[ @ 0]]
			f41_arg0:setupElementClipCounter( 9 ) --[[ @ 0]]
			f41_arg0.FullscreenPopupTemplate:completeAnimation() --[[ @ 0]]
			f41_arg0.clipFinished( f41_arg0.FullscreenPopupTemplate ) --[[ @ 0]]
			f41_arg0.TitleDescription:completeAnimation() --[[ @ 0]]
			f41_arg0.TitleDescription:setAlpha( 0 ) --[[ @ 0]]
			f41_arg0.clipFinished( f41_arg0.TitleDescription ) --[[ @ 0]]
			f41_arg0.TitleText:completeAnimation() --[[ @ 0]]
			f41_arg0.TitleText:setAlpha( 0 ) --[[ @ 0]]
			f41_arg0.clipFinished( f41_arg0.TitleText ) --[[ @ 0]]
			f41_arg0.SlotsUsedWidget:completeAnimation() --[[ @ 0]]
			f41_arg0.SlotsUsedWidget:setAlpha( 1 ) --[[ @ 0]]
			f41_arg0.clipFinished( f41_arg0.SlotsUsedWidget ) --[[ @ 0]]
			f41_arg0.GametypeOnMapName:completeAnimation() --[[ @ 0]]
			f41_arg0.GametypeOnMapName:setAlpha( 1 ) --[[ @ 0]]
			f41_arg0.clipFinished( f41_arg0.GametypeOnMapName ) --[[ @ 0]]
			f41_arg0.Thumbnail:completeAnimation() --[[ @ 0]]
			f41_arg0.Thumbnail:setAlpha( 1 ) --[[ @ 0]]
			f41_arg0.clipFinished( f41_arg0.Thumbnail ) --[[ @ 0]]
			f41_arg0.ButtonSave2:completeAnimation() --[[ @ 0]]
			f41_arg0.ButtonSave2:setAlpha( 0 ) --[[ @ 0]]
			f41_arg0.clipFinished( f41_arg0.ButtonSave2 ) --[[ @ 0]]
			f41_arg0.ButtonDescription2:completeAnimation() --[[ @ 0]]
			f41_arg0.ButtonDescription2:setAlpha( 0 ) --[[ @ 0]]
			f41_arg0.clipFinished( f41_arg0.ButtonDescription2 ) --[[ @ 0]]
			f41_arg0.ButtonTitle2:completeAnimation() --[[ @ 0]]
			f41_arg0.ButtonTitle2:setAlpha( 0 ) --[[ @ 0]]
			f41_arg0.clipFinished( f41_arg0.ButtonTitle2 ) --[[ @ 0]]
			f41_arg0.TitleTextBox:completeAnimation() --[[ @ 0]]
			f41_arg0.TitleTextBox:setAlpha( 0 ) --[[ @ 0]]
			f41_arg0.clipFinished( f41_arg0.TitleTextBox ) --[[ @ 0]]
			f41_arg0.DescTextBox:completeAnimation() --[[ @ 0]]
			f41_arg0.DescTextBox:setAlpha( 0 ) --[[ @ 0]]
			f41_arg0.clipFinished( f41_arg0.DescTextBox ) --[[ @ 0]]
		end
	},
	Fetching = {
		DefaultClip = function ( f42_arg0, f42_arg1 )
			f42_arg0:__resetProperties() --[[ @ 0]]
			f42_arg0:setupElementClipCounter( 10 ) --[[ @ 0]]
			f42_arg0.FullscreenPopupTemplate:completeAnimation() --[[ @ 0]]
			f42_arg0.FullscreenPopupTemplate.Subtitle:completeAnimation() --[[ @ 0]]
			f42_arg0.FullscreenPopupTemplate.WorkingTitle:completeAnimation() --[[ @ 0]]
			f42_arg0.FullscreenPopupTemplate.Title:completeAnimation() --[[ @ 0]]
			f42_arg0.FullscreenPopupTemplate.DoneTitle:completeAnimation() --[[ @ 0]]
			f42_arg0.FullscreenPopupTemplate.Subtitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_2C79EA24AB1A2BA" ) ) --[[ @ 0]]
			f42_arg0.FullscreenPopupTemplate.WorkingTitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/fileshare_waiting" ) ) --[[ @ 0]]
			f42_arg0.FullscreenPopupTemplate.Title:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/fileshare_waiting" ) ) --[[ @ 0]]
			f42_arg0.FullscreenPopupTemplate.DoneTitle:setText( LocalizeToUpperString( @"hash_2C79EA24AB1A2BA" ) ) --[[ @ 0]]
			f42_arg0.clipFinished( f42_arg0.FullscreenPopupTemplate ) --[[ @ 0]]
			f42_arg0.TitleDescription:completeAnimation() --[[ @ 0]]
			f42_arg0.TitleDescription:setAlpha( 0 ) --[[ @ 0]]
			f42_arg0.clipFinished( f42_arg0.TitleDescription ) --[[ @ 0]]
			f42_arg0.TitleText:completeAnimation() --[[ @ 0]]
			f42_arg0.TitleText:setAlpha( 0 ) --[[ @ 0]]
			f42_arg0.clipFinished( f42_arg0.TitleText ) --[[ @ 0]]
			f42_arg0.SlotsUsedWidget:completeAnimation() --[[ @ 0]]
			f42_arg0.SlotsUsedWidget:setAlpha( 0 ) --[[ @ 0]]
			f42_arg0.clipFinished( f42_arg0.SlotsUsedWidget ) --[[ @ 0]]
			f42_arg0.GametypeOnMapName:completeAnimation() --[[ @ 0]]
			f42_arg0.GametypeOnMapName:setAlpha( 0 ) --[[ @ 0]]
			f42_arg0.clipFinished( f42_arg0.GametypeOnMapName ) --[[ @ 0]]
			f42_arg0.Thumbnail:completeAnimation() --[[ @ 0]]
			f42_arg0.Thumbnail:setAlpha( 0 ) --[[ @ 0]]
			f42_arg0.clipFinished( f42_arg0.Thumbnail ) --[[ @ 0]]
			f42_arg0.ThumbnailFrame:completeAnimation() --[[ @ 0]]
			f42_arg0.ThumbnailFrame:setAlpha( 0 ) --[[ @ 0]]
			f42_arg0.clipFinished( f42_arg0.ThumbnailFrame ) --[[ @ 0]]
			f42_arg0.ButtonSave2:completeAnimation() --[[ @ 0]]
			f42_arg0.ButtonSave2:setAlpha( 0 ) --[[ @ 0]]
			f42_arg0.clipFinished( f42_arg0.ButtonSave2 ) --[[ @ 0]]
			f42_arg0.ButtonDescription2:completeAnimation() --[[ @ 0]]
			f42_arg0.ButtonDescription2:setAlpha( 0 ) --[[ @ 0]]
			f42_arg0.clipFinished( f42_arg0.ButtonDescription2 ) --[[ @ 0]]
			f42_arg0.ButtonTitle2:completeAnimation() --[[ @ 0]]
			f42_arg0.ButtonTitle2:setAlpha( 0 ) --[[ @ 0]]
			f42_arg0.clipFinished( f42_arg0.ButtonTitle2 ) --[[ @ 0]]
			f42_arg0.TitleTextBox:completeAnimation() --[[ @ 0]]
			f42_arg0.TitleTextBox:setAlpha( 0 ) --[[ @ 0]]
			f42_arg0.clipFinished( f42_arg0.TitleTextBox ) --[[ @ 0]]
			f42_arg0.DescTextBox:completeAnimation() --[[ @ 0]]
			f42_arg0.DescTextBox:setAlpha( 0 ) --[[ @ 0]]
			f42_arg0.clipFinished( f42_arg0.DescTextBox ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.DemoFileshareUpload.__onClose = function ( f43_arg0 )
	f43_arg0.emptyFocusableNoCursorUpdate:close() --[[ @ 0]]
	f43_arg0.FullscreenPopupTemplate:close() --[[ @ 0]]
	f43_arg0.AllowDownload0:close() --[[ @ 0]]
	f43_arg0.leftButtonBar:close() --[[ @ 0]]
	f43_arg0.SlotsUsedWidget:close() --[[ @ 0]]
	f43_arg0.Thumbnail:close() --[[ @ 0]]
	f43_arg0.ThumbnailFrame:close() --[[ @ 0]]
	f43_arg0.ButtonSave2:close() --[[ @ 0]]
	f43_arg0.ButtonDescription2:close() --[[ @ 0]]
	f43_arg0.ButtonTitle2:close() --[[ @ 0]]
	f43_arg0.TitleTextBox:close() --[[ @ 0]]
	f43_arg0.DescTextBox:close() --[[ @ 0]]
end
 --[[ @ 0]]
