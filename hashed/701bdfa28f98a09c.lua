-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.ChargerShot_Active_Center = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ChargerShot_Active_Center.__defaultWidth = 108 --[[ @ 0]]
CoD.ChargerShot_Active_Center.__defaultHeight = 108 --[[ @ 0]]
CoD.ChargerShot_Active_Center.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ChargerShot_Active_Center ) --[[ @ 0]]
	self.id = "ChargerShot_Active_Center" --[[ @ 0]]
	self.soundSet = "ChooseDecal" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Image0 = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Image0:setImage( RegisterImage( @"uie_t7_hud_chargeshot_active_center" ) ) --[[ @ 0]]
	self:addElement( Image0 ) --[[ @ 0]]
	self.Image0 = Image0 --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
