-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.ChargeShot_OuterReticle = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ChargeShot_OuterReticle.__defaultWidth = 252 --[[ @ 0]]
CoD.ChargeShot_OuterReticle.__defaultHeight = 252 --[[ @ 0]]
CoD.ChargeShot_OuterReticle.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ChargeShot_OuterReticle ) --[[ @ 0]]
	self.id = "ChargeShot_OuterReticle" --[[ @ 0]]
	self.soundSet = "ChooseDecal" --[[ @ 0]]
	
	local Outer1 = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Outer1:setImage( RegisterImage( @"uie_chargeshot_outer_ru" ) ) --[[ @ 0]]
	self:addElement( Outer1 ) --[[ @ 0]]
	self.Outer1 = Outer1 --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
