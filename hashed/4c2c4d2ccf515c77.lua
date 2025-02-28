-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:7b12cc89de840cb0" ) --[[ @ 0]]
require( "x64:344da9c1f67fd1b1" ) --[[ @ 0]]
require( "x64:79e7a02187087234" ) --[[ @ 0]]
require( "x64:102686760003b88d" ) --[[ @ 0]]
require( "x64:a4bbe9addc978ed" ) --[[ @ 0]]
require( "x64:259226575a01bf0" ) --[[ @ 0]]

CoD.SpawnSelectionMap = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.SpawnSelectionMap.__defaultWidth = 1920 --[[ @ 0]]
CoD.SpawnSelectionMap.__defaultHeight = 1080 --[[ @ 0]]
CoD.SpawnSelectionMap.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.SpawnSelectionMap ) --[[ @ 0]]
	self.id = "SpawnSelectionMap" --[[ @ 0]]
	self.soundSet = "ChooseDecal" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local MinimapFogOfWar = CoD.MinimapFogOfWar.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	MinimapFogOfWar.MinimapFogOfWar:setupCompassFog( Enum[@"compasstype"][@"compass_type_full"] ) --[[ @ 0]]
	MinimapFogOfWar.MinimapFogOfWarEnemyTearing:setupCompassEnemyTearingFog( Enum[@"compasstype"][@"compass_type_full"] ) --[[ @ 0]]
	MinimapFogOfWar.CompassMinimapMap:setupCompassMap( Enum[@"compasstype"][@"compass_type_full"] ) --[[ @ 0]]
	self:addElement( MinimapFogOfWar ) --[[ @ 0]]
	self.MinimapFogOfWar = MinimapFogOfWar --[[ @ 0]]
	
	local MapItems = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	MapItems:setAlpha( 0.6 ) --[[ @ 0]]
	MapItems:setupCompassItems( Enum[@"compasstype"][@"compass_type_spawn"] ) --[[ @ 0]]
	self:addElement( MapItems ) --[[ @ 0]]
	self.MapItems = MapItems --[[ @ 0]]
	
	local DeathMarker = CoD.DeathMarker.new( f1_arg0, f1_arg1, 0, 0, 700, 740, 0, 0, 385, 425 ) --[[ @ 0]]
	DeathMarker:setAlpha( 0 ) --[[ @ 0]]
	DeathMarker.DeathIcon:setRGB( 1, 1, 0 ) --[[ @ 0]]
	self:addElement( DeathMarker ) --[[ @ 0]]
	self.DeathMarker = DeathMarker --[[ @ 0]]
	
	local SpawnGroupMarker = CoD.SpawnGroupMarker.new( f1_arg0, f1_arg1, 0, 0, -126.5, -28.5, 0, 0, 717, 810 ) --[[ @ 0]]
	SpawnGroupMarker:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( SpawnGroupMarker ) --[[ @ 0]]
	self.SpawnGroupMarker = SpawnGroupMarker --[[ @ 0]]
	
	local AutoSpawnMarker = CoD.SpawnRegionMarker.new( f1_arg0, f1_arg1, 0, 0, 809, 909, 0, 0, 919, 1019 ) --[[ @ 0]]
	self:addElement( AutoSpawnMarker ) --[[ @ 0]]
	self.AutoSpawnMarker = AutoSpawnMarker --[[ @ 0]]
	
	local SpawnBeaconMarker = CoD.SpawnBeaconMarker.new( f1_arg0, f1_arg1, 0, 0, -98, 0, 0, 0, 308.5, 401.5 ) --[[ @ 0]]
	SpawnBeaconMarker:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( SpawnBeaconMarker ) --[[ @ 0]]
	self.SpawnBeaconMarker = SpawnBeaconMarker --[[ @ 0]]
	
	local SpawnRegionCursor = CoD.SpawnRegionCursor.new( f1_arg0, f1_arg1, 0, 0, -98, 30, 0, 0, 355, 483 ) --[[ @ 0]]
	self:addElement( SpawnRegionCursor ) --[[ @ 0]]
	self.SpawnRegionCursor = SpawnRegionCursor --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalFirst( self, "close", function ( element )
		CoD.SpawnSelectionUtility.CloseAllMarkers( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	SpawnGroupMarker.id = "SpawnGroupMarker" --[[ @ 0]]
	AutoSpawnMarker.id = "AutoSpawnMarker" --[[ @ 0]]
	SpawnBeaconMarker.id = "SpawnBeaconMarker" --[[ @ 0]]
	self.__defaultFocus = AutoSpawnMarker --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local8 = self --[[ @ 0]]
	CoD.SpawnSelectionUtility.SetupSpawnSelectionMap( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.SpawnSelectionMap.__resetProperties = function ( f3_arg0 )
	f3_arg0.MapItems:completeAnimation() --[[ @ 0]]
	f3_arg0.MapItems:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	f3_arg0.MapItems:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.SpawnSelectionMap.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f4_arg0.MapItems:completeAnimation() --[[ @ 0]]
			f4_arg0.MapItems:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
			f4_arg0.MapItems:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.MapItems ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.SpawnSelectionMap.__onClose = function ( f5_arg0 )
	f5_arg0.MinimapFogOfWar:close() --[[ @ 0]]
	f5_arg0.DeathMarker:close() --[[ @ 0]]
	f5_arg0.SpawnGroupMarker:close() --[[ @ 0]]
	f5_arg0.AutoSpawnMarker:close() --[[ @ 0]]
	f5_arg0.SpawnBeaconMarker:close() --[[ @ 0]]
	f5_arg0.SpawnRegionCursor:close() --[[ @ 0]]
end
 --[[ @ 0]]
