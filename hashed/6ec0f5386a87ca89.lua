-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.SpawnRegionRing = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.SpawnRegionRing.__defaultWidth = 300 --[[ @ 0]]
CoD.SpawnRegionRing.__defaultHeight = 300 --[[ @ 0]]
CoD.SpawnRegionRing.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.SpawnRegionRing ) --[[ @ 0]]
	self.id = "SpawnRegionRing" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local SpawnArea = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	SpawnArea:setRGB( 0.4, 0.51, 0.81 ) --[[ @ 0]]
	SpawnArea:setAlpha( 0.3 ) --[[ @ 0]]
	SpawnArea:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_elliptical_ring_normal" ) ) --[[ @ 0]]
	SpawnArea:setShaderVector( 0, 50, 0, 0, 0 ) --[[ @ 0]]
	SpawnArea:setShaderVector( 1, 100, 100, 0, 0 ) --[[ @ 0]]
	SpawnArea:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( SpawnArea ) --[[ @ 0]]
	self.SpawnArea = SpawnArea --[[ @ 0]]
	
	local SpawnRadius = LUI.UIImage.new( -0.05, 1.05, 0, 0, -0.05, 1.05, 0, 0 ) --[[ @ 0]]
	SpawnRadius:setImage( RegisterImage( @"uie_ui_hud_selectspawn_range" ) ) --[[ @ 0]]
	SpawnRadius:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_clock_add" ) ) --[[ @ 0]]
	SpawnRadius:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	SpawnRadius:setShaderVector( 1, 0.5, 0, 0, 0 ) --[[ @ 0]]
	SpawnRadius:setShaderVector( 2, 0.5, 0, 0, 0 ) --[[ @ 0]]
	SpawnRadius:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	SpawnRadius:setShaderVector( 4, 1, 0.78, 0, 0 ) --[[ @ 0]]
	self:addElement( SpawnRadius ) --[[ @ 0]]
	self.SpawnRadius = SpawnRadius --[[ @ 0]]
	
	local MinimapSpawnRegion = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	MinimapSpawnRegion:setupSpawnRegion() --[[ @ 0]]
	self:addElement( MinimapSpawnRegion ) --[[ @ 0]]
	self.MinimapSpawnRegion = MinimapSpawnRegion --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
