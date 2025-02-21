-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
CoD.AARTierRewardSlotEmpty = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AARTierRewardSlotEmpty.__defaultWidth = 310 --[[ @ 0]]
CoD.AARTierRewardSlotEmpty.__defaultHeight = 577 --[[ @ 0]]
CoD.AARTierRewardSlotEmpty.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AARTierRewardSlotEmpty ) --[[ @ 0]]
	self.id = "AARTierRewardSlotEmpty" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	
	local Image = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Image:setRGB( 0, 0, 0 ) --[[ @ 0]]
	Image:setAlpha( 0.05 ) --[[ @ 0]]
	self:addElement( Image ) --[[ @ 0]]
	self.Image = Image --[[ @ 0]]
	
	local Border = LUI.UIImage.new( 0, 1, -1, 1, 0, 1, -1, 1 ) --[[ @ 0]]
	Border:setRGB( 0.2, 0.2, 0.22 ) --[[ @ 0]]
	Border:setAlpha( 0.25 ) --[[ @ 0]]
	Border:setImage( RegisterImage( @"hash_5CA6E5C175806396" ) ) --[[ @ 0]]
	Border:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_normal" ) ) --[[ @ 0]]
	Border:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	Border:setupNineSliceShader( 8, 8 ) --[[ @ 0]]
	self:addElement( Border ) --[[ @ 0]]
	self.Border = Border --[[ @ 0]]
	
	local Brackets = LUI.UIImage.new( 0, 1, -4, 4, 0, 1, -4, 4 ) --[[ @ 0]]
	Brackets:setRGB( 0.49, 0.49, 0.49 ) --[[ @ 0]]
	Brackets:setAlpha( 0.03 ) --[[ @ 0]]
	Brackets:setImage( RegisterImage( @"uie_ui_menu_store_focus_pips" ) ) --[[ @ 0]]
	Brackets:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	Brackets:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	Brackets:setupNineSliceShader( 44, 44 ) --[[ @ 0]]
	self:addElement( Brackets ) --[[ @ 0]]
	self.Brackets = Brackets --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
