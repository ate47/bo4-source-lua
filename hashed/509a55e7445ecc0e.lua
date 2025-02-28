-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/footer/footercontainer_frontend_right" ) --[[ @ 0]]
require( "x64:3efe3159fb7dfed3" ) --[[ @ 0]]
require( "ui/uieditor/widgets/startmenu/startmenu_background" ) --[[ @ 0]]
require( "x64:3f027dcc6409e42c" ) --[[ @ 0]]

CoD.FTUEWZInventoryMenu = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.FTUEWZInventoryMenu = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "FTUEWZInventoryMenu", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	EnableAnyController( self, f1_arg0 ) --[[ @ 0]]
	self:setClass( CoD.FTUEWZInventoryMenu ) --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local StartMenuBackground = CoD.StartMenu_Background.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( StartMenuBackground ) --[[ @ 0]]
	self.StartMenuBackground = StartMenuBackground --[[ @ 0]]
	
	local FooterContainerFrontendRight = CoD.FooterContainer_Frontend_Right.new( f1_local1, f1_arg0, 0, 1, 0, 0, 1, 1, -48, 0 ) --[[ @ 0]]
	FooterContainerFrontendRight:registerEventHandler( "menu_loaded", function ( element, event )
		local f2_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f2_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f2_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		SizeToSafeArea( element, f1_arg0 ) --[[ @ 0]]
		if not f2_local0 then
			f2_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f2_local0
	end ) --[[ @ 0]]
	self:addElement( FooterContainerFrontendRight ) --[[ @ 0]]
	self.FooterContainerFrontendRight = FooterContainerFrontendRight --[[ @ 0]]
	
	local Title = LUI.UIText.new( 0.5, 0.5, -557.5, 556.5, 0, 0, 140, 205 ) --[[ @ 0]]
	Title:setRGB( ColorSet.T8__BEIGE__HEADER.r, ColorSet.T8__BEIGE__HEADER.g, ColorSet.T8__BEIGE__HEADER.b ) --[[ @ 0]]
	Title:setText( LocalizeToUpperString( @"menu/inventory" ) ) --[[ @ 0]]
	Title:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Title:setAlignment( Engine[@"hash_67F8853DC3581AA4"]( Enum[@"luialignment"][@"lui_alignment_left"] ) ) --[[ @ 0]]
	Title:setAlignment( Engine[@"hash_67F8853DC3581AA4"]( Enum[@"luialignment"][@"lui_alignment_top"] ) ) --[[ @ 0]]
	self:addElement( Title ) --[[ @ 0]]
	self.Title = Title --[[ @ 0]]
	
	local InventoryImage = LUI.UIImage.new( 0.5, 0.5, -557, 557, 0, 0, 277, 803 ) --[[ @ 0]]
	self:addElement( InventoryImage ) --[[ @ 0]]
	self.InventoryImage = InventoryImage --[[ @ 0]]
	
	local AmmoInfo = CoD.FTUEDescriptionWidget.new( f1_local1, f1_arg0, 0.5, 0.5, -858.5, -557.5, 0, 0, 277, 336 ) --[[ @ 0]]
	AmmoInfo.InventoryTitleLabel:setText( LocalizeToUpperString( @"menu/ammo" ) ) --[[ @ 0]]
	self:addElement( AmmoInfo ) --[[ @ 0]]
	self.AmmoInfo = AmmoInfo --[[ @ 0]]
	
	local InventoryInfo = CoD.FTUEDescriptionWidget.new( f1_local1, f1_arg0, 0.5, 0.5, -217.5, 217.5, 0, 0, 848, 907 ) --[[ @ 0]]
	InventoryInfo.InventoryTitleLabel:setText( LocalizeToUpperString( @"menu/inventory" ) ) --[[ @ 0]]
	InventoryInfo.AmmoTextBox:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_54F2D8F7156A5524" ) ) --[[ @ 0]]
	self:addElement( InventoryInfo ) --[[ @ 0]]
	self.InventoryInfo = InventoryInfo --[[ @ 0]]
	
	local AttachmentInfo = CoD.FTUEDescriptionWidget.new( f1_local1, f1_arg0, 0.5, 0.5, -858.5, -557.5, 0, 0, 540, 599 ) --[[ @ 0]]
	AttachmentInfo.InventoryTitleLabel:setText( LocalizeToUpperString( @"menu/attachments" ) ) --[[ @ 0]]
	AttachmentInfo.AmmoTextBox:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_D71011C74942E2F" ) ) --[[ @ 0]]
	self:addElement( AttachmentInfo ) --[[ @ 0]]
	self.AttachmentInfo = AttachmentInfo --[[ @ 0]]
	
	local WeaponInfo = CoD.FTUEDescriptionWidget.new( f1_local1, f1_arg0, 0.5, 0.5, 557, 858, 0, 0, 277, 336 ) --[[ @ 0]]
	WeaponInfo.InventoryTitleLabel:setText( LocalizeToUpperString( @"menu/weapon" ) ) --[[ @ 0]]
	WeaponInfo.AmmoTextBox:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_4346B668FE3054" ) ) --[[ @ 0]]
	self:addElement( WeaponInfo ) --[[ @ 0]]
	self.WeaponInfo = WeaponInfo --[[ @ 0]]
	
	local ItemDescriptionInfo = CoD.FTUEDescriptionWidget.new( f1_local1, f1_arg0, 0.5, 0.5, 557, 858, 0, 0, 540, 599 ) --[[ @ 0]]
	ItemDescriptionInfo.InventoryTitleLabel:setText( LocalizeToUpperString( @"hash_2C3F70FE9C51A42" ) ) --[[ @ 0]]
	ItemDescriptionInfo.AmmoTextBox:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_51A0161A55165DD2" ) ) --[[ @ 0]]
	self:addElement( ItemDescriptionInfo ) --[[ @ 0]]
	self.ItemDescriptionInfo = ItemDescriptionInfo --[[ @ 0]]
	
	local LoadoutInfo = CoD.FTUEDescriptionWidget.new( f1_local1, f1_arg0, 0.5, 0.5, 557, 858, 0, 0, 697, 756 ) --[[ @ 0]]
	LoadoutInfo.InventoryTitleLabel:setText( LocalizeToUpperString( @"menu/loadout" ) ) --[[ @ 0]]
	LoadoutInfo.AmmoTextBox:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_674AC65E586B8B20" ) ) --[[ @ 0]]
	self:addElement( LoadoutInfo ) --[[ @ 0]]
	self.LoadoutInfo = LoadoutInfo --[[ @ 0]]
	
	local PCButton = nil --[[ @ 0]]
	
	PCButton = CoD.PC_MOTD_Buttons.new( f1_local1, f1_arg0, 0.18, 0.18, -120, 120, 0.8, 0.8, 0, 80 ) --[[ @ 0]]
	PCButton.OptionText:setText( LocalizeToUpperString( @"menu/continue" ) ) --[[ @ 0]]
	PCButton:linkToElementModel( self, "image", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			PCButton.Icon:setImage( RegisterImage( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	PCButton:registerEventHandler( "gain_focus", function ( element, event )
		local f4_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f4_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f4_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f4_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( PCButton, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		CoD.FTUEUtility.AdvanceCurrentSequence( self, controller ) --[[ @ 0]]
		GoBack( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_0", nil, "ui_confirm" ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	self:addElement( PCButton ) --[[ @ 0]]
	self.PCButton = PCButton --[[ @ 0]]
	
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"], "MOUSE1", function ( element, menu, controller, model )
		if not IsRepeatButtonPress( model ) then
			CoD.FTUEUtility.AdvanceCurrentSequence( self, controller ) --[[ @ 0]]
			GoBack( self, controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not IsRepeatButtonPress( nil ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/continue", nil, "MOUSE1" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	FooterContainerFrontendRight:setModel( self.buttonModel, f1_arg0 ) --[[ @ 0]]
	if CoD.isPC then
		FooterContainerFrontendRight.id = "FooterContainerFrontendRight" --[[ @ 0]]
	end
	if CoD.isPC then
		PCButton.id = "PCButton" --[[ @ 0]]
	end
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.FTUEWZInventoryMenu.__onClose = function ( f9_arg0 )
	f9_arg0.StartMenuBackground:close() --[[ @ 0]]
	f9_arg0.FooterContainerFrontendRight:close() --[[ @ 0]]
	f9_arg0.AmmoInfo:close() --[[ @ 0]]
	f9_arg0.InventoryInfo:close() --[[ @ 0]]
	f9_arg0.AttachmentInfo:close() --[[ @ 0]]
	f9_arg0.WeaponInfo:close() --[[ @ 0]]
	f9_arg0.ItemDescriptionInfo:close() --[[ @ 0]]
	f9_arg0.LoadoutInfo:close() --[[ @ 0]]
	f9_arg0.PCButton:close() --[[ @ 0]]
end
 --[[ @ 0]]
