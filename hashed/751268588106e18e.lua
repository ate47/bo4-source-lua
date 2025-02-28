-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/pc/hud/keypromptbacking" ) --[[ @ 0]]

CoD.PC_TelemetryItem = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PC_TelemetryItem.__defaultWidth = 93 --[[ @ 0]]
CoD.PC_TelemetryItem.__defaultHeight = 15 --[[ @ 0]]
CoD.PC_TelemetryItem.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PC_TelemetryItem ) --[[ @ 0]]
	self.id = "PC_TelemetryItem" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local KeyPromptBacking = CoD.KeyPromptBacking.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( KeyPromptBacking ) --[[ @ 0]]
	self.KeyPromptBacking = KeyPromptBacking --[[ @ 0]]
	
	local Label = LUI.UIText.new( 0, 0, 3, 40, 0.5, 0.5, -7.5, 7.5 ) --[[ @ 0]]
	Label:setRGB( ColorSet.T8__BUTTON_UNSELECTED_MAIN.r, ColorSet.T8__BUTTON_UNSELECTED_MAIN.g, ColorSet.T8__BUTTON_UNSELECTED_MAIN.b ) --[[ @ 0]]
	Label:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/new" ) ) --[[ @ 0]]
	Label:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Label:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( Label, "setText", function ( element, controller )
		if not HasProperty( element, "initialWidthSet" ) then
			SetElementProperty( element, "initialWidthSet", true ) --[[ @ 0]]
			ScaleWidgetToLabelCenteredWithMinimum( self, element, 5, 93 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Label ) --[[ @ 0]]
	self.Label = Label --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.PC_TelemetryItem.__onClose = function ( f3_arg0 )
	f3_arg0.KeyPromptBacking:close() --[[ @ 0]]
end
 --[[ @ 0]]
