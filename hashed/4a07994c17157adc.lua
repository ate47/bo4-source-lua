-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.MinimapFogOfWar = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.MinimapFogOfWar.__defaultWidth = 192 --[[ @ 0]]
CoD.MinimapFogOfWar.__defaultHeight = 192 --[[ @ 0]]
CoD.MinimapFogOfWar.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.MinimapFogOfWar ) --[[ @ 0]]
	self.id = "MinimapFogOfWar" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Image = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Image:setRGB( 0.29, 0.29, 0.29 ) --[[ @ 0]]
	self:addElement( Image ) --[[ @ 0]]
	self.Image = Image --[[ @ 0]]
	
	local MinimapFogOfWar = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	MinimapFogOfWar:setImage( RegisterImage( @"uie_hud_mp_minimap_fogofwar_range" ) ) --[[ @ 0]]
	MinimapFogOfWar:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_ACA98D41A38E390" ) ) --[[ @ 0]]
	MinimapFogOfWar:setShaderVector( 0, 1, 0.1, 0.05, 0 ) --[[ @ 0]]
	MinimapFogOfWar:setupCompassFog( Enum[@"compasstype"][@"compass_type_partial"] ) --[[ @ 0]]
	MinimapFogOfWar:setupCompassFogImageDiameter( 0.74 ) --[[ @ 0]]
	self:addElement( MinimapFogOfWar ) --[[ @ 0]]
	self.MinimapFogOfWar = MinimapFogOfWar --[[ @ 0]]
	
	local MinimapFogOfWarEnemyTearing = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	MinimapFogOfWarEnemyTearing:setImage( RegisterImage( @"hash_4706DFCD9F680830" ) ) --[[ @ 0]]
	MinimapFogOfWarEnemyTearing:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_flipbook_animated" ) ) --[[ @ 0]]
	MinimapFogOfWarEnemyTearing:setShaderVector( 0, 5, 1, 0, 0 ) --[[ @ 0]]
	MinimapFogOfWarEnemyTearing:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	MinimapFogOfWarEnemyTearing:setupCompassEnemyTearingFog( Enum[@"compasstype"][@"compass_type_partial"] ) --[[ @ 0]]
	MinimapFogOfWarEnemyTearing:setupCompassFogImageDiameter( 0.74 ) --[[ @ 0]]
	self:addElement( MinimapFogOfWarEnemyTearing ) --[[ @ 0]]
	self.MinimapFogOfWarEnemyTearing = MinimapFogOfWarEnemyTearing --[[ @ 0]]
	
	local CompassMinimapMap = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	CompassMinimapMap:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_multiply" ) ) --[[ @ 0]]
	CompassMinimapMap:setupCompassMap( Enum[@"compasstype"][@"compass_type_partial"] ) --[[ @ 0]]
	self:addElement( CompassMinimapMap ) --[[ @ 0]]
	self.CompassMinimapMap = CompassMinimapMap --[[ @ 0]]
	
	local MinimapDeathZoneMask = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	MinimapDeathZoneMask:setRGB( 0.17, 0.17, 0.17 ) --[[ @ 0]]
	MinimapDeathZoneMask:setAlpha( 0 ) --[[ @ 0]]
	MinimapDeathZoneMask:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_5A51F864ABFF9887" ) ) --[[ @ 0]]
	MinimapDeathZoneMask:setShaderVector( 0, 0.5, 0.5, 0.2, 0.2 ) --[[ @ 0]]
	MinimapDeathZoneMask:setupCompassDeathZoneMask( Enum[@"compasstype"][@"compass_type_partial"] ) --[[ @ 0]]
	self:addElement( MinimapDeathZoneMask ) --[[ @ 0]]
	self.MinimapDeathZoneMask = MinimapDeathZoneMask --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Warzone",
			condition = function ( menu, element, event )
				return IsWarzone()
			end
		}
	} ) --[[ @ 0]]
	local f1_local6 = self --[[ @ 0]]
	local f1_local7 = self.subscribeToModel --[[ @ 0]]
	local f1_local8 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local7( f1_local6, f1_local8["lobbyRoot.lobbyNav"], function ( f3_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f3_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.MinimapFogOfWar.__resetProperties = function ( f4_arg0 )
	f4_arg0.Image:completeAnimation() --[[ @ 0]]
	f4_arg0.MinimapDeathZoneMask:completeAnimation() --[[ @ 0]]
	f4_arg0.Image:setRGB( 0.29, 0.29, 0.29 ) --[[ @ 0]]
	f4_arg0.MinimapDeathZoneMask:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.MinimapFogOfWar.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Warzone = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f6_arg0.Image:completeAnimation() --[[ @ 0]]
			f6_arg0.Image:setRGB( 0.69, 0.69, 0.69 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.Image ) --[[ @ 0]]
			f6_arg0.MinimapDeathZoneMask:completeAnimation() --[[ @ 0]]
			f6_arg0.MinimapDeathZoneMask:setAlpha( 0.75 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.MinimapDeathZoneMask ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
