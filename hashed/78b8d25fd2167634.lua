-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.ChargeShot_SmallCenter = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ChargeShot_SmallCenter.__defaultWidth = 144 --[[ @ 0]]
CoD.ChargeShot_SmallCenter.__defaultHeight = 144 --[[ @ 0]]
CoD.ChargeShot_SmallCenter.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ChargeShot_SmallCenter ) --[[ @ 0]]
	self.id = "ChargeShot_SmallCenter" --[[ @ 0]]
	self.soundSet = "ChooseDecal" --[[ @ 0]]
	
	local SmallCenter = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	SmallCenter:setImage( RegisterImage( @"uie_t7_hud_chargeshot_reticle_center_small" ) ) --[[ @ 0]]
	self:addElement( SmallCenter ) --[[ @ 0]]
	self.SmallCenter = SmallCenter --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
