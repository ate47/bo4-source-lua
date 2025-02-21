-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:7dab8c3a6f5b136c" ) --[[ @ 0]]
require( "ui/uieditor/widgets/emptyfocusable" ) --[[ @ 0]]

CoD.IGRPerksListBacking = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.IGRPerksListBacking.__defaultWidth = 2140 --[[ @ 0]]
CoD.IGRPerksListBacking.__defaultHeight = 253 --[[ @ 0]]
CoD.IGRPerksListBacking.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.IGRPerksListBacking ) --[[ @ 0]]
	self.id = "IGRPerksListBacking" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	
	local FocusGlow = LUI.UIImage.new( 0, 1, -35, 35, 0, 1, -35, 35 ) --[[ @ 0]]
	FocusGlow:setAlpha( 0.5 ) --[[ @ 0]]
	FocusGlow:setImage( RegisterImage( @"uie_ui_menu_common_focus_glow_small" ) ) --[[ @ 0]]
	FocusGlow:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_6DAB59B2CAE01851" ) ) --[[ @ 0]]
	FocusGlow:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FocusGlow:setShaderVector( 1, 1.2, 0, 0, 0 ) --[[ @ 0]]
	FocusGlow:setupNineSliceShader( 70, 70 ) --[[ @ 0]]
	self:addElement( FocusGlow ) --[[ @ 0]]
	self.FocusGlow = FocusGlow --[[ @ 0]]
	
	local BG = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BG:setRGB( 0.7, 0.7, 0.7 ) --[[ @ 0]]
	self:addElement( BG ) --[[ @ 0]]
	self.BG = BG --[[ @ 0]]
	
	local Noise = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Noise:setAlpha( 0.9 ) --[[ @ 0]]
	Noise:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	Noise:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	Noise:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	Noise:setupNineSliceShader( 64, 64 ) --[[ @ 0]]
	self:addElement( Noise ) --[[ @ 0]]
	self.Noise = Noise --[[ @ 0]]
	
	local Border = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Border:setImage( RegisterImage( @"hash_415BB65132BCEED9" ) ) --[[ @ 0]]
	Border:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_normal" ) ) --[[ @ 0]]
	Border:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	Border:setupNineSliceShader( 8, 8 ) --[[ @ 0]]
	self:addElement( Border ) --[[ @ 0]]
	self.Border = Border --[[ @ 0]]
	
	local emptyFocusable = CoD.emptyFocusable.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( emptyFocusable ) --[[ @ 0]]
	self.emptyFocusable = emptyFocusable --[[ @ 0]]
	
	local CommonPixelBacking = CoD.CommonPixelBacking.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	CommonPixelBacking:setRGB( 0.3, 0.3, 0.3 ) --[[ @ 0]]
	CommonPixelBacking.NoiseBacking:setAlpha( 1 ) --[[ @ 0]]
	CommonPixelBacking.TiledShaderImage:setAlpha( 0.15 ) --[[ @ 0]]
	CommonPixelBacking.TiledShaderImage:setupNineSliceShader( 35, 35 ) --[[ @ 0]]
	self:addElement( CommonPixelBacking ) --[[ @ 0]]
	self.CommonPixelBacking = CommonPixelBacking --[[ @ 0]]
	
	emptyFocusable.id = "emptyFocusable" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.IGRPerksListBacking.__onClose = function ( f2_arg0 )
	f2_arg0.emptyFocusable:close() --[[ @ 0]]
	f2_arg0.CommonPixelBacking:close() --[[ @ 0]]
end
 --[[ @ 0]]
