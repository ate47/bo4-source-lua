-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
CoD.HorizontalCompassBlackCell = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.HorizontalCompassBlackCell.__defaultWidth = 1114 --[[ @ 0]]
CoD.HorizontalCompassBlackCell.__defaultHeight = 112 --[[ @ 0]]
CoD.HorizontalCompassBlackCell.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.HorizontalCompassBlackCell ) --[[ @ 0]]
	self.id = "HorizontalCompassBlackCell" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local user = LUI.UIImage.new( 0.5, 0.5, -28, 28, 1, 1, -51, 5 ) --[[ @ 0]]
	user:setImage( RegisterImage( @"uie_t7_hud_blackcell_user" ) ) --[[ @ 0]]
	self:addElement( user ) --[[ @ 0]]
	self.user = user --[[ @ 0]]
	
	local enemy = LUI.UIImage.new( 0.5, 0.5, -28, 28, 0, 0, -4, 52 ) --[[ @ 0]]
	enemy:setAlpha( 0 ) --[[ @ 0]]
	enemy:setImage( RegisterImage( @"uie_t7_hud_blackcell_enemie" ) ) --[[ @ 0]]
	self:addElement( enemy ) --[[ @ 0]]
	self.enemy = enemy --[[ @ 0]]
	
	local HorizontalCompass = LUI.UIImage.new( 0.5, 0.5, -431.5, 431.5, 0.5, 0.5, -26, 11 ) --[[ @ 0]]
	HorizontalCompass:setupHorizontalCompass( 0.75 ) --[[ @ 0]]
	HorizontalCompass:setImage( RegisterMaterial( "hud_horizontal_compass_blackcell" ) ) --[[ @ 0]]
	HorizontalCompass:setShaderVector( 0, 0.6, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( HorizontalCompass ) --[[ @ 0]]
	self.HorizontalCompass = HorizontalCompass --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
