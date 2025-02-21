-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.vhud_attack_helicopter_health = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.vhud_attack_helicopter_health.__defaultWidth = 302 --[[ @ 0]]
CoD.vhud_attack_helicopter_health.__defaultHeight = 178 --[[ @ 0]]
CoD.vhud_attack_helicopter_health.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.vhud_attack_helicopter_health ) --[[ @ 0]]
	self.id = "vhud_attack_helicopter_health" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	
	local BackImage = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( BackImage ) --[[ @ 0]]
	self.BackImage = BackImage --[[ @ 0]]
	
	local Overlay = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Overlay:setRGB( 0.98, 0.98, 0.98 ) --[[ @ 0]]
	Overlay:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe" ) ) --[[ @ 0]]
	Overlay:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	Overlay:setShaderVector( 2, 1, 0, 0, 0 ) --[[ @ 0]]
	Overlay:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	Overlay:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	Overlay:linkToElementModel( self, "damage", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			Overlay:setShaderVector( 0, CoD.GetVectorComponentFromString( f2_local0, 1 ), CoD.GetVectorComponentFromString( f2_local0, 2 ), CoD.GetVectorComponentFromString( f2_local0, 3 ), CoD.GetVectorComponentFromString( f2_local0, 4 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Overlay ) --[[ @ 0]]
	self.Overlay = Overlay --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.vhud_attack_helicopter_health.__onClose = function ( f3_arg0 )
	f3_arg0.Overlay:close() --[[ @ 0]]
end
 --[[ @ 0]]
