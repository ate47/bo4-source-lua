-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.FE_ListHeader = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.FE_ListHeader.__defaultWidth = 175 --[[ @ 0]]
CoD.FE_ListHeader.__defaultHeight = 42 --[[ @ 0]]
CoD.FE_ListHeader.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.FE_ListHeader ) --[[ @ 0]]
	self.id = "FE_ListHeader" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local Label = LUI.UIText.new( 0, 1, 4, -4, 0.5, 0.5, -15, 15 ) --[[ @ 0]]
	Label:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	Label:setText( "" ) --[[ @ 0]]
	Label:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Label:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_2AE166D9BA8C6907" ) ) --[[ @ 0]]
	Label:setShaderVector( 0, 0.06, 0, 0, 0 ) --[[ @ 0]]
	Label:setShaderVector( 1, 0.02, 0, 0, 0 ) --[[ @ 0]]
	Label:setShaderVector( 2, 1, 0, 0, 0 ) --[[ @ 0]]
	Label:setLetterSpacing( 1 ) --[[ @ 0]]
	Label:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Label:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( Label, "setText", function ( element, controller )
		ScaleWidgetToLabel( self, element, 0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Label ) --[[ @ 0]]
	self.Label = Label --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
