-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "ui/uieditor/widgets/common/commondetailpanel" ) --[[ @ 0]]
require( "x64:aaa2f6ba4984209" ) --[[ @ 0]]
require( "x64:5110e986e11c842b" ) --[[ @ 0]]
require( "ui/uieditor/widgets/startmenu/startmenu_options_simplecheckoption" ) --[[ @ 0]]

CoD.PC_StartMenu_Options_SignInForm = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PC_StartMenu_Options_SignInForm.__defaultWidth = 1920 --[[ @ 0]]
CoD.PC_StartMenu_Options_SignInForm.__defaultHeight = 1080 --[[ @ 0]]
CoD.PC_StartMenu_Options_SignInForm.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PC_StartMenu_Options_SignInForm ) --[[ @ 0]]
	self.id = "PC_StartMenu_Options_SignInForm" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local CommonDetailPanel = CoD.CommonDetailPanel.new( f1_arg0, f1_arg1, 0.5, 0.5, -400, 400, 0.5, 0.5, -190, 190 ) --[[ @ 0]]
	self:addElement( CommonDetailPanel ) --[[ @ 0]]
	self.CommonDetailPanel = CommonDetailPanel --[[ @ 0]]
	
	local registrationFormOptions = LUI.UIList.new( f1_arg0, f1_arg1, 2, 0, nil, false, false, false, false ) --[[ @ 0]]
	registrationFormOptions:setLeftRight( 0.5, 0.5, -380, 380 ) --[[ @ 0]]
	registrationFormOptions:setTopBottom( 0, 0, 548, 608 ) --[[ @ 0]]
	registrationFormOptions:setWidgetType( CoD.StartMenu_Options_SimpleCheckOption ) --[[ @ 0]]
	registrationFormOptions:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	registrationFormOptions:setDataSource( "CODAccountSignInInfoOptions" ) --[[ @ 0]]
	registrationFormOptions:registerEventHandler( "gain_focus", function ( element, event )
		local f2_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f2_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f2_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.CoDAccountUtility.OnSignInItemFocusChange( f1_arg0, f1_arg1, element ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f2_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( registrationFormOptions, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], nil, function ( element, menu, controller, model )
		ProcessListAction( self, element, controller, menu ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_0", nil, nil ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	self:addElement( registrationFormOptions ) --[[ @ 0]]
	self.registrationFormOptions = registrationFormOptions --[[ @ 0]]
	
	local registerButton = LUI.UIList.new( f1_arg0, f1_arg1, 2, 0, nil, false, false, false, false ) --[[ @ 0]]
	registerButton:setLeftRight( 0.5, 0.5, -380, 380 ) --[[ @ 0]]
	registerButton:setTopBottom( 0, 0, 648, 708 ) --[[ @ 0]]
	registerButton:setWidgetType( CoD.StartMenu_Options_ButtonAction ) --[[ @ 0]]
	registerButton:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	registerButton:setDataSource( "CODAccountSignInConfirmation" ) --[[ @ 0]]
	registerButton:registerEventHandler( "gain_focus", function ( element, event )
		local f5_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f5_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f5_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f5_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( registerButton, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], "MOUSE1", function ( element, menu, controller, model )
		ProcessListAction( self, element, controller, menu ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_0", nil, "MOUSE1" ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	self:addElement( registerButton ) --[[ @ 0]]
	self.registerButton = registerButton --[[ @ 0]]
	
	local DescriptionText = LUI.UIText.new( 0.5, 0.5, 410, 810, 0, 0, 376, 397 ) --[[ @ 0]]
	DescriptionText:setRGB( 0.96, 0.93, 0.84 ) --[[ @ 0]]
	DescriptionText:setAlpha( 0.3 ) --[[ @ 0]]
	DescriptionText:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	DescriptionText:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	DescriptionText:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	DescriptionText:linkToElementModel( self, "hintText", true, function ( model )
		local f8_local0 = model:get() --[[ @ 0]]
		if f8_local0 ~= nil then
			DescriptionText:setText( Engine[@"hash_4F9F1239CFD921FE"]( f8_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( DescriptionText ) --[[ @ 0]]
	self.DescriptionText = DescriptionText --[[ @ 0]]
	
	local GUIDE = LUI.UIImage.new( 0, 0, 1108, 1168, 0, 0, 340, 400 ) --[[ @ 0]]
	GUIDE:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( GUIDE ) --[[ @ 0]]
	self.GUIDE = GUIDE --[[ @ 0]]
	
	local GUIDE2 = LUI.UIImage.new( 0, 0, 0, 340, 0, 0, 340, 400 ) --[[ @ 0]]
	GUIDE2:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( GUIDE2 ) --[[ @ 0]]
	self.GUIDE2 = GUIDE2 --[[ @ 0]]
	
	local Image = LUI.UIImage.new( 0, 0, 1580, 1920, 0, 0, 328, 388 ) --[[ @ 0]]
	Image:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( Image ) --[[ @ 0]]
	self.Image = Image --[[ @ 0]]
	
	local Image2 = LUI.UIImage.new( 0, 0, 580, 620, 0, 0, 608, 648 ) --[[ @ 0]]
	Image2:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( Image2 ) --[[ @ 0]]
	self.Image2 = Image2 --[[ @ 0]]
	
	local PCSignInEmail = CoD.PC_CoDAccount_EditableOption.new( f1_arg0, f1_arg1, 0.5, 0.5, -375, 375, 0.37, 0.37, 0.5, 60.5 ) --[[ @ 0]]
	PCSignInEmail.ActionText:setText( LocalizeString( @"hash_61770F1CA89E2DE5" ) ) --[[ @ 0]]
	PCSignInEmail:linkToElementModel( self, "currentText", true, function ( model )
		local f9_local0 = model:get() --[[ @ 0]]
		if f9_local0 ~= nil then
			PCSignInEmail.CurrentText.TextBox:setText( f9_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( PCSignInEmail, "childFocusGained", function ( element )
		CoD.CoDAccountUtility.OnSignInItemFocusChangeWithHint( f1_arg1, "MENU/CODACCOUNT_REGISTER_EMAIL_DESC" ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( PCSignInEmail ) --[[ @ 0]]
	self.PCSignInEmail = PCSignInEmail --[[ @ 0]]
	
	local PCSignInPassword = CoD.PC_CoDAccount_EditableOption.new( f1_arg0, f1_arg1, 0.5, 0.5, -375, 375, 0.44, 0.44, 0, 60 ) --[[ @ 0]]
	PCSignInPassword.ActionText:setText( LocalizeString( @"hash_4A50C91C923FBBF6" ) ) --[[ @ 0]]
	PCSignInPassword:linkToElementModel( self, "currentText", true, function ( model )
		local f11_local0 = model:get() --[[ @ 0]]
		if f11_local0 ~= nil then
			PCSignInPassword.CurrentText.TextBox:setText( f11_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( PCSignInPassword, "childFocusGained", function ( element )
		CoD.CoDAccountUtility.OnSignInItemFocusChangeWithHint( f1_arg1, "MENU/CODACCOUNT_REGISTER_PW_DESC" ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( PCSignInPassword ) --[[ @ 0]]
	self.PCSignInPassword = PCSignInPassword --[[ @ 0]]
	
	registrationFormOptions.id = "registrationFormOptions" --[[ @ 0]]
	registerButton.id = "registerButton" --[[ @ 0]]
	PCSignInEmail.id = "PCSignInEmail" --[[ @ 0]]
	PCSignInPassword.id = "PCSignInPassword" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local11 = self --[[ @ 0]]
	CoD.CoDAccountUtility.SetupEditBoxControlSignIn( self, PCSignInEmail, f1_arg1, f1_arg0, "emailAddress", false ) --[[ @ 0]]
	CoD.CoDAccountUtility.SetupEditBoxControlSignIn( self, PCSignInPassword, f1_arg1, f1_arg0, "password", true ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.PC_StartMenu_Options_SignInForm.__onClose = function ( f13_arg0 )
	f13_arg0.CommonDetailPanel:close() --[[ @ 0]]
	f13_arg0.registrationFormOptions:close() --[[ @ 0]]
	f13_arg0.registerButton:close() --[[ @ 0]]
	f13_arg0.DescriptionText:close() --[[ @ 0]]
	f13_arg0.PCSignInEmail:close() --[[ @ 0]]
	f13_arg0.PCSignInPassword:close() --[[ @ 0]]
end
 --[[ @ 0]]
