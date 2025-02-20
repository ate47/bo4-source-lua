-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "x64:1c7393046816f760" ) --[[ @ 0]]

CoD.AARCommonBacking = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AARCommonBacking.__defaultWidth = 1356 --[[ @ 0]]
CoD.AARCommonBacking.__defaultHeight = 836 --[[ @ 0]]
CoD.AARCommonBacking.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AARCommonBacking ) --[[ @ 0]]
	self.id = "AARCommonBacking" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local Blur = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Blur:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	Blur:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Blur ) --[[ @ 0]]
	self.Blur = Blur --[[ @ 0]]
	
	local Backer = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Backer:setRGB( 0.67, 0.67, 0.67 ) --[[ @ 0]]
	Backer:setAlpha( 0.02 ) --[[ @ 0]]
	self:addElement( Backer ) --[[ @ 0]]
	self.Backer = Backer --[[ @ 0]]
	
	local TiledBacking = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	TiledBacking:setAlpha( 0.12 ) --[[ @ 0]]
	TiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	TiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	TiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	TiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( TiledBacking ) --[[ @ 0]]
	self.TiledBacking = TiledBacking --[[ @ 0]]
	
	local SquareOthers = CoD.AARLevelCommonBoxes.new( f1_arg0, f1_arg1, 1, 1, -128, -80, 0, 0, 5, 18 ) --[[ @ 0]]
	SquareOthers:setAlpha( 0.2 ) --[[ @ 0]]
	self:addElement( SquareOthers ) --[[ @ 0]]
	self.SquareOthers = SquareOthers --[[ @ 0]]
	
	local FuiBox02Right = LUI.UIImage.new( 1, 1, -84, -50, 1, 1, -10, -44 ) --[[ @ 0]]
	FuiBox02Right:setAlpha( 0.05 ) --[[ @ 0]]
	FuiBox02Right:setZRot( -90 ) --[[ @ 0]]
	FuiBox02Right:setImage( RegisterImage( @"uie_ui_hud_vehicle_ac130_fui_box01" ) ) --[[ @ 0]]
	FuiBox02Right:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	FuiBox02Right:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( FuiBox02Right ) --[[ @ 0]]
	self.FuiBox02Right = FuiBox02Right --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.AARCommonBacking.__onClose = function ( f2_arg0 )
	f2_arg0.SquareOthers:close() --[[ @ 0]]
end
 --[[ @ 0]]
