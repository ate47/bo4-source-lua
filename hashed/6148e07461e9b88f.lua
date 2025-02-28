-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.CallingCards_Asset_AstroMonkey = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CallingCards_Asset_AstroMonkey.__defaultWidth = 368 --[[ @ 0]]
CoD.CallingCards_Asset_AstroMonkey.__defaultHeight = 393 --[[ @ 0]]
CoD.CallingCards_Asset_AstroMonkey.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CallingCards_Asset_AstroMonkey ) --[[ @ 0]]
	self.id = "CallingCards_Asset_AstroMonkey" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local monkey = LUI.UIImage.new( 0, 0, 0, 368, 0, 0, 0.5, 392.5 ) --[[ @ 0]]
	monkey:setImage( RegisterImage( @"uie_ui_icon_callingcards_signature_weapon_master_monkey" ) ) --[[ @ 0]]
	self:addElement( monkey ) --[[ @ 0]]
	self.monkey = monkey --[[ @ 0]]
	
	local teethShine = LUI.UIImage.new( 0, 0, 168, 216, 0, 0, 97.5, 145.5 ) --[[ @ 0]]
	teethShine:setImage( RegisterImage( @"uie_ui_icon_callingcards_signature_weapon_master_teethshines" ) ) --[[ @ 0]]
	teethShine:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta_normal" ) ) --[[ @ 0]]
	teethShine:setShaderVector( 0, -0.12, 0.11, 0, 0 ) --[[ @ 0]]
	teethShine:setShaderVector( 1, 0.03, 0.03, 0, 0 ) --[[ @ 0]]
	teethShine:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	teethShine:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	teethShine:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( teethShine ) --[[ @ 0]]
	self.teethShine = teethShine --[[ @ 0]]
	
	local monkeyShines = LUI.UIImage.new( 0, 0, 0, 368, 0, 0, 0, 392 ) --[[ @ 0]]
	monkeyShines:setAlpha( 0.4 ) --[[ @ 0]]
	monkeyShines:setImage( RegisterImage( @"uie_ui_icon_callingcards_signature_weapon_master_monkeyshines" ) ) --[[ @ 0]]
	monkeyShines:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta_normal" ) ) --[[ @ 0]]
	monkeyShines:setShaderVector( 0, 0.2, 0.24, 0, 0 ) --[[ @ 0]]
	monkeyShines:setShaderVector( 1, 0.03, 0.03, 0, 0 ) --[[ @ 0]]
	monkeyShines:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	monkeyShines:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	monkeyShines:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( monkeyShines ) --[[ @ 0]]
	self.monkeyShines = monkeyShines --[[ @ 0]]
	
	local monkeyShines2 = LUI.UIImage.new( 0, 0, 0, 368, 0, 0, 0, 392 ) --[[ @ 0]]
	monkeyShines2:setAlpha( 0.65 ) --[[ @ 0]]
	monkeyShines2:setImage( RegisterImage( @"uie_ui_icon_callingcards_signature_weapon_master_monkeyshines" ) ) --[[ @ 0]]
	monkeyShines2:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta_normal" ) ) --[[ @ 0]]
	monkeyShines2:setShaderVector( 0, 0.83, 0.91, 0, 0 ) --[[ @ 0]]
	monkeyShines2:setShaderVector( 1, 0.03, 0.03, 0, 0 ) --[[ @ 0]]
	monkeyShines2:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	monkeyShines2:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	monkeyShines2:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( monkeyShines2 ) --[[ @ 0]]
	self.monkeyShines2 = monkeyShines2 --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CallingCards_Asset_AstroMonkey.__resetProperties = function ( f2_arg0 )
	f2_arg0.monkeyShines:completeAnimation() --[[ @ 0]]
	f2_arg0.teethShine:completeAnimation() --[[ @ 0]]
	f2_arg0.monkeyShines2:completeAnimation() --[[ @ 0]]
	f2_arg0.monkeyShines:setAlpha( 0.4 ) --[[ @ 0]]
	f2_arg0.monkeyShines:setShaderVector( 0, 0.2, 0.24, 0, 0 ) --[[ @ 0]]
	f2_arg0.monkeyShines:setShaderVector( 1, 0.03, 0.03, 0, 0 ) --[[ @ 0]]
	f2_arg0.monkeyShines:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	f2_arg0.monkeyShines:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	f2_arg0.monkeyShines:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	f2_arg0.teethShine:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.teethShine:setShaderVector( 0, -0.12, 0.11, 0, 0 ) --[[ @ 0]]
	f2_arg0.teethShine:setShaderVector( 1, 0.03, 0.03, 0, 0 ) --[[ @ 0]]
	f2_arg0.teethShine:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	f2_arg0.teethShine:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	f2_arg0.teethShine:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	f2_arg0.monkeyShines2:setAlpha( 0.65 ) --[[ @ 0]]
	f2_arg0.monkeyShines2:setShaderVector( 0, 0.83, 0.91, 0, 0 ) --[[ @ 0]]
	f2_arg0.monkeyShines2:setShaderVector( 1, 0.03, 0.03, 0, 0 ) --[[ @ 0]]
	f2_arg0.monkeyShines2:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	f2_arg0.monkeyShines2:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	f2_arg0.monkeyShines2:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CallingCards_Asset_AstroMonkey.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					local f5_local0 = function ( f6_arg0 )
						local f6_local0 = function ( f7_arg0 )
							local f7_local0 = function ( f8_arg0 )
								local f8_local0 = function ( f9_arg0 )
									local f9_local0 = function ( f10_arg0 )
										f10_arg0:beginAnimation( 1970 ) --[[ @ 0]]
										f10_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f9_arg0:beginAnimation( 19 ) --[[ @ 0]]
									f9_arg0:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f8_arg0:beginAnimation( 510 ) --[[ @ 0]]
								f8_arg0:setShaderVector( 0, 0.72, 0.95, 0, 0 ) --[[ @ 0]]
								f8_arg0:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f7_arg0:beginAnimation( 500 ) --[[ @ 0]]
							f7_arg0:setShaderVector( 0, 0.48, 0.75, 0, 0 ) --[[ @ 0]]
							f7_arg0:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f6_arg0:beginAnimation( 1000 ) --[[ @ 0]]
						f6_arg0:setShaderVector( 0, 0.23, 0.56, 0, 0 ) --[[ @ 0]]
						f6_arg0:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f5_arg0:beginAnimation( 19 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.teethShine:beginAnimation( 990 ) --[[ @ 0]]
				f3_arg0.teethShine:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.teethShine:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.teethShine:completeAnimation() --[[ @ 0]]
			f3_arg0.teethShine:setAlpha( 1 ) --[[ @ 0]]
			f3_arg0.teethShine:setShaderVector( 0, -0.12, 0.11, 0, 0 ) --[[ @ 0]]
			f3_arg0.teethShine:setShaderVector( 1, 0.03, 0.03, 0, 0 ) --[[ @ 0]]
			f3_arg0.teethShine:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
			f3_arg0.teethShine:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
			f3_arg0.teethShine:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
			f3_local0( f3_arg0.teethShine ) --[[ @ 0]]
			local f3_local1 = function ( f11_arg0 )
				local f11_local0 = function ( f12_arg0 )
					local f12_local0 = function ( f13_arg0 )
						local f13_local0 = function ( f14_arg0 )
							local f14_local0 = function ( f15_arg0 )
								f15_arg0:beginAnimation( 980 ) --[[ @ 0]]
								f15_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f14_arg0:beginAnimation( 9 ) --[[ @ 0]]
							f14_arg0:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f13_arg0:beginAnimation( 1500 ) --[[ @ 0]]
						f13_arg0:setShaderVector( 0, 0.86, 0.98, 0, 0 ) --[[ @ 0]]
						f13_arg0:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f12_arg0:beginAnimation( 500 ) --[[ @ 0]]
					f12_arg0:setShaderVector( 0, 0.61, 0.73, 0, 0 ) --[[ @ 0]]
					f12_arg0:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.monkeyShines:beginAnimation( 2010 ) --[[ @ 0]]
				f3_arg0.monkeyShines:setShaderVector( 0, 0.52, 0.64, 0, 0 ) --[[ @ 0]]
				f3_arg0.monkeyShines:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.monkeyShines:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.monkeyShines:completeAnimation() --[[ @ 0]]
			f3_arg0.monkeyShines:setAlpha( 0.4 ) --[[ @ 0]]
			f3_arg0.monkeyShines:setShaderVector( 0, 0.2, 0.24, 0, 0 ) --[[ @ 0]]
			f3_arg0.monkeyShines:setShaderVector( 1, 0.03, 0.03, 0, 0 ) --[[ @ 0]]
			f3_arg0.monkeyShines:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
			f3_arg0.monkeyShines:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
			f3_arg0.monkeyShines:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
			f3_local1( f3_arg0.monkeyShines ) --[[ @ 0]]
			local f3_local2 = function ( f16_arg0 )
				local f16_local0 = function ( f17_arg0 )
					local f17_local0 = function ( f18_arg0 )
						local f18_local0 = function ( f19_arg0 )
							local f19_local0 = function ( f20_arg0 )
								local f20_local0 = function ( f21_arg0 )
									f21_arg0:beginAnimation( 2490 ) --[[ @ 0]]
									f21_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f20_arg0:beginAnimation( 19 ) --[[ @ 0]]
								f20_arg0:setAlpha( 0 ) --[[ @ 0]]
								f20_arg0:registerEventHandler( "transition_complete_keyframe", f20_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f19_arg0:beginAnimation( 1000 ) --[[ @ 0]]
							f19_arg0:setAlpha( 0.01 ) --[[ @ 0]]
							f19_arg0:setShaderVector( 0, 0.83, 0.91, 0, 0 ) --[[ @ 0]]
							f19_arg0:registerEventHandler( "transition_complete_keyframe", f19_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f18_arg0:beginAnimation( 1010 ) --[[ @ 0]]
						f18_arg0:setShaderVector( 0, 0.51, 0.58, 0, 0 ) --[[ @ 0]]
						f18_arg0:registerEventHandler( "transition_complete_keyframe", f18_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f17_arg0:beginAnimation( 9 ) --[[ @ 0]]
					f17_arg0:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.monkeyShines2:beginAnimation( 470 ) --[[ @ 0]]
				f3_arg0.monkeyShines2:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.monkeyShines2:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.monkeyShines2:completeAnimation() --[[ @ 0]]
			f3_arg0.monkeyShines2:setAlpha( 0.5 ) --[[ @ 0]]
			f3_arg0.monkeyShines2:setShaderVector( 0, 0.08, 0.19, 0, 0 ) --[[ @ 0]]
			f3_arg0.monkeyShines2:setShaderVector( 1, 0.03, 0.03, 0, 0 ) --[[ @ 0]]
			f3_arg0.monkeyShines2:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
			f3_arg0.monkeyShines2:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
			f3_arg0.monkeyShines2:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
			f3_local2( f3_arg0.monkeyShines2 ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
