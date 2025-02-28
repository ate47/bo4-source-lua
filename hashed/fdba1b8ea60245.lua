-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "x64:3077e6c8e4d1f495" ) --[[ @ 0]]

CoD.vehicleRadar = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.vehicleRadar.__defaultWidth = 280 --[[ @ 0]]
CoD.vehicleRadar.__defaultHeight = 280 --[[ @ 0]]
CoD.vehicleRadar.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.vehicleRadar ) --[[ @ 0]]
	self.id = "vehicleRadar" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local vehicleRadarRTT = CoD.vehicleRadarRTT.new( f1_arg0, f1_arg1, 0, 0, 0, 280, 0, 0, 0, 280 ) --[[ @ 0]]
	vehicleRadarRTT:setRFTMaterial( LUI.UIImage.GetCachedMaterial( @"hash_2D79DB5C45AD6024" ) ) --[[ @ 0]]
	vehicleRadarRTT:setShaderVector( 0, 50, 0, 0, 0 ) --[[ @ 0]]
	vehicleRadarRTT:setShaderVector( 1, 100, 100, 0, 0 ) --[[ @ 0]]
	vehicleRadarRTT:setShaderVector( 2, 0, 0.2, 0, 0 ) --[[ @ 0]]
	vehicleRadarRTT.CompassMinimap.CompassMinimapMap:setupCompassMap( Enum[@"compasstype"][@"hash_6E08A971DC12C4CC"] ) --[[ @ 0]]
	vehicleRadarRTT.CompassMinimap.MinimapFogOfWar.CompassMinimapMap:setupCompassMap( Enum[@"compasstype"][@"hash_6E08A971DC12C4CC"] ) --[[ @ 0]]
	vehicleRadarRTT.CompassItems.CompassMinimapItems:setupCompassItems( Enum[@"compasstype"][@"hash_6E08A971DC12C4CC"] ) --[[ @ 0]]
	vehicleRadarRTT.CompassItems0.CompassMinimapItems:setupCompassItems( Enum[@"compasstype"][@"hash_6E08A971DC12C4CC"] ) --[[ @ 0]]
	self:addElement( vehicleRadarRTT ) --[[ @ 0]]
	self.vehicleRadarRTT = vehicleRadarRTT --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.vehicleRadar.__resetProperties = function ( f2_arg0 )
	f2_arg0.vehicleRadarRTT:completeAnimation() --[[ @ 0]]
	f2_arg0.vehicleRadarRTT:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.vehicleRadar.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f4_arg0.vehicleRadarRTT:completeAnimation() --[[ @ 0]]
			f4_arg0.vehicleRadarRTT:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.vehicleRadarRTT ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.vehicleRadar.__onClose = function ( f5_arg0 )
	f5_arg0.vehicleRadarRTT:close() --[[ @ 0]]
end
 --[[ @ 0]]
