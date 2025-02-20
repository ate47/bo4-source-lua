-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "ui/uieditor/widgets/director/directorselectbuttonlines" ) --[[ @ 0]]
require( "ui/uieditor/widgets/footer/footercontainer_frontend_right" ) --[[ @ 0]]
require( "x64:3efe3159fb7dfed3" ) --[[ @ 0]]
require( "ui/uieditor/widgets/startmenu/startmenu_background" ) --[[ @ 0]]
require( "x64:3f027dcc6409e42c" ) --[[ @ 0]]

CoD.FTUEZMInventoryMenu = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.FTUEZMInventoryMenu = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "FTUEZMInventoryMenu", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	EnableAnyController( self, f1_arg0 ) --[[ @ 0]]
	self:setClass( CoD.FTUEZMInventoryMenu ) --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_local1:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local StartMenuBackground = CoD.StartMenu_Background.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	StartMenuBackground:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( StartMenuBackground ) --[[ @ 0]]
	self.StartMenuBackground = StartMenuBackground --[[ @ 0]]
	
	local backing = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	backing:setRGB( 0, 0, 0 ) --[[ @ 0]]
	backing:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	backing:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( backing ) --[[ @ 0]]
	self.backing = backing --[[ @ 0]]
	
	local BackgroundImage = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BackgroundImage:setAlpha( 0.85 ) --[[ @ 0]]
	BackgroundImage:setImage( RegisterImage( @"uie_fe_cp_background" ) ) --[[ @ 0]]
	self:addElement( BackgroundImage ) --[[ @ 0]]
	self.BackgroundImage = BackgroundImage --[[ @ 0]]
	
	local FooterContainerFrontendRight = CoD.FooterContainer_Frontend_Right.new( f1_local1, f1_arg0, 0, 1, 0, 0, 1, 1, -48, 0 ) --[[ @ 0]]
	FooterContainerFrontendRight:registerEventHandler( "menu_loaded", function ( element, event )
		local f2_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f2_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f2_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		if not IsPC() then
			SizeToSafeArea( element, f1_arg0 ) --[[ @ 0]]
		end
		if not f2_local0 then
			f2_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f2_local0
	end ) --[[ @ 0]]
	self:addElement( FooterContainerFrontendRight ) --[[ @ 0]]
	self.FooterContainerFrontendRight = FooterContainerFrontendRight --[[ @ 0]]
	
	local Title = LUI.UIText.new( 0.5, 0.5, -867, 414, 0, 0, 102, 167 ) --[[ @ 0]]
	Title:setRGB( ColorSet.GroupName.r, ColorSet.GroupName.g, ColorSet.GroupName.b ) --[[ @ 0]]
	Title:setText( LocalizeToUpperString( @"hash_3AADDF41A08B2C4E" ) ) --[[ @ 0]]
	Title:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Title:setAlignment( Engine[@"hash_67F8853DC3581AA4"]( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) ) --[[ @ 0]]
	Title:setAlignment( Engine[@"hash_67F8853DC3581AA4"]( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) ) --[[ @ 0]]
	self:addElement( Title ) --[[ @ 0]]
	self.Title = Title --[[ @ 0]]
	
	local DescriptionTextBox = LUI.UIText.new( 0.5, 0.5, -864, 854, 0, 0, 167, 189 ) --[[ @ 0]]
	DescriptionTextBox:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	DescriptionTextBox:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_6702AC7A44CEB8CA" ) ) --[[ @ 0]]
	DescriptionTextBox:setTTF( "dinnext_regular" ) --[[ @ 0]]
	DescriptionTextBox:setLineSpacing( 5 ) --[[ @ 0]]
	DescriptionTextBox:setAlignment( Engine[@"hash_67F8853DC3581AA4"]( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) ) --[[ @ 0]]
	DescriptionTextBox:setAlignment( Engine[@"hash_67F8853DC3581AA4"]( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) ) --[[ @ 0]]
	self:addElement( DescriptionTextBox ) --[[ @ 0]]
	self.DescriptionTextBox = DescriptionTextBox --[[ @ 0]]
	
	local InventoryImage = LUI.UIImage.new( 0.5, 0.5, -267, 273, 0, 0, 306.5, 630.5 ) --[[ @ 0]]
	InventoryImage:setImage( RegisterImage( @"hash_41A4837B919A0460" ) ) --[[ @ 0]]
	self:addElement( InventoryImage ) --[[ @ 0]]
	self.InventoryImage = InventoryImage --[[ @ 0]]
	
	local InventoryImage2 = LUI.UIImage.new( 0.5, 0.5, -552.5, -298.5, 0, 0, 347.5, 771.5 ) --[[ @ 0]]
	InventoryImage2:setImage( RegisterImage( @"hash_53335D002A10CBF6" ) ) --[[ @ 0]]
	self:addElement( InventoryImage2 ) --[[ @ 0]]
	self.InventoryImage2 = InventoryImage2 --[[ @ 0]]
	
	local InventoryImage2PC = nil --[[ @ 0]]
	
	InventoryImage2PC = LUI.UIImage.new( 0.5, 0.5, -566, -286, 0, 0, 306.5, 773.5 ) --[[ @ 0]]
	InventoryImage2PC:setAlpha( 0 ) --[[ @ 0]]
	InventoryImage2PC:setImage( RegisterImage( @"uie_ui_menu_ftue_zm_loadouts_elixirs_talismans_pc" ) ) --[[ @ 0]]
	self:addElement( InventoryImage2PC ) --[[ @ 0]]
	self.InventoryImage2PC = InventoryImage2PC --[[ @ 0]]
	
	local InventoryImage3 = LUI.UIImage.new( 0.5, 0.5, 320.5, 536.5, 0, 0, 306.5, 770.5 ) --[[ @ 0]]
	InventoryImage3:setImage( RegisterImage( @"hash_1B52F80A9B03D861" ) ) --[[ @ 0]]
	self:addElement( InventoryImage3 ) --[[ @ 0]]
	self.InventoryImage3 = InventoryImage3 --[[ @ 0]]
	
	local ElixirInfo = CoD.FTUEDescriptionWidget.new( f1_local1, f1_arg0, 0.5, 0.5, -864, -563, 0, 0, 316, 375 ) --[[ @ 0]]
	ElixirInfo.InventoryTitleLabel:setText( LocalizeToUpperString( @"hash_517431E269BACA69" ) ) --[[ @ 0]]
	ElixirInfo.AmmoTextBox:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_6EE20D5C5263C58C" ) ) --[[ @ 0]]
	self:addElement( ElixirInfo ) --[[ @ 0]]
	self.ElixirInfo = ElixirInfo --[[ @ 0]]
	
	local TalismanInfo = CoD.FTUEDescriptionWidget.new( f1_local1, f1_arg0, 0.5, 0.5, -864, -563, 0, 0, 655.5, 714.5 ) --[[ @ 0]]
	TalismanInfo.InventoryTitleLabel:setText( LocalizeToUpperString( @"hash_4813595698C26EB" ) ) --[[ @ 0]]
	TalismanInfo.AmmoTextBox:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_5862E9BF360BCC1B" ) ) --[[ @ 0]]
	self:addElement( TalismanInfo ) --[[ @ 0]]
	self.TalismanInfo = TalismanInfo --[[ @ 0]]
	
	local PerksInfo = CoD.FTUEDescriptionWidget.new( f1_local1, f1_arg0, 0.5, 0.5, -267, 263, 0, 0, 655.5, 714.5 ) --[[ @ 0]]
	PerksInfo.InventoryTitleLabel:setText( LocalizeToUpperString( @"hash_74790C7DF71F21D4" ) ) --[[ @ 0]]
	PerksInfo.AmmoTextBox:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_776240345D1A215C" ) ) --[[ @ 0]]
	self:addElement( PerksInfo ) --[[ @ 0]]
	self.PerksInfo = PerksInfo --[[ @ 0]]
	
	local SpecialWeaponInfo = CoD.FTUEDescriptionWidget.new( f1_local1, f1_arg0, 0.5, 0.5, 563, 864, 0, 0, 306.5, 365.5 ) --[[ @ 0]]
	SpecialWeaponInfo.InventoryTitleLabel:setText( LocalizeToUpperString( @"hash_3F52AF57D201C5B0" ) ) --[[ @ 0]]
	SpecialWeaponInfo.AmmoTextBox:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_3050532E2C661D78" ) ) --[[ @ 0]]
	self:addElement( SpecialWeaponInfo ) --[[ @ 0]]
	self.SpecialWeaponInfo = SpecialWeaponInfo --[[ @ 0]]
	
	local EquipmentInfo = CoD.FTUEDescriptionWidget.new( f1_local1, f1_arg0, 0.5, 0.5, 563, 864, 0, 0, 534, 593 ) --[[ @ 0]]
	EquipmentInfo.InventoryTitleLabel:setText( LocalizeToUpperString( @"hash_1485800715B09811" ) ) --[[ @ 0]]
	EquipmentInfo.AmmoTextBox:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_5F090683CB4F3BF9" ) ) --[[ @ 0]]
	self:addElement( EquipmentInfo ) --[[ @ 0]]
	self.EquipmentInfo = EquipmentInfo --[[ @ 0]]
	
	local StartingWeaponInfo = CoD.FTUEDescriptionWidget.new( f1_local1, f1_arg0, 0.5, 0.5, 563, 864, 0, 0, 655.5, 714.5 ) --[[ @ 0]]
	StartingWeaponInfo.InventoryTitleLabel:setText( LocalizeToUpperString( @"hash_6BDF3E566D43D790" ) ) --[[ @ 0]]
	StartingWeaponInfo.AmmoTextBox:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_3E24AADA1E3D89B8" ) ) --[[ @ 0]]
	self:addElement( StartingWeaponInfo ) --[[ @ 0]]
	self.StartingWeaponInfo = StartingWeaponInfo --[[ @ 0]]
	
	local PCButton = nil --[[ @ 0]]
	
	PCButton = CoD.PC_MOTD_Buttons.new( f1_local1, f1_arg0, 0.5, 0.5, -734.5, -494.5, 0.8, 0.8, 48.5, 128.5 ) --[[ @ 0]]
	PCButton.OptionText:setText( LocalizeToUpperString( @"hash_66393FF34EA56966" ) ) --[[ @ 0]]
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
		CoD.Menu.UpdateButtonShownState( element, f1_local1, f1_arg0, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		return f4_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( PCButton, f1_arg0, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], "ui_confirm", function ( element, menu, controller, model )
		CoD.FTUEUtility.AdvanceCurrentSequence( self, controller ) --[[ @ 0]]
		GoBack( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_0", nil, "ui_confirm" ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	self:addElement( PCButton ) --[[ @ 0]]
	self.PCButton = PCButton --[[ @ 0]]
	
	local FrontendFocusPip = LUI.UIImage.new( 0.5, 0.5, -523.5, -326.5, 0, 0, 376, 571 ) --[[ @ 0]]
	FrontendFocusPip:setAlpha( 0.05 ) --[[ @ 0]]
	FrontendFocusPip:setZRot( 45 ) --[[ @ 0]]
	FrontendFocusPip:setImage( RegisterImage( @"uie_ui_menu_store_focus_pips" ) ) --[[ @ 0]]
	FrontendFocusPip:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FrontendFocusPip:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FrontendFocusPip:setupNineSliceShader( 44, 44 ) --[[ @ 0]]
	self:addElement( FrontendFocusPip ) --[[ @ 0]]
	self.FrontendFocusPip = FrontendFocusPip --[[ @ 0]]
	
	local Lines = CoD.DirectorSelectButtonLines.new( f1_local1, f1_arg0, 0.5, 0.5, -266, 273, 0.28, 0.28, 0, 326 ) --[[ @ 0]]
	Lines:setRGB( 0.64, 0.71, 0.78 ) --[[ @ 0]]
	self:addElement( Lines ) --[[ @ 0]]
	self.Lines = Lines --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "KBM",
			condition = function ( menu, element, event )
				return IsPC() and IsMouseOrKeyboard( f1_arg0 )
			end
		}
	} ) --[[ @ 0]]
	self:appendEventHandler( "input_source_changed", function ( f8_arg0, f8_arg1 )
		f8_arg1.menu = f8_arg1.menu or f1_local1 --[[ @ 0]]
		f1_local1:updateElementState( self, f8_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local21 = self --[[ @ 0]]
	local f1_local22 = self.subscribeToModel --[[ @ 0]]
	local f1_local23 = Engine[@"GetModelForController"]( f1_arg0 ) --[[ @ 0]]
	f1_local22( f1_local21, f1_local23.LastInput, function ( f9_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f9_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], "MOUSE1", function ( element, menu, controller, model )
		CoD.FTUEUtility.AdvanceCurrentSequence( self, controller ) --[[ @ 0]]
		GoBack( self, controller ) --[[ @ 0]]
		PlaySoundAlias( "uin_toggle_generic" ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_66393FF34EA56966", nil, "MOUSE1" ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	self.__on_menuOpened_self = function ( f12_arg0, f12_arg1, f12_arg2, f12_arg3 )
		local f12_local0 = self --[[ @ 0]]
		PlaySoundAlias( "uin_message_screen_open" ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	f1_local1:addMenuOpenedCallback( self.__on_menuOpened_self ) --[[ @ 0]]
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
	self.__on_close_removeOverrides = function ()
		f1_local1:removeMenuOpenedCallback( self.__on_menuOpened_self ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local22 = self --[[ @ 0]]
	MenuHidesFreeCursor( f1_local1, f1_arg0 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.FTUEZMInventoryMenu.__resetProperties = function ( f14_arg0 )
	f14_arg0.ElixirInfo:completeAnimation() --[[ @ 0]]
	f14_arg0.InventoryImage2PC:completeAnimation() --[[ @ 0]]
	f14_arg0.FrontendFocusPip:completeAnimation() --[[ @ 0]]
	f14_arg0.InventoryImage2:completeAnimation() --[[ @ 0]]
	f14_arg0.ElixirInfo.AmmoTextBox:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_6EE20D5C5263C58C" ) ) --[[ @ 0]]
	f14_arg0.InventoryImage2PC:setAlpha( 0 ) --[[ @ 0]]
	f14_arg0.FrontendFocusPip:setAlpha( 0.05 ) --[[ @ 0]]
	f14_arg0.InventoryImage2:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.FTUEZMInventoryMenu.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	KBM = {
		DefaultClip = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f16_arg0.InventoryImage2:completeAnimation() --[[ @ 0]]
			f16_arg0.InventoryImage2:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.InventoryImage2 ) --[[ @ 0]]
			f16_arg0.InventoryImage2PC:completeAnimation() --[[ @ 0]]
			f16_arg0.InventoryImage2PC:setAlpha( 1 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.InventoryImage2PC ) --[[ @ 0]]
			f16_arg0.ElixirInfo:completeAnimation() --[[ @ 0]]
			f16_arg0.ElixirInfo.AmmoTextBox:completeAnimation() --[[ @ 0]]
			f16_arg0.ElixirInfo.AmmoTextBox:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_506026B677F033B3" ) ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.ElixirInfo ) --[[ @ 0]]
			f16_arg0.FrontendFocusPip:completeAnimation() --[[ @ 0]]
			f16_arg0.FrontendFocusPip:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.FrontendFocusPip ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.FTUEZMInventoryMenu.__onClose = function ( f17_arg0 )
	f17_arg0.__on_close_removeOverrides() --[[ @ 0]]
	f17_arg0.StartMenuBackground:close() --[[ @ 0]]
	f17_arg0.FooterContainerFrontendRight:close() --[[ @ 0]]
	f17_arg0.ElixirInfo:close() --[[ @ 0]]
	f17_arg0.TalismanInfo:close() --[[ @ 0]]
	f17_arg0.PerksInfo:close() --[[ @ 0]]
	f17_arg0.SpecialWeaponInfo:close() --[[ @ 0]]
	f17_arg0.EquipmentInfo:close() --[[ @ 0]]
	f17_arg0.StartingWeaponInfo:close() --[[ @ 0]]
	f17_arg0.PCButton:close() --[[ @ 0]]
	f17_arg0.Lines:close() --[[ @ 0]]
end
 --[[ @ 0]]
