-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.AmmoWidget_ClipContainerValue = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AmmoWidget_ClipContainerValue.__defaultWidth = 64 --[[ @ 0]]
CoD.AmmoWidget_ClipContainerValue.__defaultHeight = 26 --[[ @ 0]]
CoD.AmmoWidget_ClipContainerValue.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AmmoWidget_ClipContainerValue ) --[[ @ 0]]
	self.id = "AmmoWidget_ClipContainerValue" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local Clip = LUI.UIText.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Clip:setText( 100 ) --[[ @ 0]]
	Clip:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	Clip:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_90D57B1E92D39D7" ) ) --[[ @ 0]]
	Clip:setShaderVector( 0, 0.8, 0, 0, 0 ) --[[ @ 0]]
	Clip:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	Clip:setShaderVector( 2, 1, 1, 1, 0.25 ) --[[ @ 0]]
	Clip:setLetterSpacing( 2 ) --[[ @ 0]]
	Clip:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Clip:setAlignment( Enum[@"luialignment"][@"lui_alignment_middle"] ) --[[ @ 0]]
	self:addElement( Clip ) --[[ @ 0]]
	self.Clip = Clip --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
