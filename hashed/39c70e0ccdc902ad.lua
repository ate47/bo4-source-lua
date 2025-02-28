-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "ui/uieditor/widgets/common/commoncornerpips01" ) --[[ @ 0]]

CoD.VehicleSeatConfig_SeatPip = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.VehicleSeatConfig_SeatPip.__defaultWidth = 24 --[[ @ 0]]
CoD.VehicleSeatConfig_SeatPip.__defaultHeight = 24 --[[ @ 0]]
CoD.VehicleSeatConfig_SeatPip.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.VehicleSeatConfig_SeatPip ) --[[ @ 0]]
	self.id = "VehicleSeatConfig_SeatPip" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local EmptyPip = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	EmptyPip:setRGB( 0, 0, 0 ) --[[ @ 0]]
	EmptyPip:setAlpha( 0.9 ) --[[ @ 0]]
	self:addElement( EmptyPip ) --[[ @ 0]]
	self.EmptyPip = EmptyPip --[[ @ 0]]
	
	local NoiseTiledBacking = LUI.UIImage.new( 0, 0, 0, 24, 0.09, 0.09, -2, 22 ) --[[ @ 0]]
	NoiseTiledBacking:setAlpha( 0.5 ) --[[ @ 0]]
	NoiseTiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	NoiseTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBacking ) --[[ @ 0]]
	self.NoiseTiledBacking = NoiseTiledBacking --[[ @ 0]]
	
	local OccupiedPip = LUI.UIImage.new( 0, 1, 2, -2, 0, 1, 2, -2 ) --[[ @ 0]]
	OccupiedPip:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	OccupiedPip:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( OccupiedPip ) --[[ @ 0]]
	self.OccupiedPip = OccupiedPip --[[ @ 0]]
	
	local OccupiedPipPulse = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	OccupiedPipPulse:setImage( RegisterImage( @"hash_5B5C93CB5E222BAD" ) ) --[[ @ 0]]
	OccupiedPipPulse:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	OccupiedPipPulse:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( OccupiedPipPulse ) --[[ @ 0]]
	self.OccupiedPipPulse = OccupiedPipPulse --[[ @ 0]]
	
	local LedPattern = LUI.UIImage.new( 0, 0, 1, 23, 0, 0, 1, 23 ) --[[ @ 0]]
	LedPattern:setAlpha( 0.4 ) --[[ @ 0]]
	LedPattern:setImage( RegisterImage( @"uie_ui_menu_store_repeat_dot_pattern" ) ) --[[ @ 0]]
	LedPattern:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	LedPattern:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	LedPattern:setupNineSliceShader( 24, 24 ) --[[ @ 0]]
	self:addElement( LedPattern ) --[[ @ 0]]
	self.LedPattern = LedPattern --[[ @ 0]]
	
	local LedPatternAdd = LUI.UIImage.new( 0, 0, 1, 23, 0, 0, 1, 23 ) --[[ @ 0]]
	LedPatternAdd:setAlpha( 0.5 ) --[[ @ 0]]
	LedPatternAdd:setImage( RegisterImage( @"uie_ui_menu_store_repeat_dot_pattern" ) ) --[[ @ 0]]
	LedPatternAdd:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	LedPatternAdd:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	LedPatternAdd:setupNineSliceShader( 24, 24 ) --[[ @ 0]]
	self:addElement( LedPatternAdd ) --[[ @ 0]]
	self.LedPatternAdd = LedPatternAdd --[[ @ 0]]
	
	local FrontendFrame = LUI.UIImage.new( 0.5, 1.5, -13, -11, 0.5, 1.5, -13, -11 ) --[[ @ 0]]
	FrontendFrame:setImage( RegisterImage( @"uie_ui_menu_store_common_frame" ) ) --[[ @ 0]]
	FrontendFrame:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FrontendFrame:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FrontendFrame:setupNineSliceShader( 12, 12 ) --[[ @ 0]]
	self:addElement( FrontendFrame ) --[[ @ 0]]
	self.FrontendFrame = FrontendFrame --[[ @ 0]]
	
	local FrontendFrameAdd = LUI.UIImage.new( 0.5, 1.5, -13, -11, 0.5, 1.5, -13, -11 ) --[[ @ 0]]
	FrontendFrameAdd:setImage( RegisterImage( @"uie_ui_menu_store_common_frame" ) ) --[[ @ 0]]
	FrontendFrameAdd:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FrontendFrameAdd:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FrontendFrameAdd:setupNineSliceShader( 6, 6 ) --[[ @ 0]]
	self:addElement( FrontendFrameAdd ) --[[ @ 0]]
	self.FrontendFrameAdd = FrontendFrameAdd --[[ @ 0]]
	
	local CommonCornerPips = CoD.CommonCornerPips01.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( CommonCornerPips ) --[[ @ 0]]
	self.CommonCornerPips = CommonCornerPips --[[ @ 0]]
	
	local IDNumber2 = LUI.UIText.new( 0.5, 0.5, -11.5, 11.5, 0, 0, 0.5, 23.5 ) --[[ @ 0]]
	IDNumber2:setText( 1 ) --[[ @ 0]]
	IDNumber2:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	IDNumber2:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_3336C1AE82B1520A" ) ) --[[ @ 0]]
	IDNumber2:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	IDNumber2:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( IDNumber2 ) --[[ @ 0]]
	self.IDNumber2 = IDNumber2 --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.VehicleSeatConfig_SeatPip.__resetProperties = function ( f2_arg0 )
	f2_arg0.OccupiedPip:completeAnimation() --[[ @ 0]]
	f2_arg0.OccupiedPipPulse:completeAnimation() --[[ @ 0]]
	f2_arg0.FrontendFrame:completeAnimation() --[[ @ 0]]
	f2_arg0.LedPattern:completeAnimation() --[[ @ 0]]
	f2_arg0.EmptyPip:completeAnimation() --[[ @ 0]]
	f2_arg0.FrontendFrameAdd:completeAnimation() --[[ @ 0]]
	f2_arg0.CommonCornerPips:completeAnimation() --[[ @ 0]]
	f2_arg0.IDNumber2:completeAnimation() --[[ @ 0]]
	f2_arg0.OccupiedPip:setLeftRight( 0, 1, 2, -2 ) --[[ @ 0]]
	f2_arg0.OccupiedPip:setTopBottom( 0, 1, 2, -2 ) --[[ @ 0]]
	f2_arg0.OccupiedPip:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.OccupiedPip:setScale( 1, 1 ) --[[ @ 0]]
	f2_arg0.OccupiedPip:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	f2_arg0.OccupiedPipPulse:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.OccupiedPipPulse:setScale( 1, 1 ) --[[ @ 0]]
	f2_arg0.FrontendFrame:setLeftRight( 0.5, 1.5, -13, -11 ) --[[ @ 0]]
	f2_arg0.FrontendFrame:setTopBottom( 0.5, 1.5, -13, -11 ) --[[ @ 0]]
	f2_arg0.FrontendFrame:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.LedPattern:setAlpha( 0.4 ) --[[ @ 0]]
	f2_arg0.EmptyPip:setAlpha( 0.9 ) --[[ @ 0]]
	f2_arg0.FrontendFrameAdd:setLeftRight( 0.5, 1.5, -13, -11 ) --[[ @ 0]]
	f2_arg0.FrontendFrameAdd:setTopBottom( 0.5, 1.5, -13, -11 ) --[[ @ 0]]
	f2_arg0.FrontendFrameAdd:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.CommonCornerPips:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	f2_arg0.CommonCornerPips:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	f2_arg0.IDNumber2:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.VehicleSeatConfig_SeatPip.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f3_arg0.EmptyPip:completeAnimation() --[[ @ 0]]
			f3_arg0.EmptyPip:setAlpha( 0.9 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.EmptyPip ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					local f5_local0 = function ( f6_arg0 )
						local f6_local0 = function ( f7_arg0 )
							f7_arg0:beginAnimation( 500 ) --[[ @ 0]]
							f7_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f6_arg0:beginAnimation( 299 ) --[[ @ 0]]
						f6_arg0:setAlpha( 0.8 ) --[[ @ 0]]
						f6_arg0:setShaderVector( 0, 1.8, 0, 0, 0 ) --[[ @ 0]]
						f6_arg0:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f5_arg0:beginAnimation( 700 ) --[[ @ 0]]
					f5_arg0:setAlpha( 0.71 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.OccupiedPip:beginAnimation( 500 ) --[[ @ 0]]
				f3_arg0.OccupiedPip:setAlpha( 0.5 ) --[[ @ 0]]
				f3_arg0.OccupiedPip:setShaderVector( 0, 1.5, 0, 0, 0 ) --[[ @ 0]]
				f3_arg0.OccupiedPip:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.OccupiedPip:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.OccupiedPip:completeAnimation() --[[ @ 0]]
			f3_arg0.OccupiedPip:setLeftRight( 0, 1, 2, -2 ) --[[ @ 0]]
			f3_arg0.OccupiedPip:setTopBottom( 0, 1, 2, -2 ) --[[ @ 0]]
			f3_arg0.OccupiedPip:setAlpha( 0.8 ) --[[ @ 0]]
			f3_arg0.OccupiedPip:setScale( 1, 1 ) --[[ @ 0]]
			f3_arg0.OccupiedPip:setShaderVector( 0, 1.8, 0, 0, 0 ) --[[ @ 0]]
			f3_local0( f3_arg0.OccupiedPip ) --[[ @ 0]]
			local f3_local1 = function ( f8_arg0 )
				local f8_local0 = function ( f9_arg0 )
					local f9_local0 = function ( f10_arg0 )
						f10_arg0:beginAnimation( 250 ) --[[ @ 0]]
						f10_arg0:setAlpha( 0 ) --[[ @ 0]]
						f10_arg0:setScale( 2.5, 2.5 ) --[[ @ 0]]
						f10_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f9_arg0:beginAnimation( 1000 ) --[[ @ 0]]
					f9_arg0:setAlpha( 0.6 ) --[[ @ 0]]
					f9_arg0:setScale( 2, 2 ) --[[ @ 0]]
					f9_arg0:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.OccupiedPipPulse:beginAnimation( 500 ) --[[ @ 0]]
				f3_arg0.OccupiedPipPulse:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.OccupiedPipPulse:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.OccupiedPipPulse:completeAnimation() --[[ @ 0]]
			f3_arg0.OccupiedPipPulse:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.OccupiedPipPulse:setScale( 0, 0 ) --[[ @ 0]]
			f3_local1( f3_arg0.OccupiedPipPulse ) --[[ @ 0]]
			local f3_local2 = function ( f11_arg0 )
				local f11_local0 = function ( f12_arg0 )
					local f12_local0 = function ( f13_arg0 )
						local f13_local0 = function ( f14_arg0 )
							f14_arg0:beginAnimation( 500 ) --[[ @ 0]]
							f14_arg0:setAlpha( 0.8 ) --[[ @ 0]]
							f14_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f13_arg0:beginAnimation( 299 ) --[[ @ 0]]
						f13_arg0:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f12_arg0:beginAnimation( 700 ) --[[ @ 0]]
					f12_arg0:setAlpha( 1 ) --[[ @ 0]]
					f12_arg0:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.LedPattern:beginAnimation( 500 ) --[[ @ 0]]
				f3_arg0.LedPattern:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.LedPattern:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.LedPattern:completeAnimation() --[[ @ 0]]
			f3_arg0.LedPattern:setAlpha( 0.4 ) --[[ @ 0]]
			f3_local2( f3_arg0.LedPattern ) --[[ @ 0]]
			local f3_local3 = function ( f15_arg0 )
				local f15_local0 = function ( f16_arg0 )
					local f16_local0 = function ( f17_arg0 )
						f17_arg0:beginAnimation( 500 ) --[[ @ 0]]
						f17_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f16_arg0:beginAnimation( 1000 ) --[[ @ 0]]
					f16_arg0:setAlpha( 1 ) --[[ @ 0]]
					f16_arg0:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.FrontendFrame:beginAnimation( 500 ) --[[ @ 0]]
				f3_arg0.FrontendFrame:setAlpha( 0.2 ) --[[ @ 0]]
				f3_arg0.FrontendFrame:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.FrontendFrame:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.FrontendFrame:completeAnimation() --[[ @ 0]]
			f3_arg0.FrontendFrame:setAlpha( 1 ) --[[ @ 0]]
			f3_local3( f3_arg0.FrontendFrame ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end,
		Empty = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 8 ) --[[ @ 0]]
			f18_arg0.EmptyPip:completeAnimation() --[[ @ 0]]
			f18_arg0.EmptyPip:setAlpha( 0.9 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.EmptyPip ) --[[ @ 0]]
			local f18_local0 = function ( f19_arg0 )
				f18_arg0.OccupiedPip:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_in"] ) --[[ @ 0]]
				f18_arg0.OccupiedPip:setAlpha( 0 ) --[[ @ 0]]
				f18_arg0.OccupiedPip:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
				f18_arg0.OccupiedPip:registerEventHandler( "interrupted_keyframe", f18_arg0.clipInterrupted ) --[[ @ 0]]
				f18_arg0.OccupiedPip:registerEventHandler( "transition_complete_keyframe", f18_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f18_arg0.OccupiedPip:completeAnimation() --[[ @ 0]]
			f18_arg0.OccupiedPip:setLeftRight( 0, 1, 2, -2 ) --[[ @ 0]]
			f18_arg0.OccupiedPip:setTopBottom( 0, 1, 2, -2 ) --[[ @ 0]]
			f18_arg0.OccupiedPip:setAlpha( 0.8 ) --[[ @ 0]]
			f18_arg0.OccupiedPip:setScale( 1, 1 ) --[[ @ 0]]
			f18_arg0.OccupiedPip:setShaderVector( 0, 1.8, 0, 0, 0 ) --[[ @ 0]]
			f18_local0( f18_arg0.OccupiedPip ) --[[ @ 0]]
			f18_arg0.OccupiedPipPulse:completeAnimation() --[[ @ 0]]
			f18_arg0.OccupiedPipPulse:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.OccupiedPipPulse ) --[[ @ 0]]
			f18_arg0.LedPattern:completeAnimation() --[[ @ 0]]
			f18_arg0.LedPattern:setAlpha( 0.4 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.LedPattern ) --[[ @ 0]]
			local f18_local1 = function ( f20_arg0 )
				f18_arg0.FrontendFrame:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f18_arg0.FrontendFrame:setLeftRight( 0.5, 1.5, -14, -10 ) --[[ @ 0]]
				f18_arg0.FrontendFrame:setTopBottom( 0.5, 1.5, -14, -10 ) --[[ @ 0]]
				f18_arg0.FrontendFrame:setAlpha( 0 ) --[[ @ 0]]
				f18_arg0.FrontendFrame:registerEventHandler( "interrupted_keyframe", f18_arg0.clipInterrupted ) --[[ @ 0]]
				f18_arg0.FrontendFrame:registerEventHandler( "transition_complete_keyframe", f18_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f18_arg0.FrontendFrame:completeAnimation() --[[ @ 0]]
			f18_arg0.FrontendFrame:setLeftRight( 0.5, 1.5, -13, -11 ) --[[ @ 0]]
			f18_arg0.FrontendFrame:setTopBottom( 0.5, 1.5, -13, -11 ) --[[ @ 0]]
			f18_arg0.FrontendFrame:setAlpha( 1 ) --[[ @ 0]]
			f18_local1( f18_arg0.FrontendFrame ) --[[ @ 0]]
			f18_arg0.FrontendFrameAdd:completeAnimation() --[[ @ 0]]
			f18_arg0.FrontendFrameAdd:setLeftRight( 0.5, 1.5, -13, -11 ) --[[ @ 0]]
			f18_arg0.FrontendFrameAdd:setTopBottom( 0.5, 1.5, -13, -11 ) --[[ @ 0]]
			f18_arg0.FrontendFrameAdd:setAlpha( 1 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.FrontendFrameAdd ) --[[ @ 0]]
			f18_arg0.CommonCornerPips:completeAnimation() --[[ @ 0]]
			f18_arg0.CommonCornerPips:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
			f18_arg0.CommonCornerPips:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.CommonCornerPips ) --[[ @ 0]]
			f18_arg0.IDNumber2:completeAnimation() --[[ @ 0]]
			f18_arg0.IDNumber2:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.IDNumber2 ) --[[ @ 0]]
		end
	},
	Empty = {
		DefaultClip = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 7 ) --[[ @ 0]]
			f21_arg0.EmptyPip:completeAnimation() --[[ @ 0]]
			f21_arg0.EmptyPip:setAlpha( 0.9 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.EmptyPip ) --[[ @ 0]]
			f21_arg0.OccupiedPip:completeAnimation() --[[ @ 0]]
			f21_arg0.OccupiedPip:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.OccupiedPip ) --[[ @ 0]]
			f21_arg0.OccupiedPipPulse:completeAnimation() --[[ @ 0]]
			f21_arg0.OccupiedPipPulse:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.OccupiedPipPulse ) --[[ @ 0]]
			f21_arg0.FrontendFrame:completeAnimation() --[[ @ 0]]
			f21_arg0.FrontendFrame:setLeftRight( 0.5, 1.5, -14, -10 ) --[[ @ 0]]
			f21_arg0.FrontendFrame:setTopBottom( 0.5, 1.5, -14, -10 ) --[[ @ 0]]
			f21_arg0.FrontendFrame:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.FrontendFrame ) --[[ @ 0]]
			f21_arg0.FrontendFrameAdd:completeAnimation() --[[ @ 0]]
			f21_arg0.FrontendFrameAdd:setLeftRight( 0.5, 1.5, -13, -11 ) --[[ @ 0]]
			f21_arg0.FrontendFrameAdd:setTopBottom( 0.5, 1.5, -13, -11 ) --[[ @ 0]]
			f21_arg0.FrontendFrameAdd:setAlpha( 1 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.FrontendFrameAdd ) --[[ @ 0]]
			f21_arg0.CommonCornerPips:completeAnimation() --[[ @ 0]]
			f21_arg0.CommonCornerPips:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
			f21_arg0.CommonCornerPips:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.CommonCornerPips ) --[[ @ 0]]
			f21_arg0.IDNumber2:completeAnimation() --[[ @ 0]]
			f21_arg0.IDNumber2:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.IDNumber2 ) --[[ @ 0]]
		end,
		DefaultState = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 7 ) --[[ @ 0]]
			f22_arg0.EmptyPip:completeAnimation() --[[ @ 0]]
			f22_arg0.EmptyPip:setAlpha( 0.9 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.EmptyPip ) --[[ @ 0]]
			local f22_local0 = function ( f23_arg0 )
				f22_arg0.OccupiedPip:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f22_arg0.OccupiedPip:setAlpha( 0.8 ) --[[ @ 0]]
				f22_arg0.OccupiedPip:setShaderVector( 0, 1.8, 0, 0, 0 ) --[[ @ 0]]
				f22_arg0.OccupiedPip:registerEventHandler( "interrupted_keyframe", f22_arg0.clipInterrupted ) --[[ @ 0]]
				f22_arg0.OccupiedPip:registerEventHandler( "transition_complete_keyframe", f22_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f22_arg0.OccupiedPip:completeAnimation() --[[ @ 0]]
			f22_arg0.OccupiedPip:setLeftRight( 0, 1, 2, -2 ) --[[ @ 0]]
			f22_arg0.OccupiedPip:setTopBottom( 0, 1, 2, -2 ) --[[ @ 0]]
			f22_arg0.OccupiedPip:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.OccupiedPip:setScale( 1, 1 ) --[[ @ 0]]
			f22_arg0.OccupiedPip:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
			f22_local0( f22_arg0.OccupiedPip ) --[[ @ 0]]
			f22_arg0.OccupiedPipPulse:completeAnimation() --[[ @ 0]]
			f22_arg0.OccupiedPipPulse:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.OccupiedPipPulse ) --[[ @ 0]]
			f22_arg0.LedPattern:completeAnimation() --[[ @ 0]]
			f22_arg0.LedPattern:setAlpha( 0.4 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.LedPattern ) --[[ @ 0]]
			local f22_local1 = function ( f24_arg0 )
				f22_arg0.FrontendFrame:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f22_arg0.FrontendFrame:setLeftRight( 0.5, 1.5, -13, -11 ) --[[ @ 0]]
				f22_arg0.FrontendFrame:setTopBottom( 0.5, 1.5, -13, -11 ) --[[ @ 0]]
				f22_arg0.FrontendFrame:setAlpha( 1 ) --[[ @ 0]]
				f22_arg0.FrontendFrame:registerEventHandler( "interrupted_keyframe", f22_arg0.clipInterrupted ) --[[ @ 0]]
				f22_arg0.FrontendFrame:registerEventHandler( "transition_complete_keyframe", f22_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f22_arg0.FrontendFrame:completeAnimation() --[[ @ 0]]
			f22_arg0.FrontendFrame:setLeftRight( 0.5, 1.5, -14, -10 ) --[[ @ 0]]
			f22_arg0.FrontendFrame:setTopBottom( 0.5, 1.5, -14, -10 ) --[[ @ 0]]
			f22_arg0.FrontendFrame:setAlpha( 0 ) --[[ @ 0]]
			f22_local1( f22_arg0.FrontendFrame ) --[[ @ 0]]
			f22_arg0.FrontendFrameAdd:completeAnimation() --[[ @ 0]]
			f22_arg0.FrontendFrameAdd:setLeftRight( 0.5, 1.5, -13, -11 ) --[[ @ 0]]
			f22_arg0.FrontendFrameAdd:setTopBottom( 0.5, 1.5, -13, -11 ) --[[ @ 0]]
			f22_arg0.FrontendFrameAdd:setAlpha( 1 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.FrontendFrameAdd ) --[[ @ 0]]
			f22_arg0.CommonCornerPips:completeAnimation() --[[ @ 0]]
			f22_arg0.CommonCornerPips:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
			f22_arg0.CommonCornerPips:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.CommonCornerPips ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.VehicleSeatConfig_SeatPip.__onClose = function ( f25_arg0 )
	f25_arg0.CommonCornerPips:close() --[[ @ 0]]
end
 --[[ @ 0]]
