-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
CoD.vhud_ms_GridDotsHostR = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.vhud_ms_GridDotsHostR.__defaultWidth = 178 --[[ @ 0]]
CoD.vhud_ms_GridDotsHostR.__defaultHeight = 178 --[[ @ 0]]
CoD.vhud_ms_GridDotsHostR.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.vhud_ms_GridDotsHostR ) --[[ @ 0]]
	self.id = "vhud_ms_GridDotsHostR" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local msGridDotsHostR = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	msGridDotsHostR:setAlpha( 0.4 ) --[[ @ 0]]
	msGridDotsHostR:setZoom( 40 ) --[[ @ 0]]
	msGridDotsHostR:setImage( RegisterImage( @"uie_t7_cp_hud_vehicle_mothership_sidedotsgridhost" ) ) --[[ @ 0]]
	msGridDotsHostR:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( msGridDotsHostR ) --[[ @ 0]]
	self.msGridDotsHostR = msGridDotsHostR --[[ @ 0]]
	
	local Image0 = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Image0:setAlpha( 0.1 ) --[[ @ 0]]
	Image0:setImage( RegisterImage( @"uie_t7_cp_hud_vehicle_mothership_sidedotsgridhost" ) ) --[[ @ 0]]
	Image0:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Image0 ) --[[ @ 0]]
	self.Image0 = Image0 --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
