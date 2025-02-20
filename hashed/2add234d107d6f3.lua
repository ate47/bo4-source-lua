-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
CoD.vhud_turret_damageicon = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.vhud_turret_damageicon.__defaultWidth = 150 --[[ @ 0]]
CoD.vhud_turret_damageicon.__defaultHeight = 150 --[[ @ 0]]
CoD.vhud_turret_damageicon.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.vhud_turret_damageicon ) --[[ @ 0]]
	self.id = "vhud_turret_damageicon" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local Line0 = LUI.UIImage.new( 0.5, 0.5, -73, 74, 0.5, 0.5, -73, 74 ) --[[ @ 0]]
	Line0:setRGB( 1, 0.83, 0.39 ) --[[ @ 0]]
	Line0:setAlpha( 0.2 ) --[[ @ 0]]
	Line0:setZoom( -50 ) --[[ @ 0]]
	Line0:setImage( RegisterImage( @"uie_t7_cp_hud_vehicle_turret_damageiconlinergb" ) ) --[[ @ 0]]
	Line0:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Line0 ) --[[ @ 0]]
	self.Line0 = Line0 --[[ @ 0]]
	
	local Red = LUI.UIImage.new( 0.5, 0.5, -73, 74, 0.5, 0.5, -73, 74 ) --[[ @ 0]]
	Red:setAlpha( 0.8 ) --[[ @ 0]]
	Red:setImage( RegisterImage( @"uie_t7_cp_hud_vehicle_turret_damageiconred" ) ) --[[ @ 0]]
	Red:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe" ) ) --[[ @ 0]]
	Red:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	Red:setShaderVector( 2, 1, 0, 0, 0 ) --[[ @ 0]]
	Red:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	Red:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	Red:linkToElementModel( self, "damage", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			Red:setShaderVector( 0, CoD.GetVectorComponentFromString( f2_local0, 1 ), CoD.GetVectorComponentFromString( f2_local0, 2 ), CoD.GetVectorComponentFromString( f2_local0, 3 ), CoD.GetVectorComponentFromString( f2_local0, 4 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Red ) --[[ @ 0]]
	self.Red = Red --[[ @ 0]]
	
	local Line = LUI.UIImage.new( 0.5, 0.5, -73, 74, 0.5, 0.5, -73, 74 ) --[[ @ 0]]
	Line:setRGB( 1, 0.83, 0.39 ) --[[ @ 0]]
	Line:setImage( RegisterImage( @"uie_t7_cp_hud_vehicle_turret_damageiconlinergb" ) ) --[[ @ 0]]
	Line:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Line ) --[[ @ 0]]
	self.Line = Line --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.vhud_turret_damageicon.__onClose = function ( f3_arg0 )
	f3_arg0.Red:close() --[[ @ 0]]
end
 --[[ @ 0]]
