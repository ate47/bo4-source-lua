-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "ui/uieditor/widgets/fileshare/fullscreenpopup/fullscreenpopuptemplate" ) --[[ @ 0]]
require( "x64:15d80cb371475b19" ) --[[ @ 0]]

CoD.WZTrialUpsellPopup = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.WZTrialUpsellPopup = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "WZTrialUpsellPopup", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	self:setClass( CoD.WZTrialUpsellPopup ) --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local FullscreenPopupTemplate = CoD.FullscreenPopupTemplate.new( f1_local1, f1_arg0, 0.5, 0.5, -960, 960, 0.5, 0.5, -540, 540 ) --[[ @ 0]]
	FullscreenPopupTemplate.ButtonList:setWidgetType( CoD.ItemShopButton ) --[[ @ 0]]
	FullscreenPopupTemplate.ButtonList:setDataSource( "WZTrialUpsellOptions" ) --[[ @ 0]]
	FullscreenPopupTemplate.Subtitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_1B3101119C59EC6F" ) ) --[[ @ 0]]
	FullscreenPopupTemplate.ErrorSubtitle:setText( "" ) --[[ @ 0]]
	FullscreenPopupTemplate.WorkingTitle:setText( LocalizeToUpperString( @"hash_714DA16A525132B2" ) ) --[[ @ 0]]
	FullscreenPopupTemplate.Title:setText( LocalizeToUpperString( @"hash_714DA16A525132B2" ) ) --[[ @ 0]]
	FullscreenPopupTemplate.DoneTitle:setText( LocalizeToUpperString( @"hash_714DA16A525132B2" ) ) --[[ @ 0]]
	self:addElement( FullscreenPopupTemplate ) --[[ @ 0]]
	self.FullscreenPopupTemplate = FullscreenPopupTemplate --[[ @ 0]]
	
	local PopupImage = LUI.UIImage.new( 0.5, 0.5, -960, -324, 0.5, 0.5, -213.5, 230.5 ) --[[ @ 0]]
	PopupImage:setImage( RegisterImage( @"uie_ui_menu_blackmarket_popup_image" ) ) --[[ @ 0]]
	self:addElement( PopupImage ) --[[ @ 0]]
	self.PopupImage = PopupImage --[[ @ 0]]
	
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], nil, function ( element, menu, controller, model )
		GoBack( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], @"hash_26DA4540B4705513", nil, nil ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	FullscreenPopupTemplate.buttons:setModel( self.buttonModel, f1_arg0 ) --[[ @ 0]]
	FullscreenPopupTemplate.buttonPC:setModel( self.buttonModel, f1_arg0 ) --[[ @ 0]]
	FullscreenPopupTemplate.id = "FullscreenPopupTemplate" --[[ @ 0]]
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
	local f1_local4 = self --[[ @ 0]]
	f1_local4 = FullscreenPopupTemplate --[[ @ 0]]
	if IsPC() then
		CoD.PCUtility.LinkPCSmallCloseButtonToInput( f1_local1, f1_arg0, f1_local4, Enum[@"luibutton"][@"lui_key_xbb_pscircle"] ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.WZTrialUpsellPopup.__onClose = function ( f4_arg0 )
	f4_arg0.FullscreenPopupTemplate:close() --[[ @ 0]]
end
 --[[ @ 0]]
