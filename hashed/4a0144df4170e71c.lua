-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "ui/uieditor/widgets/emptyfocusable" ) --[[ @ 0]]
require( "ui/uieditor/widgets/startmenu/startmenu_options_slider_item_arrow" ) --[[ @ 0]]

local PostLoadFunc = function ( self, controller, menu )
	if CoD.isPC then
		self.m_preventFromBeingCurrentMouseFocus = true --[[ @ 0]]
		self:setForceMouseEventDispatch( true ) --[[ @ 0]]
	end
end
 --[[ @ 0]]
CoD.demo_options_slider_control_item = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.demo_options_slider_control_item.__defaultWidth = 375 --[[ @ 0]]
CoD.demo_options_slider_control_item.__defaultHeight = 45 --[[ @ 0]]
CoD.demo_options_slider_control_item.new = function ( f2_arg0, f2_arg1, f2_arg2, f2_arg3, f2_arg4, f2_arg5, f2_arg6, f2_arg7, f2_arg8, f2_arg9 )
	local self = LUI.UIElement.new( f2_arg2, f2_arg3, f2_arg4, f2_arg5, f2_arg6, f2_arg7, f2_arg8, f2_arg9 ) --[[ @ 0]]
	self:setClass( CoD.demo_options_slider_control_item ) --[[ @ 0]]
	self.id = "demo_options_slider_control_item" --[[ @ 0]]
	self.soundSet = "ChooseDecal" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	f2_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local TextBox = LUI.UIText.new( 0, 1, 0, 0, 0.5, 0.5, -15, 15 ) --[[ @ 0]]
	TextBox:setTTF( "dinnext_regular" ) --[[ @ 0]]
	TextBox:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	TextBox:setAlignment( Enum[@"luialignment"][@"lui_alignment_middle"] ) --[[ @ 0]]
	TextBox:linkToElementModel( self, "text", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			TextBox:setText( Engine[@"hash_4F9F1239CFD921FE"]( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( TextBox ) --[[ @ 0]]
	self.TextBox = TextBox --[[ @ 0]]
	
	local left = CoD.StartMenu_Options_Slider_Item_Arrow.new( f2_arg0, f2_arg1, 0, 0, -31, -1, 0.5, 0.5, -15, 15 ) --[[ @ 0]]
	left:setZRot( -90 ) --[[ @ 0]]
	left:registerEventHandler( "gain_focus", function ( element, event )
		local f4_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f4_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f4_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f2_arg0, f2_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f4_local0
	end ) --[[ @ 0]]
	f2_arg0:AddButtonCallbackFunction( left, f2_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], "MOUSE1", function ( element, menu, controller, model )
		CallElementModel( self, self, controller, "prevAction" ) --[[ @ 0]]
		SendButtonPressToMenuEx( menu, controller, Enum[@"luibutton"][@"lui_key_left"] ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "MOUSE1" ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	self:addElement( left ) --[[ @ 0]]
	self.left = left --[[ @ 0]]
	
	local right = CoD.StartMenu_Options_Slider_Item_Arrow.new( f2_arg0, f2_arg1, 1, 1, 1, 31, 0.5, 0.5, -15, 15 ) --[[ @ 0]]
	right:setYRot( 180 ) --[[ @ 0]]
	right:setZRot( -90 ) --[[ @ 0]]
	right:registerEventHandler( "gain_focus", function ( element, event )
		local f7_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f7_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f7_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f2_arg0, f2_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f7_local0
	end ) --[[ @ 0]]
	f2_arg0:AddButtonCallbackFunction( right, f2_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], "MOUSE1", function ( element, menu, controller, model )
		CallElementModel( self, self, controller, "nextAction" ) --[[ @ 0]]
		SendButtonPressToMenuEx( menu, controller, Enum[@"luibutton"][@"lui_key_right"] ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "MOUSE1" ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	self:addElement( right ) --[[ @ 0]]
	self.right = right --[[ @ 0]]
	
	local emptyFocusable = CoD.emptyFocusable.new( f2_arg0, f2_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( emptyFocusable ) --[[ @ 0]]
	self.emptyFocusable = emptyFocusable --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalFirst( self, "setState", function ( element, controller, f10_arg2, f10_arg3, f10_arg4 )
		if IsElementInState( element, "DefaultState" ) then
			SetElementStateByElementName( self, "arrow", controller, "DefaultState" ) --[[ @ 0]]
			SetElementStateByElementName( self, "arrow", controller, "DefaultState" ) --[[ @ 0]]
			SetElementStateByElementName( self, "left", controller, "DefaultState" ) --[[ @ 0]]
			SetElementStateByElementName( self, "right", controller, "DefaultState" ) --[[ @ 0]]
		elseif IsElementInState( element, "ArrowsHidden" ) then
			SetElementStateByElementName( self, "arrow", controller, "Hidden" ) --[[ @ 0]]
			SetElementStateByElementName( self, "arrow0", controller, "Hidden" ) --[[ @ 0]]
			SetElementStateByElementName( self, "left", controller, "Hidden" ) --[[ @ 0]]
			SetElementStateByElementName( self, "right", controller, "Hidden" ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	left.id = "left" --[[ @ 0]]
	right.id = "right" --[[ @ 0]]
	emptyFocusable.id = "emptyFocusable" --[[ @ 0]]
	self.__defaultFocus = left --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f2_arg1, f2_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.demo_options_slider_control_item.__resetProperties = function ( f11_arg0 )
	f11_arg0.TextBox:completeAnimation() --[[ @ 0]]
	f11_arg0.right:completeAnimation() --[[ @ 0]]
	f11_arg0.left:completeAnimation() --[[ @ 0]]
	f11_arg0.TextBox:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f11_arg0.right:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.left:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.demo_options_slider_control_item.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f13_arg0.TextBox:completeAnimation() --[[ @ 0]]
			f13_arg0.TextBox:setRGB( ColorSet.FocusColor.r, ColorSet.FocusColor.g, ColorSet.FocusColor.b ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.TextBox ) --[[ @ 0]]
		end
	},
	ArrowsHidden = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f14_arg0.left:completeAnimation() --[[ @ 0]]
			f14_arg0.left:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.left ) --[[ @ 0]]
			f14_arg0.right:completeAnimation() --[[ @ 0]]
			f14_arg0.right:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.right ) --[[ @ 0]]
		end,
		ChildFocus = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f15_arg0.TextBox:completeAnimation() --[[ @ 0]]
			f15_arg0.TextBox:setRGB( 1, 0.41, 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.TextBox ) --[[ @ 0]]
			f15_arg0.left:completeAnimation() --[[ @ 0]]
			f15_arg0.left:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.left ) --[[ @ 0]]
			f15_arg0.right:completeAnimation() --[[ @ 0]]
			f15_arg0.right:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.right ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.demo_options_slider_control_item.__onClose = function ( f16_arg0 )
	f16_arg0.TextBox:close() --[[ @ 0]]
	f16_arg0.left:close() --[[ @ 0]]
	f16_arg0.right:close() --[[ @ 0]]
	f16_arg0.emptyFocusable:close() --[[ @ 0]]
end
 --[[ @ 0]]
