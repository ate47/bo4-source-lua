-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
CoD.vhud_gunship_ammo_count_internal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.vhud_gunship_ammo_count_internal.__defaultWidth = 77 --[[ @ 0]]
CoD.vhud_gunship_ammo_count_internal.__defaultHeight = 74 --[[ @ 0]]
CoD.vhud_gunship_ammo_count_internal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.vhud_gunship_ammo_count_internal ) --[[ @ 0]]
	self.id = "vhud_gunship_ammo_count_internal" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	
	local ammoBack = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	ammoBack:setRGB( 0.3, 0.3, 0.3 ) --[[ @ 0]]
	ammoBack:setImage( RegisterImage( @"hash_732D1F243B6283E9" ) ) --[[ @ 0]]
	ammoBack:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_6E9593DF28749F2" ) ) --[[ @ 0]]
	ammoBack:setShaderVector( 0, 2, 1, 0, 0 ) --[[ @ 0]]
	ammoBack:setShaderVector( 1, 0, 1, 0, 1 ) --[[ @ 0]]
	self:addElement( ammoBack ) --[[ @ 0]]
	self.ammoBack = ammoBack --[[ @ 0]]
	
	local ammoFront = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	ammoFront:setImage( RegisterImage( @"hash_732D1F243B6283E9" ) ) --[[ @ 0]]
	ammoFront:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_6E9593DF28749F2" ) ) --[[ @ 0]]
	ammoFront:setShaderVector( 0, 2, 1, 0, 0 ) --[[ @ 0]]
	ammoFront:setShaderVector( 1, 0, 1, 0, 1 ) --[[ @ 0]]
	self:addElement( ammoFront ) --[[ @ 0]]
	self.ammoFront = ammoFront --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
