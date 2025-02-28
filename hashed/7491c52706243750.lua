-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.SpawnRegionName = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.SpawnRegionName.__defaultWidth = 80 --[[ @ 0]]
CoD.SpawnRegionName.__defaultHeight = 80 --[[ @ 0]]
CoD.SpawnRegionName.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.SpawnRegionName ) --[[ @ 0]]
	self.id = "SpawnRegionName" --[[ @ 0]]
	self.soundSet = "ChooseDecal" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local DangerBacking = LUI.UIImage.new( 0, 0, -16.5, 96.5, 0, 0, 66, 90 ) --[[ @ 0]]
	DangerBacking:setRGB( 0.1, 0.1, 0.1 ) --[[ @ 0]]
	DangerBacking:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( DangerBacking ) --[[ @ 0]]
	self.DangerBacking = DangerBacking --[[ @ 0]]
	
	local DangerText = LUI.UIText.new( 0, 0, -39.5, 119.5, 0, 0, 68, 88 ) --[[ @ 0]]
	DangerText:setRGB( 1, 0, 0 ) --[[ @ 0]]
	DangerText:setAlpha( 0 ) --[[ @ 0]]
	DangerText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_357915A72383BA7C" ) ) --[[ @ 0]]
	DangerText:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	DangerText:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	DangerText:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( DangerText ) --[[ @ 0]]
	self.DangerText = DangerText --[[ @ 0]]
	
	local TimerBacking = LUI.UIImage.new( 0, 0, -16.5, 96.5, 0, 0, 91.5, 128.5 ) --[[ @ 0]]
	TimerBacking:setRGB( 0.1, 0.1, 0.1 ) --[[ @ 0]]
	TimerBacking:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( TimerBacking ) --[[ @ 0]]
	self.TimerBacking = TimerBacking --[[ @ 0]]
	
	local HardpointTimer = LUI.UIText.new( 0, 0, 13.5, 66.5, 0, 0, 91.5, 128.5 ) --[[ @ 0]]
	HardpointTimer:setAlpha( 0 ) --[[ @ 0]]
	HardpointTimer:setTTF( "default" ) --[[ @ 0]]
	HardpointTimer:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	HardpointTimer:setupBombTimer( 0, true ) --[[ @ 0]]
	self:addElement( HardpointTimer ) --[[ @ 0]]
	self.HardpointTimer = HardpointTimer --[[ @ 0]]
	
	local SpawnBeaconIcon = LUI.UIImage.new( 0, 0, 16, 64, 0, 0, 16, 64 ) --[[ @ 0]]
	SpawnBeaconIcon:setImage( RegisterImage( @"uie_ui_hud_selectspawn_beacon_icon" ) ) --[[ @ 0]]
	self:addElement( SpawnBeaconIcon ) --[[ @ 0]]
	self.SpawnBeaconIcon = SpawnBeaconIcon --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.SpawnRegionName.__resetProperties = function ( f2_arg0 )
	f2_arg0.DangerBacking:completeAnimation() --[[ @ 0]]
	f2_arg0.DangerText:completeAnimation() --[[ @ 0]]
	f2_arg0.HardpointTimer:completeAnimation() --[[ @ 0]]
	f2_arg0.TimerBacking:completeAnimation() --[[ @ 0]]
	f2_arg0.DangerBacking:setRGB( 0.1, 0.1, 0.1 ) --[[ @ 0]]
	f2_arg0.DangerBacking:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.DangerText:setLeftRight( 0, 0, -39.5, 119.5 ) --[[ @ 0]]
	f2_arg0.DangerText:setTopBottom( 0, 0, 68, 88 ) --[[ @ 0]]
	f2_arg0.DangerText:setRGB( 1, 0, 0 ) --[[ @ 0]]
	f2_arg0.DangerText:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.DangerText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_357915A72383BA7C" ) ) --[[ @ 0]]
	f2_arg0.HardpointTimer:setLeftRight( 0, 0, 13.5, 66.5 ) --[[ @ 0]]
	f2_arg0.HardpointTimer:setTopBottom( 0, 0, 91.5, 128.5 ) --[[ @ 0]]
	f2_arg0.HardpointTimer:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.TimerBacking:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.SpawnRegionName.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f3_arg0.DangerBacking:completeAnimation() --[[ @ 0]]
			f3_arg0.DangerBacking:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.DangerBacking ) --[[ @ 0]]
			f3_arg0.DangerText:completeAnimation() --[[ @ 0]]
			f3_arg0.DangerText:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.DangerText ) --[[ @ 0]]
		end
	},
	Destroyed = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f4_arg0.DangerBacking:completeAnimation() --[[ @ 0]]
			f4_arg0.DangerBacking:setRGB( 0.15, 0.15, 0.15 ) --[[ @ 0]]
			f4_arg0.DangerBacking:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.DangerBacking ) --[[ @ 0]]
			f4_arg0.DangerText:completeAnimation() --[[ @ 0]]
			f4_arg0.DangerText:setLeftRight( 0, 0, -39.5, 119.5 ) --[[ @ 0]]
			f4_arg0.DangerText:setTopBottom( 0, 0, 69, 89 ) --[[ @ 0]]
			f4_arg0.DangerText:setRGB( 0.58, 0.58, 0.58 ) --[[ @ 0]]
			f4_arg0.DangerText:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.DangerText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_5630C8431CF6803" ) ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.DangerText ) --[[ @ 0]]
		end
	},
	ThreatLow = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f5_arg0.DangerBacking:completeAnimation() --[[ @ 0]]
			f5_arg0.DangerBacking:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.DangerBacking ) --[[ @ 0]]
			f5_arg0.DangerText:completeAnimation() --[[ @ 0]]
			f5_arg0.DangerText:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.DangerText ) --[[ @ 0]]
		end
	},
	ThreatMedium = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f6_arg0.DangerBacking:completeAnimation() --[[ @ 0]]
			f6_arg0.DangerBacking:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.DangerBacking ) --[[ @ 0]]
			f6_arg0.DangerText:completeAnimation() --[[ @ 0]]
			f6_arg0.DangerText:setRGB( 1, 0.61, 0 ) --[[ @ 0]]
			f6_arg0.DangerText:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.DangerText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_7E1A66DD4446C000" ) ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.DangerText ) --[[ @ 0]]
		end
	},
	ThreatHigh = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f7_arg0.DangerBacking:completeAnimation() --[[ @ 0]]
			f7_arg0.DangerBacking:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.DangerBacking ) --[[ @ 0]]
			f7_arg0.DangerText:completeAnimation() --[[ @ 0]]
			f7_arg0.DangerText:setLeftRight( 0, 0, -39.5, 119.5 ) --[[ @ 0]]
			f7_arg0.DangerText:setTopBottom( 0, 0, 68, 88 ) --[[ @ 0]]
			f7_arg0.DangerText:setRGB( 1, 0, 0 ) --[[ @ 0]]
			f7_arg0.DangerText:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.DangerText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_357915A72383BA7C" ) ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.DangerText ) --[[ @ 0]]
		end
	},
	DisabledEMP = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f8_arg0.DangerBacking:completeAnimation() --[[ @ 0]]
			f8_arg0.DangerBacking:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.DangerBacking ) --[[ @ 0]]
			f8_arg0.DangerText:completeAnimation() --[[ @ 0]]
			f8_arg0.DangerText:setRGB( 0.58, 0.58, 0.58 ) --[[ @ 0]]
			f8_arg0.DangerText:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.DangerText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/disabled" ) ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.DangerText ) --[[ @ 0]]
			f8_arg0.TimerBacking:completeAnimation() --[[ @ 0]]
			f8_arg0.TimerBacking:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.TimerBacking ) --[[ @ 0]]
			f8_arg0.HardpointTimer:completeAnimation() --[[ @ 0]]
			f8_arg0.HardpointTimer:setLeftRight( 0, 0, 13.5, 66.5 ) --[[ @ 0]]
			f8_arg0.HardpointTimer:setTopBottom( 0, 0, 91.5, 128.5 ) --[[ @ 0]]
			f8_arg0.HardpointTimer:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.HardpointTimer ) --[[ @ 0]]
		end
	},
	ManualDisabled = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f9_arg0.DangerBacking:completeAnimation() --[[ @ 0]]
			f9_arg0.DangerBacking:setRGB( 0.15, 0.15, 0.15 ) --[[ @ 0]]
			f9_arg0.DangerBacking:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.DangerBacking ) --[[ @ 0]]
			f9_arg0.DangerText:completeAnimation() --[[ @ 0]]
			f9_arg0.DangerText:setLeftRight( 0, 0, -39.5, 119.5 ) --[[ @ 0]]
			f9_arg0.DangerText:setTopBottom( 0, 0, 69, 89 ) --[[ @ 0]]
			f9_arg0.DangerText:setRGB( 0.58, 0.58, 0.58 ) --[[ @ 0]]
			f9_arg0.DangerText:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.DangerText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_1A1B60EEA7D768AB" ) ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.DangerText ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
