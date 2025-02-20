-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
CoD.SpawnRegionPulse = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.SpawnRegionPulse.__defaultWidth = 240 --[[ @ 0]]
CoD.SpawnRegionPulse.__defaultHeight = 228 --[[ @ 0]]
CoD.SpawnRegionPulse.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.SpawnRegionPulse ) --[[ @ 0]]
	self.id = "SpawnRegionPulse" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local selectedPulse = LUI.UIImage.new( 0, 0, 96, 144, 0, 0, 90, 138 ) --[[ @ 0]]
	selectedPulse:setAlpha( 0 ) --[[ @ 0]]
	selectedPulse:setImage( RegisterImage( @"uie_ui_hud_selectspawn_pulse_wave" ) ) --[[ @ 0]]
	selectedPulse:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( selectedPulse ) --[[ @ 0]]
	self.selectedPulse = selectedPulse --[[ @ 0]]
	
	local selectedPulse2 = LUI.UIImage.new( 0, 0, 96, 144, 0, 0, 90, 138 ) --[[ @ 0]]
	selectedPulse2:setAlpha( 0 ) --[[ @ 0]]
	selectedPulse2:setImage( RegisterImage( @"uie_ui_hud_selectspawn_pulse_wave" ) ) --[[ @ 0]]
	selectedPulse2:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( selectedPulse2 ) --[[ @ 0]]
	self.selectedPulse2 = selectedPulse2 --[[ @ 0]]
	
	local selectedPulse3 = LUI.UIImage.new( 0, 0, 96, 144, 0, 0, 90, 138 ) --[[ @ 0]]
	selectedPulse3:setAlpha( 0 ) --[[ @ 0]]
	selectedPulse3:setImage( RegisterImage( @"uie_ui_hud_selectspawn_pulse_wave" ) ) --[[ @ 0]]
	selectedPulse3:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( selectedPulse3 ) --[[ @ 0]]
	self.selectedPulse3 = selectedPulse3 --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.SpawnRegionPulse.__resetProperties = function ( f2_arg0 )
	f2_arg0.selectedPulse3:completeAnimation() --[[ @ 0]]
	f2_arg0.selectedPulse2:completeAnimation() --[[ @ 0]]
	f2_arg0.selectedPulse:completeAnimation() --[[ @ 0]]
	f2_arg0.selectedPulse3:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.selectedPulse3:setScale( 1, 1 ) --[[ @ 0]]
	f2_arg0.selectedPulse2:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.selectedPulse2:setScale( 1, 1 ) --[[ @ 0]]
	f2_arg0.selectedPulse:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.selectedPulse:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.SpawnRegionPulse.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					local f5_local0 = function ( f6_arg0 )
						f6_arg0:beginAnimation( 1300 ) --[[ @ 0]]
						f6_arg0:setAlpha( 0 ) --[[ @ 0]]
						f6_arg0:setScale( 2.8, 2.8 ) --[[ @ 0]]
						f6_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f5_arg0:beginAnimation( 600 ) --[[ @ 0]]
					f5_arg0:setScale( 1.57, 1.57 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.selectedPulse:beginAnimation( 200 ) --[[ @ 0]]
				f3_arg0.selectedPulse:setAlpha( 0.25 ) --[[ @ 0]]
				f3_arg0.selectedPulse:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.selectedPulse:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.selectedPulse:completeAnimation() --[[ @ 0]]
			f3_arg0.selectedPulse:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.selectedPulse:setScale( 1, 1 ) --[[ @ 0]]
			f3_local0( f3_arg0.selectedPulse ) --[[ @ 0]]
			local f3_local1 = function ( f7_arg0 )
				local f7_local0 = function ( f8_arg0 )
					local f8_local0 = function ( f9_arg0 )
						local f9_local0 = function ( f10_arg0 )
							f10_arg0:beginAnimation( 1200 ) --[[ @ 0]]
							f10_arg0:setAlpha( 0 ) --[[ @ 0]]
							f10_arg0:setScale( 2.8, 2.8 ) --[[ @ 0]]
							f10_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f9_arg0:beginAnimation( 600 ) --[[ @ 0]]
						f9_arg0:setScale( 1.6, 1.6 ) --[[ @ 0]]
						f9_arg0:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f8_arg0:beginAnimation( 199 ) --[[ @ 0]]
					f8_arg0:setAlpha( 0.25 ) --[[ @ 0]]
					f8_arg0:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.selectedPulse2:beginAnimation( 700 ) --[[ @ 0]]
				f3_arg0.selectedPulse2:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.selectedPulse2:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.selectedPulse2:completeAnimation() --[[ @ 0]]
			f3_arg0.selectedPulse2:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.selectedPulse2:setScale( 1, 1 ) --[[ @ 0]]
			f3_local1( f3_arg0.selectedPulse2 ) --[[ @ 0]]
			local f3_local2 = function ( f11_arg0 )
				local f11_local0 = function ( f12_arg0 )
					local f12_local0 = function ( f13_arg0 )
						local f13_local0 = function ( f14_arg0 )
							f14_arg0:beginAnimation( 1099 ) --[[ @ 0]]
							f14_arg0:setAlpha( 0 ) --[[ @ 0]]
							f14_arg0:setScale( 2.8, 2.8 ) --[[ @ 0]]
							f14_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f13_arg0:beginAnimation( 600 ) --[[ @ 0]]
						f13_arg0:setScale( 1.64, 1.64 ) --[[ @ 0]]
						f13_arg0:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f12_arg0:beginAnimation( 200 ) --[[ @ 0]]
					f12_arg0:setAlpha( 0.25 ) --[[ @ 0]]
					f12_arg0:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.selectedPulse3:beginAnimation( 1400 ) --[[ @ 0]]
				f3_arg0.selectedPulse3:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.selectedPulse3:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.selectedPulse3:completeAnimation() --[[ @ 0]]
			f3_arg0.selectedPulse3:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.selectedPulse3:setScale( 1, 1 ) --[[ @ 0]]
			f3_local2( f3_arg0.selectedPulse3 ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end,
		Snap = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f15_local0 = function ( f16_arg0 )
				f16_arg0:beginAnimation( 250 ) --[[ @ 0]]
				f16_arg0:setScale( 1, 1 ) --[[ @ 0]]
				f16_arg0:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.selectedPulse:beginAnimation( 120 ) --[[ @ 0]]
			f15_arg0.selectedPulse:setScale( 18, 18 ) --[[ @ 0]]
			f15_arg0.selectedPulse:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
			f15_arg0.selectedPulse:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
			local f15_local1 = function ( f17_arg0 )
				f17_arg0:beginAnimation( 250 ) --[[ @ 0]]
				f17_arg0:setScale( 1, 1 ) --[[ @ 0]]
				f17_arg0:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.selectedPulse2:beginAnimation( 50 ) --[[ @ 0]]
			f15_arg0.selectedPulse2:setScale( 18, 18 ) --[[ @ 0]]
			f15_arg0.selectedPulse2:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
			f15_arg0.selectedPulse2:registerEventHandler( "transition_complete_keyframe", f15_local1 ) --[[ @ 0]]
			local f15_local2 = function ( f18_arg0 )
				f15_arg0.selectedPulse3:beginAnimation( 250, Enum[@"hash_1F50FFF429AB1890"][@"hash_15193EA7825DC097"] ) --[[ @ 0]]
				f15_arg0.selectedPulse3:setScale( 1, 1 ) --[[ @ 0]]
				f15_arg0.selectedPulse3:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
				f15_arg0.selectedPulse3:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.selectedPulse3:completeAnimation() --[[ @ 0]]
			f15_arg0.selectedPulse3:setScale( 18, 18 ) --[[ @ 0]]
			f15_local2( f15_arg0.selectedPulse3 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
