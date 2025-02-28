-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.vhud_button_backing_lines = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.vhud_button_backing_lines.__defaultWidth = 109 --[[ @ 0]]
CoD.vhud_button_backing_lines.__defaultHeight = 109 --[[ @ 0]]
CoD.vhud_button_backing_lines.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.vhud_button_backing_lines ) --[[ @ 0]]
	self.id = "vhud_button_backing_lines" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local ButtonHexLines = LUI.UIImage.new( 0.5, 0.5, -55, 55, 0.5, 0.5, -55, 55 ) --[[ @ 0]]
	ButtonHexLines:setImage( RegisterImage( @"uie_t7_cp_hud_vehicle_button_framehex" ) ) --[[ @ 0]]
	ButtonHexLines:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( ButtonHexLines ) --[[ @ 0]]
	self.ButtonHexLines = ButtonHexLines --[[ @ 0]]
	
	local ButtonTriLines = LUI.UIImage.new( 0.5, 0.5, -55, 55, 0.5, 0.5, -55, 55 ) --[[ @ 0]]
	ButtonTriLines:setImage( RegisterImage( @"uie_t7_cp_hud_vehicle_button_frametri" ) ) --[[ @ 0]]
	ButtonTriLines:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( ButtonTriLines ) --[[ @ 0]]
	self.ButtonTriLines = ButtonTriLines --[[ @ 0]]
	
	local ButtonTriLines0 = LUI.UIImage.new( 0.5, 0.5, -55, 55, 0.5, 0.5, -55, 55 ) --[[ @ 0]]
	ButtonTriLines0:setAlpha( 0.3 ) --[[ @ 0]]
	ButtonTriLines0:setZoom( 7 ) --[[ @ 0]]
	ButtonTriLines0:setImage( RegisterImage( @"uie_t7_cp_hud_vehicle_button_frametri" ) ) --[[ @ 0]]
	ButtonTriLines0:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( ButtonTriLines0 ) --[[ @ 0]]
	self.ButtonTriLines0 = ButtonTriLines0 --[[ @ 0]]
	
	local ButtonTriLines00 = LUI.UIImage.new( 0.5, 0.5, -55, 55, 0.5, 0.5, -55, 55 ) --[[ @ 0]]
	ButtonTriLines00:setAlpha( 0.1 ) --[[ @ 0]]
	ButtonTriLines00:setZoom( 15 ) --[[ @ 0]]
	ButtonTriLines00:setImage( RegisterImage( @"uie_t7_cp_hud_vehicle_button_frametri" ) ) --[[ @ 0]]
	ButtonTriLines00:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( ButtonTriLines00 ) --[[ @ 0]]
	self.ButtonTriLines00 = ButtonTriLines00 --[[ @ 0]]
	
	local ButtonHexDots = LUI.UIImage.new( 0.5, 0.5, -55, 55, 0.5, 0.5, -55, 55 ) --[[ @ 0]]
	ButtonHexDots:setImage( RegisterImage( @"uie_t7_cp_hud_vehicle_button_dotshex" ) ) --[[ @ 0]]
	ButtonHexDots:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( ButtonHexDots ) --[[ @ 0]]
	self.ButtonHexDots = ButtonHexDots --[[ @ 0]]
	
	local ButtonHexDots0 = LUI.UIImage.new( 0.5, 0.5, -55, 55, 0.5, 0.5, -55, 55 ) --[[ @ 0]]
	ButtonHexDots0:setAlpha( 0.5 ) --[[ @ 0]]
	ButtonHexDots0:setZoom( 7 ) --[[ @ 0]]
	ButtonHexDots0:setImage( RegisterImage( @"uie_t7_cp_hud_vehicle_button_dotshex" ) ) --[[ @ 0]]
	ButtonHexDots0:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( ButtonHexDots0 ) --[[ @ 0]]
	self.ButtonHexDots0 = ButtonHexDots0 --[[ @ 0]]
	
	local ButtonHexDots00 = LUI.UIImage.new( 0.5, 0.5, -55, 55, 0.5, 0.5, -55, 55 ) --[[ @ 0]]
	ButtonHexDots00:setAlpha( 0.2 ) --[[ @ 0]]
	ButtonHexDots00:setZoom( 15 ) --[[ @ 0]]
	ButtonHexDots00:setImage( RegisterImage( @"uie_t7_cp_hud_vehicle_button_dotshex" ) ) --[[ @ 0]]
	ButtonHexDots00:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( ButtonHexDots00 ) --[[ @ 0]]
	self.ButtonHexDots00 = ButtonHexDots00 --[[ @ 0]]
	
	local ButtonHexLines0 = LUI.UIImage.new( 0.5, 0.5, -55, 55, 0.5, 0.5, -55, 55 ) --[[ @ 0]]
	ButtonHexLines0:setAlpha( 0 ) --[[ @ 0]]
	ButtonHexLines0:setZoom( 30 ) --[[ @ 0]]
	ButtonHexLines0:setImage( RegisterImage( @"uie_t7_cp_hud_vehicle_button_framehex" ) ) --[[ @ 0]]
	ButtonHexLines0:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( ButtonHexLines0 ) --[[ @ 0]]
	self.ButtonHexLines0 = ButtonHexLines0 --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
