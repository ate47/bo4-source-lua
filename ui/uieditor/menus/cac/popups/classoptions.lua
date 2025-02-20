-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
require( "ui/uieditor/widgets/cac/classoptionswidget" ) --[[ @ 0]]

CoD.ClassOptions = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.ClassOptions = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "ClassOptions", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	CoD.FrontendCACUtility.ClassOptionsPreLoad( self, f1_arg0 ) --[[ @ 0]]
	CoD.BaseUtility.SetPropertiesFromUserData( self, f1_arg1 ) --[[ @ 0]]
	self:setClass( CoD.ClassOptions ) --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local BlackfadeBlur = LUI.UIImage.new( 0, 1.13, -5, 5, 0, 1, -5, 5 ) --[[ @ 0]]
	BlackfadeBlur:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BlackfadeBlur:setAlpha( 0.6 ) --[[ @ 0]]
	self:addElement( BlackfadeBlur ) --[[ @ 0]]
	self.BlackfadeBlur = BlackfadeBlur --[[ @ 0]]
	
	local ClassOptionsWidget = CoD.ClassOptionsWidget.new( f1_local1, f1_arg0, 0.5, 0.5, -960, 960, 0.5, 0.5, -540, 540 ) --[[ @ 0]]
	ClassOptionsWidget.ClassNamelLabel:setText( LocalizeToUpperString( @"hash_6DD163B6B797AB91" ) ) --[[ @ 0]]
	ClassOptionsWidget:registerEventHandler( "menu_loaded", function ( element, event )
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
	self:addElement( ClassOptionsWidget ) --[[ @ 0]]
	self.ClassOptionsWidget = ClassOptionsWidget --[[ @ 0]]
	
	self:registerEventHandler( "ui_keyboard_input", function ( self, event )
		local f3_local0 = nil --[[ @ 0]]
		CallCustomElementFunction_Self( self, "handleKeyboardComplete", self, f1_arg0, event ) --[[ @ 0]]
		if not f3_local0 then
			f3_local0 = self:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f3_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"LUIButton"][@"hash_1805EFA15E9E7E5A"], "ui_contextual_1", function ( element, menu, controller, model )
		GoBack( self, controller ) --[[ @ 0]]
		ClearMenuSavedState( menu ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_1805EFA15E9E7E5A"], @"hash_370A9FDC87CD3D48", nil, "ui_contextual_1" ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "close", function ( element )
		if CoD.ModelUtility.IsControllerModelValueNonEmptyString( f1_arg0, "RenameClassText" ) then
			CoD.CACUtility.RenameCustomClass( self, f1_local1, f1_arg0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	ClassOptionsWidget.id = "ClassOptionsWidget" --[[ @ 0]]
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	self.__defaultFocus = ClassOptionsWidget --[[ @ 0]]
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
CoD.ClassOptions.__onClose = function ( f7_arg0 )
	f7_arg0.ClassOptionsWidget:close() --[[ @ 0]]
end
 --[[ @ 0]]
