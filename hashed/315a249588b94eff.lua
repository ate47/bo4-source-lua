-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "ui/uieditor/widgets/hud/compassminimapitems" ) --[[ @ 0]]
require( "x64:212bbcf811bbabdb" ) --[[ @ 0]]
require( "ui/uieditor/widgets/hud/compassminimapoverlay" ) --[[ @ 0]]
require( "x64:6ab6874427430d62" ) --[[ @ 0]]

CoD.WZKillcamCompass = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WZKillcamCompass.__defaultWidth = 320 --[[ @ 0]]
CoD.WZKillcamCompass.__defaultHeight = 312 --[[ @ 0]]
CoD.WZKillcamCompass.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	CoD.BaseUtility.CreateControllerModel( f1_arg1, "hudItems.spawnSelectedLocation" ) --[[ @ 0]]
	self:setClass( CoD.WZKillcamCompass ) --[[ @ 0]]
	self.id = "WZKillcamCompass" --[[ @ 0]]
	self.soundSet = "HUD" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local WZBacker = LUI.UIImage.new( 0.5, 0.5, -160, 160, 0.5, 0.5, -156, 156 ) --[[ @ 0]]
	WZBacker:setImage( RegisterImage( @"uie_ui_hud_wz_hud_core_map_square_backer" ) ) --[[ @ 0]]
	self:addElement( WZBacker ) --[[ @ 0]]
	self.WZBacker = WZBacker --[[ @ 0]]
	
	local SquareCompassBacking = LUI.UIImage.new( 0.5, 0.5, -139, 139, 0.5, 0.5, -139, 139 ) --[[ @ 0]]
	SquareCompassBacking:setRGB( 0, 0, 0 ) --[[ @ 0]]
	SquareCompassBacking:setScale( 0.98, 0.98 ) --[[ @ 0]]
	SquareCompassBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_feather_blend" ) ) --[[ @ 0]]
	self:addElement( SquareCompassBacking ) --[[ @ 0]]
	self.SquareCompassBacking = SquareCompassBacking --[[ @ 0]]
	
	local BackgroundNoFog = LUI.UIImage.new( 0.5, 0.5, -135, 135, 0.5, 0.5, -135, 135 ) --[[ @ 0]]
	self:addElement( BackgroundNoFog ) --[[ @ 0]]
	self.BackgroundNoFog = BackgroundNoFog --[[ @ 0]]
	
	local CompassMinimap = CoD.CompassMinimapMap.new( f1_arg0, f1_arg1, 0.5, 0.5, -135, 135, 0.5, 0.5, -135, 135 ) --[[ @ 0]]
	CompassMinimap.CompassMinimapMap:setupCompassMap( Enum[@"compasstype"][@"compass_type_partial_worldaligned"] ) --[[ @ 0]]
	CompassMinimap.MinimapFogOfWar.MinimapFogOfWar:setupCompassFog( Enum[@"compasstype"][@"compass_type_partial_worldaligned"] ) --[[ @ 0]]
	CompassMinimap.MinimapFogOfWar.CompassMinimapMap:setupCompassMap( Enum[@"compasstype"][@"compass_type_partial_worldaligned"] ) --[[ @ 0]]
	CompassMinimap.MinimapFogOfWar.MinimapDeathZoneMask:setupCompassDeathZoneMask( Enum[@"compasstype"][@"compass_type_partial_worldaligned"] ) --[[ @ 0]]
	self:addElement( CompassMinimap ) --[[ @ 0]]
	self.CompassMinimap = CompassMinimap --[[ @ 0]]
	
	local CompassItems0 = CoD.CompassMinimapItems.new( f1_arg0, f1_arg1, 0.5, 0.5, -135, 135, 0.5, 0.5, -135, 135 ) --[[ @ 0]]
	CompassItems0:setRGB( 0, 0, 0 ) --[[ @ 0]]
	CompassItems0:setAlpha( 0.6 ) --[[ @ 0]]
	CompassItems0.CompassMinimapItems:setupCompassItems( Enum[@"compasstype"][@"compass_type_partial_worldaligned"] ) --[[ @ 0]]
	self:addElement( CompassItems0 ) --[[ @ 0]]
	self.CompassItems0 = CompassItems0 --[[ @ 0]]
	
	local CompassItems = CoD.CompassMinimapItems.new( f1_arg0, f1_arg1, 0.5, 0.5, -135, 135, 0.5, 0.5, -135, 135 ) --[[ @ 0]]
	CompassItems:setAlpha( 0.9 ) --[[ @ 0]]
	CompassItems.CompassMinimapItems:setupCompassItems( Enum[@"compasstype"][@"compass_type_partial_worldaligned"] ) --[[ @ 0]]
	self:addElement( CompassItems ) --[[ @ 0]]
	self.CompassItems = CompassItems --[[ @ 0]]
	
	local CompassOverlay = CoD.CompassMinimapOverlay.new( f1_arg0, f1_arg1, 0.5, 0.5, -135, 135, 0.5, 0.5, -135, 135 ) --[[ @ 0]]
	CompassOverlay.CompassMinimapOverlay:setupCompassOverlay( Enum[@"compasstype"][@"compass_type_partial_worldaligned"] ) --[[ @ 0]]
	self:addElement( CompassOverlay ) --[[ @ 0]]
	self.CompassOverlay = CompassOverlay --[[ @ 0]]
	
	local smokeGrenadeEffect = CoD.CompassGroupMPSmoke.new( f1_arg0, f1_arg1, 0.5, 0.5, -135, 135, 0.5, 0.5, -135, 135 ) --[[ @ 0]]
	self:addElement( smokeGrenadeEffect ) --[[ @ 0]]
	self.smokeGrenadeEffect = smokeGrenadeEffect --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Invisible",
			condition = function ( menu, element, event )
				return not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_in_killcam"] )
			end
		},
		{
			stateName = "InvisiblePreference",
			condition = function ( menu, element, event )
				return CoD.WZUtility.IsWarzoneUIHidden( f1_arg1, "wzHideMinimapUI", "warzoneHideMinimap" )
			end
		}
	} ) --[[ @ 0]]
	local f1_local9 = self --[[ @ 0]]
	local f1_local10 = self.subscribeToModel --[[ @ 0]]
	local f1_local11 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local10( f1_local9, f1_local11["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_killcam"]], function ( f4_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f4_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_killcam"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local9 = self --[[ @ 0]]
	f1_local10 = self.subscribeToModel --[[ @ 0]]
	f1_local11 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local10( f1_local9, f1_local11.PlayerSettingsUpdate, function ( f5_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "PlayerSettingsUpdate"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.WZKillcamCompass.__resetProperties = function ( f6_arg0 )
	f6_arg0.smokeGrenadeEffect:completeAnimation() --[[ @ 0]]
	f6_arg0.CompassOverlay:completeAnimation() --[[ @ 0]]
	f6_arg0.CompassItems:completeAnimation() --[[ @ 0]]
	f6_arg0.CompassItems0:completeAnimation() --[[ @ 0]]
	f6_arg0.CompassMinimap:completeAnimation() --[[ @ 0]]
	f6_arg0.BackgroundNoFog:completeAnimation() --[[ @ 0]]
	f6_arg0.SquareCompassBacking:completeAnimation() --[[ @ 0]]
	f6_arg0.WZBacker:completeAnimation() --[[ @ 0]]
	f6_arg0.smokeGrenadeEffect:setAlpha( 1 ) --[[ @ 0]]
	f6_arg0.CompassOverlay:setAlpha( 1 ) --[[ @ 0]]
	f6_arg0.CompassItems:setAlpha( 0.9 ) --[[ @ 0]]
	f6_arg0.CompassItems0:setAlpha( 0.6 ) --[[ @ 0]]
	f6_arg0.CompassMinimap:setAlpha( 1 ) --[[ @ 0]]
	f6_arg0.BackgroundNoFog:setAlpha( 1 ) --[[ @ 0]]
	f6_arg0.SquareCompassBacking:setAlpha( 1 ) --[[ @ 0]]
	f6_arg0.WZBacker:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.WZKillcamCompass.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Invisible = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 8 ) --[[ @ 0]]
			f8_arg0.WZBacker:completeAnimation() --[[ @ 0]]
			f8_arg0.WZBacker:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.WZBacker ) --[[ @ 0]]
			f8_arg0.SquareCompassBacking:completeAnimation() --[[ @ 0]]
			f8_arg0.SquareCompassBacking:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.SquareCompassBacking ) --[[ @ 0]]
			f8_arg0.BackgroundNoFog:completeAnimation() --[[ @ 0]]
			f8_arg0.BackgroundNoFog:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.BackgroundNoFog ) --[[ @ 0]]
			f8_arg0.CompassMinimap:completeAnimation() --[[ @ 0]]
			f8_arg0.CompassMinimap:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.CompassMinimap ) --[[ @ 0]]
			f8_arg0.CompassItems0:completeAnimation() --[[ @ 0]]
			f8_arg0.CompassItems0:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.CompassItems0 ) --[[ @ 0]]
			f8_arg0.CompassItems:completeAnimation() --[[ @ 0]]
			f8_arg0.CompassItems:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.CompassItems ) --[[ @ 0]]
			f8_arg0.CompassOverlay:completeAnimation() --[[ @ 0]]
			f8_arg0.CompassOverlay:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.CompassOverlay ) --[[ @ 0]]
			f8_arg0.smokeGrenadeEffect:completeAnimation() --[[ @ 0]]
			f8_arg0.smokeGrenadeEffect:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.smokeGrenadeEffect ) --[[ @ 0]]
		end,
		WZDefaultState = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f9_local0 = function ( f10_arg0 )
				f9_arg0.WZBacker:beginAnimation( 100 ) --[[ @ 0]]
				f9_arg0.WZBacker:setAlpha( 1 ) --[[ @ 0]]
				f9_arg0.WZBacker:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.WZBacker:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.WZBacker:completeAnimation() --[[ @ 0]]
			f9_arg0.WZBacker:setAlpha( 0 ) --[[ @ 0]]
			f9_local0( f9_arg0.WZBacker ) --[[ @ 0]]
		end
	},
	InvisiblePreference = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 8 ) --[[ @ 0]]
			f11_arg0.WZBacker:completeAnimation() --[[ @ 0]]
			f11_arg0.WZBacker:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.WZBacker ) --[[ @ 0]]
			f11_arg0.SquareCompassBacking:completeAnimation() --[[ @ 0]]
			f11_arg0.SquareCompassBacking:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.SquareCompassBacking ) --[[ @ 0]]
			f11_arg0.BackgroundNoFog:completeAnimation() --[[ @ 0]]
			f11_arg0.BackgroundNoFog:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.BackgroundNoFog ) --[[ @ 0]]
			f11_arg0.CompassMinimap:completeAnimation() --[[ @ 0]]
			f11_arg0.CompassMinimap:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.CompassMinimap ) --[[ @ 0]]
			f11_arg0.CompassItems0:completeAnimation() --[[ @ 0]]
			f11_arg0.CompassItems0:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.CompassItems0 ) --[[ @ 0]]
			f11_arg0.CompassItems:completeAnimation() --[[ @ 0]]
			f11_arg0.CompassItems:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.CompassItems ) --[[ @ 0]]
			f11_arg0.CompassOverlay:completeAnimation() --[[ @ 0]]
			f11_arg0.CompassOverlay:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.CompassOverlay ) --[[ @ 0]]
			f11_arg0.smokeGrenadeEffect:completeAnimation() --[[ @ 0]]
			f11_arg0.smokeGrenadeEffect:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.smokeGrenadeEffect ) --[[ @ 0]]
		end,
		WZDefaultState = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f12_local0 = function ( f13_arg0 )
				f12_arg0.WZBacker:beginAnimation( 100 ) --[[ @ 0]]
				f12_arg0.WZBacker:setAlpha( 1 ) --[[ @ 0]]
				f12_arg0.WZBacker:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.WZBacker:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.WZBacker:completeAnimation() --[[ @ 0]]
			f12_arg0.WZBacker:setAlpha( 0 ) --[[ @ 0]]
			f12_local0( f12_arg0.WZBacker ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.WZKillcamCompass.__onClose = function ( f14_arg0 )
	f14_arg0.CompassMinimap:close() --[[ @ 0]]
	f14_arg0.CompassItems0:close() --[[ @ 0]]
	f14_arg0.CompassItems:close() --[[ @ 0]]
	f14_arg0.CompassOverlay:close() --[[ @ 0]]
	f14_arg0.smokeGrenadeEffect:close() --[[ @ 0]]
end
 --[[ @ 0]]
