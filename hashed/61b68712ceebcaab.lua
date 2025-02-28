-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/emptyfocusable" ) --[[ @ 0]]

CoD.PC_Prestige_Slider = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PC_Prestige_Slider.__defaultWidth = 1038 --[[ @ 0]]
CoD.PC_Prestige_Slider.__defaultHeight = 16 --[[ @ 0]]
CoD.PC_Prestige_Slider.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PC_Prestige_Slider ) --[[ @ 0]]
	self.id = "PC_Prestige_Slider" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	
	local slider = LUI.UIImage.new( 0, 1, 18, -18, 0, 1, 5, -5 ) --[[ @ 0]]
	slider:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
	self:addElement( slider ) --[[ @ 0]]
	self.slider = slider --[[ @ 0]]
	
	local emptyFocusable = CoD.emptyFocusable.new( f1_arg0, f1_arg1, 0.5, 0.5, -519, 519, 0.5, 0.5, -9, 9 ) --[[ @ 0]]
	self:addElement( emptyFocusable ) --[[ @ 0]]
	self.emptyFocusable = emptyFocusable --[[ @ 0]]
	
	emptyFocusable.id = "emptyFocusable" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.PC_Prestige_Slider.__onClose = function ( f2_arg0 )
	f2_arg0.emptyFocusable:close() --[[ @ 0]]
end
 --[[ @ 0]]
