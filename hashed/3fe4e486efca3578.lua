-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.WaypointBomb_PlantArrowWidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WaypointBomb_PlantArrowWidget.__defaultWidth = 24 --[[ @ 0]]
CoD.WaypointBomb_PlantArrowWidget.__defaultHeight = 24 --[[ @ 0]]
CoD.WaypointBomb_PlantArrowWidget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WaypointBomb_PlantArrowWidget ) --[[ @ 0]]
	self.id = "WaypointBomb_PlantArrowWidget" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Arrow4 = LUI.UIImage.new( 0, 0, 71, 135, 0, 0, -4, 28 ) --[[ @ 0]]
	Arrow4:setAlpha( 0.1 ) --[[ @ 0]]
	Arrow4:setImage( RegisterImage( @"uie_ui_hud_core_capture_chevrons_03" ) ) --[[ @ 0]]
	self:addElement( Arrow4 ) --[[ @ 0]]
	self.Arrow4 = Arrow4 --[[ @ 0]]
	
	local Arrow3 = LUI.UIImage.new( 0, 0, 48, 80, 0, 0, -4, 28 ) --[[ @ 0]]
	Arrow3:setAlpha( 0.4 ) --[[ @ 0]]
	Arrow3:setImage( RegisterImage( @"uie_ui_hud_core_capture_chevrons" ) ) --[[ @ 0]]
	self:addElement( Arrow3 ) --[[ @ 0]]
	self.Arrow3 = Arrow3 --[[ @ 0]]
	
	local Arrow2 = LUI.UIImage.new( 0, 0, 25, 57, 0, 0, -4, 28 ) --[[ @ 0]]
	Arrow2:setAlpha( 0.7 ) --[[ @ 0]]
	Arrow2:setImage( RegisterImage( @"uie_ui_hud_core_capture_chevrons_02" ) ) --[[ @ 0]]
	self:addElement( Arrow2 ) --[[ @ 0]]
	self.Arrow2 = Arrow2 --[[ @ 0]]
	
	local Arrow = LUI.UIImage.new( 0, 0, 0, 32, 0, 0, -4, 28 ) --[[ @ 0]]
	Arrow:setImage( RegisterImage( @"uie_ui_hud_core_capture_chevrons" ) ) --[[ @ 0]]
	self:addElement( Arrow ) --[[ @ 0]]
	self.Arrow = Arrow --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.WaypointBomb_PlantArrowWidget.__resetProperties = function ( f2_arg0 )
	f2_arg0.Arrow4:completeAnimation() --[[ @ 0]]
	f2_arg0.Arrow2:completeAnimation() --[[ @ 0]]
	f2_arg0.Arrow3:completeAnimation() --[[ @ 0]]
	f2_arg0.Arrow:completeAnimation() --[[ @ 0]]
	f2_arg0.Arrow4:setAlpha( 0.1 ) --[[ @ 0]]
	f2_arg0.Arrow2:setAlpha( 0.7 ) --[[ @ 0]]
	f2_arg0.Arrow3:setAlpha( 0.4 ) --[[ @ 0]]
	f2_arg0.Arrow:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.WaypointBomb_PlantArrowWidget.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					local f5_local0 = function ( f6_arg0 )
						local f6_local0 = function ( f7_arg0 )
							f7_arg0:beginAnimation( 290 ) --[[ @ 0]]
							f7_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f6_arg0:beginAnimation( 260 ) --[[ @ 0]]
						f6_arg0:setAlpha( 0 ) --[[ @ 0]]
						f6_arg0:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f5_arg0:beginAnimation( 190 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.Arrow4:beginAnimation( 240 ) --[[ @ 0]]
				f3_arg0.Arrow4:setAlpha( 0.4 ) --[[ @ 0]]
				f3_arg0.Arrow4:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.Arrow4:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.Arrow4:completeAnimation() --[[ @ 0]]
			f3_arg0.Arrow4:setAlpha( 0 ) --[[ @ 0]]
			f3_local0( f3_arg0.Arrow4 ) --[[ @ 0]]
			local f3_local1 = function ( f8_arg0 )
				local f8_local0 = function ( f9_arg0 )
					local f9_local0 = function ( f10_arg0 )
						local f10_local0 = function ( f11_arg0 )
							local f11_local0 = function ( f12_arg0 )
								f12_arg0:beginAnimation( 200 ) --[[ @ 0]]
								f12_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f11_arg0:beginAnimation( 260 ) --[[ @ 0]]
							f11_arg0:setAlpha( 0 ) --[[ @ 0]]
							f11_arg0:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f10_arg0:beginAnimation( 189 ) --[[ @ 0]]
						f10_arg0:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f9_arg0:beginAnimation( 240 ) --[[ @ 0]]
					f9_arg0:setAlpha( 0.6 ) --[[ @ 0]]
					f9_arg0:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.Arrow3:beginAnimation( 90 ) --[[ @ 0]]
				f3_arg0.Arrow3:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.Arrow3:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.Arrow3:completeAnimation() --[[ @ 0]]
			f3_arg0.Arrow3:setAlpha( 0 ) --[[ @ 0]]
			f3_local1( f3_arg0.Arrow3 ) --[[ @ 0]]
			local f3_local2 = function ( f13_arg0 )
				local f13_local0 = function ( f14_arg0 )
					local f14_local0 = function ( f15_arg0 )
						local f15_local0 = function ( f16_arg0 )
							local f16_local0 = function ( f17_arg0 )
								f17_arg0:beginAnimation( 100 ) --[[ @ 0]]
								f17_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f16_arg0:beginAnimation( 260 ) --[[ @ 0]]
							f16_arg0:setAlpha( 0 ) --[[ @ 0]]
							f16_arg0:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f15_arg0:beginAnimation( 190 ) --[[ @ 0]]
						f15_arg0:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f14_arg0:beginAnimation( 240 ) --[[ @ 0]]
					f14_arg0:setAlpha( 0.8 ) --[[ @ 0]]
					f14_arg0:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.Arrow2:beginAnimation( 190 ) --[[ @ 0]]
				f3_arg0.Arrow2:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.Arrow2:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.Arrow2:completeAnimation() --[[ @ 0]]
			f3_arg0.Arrow2:setAlpha( 0 ) --[[ @ 0]]
			f3_local2( f3_arg0.Arrow2 ) --[[ @ 0]]
			local f3_local3 = function ( f18_arg0 )
				local f18_local0 = function ( f19_arg0 )
					local f19_local0 = function ( f20_arg0 )
						local f20_local0 = function ( f21_arg0 )
							f21_arg0:beginAnimation( 260 ) --[[ @ 0]]
							f21_arg0:setAlpha( 0 ) --[[ @ 0]]
							f21_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f20_arg0:beginAnimation( 190 ) --[[ @ 0]]
						f20_arg0:registerEventHandler( "transition_complete_keyframe", f20_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f19_arg0:beginAnimation( 239 ) --[[ @ 0]]
					f19_arg0:setAlpha( 1 ) --[[ @ 0]]
					f19_arg0:registerEventHandler( "transition_complete_keyframe", f19_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.Arrow:beginAnimation( 290 ) --[[ @ 0]]
				f3_arg0.Arrow:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.Arrow:registerEventHandler( "transition_complete_keyframe", f18_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.Arrow:completeAnimation() --[[ @ 0]]
			f3_arg0.Arrow:setAlpha( 0 ) --[[ @ 0]]
			f3_local3( f3_arg0.Arrow ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f22_arg0.Arrow4:completeAnimation() --[[ @ 0]]
			f22_arg0.Arrow4:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.Arrow4 ) --[[ @ 0]]
			f22_arg0.Arrow3:completeAnimation() --[[ @ 0]]
			f22_arg0.Arrow3:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.Arrow3 ) --[[ @ 0]]
			f22_arg0.Arrow2:completeAnimation() --[[ @ 0]]
			f22_arg0.Arrow2:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.Arrow2 ) --[[ @ 0]]
			f22_arg0.Arrow:completeAnimation() --[[ @ 0]]
			f22_arg0.Arrow:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.Arrow ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
