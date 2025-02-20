-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
require( "ui/uieditor/widgets/systemoverlays/featureoverlay_button" ) --[[ @ 0]]

CoD.PC_StartMenu_Options_HUDBounds_Buttons = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PC_StartMenu_Options_HUDBounds_Buttons.__defaultWidth = 711 --[[ @ 0]]
CoD.PC_StartMenu_Options_HUDBounds_Buttons.__defaultHeight = 60 --[[ @ 0]]
CoD.PC_StartMenu_Options_HUDBounds_Buttons.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIHorizontalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 10, false ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Left ) --[[ @ 0]]
	self:setClass( CoD.PC_StartMenu_Options_HUDBounds_Buttons ) --[[ @ 0]]
	self.id = "PC_StartMenu_Options_HUDBounds_Buttons" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local confirmButton = CoD.featureOverlay_Button.new( f1_arg0, f1_arg1, 0, 0, 0, 230, 0, 0, 0, 60 ) --[[ @ 0]]
	confirmButton.ButtonContainer.Blur:setAlpha( 0 ) --[[ @ 0]]
	confirmButton.ButtonContainer.Title:setText( LocalizeToUpperString( @"hash_67D14DF1D6CBE990" ) ) --[[ @ 0]]
	confirmButton.ButtonContainer.Icon:setRGB( 0.4, 0.55, 0.22 ) --[[ @ 0]]
	confirmButton.ButtonContainer.Icon:setImage( RegisterImage( @"uie_success_icon" ) ) --[[ @ 0]]
	confirmButton:registerEventHandler( "gain_focus", function ( element, event )
		local f2_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f2_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f2_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		return f2_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( confirmButton, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], "MOUSE1", function ( element, menu, controller, model )
		DispatchEventToRoot( self, "update_safe_area", controller ) --[[ @ 0]]
		GoBack( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_0", nil, "MOUSE1" ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	self:addElement( confirmButton ) --[[ @ 0]]
	self.confirmButton = confirmButton --[[ @ 0]]
	
	local cancelButton = CoD.featureOverlay_Button.new( f1_arg0, f1_arg1, 0.5, 0.5, -115, 115, 0, 0, 0, 60 ) --[[ @ 0]]
	cancelButton.ButtonContainer.Blur:setAlpha( 0 ) --[[ @ 0]]
	cancelButton.ButtonContainer.Title:setText( LocalizeToUpperString( @"hash_7C2E92C54C2BE289" ) ) --[[ @ 0]]
	cancelButton.ButtonContainer.Icon:setRGB( 0.72, 0.21, 0.21 ) --[[ @ 0]]
	cancelButton.ButtonContainer.Icon:setImage( RegisterImage( @"uie_error_icon" ) ) --[[ @ 0]]
	cancelButton:registerEventHandler( "gain_focus", function ( element, event )
		local f5_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f5_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f5_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		return f5_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( cancelButton, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], "MOUSE1", function ( element, menu, controller, model )
		SetSafeArea( self, menu, controller, "HUDBoundsTweakable_vertical", CoD.SafeArea.InitialY ) --[[ @ 0]]
		SetSafeArea( self, menu, controller, "HUDBoundsTweakable_horizontal", CoD.SafeArea.InitialX ) --[[ @ 0]]
		DispatchEventToRoot( self, "update_safe_area", controller ) --[[ @ 0]]
		GoBack( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_0", nil, "MOUSE1" ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	self:addElement( cancelButton ) --[[ @ 0]]
	self.cancelButton = cancelButton --[[ @ 0]]
	
	local resetButton = CoD.featureOverlay_Button.new( f1_arg0, f1_arg1, 1, 1, -230, 0, 0, 0, 0, 60 ) --[[ @ 0]]
	resetButton.ButtonContainer.Blur:setAlpha( 0 ) --[[ @ 0]]
	resetButton.ButtonContainer.Title:setText( LocalizeToUpperString( @"hash_49BC2B49A2A1CCB1" ) ) --[[ @ 0]]
	resetButton.ButtonContainer.Icon:setRGB( 0.42, 0.42, 0.42 ) --[[ @ 0]]
	resetButton.ButtonContainer.Icon:setImage( RegisterImage( @"uie_reset_icon" ) ) --[[ @ 0]]
	resetButton:registerEventHandler( "gain_focus", function ( element, event )
		local f8_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f8_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f8_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		return f8_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( resetButton, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], "MOUSE1", function ( element, menu, controller, model )
		ResetSafeAreaHorizontal( self, self, controller ) --[[ @ 0]]
		SetSafeArea( self, self, controller, "HUDBoundsTweakable_vertical", CoD.SafeArea.Maximum ) --[[ @ 0]]
		DispatchEventToRoot( element, "update_safe_area", controller ) --[[ @ 0]]
		GoBack( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_0", nil, "MOUSE1" ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	self:addElement( resetButton ) --[[ @ 0]]
	self.resetButton = resetButton --[[ @ 0]]
	
	confirmButton.id = "confirmButton" --[[ @ 0]]
	cancelButton.id = "cancelButton" --[[ @ 0]]
	resetButton.id = "resetButton" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.PC_StartMenu_Options_HUDBounds_Buttons.__onClose = function ( f11_arg0 )
	f11_arg0.confirmButton:close() --[[ @ 0]]
	f11_arg0.cancelButton:close() --[[ @ 0]]
	f11_arg0.resetButton:close() --[[ @ 0]]
end
 --[[ @ 0]]
