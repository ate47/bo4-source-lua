-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/checkbox" ) --[[ @ 0]]
require( "ui/uieditor/widgets/fileshare/fullscreenpopup/fullscreeenpupupsteamform" ) --[[ @ 0]]
require( "ui/uieditor/widgets/inputbutton" ) --[[ @ 0]]
require( "ui/uieditor/widgets/lobby/common/list1buttonlarge_left_nd" ) --[[ @ 0]]

CoD.SteamWorkshopPublish = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.SteamWorkshopPublish = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "SteamWorkshopPublish", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	self:setClass( CoD.SteamWorkshopPublish ) --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_local1:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local FullscreenPopupForm = CoD.FullscreeenPupupSteamForm.new( f1_local1, f1_arg0, 0, 0, 0, 1920, 0, 0, 0, 1080 ) --[[ @ 0]]
	FullscreenPopupForm:mergeStateConditions( {
		{
			stateName = "WorkingState",
			condition = function ( menu, element, event )
				return CoD.FileshareUtility.FileshareIsPublishing()
			end
		},
		{
			stateName = "ErrorState",
			condition = function ( menu, element, event )
				return CoD.FileshareUtility.FileshareIsPublishingInError()
			end
		},
		{
			stateName = "DoneState",
			condition = function ( menu, element, event )
				return CoD.FileshareUtility.FileshareIsPublishingInSuccess()
			end
		}
	} ) --[[ @ 0]]
	local LblName = FullscreenPopupForm --[[ @ 0]]
	local InputName = FullscreenPopupForm.subscribeToModel --[[ @ 0]]
	local InputDescription = Engine[@"getglobalmodel"]() --[[ @ 0]]
	InputName( LblName, InputDescription["fileshareRoot.publishTask.state"], function ( f5_arg0 )
		f1_local1:updateElementState( FullscreenPopupForm, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f5_arg0:get(),
			modelName = "fileshareRoot.publishTask.state"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	FullscreenPopupForm.Title:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_64AF025B2AC483FF" ) ) --[[ @ 0]]
	FullscreenPopupForm.Subtitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_1EA7FE43590F310F" ) ) --[[ @ 0]]
	FullscreenPopupForm.WorkingTitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_4AB9731DB460FB68" ) ) --[[ @ 0]]
	FullscreenPopupForm.DoneTitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_10253C3842517883" ) ) --[[ @ 0]]
	FullscreenPopupForm.ErrorSubtitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_9A2C1E7041DD6A0" ) ) --[[ @ 0]]
	self:addElement( FullscreenPopupForm ) --[[ @ 0]]
	self.FullscreenPopupForm = FullscreenPopupForm --[[ @ 0]]
	
	InputName = CoD.InputButton.new( f1_local1, f1_arg0, 0, 0, 693, 1017, 0, 0, 566.5, 617.5 ) --[[ @ 0]]
	InputName:subscribeToGlobalModel( f1_arg0, "FileshareRoot", "publishName", function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			InputName.Text:setText( f6_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	InputName:registerEventHandler( "gain_focus", function ( element, event )
		local f7_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f7_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f7_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f7_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( InputName, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		FileshareEnterPublishName( self, element, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	self:addElement( InputName ) --[[ @ 0]]
	self.InputName = InputName --[[ @ 0]]
	
	LblName = LUI.UIText.new( 0, 0, 693, 993, 0, 0, 529, 567 ) --[[ @ 0]]
	LblName:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_6808E4CA838AD72E" ) ) --[[ @ 0]]
	LblName:setTTF( "default" ) --[[ @ 0]]
	LblName:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( LblName ) --[[ @ 0]]
	self.LblName = LblName --[[ @ 0]]
	
	InputDescription = CoD.InputButton.new( f1_local1, f1_arg0, 0, 0, 693, 1616, 0, 0, 655, 795 ) --[[ @ 0]]
	InputDescription:subscribeToGlobalModel( f1_arg0, "FileshareRoot", "publishDescription", function ( model )
		local f10_local0 = model:get() --[[ @ 0]]
		if f10_local0 ~= nil then
			InputDescription.Text:setText( f10_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	InputDescription:registerEventHandler( "gain_focus", function ( element, event )
		local f11_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f11_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f11_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f11_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( InputDescription, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		FileshareEnterPublishDescription( self, element, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	self:addElement( InputDescription ) --[[ @ 0]]
	self.InputDescription = InputDescription --[[ @ 0]]
	
	local LblDescription = LUI.UIText.new( 0, 0, 693, 795, 0, 0, 618, 656 ) --[[ @ 0]]
	LblDescription:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/fileshare_description" ) ) --[[ @ 0]]
	LblDescription:setTTF( "default" ) --[[ @ 0]]
	LblDescription:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( LblDescription ) --[[ @ 0]]
	self.LblDescription = LblDescription --[[ @ 0]]
	
	local InputTags = CoD.InputButton.new( f1_local1, f1_arg0, 0, 0, 1062, 1616, 0, 0, 566.5, 617.5 ) --[[ @ 0]]
	InputTags:registerEventHandler( "gain_focus", function ( element, event )
		local f14_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f14_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f14_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f14_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( InputTags, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		FileshareEnterPublishTags( self, element, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	self:addElement( InputTags ) --[[ @ 0]]
	self.InputTags = InputTags --[[ @ 0]]
	
	local LblTags = LUI.UIText.new( 0, 0, 1062, 1287, 0, 0, 529, 567 ) --[[ @ 0]]
	LblTags:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/fileshare_tags" ) ) --[[ @ 0]]
	LblTags:setTTF( "default" ) --[[ @ 0]]
	LblTags:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( LblTags ) --[[ @ 0]]
	self.LblTags = LblTags --[[ @ 0]]
	
	local BtnPublish = CoD.List1ButtonLarge_Left_ND.new( f1_local1, f1_arg0, 0, 0, 1477, 1615, 0, 0, 846, 892 ) --[[ @ 0]]
	BtnPublish:mergeStateConditions( {
		{
			stateName = "Disabled",
			condition = function ( menu, element, event )
				return FilesharePublishToSteamDisabled( f1_arg0 )
			end
		}
	} ) --[[ @ 0]]
	local BtnFAQ = BtnPublish --[[ @ 0]]
	local BtnAgreement = BtnPublish.subscribeToModel --[[ @ 0]]
	local BtnViewSteamWorkshop = Engine[@"getglobalmodel"]() --[[ @ 0]]
	BtnAgreement( BtnFAQ, BtnViewSteamWorkshop["fileshareRoot.publishSteamAgreement"], function ( f18_arg0 )
		f1_local1:updateElementState( BtnPublish, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f18_arg0:get(),
			modelName = "fileshareRoot.publishSteamAgreement"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	BtnPublish.btnDisplayText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_515DBA93D2EC63CC" ) ) --[[ @ 0]]
	BtnPublish.btnDisplayTextStroke:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_515DBA93D2EC63CC" ) ) --[[ @ 0]]
	BtnFAQ = BtnPublish --[[ @ 0]]
	BtnAgreement = BtnPublish.subscribeToModel --[[ @ 0]]
	BtnViewSteamWorkshop = Engine[@"getglobalmodel"]() --[[ @ 0]]
	BtnAgreement( BtnFAQ, BtnViewSteamWorkshop["fileshareRoot.ready"], function ( f19_arg0, f19_arg1 )
		CoD.Menu.UpdateButtonShownState( f19_arg1, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	BtnFAQ = BtnPublish --[[ @ 0]]
	BtnAgreement = BtnPublish.subscribeToModel --[[ @ 0]]
	BtnViewSteamWorkshop = Engine[@"getglobalmodel"]() --[[ @ 0]]
	BtnAgreement( BtnFAQ, BtnViewSteamWorkshop["fileshareRoot.publishSteamAgreement"], function ( f20_arg0, f20_arg1 )
		CoD.Menu.UpdateButtonShownState( f20_arg1, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	BtnPublish:registerEventHandler( "gain_focus", function ( element, event )
		local f21_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f21_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f21_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		if not FileshareIsSteamAgreed() then
			SetHintText( self, element, f1_arg0 ) --[[ @ 0]]
		else
			CoD.Menu.UpdateButtonShownState( element, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		end
		return f21_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( BtnPublish, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		if FileshareIsReady( controller ) and FileshareIsSteamAgreed() then
			SteamWorkshopPublish( self, element, controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if FileshareIsReady( controller ) and FileshareIsSteamAgreed() then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( BtnPublish ) --[[ @ 0]]
	self.BtnPublish = BtnPublish --[[ @ 0]]
	
	BtnAgreement = CoD.List1ButtonLarge_Left_ND.new( f1_local1, f1_arg0, 0, 0, 1020, 1158, 0, 0, 846, 892 ) --[[ @ 0]]
	BtnAgreement.btnDisplayText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_7E019652E4A6C5C7" ) ) --[[ @ 0]]
	BtnAgreement.btnDisplayTextStroke:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_7E019652E4A6C5C7" ) ) --[[ @ 0]]
	BtnAgreement:registerEventHandler( "gain_focus", function ( element, event )
		local f24_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f24_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f24_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f24_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( BtnAgreement, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		SteamWorkshopOpenAgreement( self, element, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	self:addElement( BtnAgreement ) --[[ @ 0]]
	self.BtnAgreement = BtnAgreement --[[ @ 0]]
	
	BtnFAQ = CoD.List1ButtonLarge_Left_ND.new( f1_local1, f1_arg0, 0, 0, 693, 831, 0, 0, 846, 892 ) --[[ @ 0]]
	BtnFAQ.btnDisplayText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_1118884CB1951783" ) ) --[[ @ 0]]
	BtnFAQ.btnDisplayTextStroke:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_1118884CB1951783" ) ) --[[ @ 0]]
	BtnFAQ:registerEventHandler( "gain_focus", function ( element, event )
		local f27_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f27_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f27_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f27_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( BtnFAQ, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		SteamWorkshopOpenFAQ( self, element, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	self:addElement( BtnFAQ ) --[[ @ 0]]
	self.BtnFAQ = BtnFAQ --[[ @ 0]]
	
	BtnViewSteamWorkshop = CoD.List1ButtonLarge_Left_ND.new( f1_local1, f1_arg0, 0, 0, 693, 831, 0, 0, 846, 892 ) --[[ @ 0]]
	BtnViewSteamWorkshop.btnDisplayText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_67111887771E806A" ) ) --[[ @ 0]]
	BtnViewSteamWorkshop.btnDisplayTextStroke:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_67111887771E806A" ) ) --[[ @ 0]]
	BtnViewSteamWorkshop:registerEventHandler( "gain_focus", function ( element, event )
		local f30_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f30_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f30_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f30_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( BtnViewSteamWorkshop, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		SteamWorkshopViewWorkshop( self, element, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	self:addElement( BtnViewSteamWorkshop ) --[[ @ 0]]
	self.BtnViewSteamWorkshop = BtnViewSteamWorkshop --[[ @ 0]]
	
	local BtnViewItemInWorkshop = CoD.List1ButtonLarge_Left_ND.new( f1_local1, f1_arg0, 0, 0, 1020, 1158, 0, 0, 846, 892 ) --[[ @ 0]]
	BtnViewItemInWorkshop.btnDisplayText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_3FD8F63F98C3B108" ) ) --[[ @ 0]]
	BtnViewItemInWorkshop.btnDisplayTextStroke:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_3FD8F63F98C3B108" ) ) --[[ @ 0]]
	BtnViewItemInWorkshop:registerEventHandler( "gain_focus", function ( element, event )
		local f33_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f33_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f33_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f33_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( BtnViewItemInWorkshop, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		SteamWorkshopOpenItem( self, element, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	self:addElement( BtnViewItemInWorkshop ) --[[ @ 0]]
	self.BtnViewItemInWorkshop = BtnViewItemInWorkshop --[[ @ 0]]
	
	local BtnDone = CoD.List1ButtonLarge_Left_ND.new( f1_local1, f1_arg0, 0, 0, 1477, 1615, 0, 0, 846, 892 ) --[[ @ 0]]
	BtnDone.btnDisplayText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_20A1809370478D8D" ) ) --[[ @ 0]]
	BtnDone.btnDisplayTextStroke:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_20A1809370478D8D" ) ) --[[ @ 0]]
	BtnDone:registerEventHandler( "gain_focus", function ( element, event )
		local f36_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f36_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f36_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f36_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( BtnDone, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		GoBack( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	self:addElement( BtnDone ) --[[ @ 0]]
	self.BtnDone = BtnDone --[[ @ 0]]
	
	local checkboxSteamAgreement = CoD.checkbox.new( f1_local1, f1_arg0, 0.5, 0.5, -267, 663, 0, 0, 794.5, 845.5 ) --[[ @ 0]]
	checkboxSteamAgreement:mergeStateConditions( {
		{
			stateName = "Checked",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalModelValueTrue( "FileshareRoot.publishSteamAgreement" )
			end
		}
	} ) --[[ @ 0]]
	local f1_local16 = checkboxSteamAgreement --[[ @ 0]]
	local f1_local17 = checkboxSteamAgreement.subscribeToModel --[[ @ 0]]
	local f1_local18 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local17( f1_local16, f1_local18["FileshareRoot.publishSteamAgreement"], function ( f40_arg0 )
		f1_local1:updateElementState( checkboxSteamAgreement, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f40_arg0:get(),
			modelName = "FileshareRoot.publishSteamAgreement"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	checkboxSteamAgreement.labelText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_304D6F8A11B251C6" ) ) --[[ @ 0]]
	checkboxSteamAgreement:registerEventHandler( "gain_focus", function ( element, event )
		local f41_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f41_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f41_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f41_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( checkboxSteamAgreement, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		ToggleGlobalModelValueBoolean( "FileshareRoot.publishSteamAgreement" ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( checkboxSteamAgreement, "setText", function ( element, controller )
		ScaleWidgetToLabel( self, element, 0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( checkboxSteamAgreement ) --[[ @ 0]]
	self.checkboxSteamAgreement = checkboxSteamAgreement --[[ @ 0]]
	
	self:registerEventHandler( "ui_keyboard_input", function ( self, event )
		local f45_local0 = nil --[[ @ 0]]
		FileshareHandleKeyboardComplete( self, self, f1_arg0, event ) --[[ @ 0]]
		if not f45_local0 then
			f45_local0 = self:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f45_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], nil, function ( element, menu, controller, model )
		GoBack( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], @"hash_0", nil, nil ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	InputName.id = "InputName" --[[ @ 0]]
	InputDescription.id = "InputDescription" --[[ @ 0]]
	InputTags.id = "InputTags" --[[ @ 0]]
	BtnPublish.id = "BtnPublish" --[[ @ 0]]
	BtnAgreement.id = "BtnAgreement" --[[ @ 0]]
	BtnFAQ.id = "BtnFAQ" --[[ @ 0]]
	BtnViewSteamWorkshop.id = "BtnViewSteamWorkshop" --[[ @ 0]]
	BtnViewItemInWorkshop.id = "BtnViewItemInWorkshop" --[[ @ 0]]
	BtnDone.id = "BtnDone" --[[ @ 0]]
	checkboxSteamAgreement.id = "checkboxSteamAgreement" --[[ @ 0]]
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	self.__defaultFocus = InputName --[[ @ 0]]
	if CoD.isPC and (IsKeyboard( f1_arg0 ) or self.ignoreCursor) then
		self:restoreState( f1_arg0 ) --[[ @ 0]]
	end
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.SteamWorkshopPublish.__resetProperties = function ( f48_arg0 )
	f48_arg0.BtnViewSteamWorkshop:completeAnimation() --[[ @ 0]]
	f48_arg0.BtnViewItemInWorkshop:completeAnimation() --[[ @ 0]]
	f48_arg0.BtnDone:completeAnimation() --[[ @ 0]]
	f48_arg0.BtnPublish:completeAnimation() --[[ @ 0]]
	f48_arg0.LblName:completeAnimation() --[[ @ 0]]
	f48_arg0.InputName:completeAnimation() --[[ @ 0]]
	f48_arg0.InputDescription:completeAnimation() --[[ @ 0]]
	f48_arg0.InputTags:completeAnimation() --[[ @ 0]]
	f48_arg0.LblTags:completeAnimation() --[[ @ 0]]
	f48_arg0.LblDescription:completeAnimation() --[[ @ 0]]
	f48_arg0.checkboxSteamAgreement:completeAnimation() --[[ @ 0]]
	f48_arg0.BtnAgreement:completeAnimation() --[[ @ 0]]
	f48_arg0.BtnFAQ:completeAnimation() --[[ @ 0]]
	f48_arg0.BtnViewSteamWorkshop:setAlpha( 1 ) --[[ @ 0]]
	f48_arg0.BtnViewItemInWorkshop:setAlpha( 1 ) --[[ @ 0]]
	f48_arg0.BtnDone:setAlpha( 1 ) --[[ @ 0]]
	f48_arg0.BtnPublish:setAlpha( 1 ) --[[ @ 0]]
	f48_arg0.LblName:setAlpha( 1 ) --[[ @ 0]]
	f48_arg0.InputName:setAlpha( 1 ) --[[ @ 0]]
	f48_arg0.InputDescription:setAlpha( 1 ) --[[ @ 0]]
	f48_arg0.InputTags:setAlpha( 1 ) --[[ @ 0]]
	f48_arg0.LblTags:setAlpha( 1 ) --[[ @ 0]]
	f48_arg0.LblDescription:setAlpha( 1 ) --[[ @ 0]]
	f48_arg0.checkboxSteamAgreement:setAlpha( 1 ) --[[ @ 0]]
	f48_arg0.BtnAgreement:setAlpha( 1 ) --[[ @ 0]]
	f48_arg0.BtnFAQ:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.SteamWorkshopPublish.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f49_arg0, f49_arg1 )
			f49_arg0:__resetProperties() --[[ @ 0]]
			f49_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f49_arg0.BtnViewSteamWorkshop:completeAnimation() --[[ @ 0]]
			f49_arg0.BtnViewSteamWorkshop:setAlpha( 0 ) --[[ @ 0]]
			f49_arg0.clipFinished( f49_arg0.BtnViewSteamWorkshop ) --[[ @ 0]]
			f49_arg0.BtnViewItemInWorkshop:completeAnimation() --[[ @ 0]]
			f49_arg0.BtnViewItemInWorkshop:setAlpha( 0 ) --[[ @ 0]]
			f49_arg0.clipFinished( f49_arg0.BtnViewItemInWorkshop ) --[[ @ 0]]
			f49_arg0.BtnDone:completeAnimation() --[[ @ 0]]
			f49_arg0.BtnDone:setAlpha( 0 ) --[[ @ 0]]
			f49_arg0.clipFinished( f49_arg0.BtnDone ) --[[ @ 0]]
		end
	},
	Working = {
		DefaultClip = function ( f50_arg0, f50_arg1 )
			f50_arg0:__resetProperties() --[[ @ 0]]
			f50_arg0:setupElementClipCounter( 10 ) --[[ @ 0]]
			f50_arg0.InputName:completeAnimation() --[[ @ 0]]
			f50_arg0.InputName:setAlpha( 0 ) --[[ @ 0]]
			f50_arg0.clipFinished( f50_arg0.InputName ) --[[ @ 0]]
			f50_arg0.LblName:completeAnimation() --[[ @ 0]]
			f50_arg0.LblName:setAlpha( 0 ) --[[ @ 0]]
			f50_arg0.clipFinished( f50_arg0.LblName ) --[[ @ 0]]
			f50_arg0.InputDescription:completeAnimation() --[[ @ 0]]
			f50_arg0.InputDescription:setAlpha( 0 ) --[[ @ 0]]
			f50_arg0.clipFinished( f50_arg0.InputDescription ) --[[ @ 0]]
			f50_arg0.LblDescription:completeAnimation() --[[ @ 0]]
			f50_arg0.LblDescription:setAlpha( 0 ) --[[ @ 0]]
			f50_arg0.clipFinished( f50_arg0.LblDescription ) --[[ @ 0]]
			f50_arg0.InputTags:completeAnimation() --[[ @ 0]]
			f50_arg0.InputTags:setAlpha( 0 ) --[[ @ 0]]
			f50_arg0.clipFinished( f50_arg0.InputTags ) --[[ @ 0]]
			f50_arg0.LblTags:completeAnimation() --[[ @ 0]]
			f50_arg0.LblTags:setAlpha( 0 ) --[[ @ 0]]
			f50_arg0.clipFinished( f50_arg0.LblTags ) --[[ @ 0]]
			f50_arg0.BtnPublish:completeAnimation() --[[ @ 0]]
			f50_arg0.BtnPublish:setAlpha( 0 ) --[[ @ 0]]
			f50_arg0.clipFinished( f50_arg0.BtnPublish ) --[[ @ 0]]
			f50_arg0.BtnAgreement:completeAnimation() --[[ @ 0]]
			f50_arg0.BtnAgreement:setAlpha( 0 ) --[[ @ 0]]
			f50_arg0.clipFinished( f50_arg0.BtnAgreement ) --[[ @ 0]]
			f50_arg0.BtnDone:completeAnimation() --[[ @ 0]]
			f50_arg0.BtnDone:setAlpha( 0 ) --[[ @ 0]]
			f50_arg0.clipFinished( f50_arg0.BtnDone ) --[[ @ 0]]
			f50_arg0.checkboxSteamAgreement:completeAnimation() --[[ @ 0]]
			f50_arg0.checkboxSteamAgreement:setAlpha( 0 ) --[[ @ 0]]
			f50_arg0.clipFinished( f50_arg0.checkboxSteamAgreement ) --[[ @ 0]]
		end
	},
	Success = {
		DefaultClip = function ( f51_arg0, f51_arg1 )
			f51_arg0:__resetProperties() --[[ @ 0]]
			f51_arg0:setupElementClipCounter( 10 ) --[[ @ 0]]
			f51_arg0.InputName:completeAnimation() --[[ @ 0]]
			f51_arg0.InputName:setAlpha( 0 ) --[[ @ 0]]
			f51_arg0.clipFinished( f51_arg0.InputName ) --[[ @ 0]]
			f51_arg0.LblName:completeAnimation() --[[ @ 0]]
			f51_arg0.LblName:setAlpha( 0 ) --[[ @ 0]]
			f51_arg0.clipFinished( f51_arg0.LblName ) --[[ @ 0]]
			f51_arg0.InputDescription:completeAnimation() --[[ @ 0]]
			f51_arg0.InputDescription:setAlpha( 0 ) --[[ @ 0]]
			f51_arg0.clipFinished( f51_arg0.InputDescription ) --[[ @ 0]]
			f51_arg0.LblDescription:completeAnimation() --[[ @ 0]]
			f51_arg0.LblDescription:setAlpha( 0 ) --[[ @ 0]]
			f51_arg0.clipFinished( f51_arg0.LblDescription ) --[[ @ 0]]
			f51_arg0.InputTags:completeAnimation() --[[ @ 0]]
			f51_arg0.InputTags:setAlpha( 0 ) --[[ @ 0]]
			f51_arg0.clipFinished( f51_arg0.InputTags ) --[[ @ 0]]
			f51_arg0.LblTags:completeAnimation() --[[ @ 0]]
			f51_arg0.LblTags:setAlpha( 0 ) --[[ @ 0]]
			f51_arg0.clipFinished( f51_arg0.LblTags ) --[[ @ 0]]
			f51_arg0.BtnPublish:completeAnimation() --[[ @ 0]]
			f51_arg0.BtnPublish:setAlpha( 0 ) --[[ @ 0]]
			f51_arg0.clipFinished( f51_arg0.BtnPublish ) --[[ @ 0]]
			f51_arg0.BtnAgreement:completeAnimation() --[[ @ 0]]
			f51_arg0.BtnAgreement:setAlpha( 0 ) --[[ @ 0]]
			f51_arg0.clipFinished( f51_arg0.BtnAgreement ) --[[ @ 0]]
			f51_arg0.BtnFAQ:completeAnimation() --[[ @ 0]]
			f51_arg0.BtnFAQ:setAlpha( 0 ) --[[ @ 0]]
			f51_arg0.clipFinished( f51_arg0.BtnFAQ ) --[[ @ 0]]
			f51_arg0.checkboxSteamAgreement:completeAnimation() --[[ @ 0]]
			f51_arg0.checkboxSteamAgreement:setAlpha( 0 ) --[[ @ 0]]
			f51_arg0.clipFinished( f51_arg0.checkboxSteamAgreement ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.SteamWorkshopPublish.__onClose = function ( f52_arg0 )
	f52_arg0.FullscreenPopupForm:close() --[[ @ 0]]
	f52_arg0.InputName:close() --[[ @ 0]]
	f52_arg0.InputDescription:close() --[[ @ 0]]
	f52_arg0.InputTags:close() --[[ @ 0]]
	f52_arg0.BtnPublish:close() --[[ @ 0]]
	f52_arg0.BtnAgreement:close() --[[ @ 0]]
	f52_arg0.BtnFAQ:close() --[[ @ 0]]
	f52_arg0.BtnViewSteamWorkshop:close() --[[ @ 0]]
	f52_arg0.BtnViewItemInWorkshop:close() --[[ @ 0]]
	f52_arg0.BtnDone:close() --[[ @ 0]]
	f52_arg0.checkboxSteamAgreement:close() --[[ @ 0]]
end
 --[[ @ 0]]
