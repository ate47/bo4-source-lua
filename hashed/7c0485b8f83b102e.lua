-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.WarzoneDeathCamLabel = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WarzoneDeathCamLabel.__defaultWidth = 176 --[[ @ 0]]
CoD.WarzoneDeathCamLabel.__defaultHeight = 40 --[[ @ 0]]
CoD.WarzoneDeathCamLabel.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WarzoneDeathCamLabel ) --[[ @ 0]]
	self.id = "WarzoneDeathCamLabel" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local TextBG = LUI.UIImage.new( 0.5, 0.5, -108, 108, 0.5, 0.5, -36, 36 ) --[[ @ 0]]
	TextBG:setImage( RegisterImage( @"uie_ui_hud_wz_deathcam_text_bg_sm" ) ) --[[ @ 0]]
	TextBG:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta_normal" ) ) --[[ @ 0]]
	TextBG:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	TextBG:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	TextBG:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	TextBG:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	TextBG:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( TextBG ) --[[ @ 0]]
	self.TextBG = TextBG --[[ @ 0]]
	
	local BarBtm = LUI.UIImage.new( 0.5, 0.5, -92, 92, 0.5, 0.5, 13, 25 ) --[[ @ 0]]
	BarBtm:setImage( RegisterImage( @"uie_ui_hud_wz_deathcam_red_bar_sm" ) ) --[[ @ 0]]
	BarBtm:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_F755127C95CF5B6" ) ) --[[ @ 0]]
	BarBtm:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( BarBtm ) --[[ @ 0]]
	self.BarBtm = BarBtm --[[ @ 0]]
	
	local BarTop = LUI.UIImage.new( 0.5, 0.5, -92, 92, 0.5, 0.5, -25, -13 ) --[[ @ 0]]
	BarTop:setImage( RegisterImage( @"uie_ui_hud_wz_deathcam_red_bar_sm" ) ) --[[ @ 0]]
	BarTop:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_F755127C95CF5B6" ) ) --[[ @ 0]]
	BarTop:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( BarTop ) --[[ @ 0]]
	self.BarTop = BarTop --[[ @ 0]]
	
	local RecordDot = LUI.UIImage.new( 0, 0, 0, 32, 0.5, 0.5, -16, 16 ) --[[ @ 0]]
	RecordDot:setImage( RegisterImage( @"uie_ui_hud_wz_deathcam_record_dot" ) ) --[[ @ 0]]
	RecordDot:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_F755127C95CF5B6" ) ) --[[ @ 0]]
	RecordDot:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( RecordDot ) --[[ @ 0]]
	self.RecordDot = RecordDot --[[ @ 0]]
	
	local DeathCamLabel = LUI.UIText.new( 0.5, 0.5, -60, 80, 0.5, 0.5, -12, 12 ) --[[ @ 0]]
	DeathCamLabel:setRGB( 1, 0.9, 0.9 ) --[[ @ 0]]
	DeathCamLabel:setText( LocalizeToUpperString( @"wz/deathcam" ) ) --[[ @ 0]]
	DeathCamLabel:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	DeathCamLabel:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_90D57B1E92D39D7" ) ) --[[ @ 0]]
	DeathCamLabel:setShaderVector( 0, 0.55, 0, 0, 0 ) --[[ @ 0]]
	DeathCamLabel:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	DeathCamLabel:setShaderVector( 2, 1, 0, 0, 0.2 ) --[[ @ 0]]
	DeathCamLabel:setLetterSpacing( 1 ) --[[ @ 0]]
	DeathCamLabel:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	DeathCamLabel:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	self:addElement( DeathCamLabel ) --[[ @ 0]]
	self.DeathCamLabel = DeathCamLabel --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.WarzoneDeathCamLabel.__resetProperties = function ( f2_arg0 )
	f2_arg0.BarBtm:completeAnimation() --[[ @ 0]]
	f2_arg0.BarTop:completeAnimation() --[[ @ 0]]
	f2_arg0.RecordDot:completeAnimation() --[[ @ 0]]
	f2_arg0.TextBG:completeAnimation() --[[ @ 0]]
	f2_arg0.DeathCamLabel:completeAnimation() --[[ @ 0]]
	f2_arg0.BarBtm:setTopBottom( 0.5, 0.5, 13, 25 ) --[[ @ 0]]
	f2_arg0.BarBtm:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.BarBtm:setScale( 1, 1 ) --[[ @ 0]]
	f2_arg0.BarBtm:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	f2_arg0.BarTop:setTopBottom( 0.5, 0.5, -25, -13 ) --[[ @ 0]]
	f2_arg0.BarTop:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.BarTop:setScale( 1, 1 ) --[[ @ 0]]
	f2_arg0.BarTop:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	f2_arg0.RecordDot:setLeftRight( 0, 0, 0, 32 ) --[[ @ 0]]
	f2_arg0.RecordDot:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.RecordDot:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	f2_arg0.TextBG:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	f2_arg0.TextBG:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	f2_arg0.TextBG:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	f2_arg0.TextBG:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	f2_arg0.TextBG:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	f2_arg0.DeathCamLabel:setLeftRight( 0.5, 0.5, -60, 80 ) --[[ @ 0]]
	f2_arg0.DeathCamLabel:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.WarzoneDeathCamLabel.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					f5_arg0:beginAnimation( 190, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
					f5_arg0:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.TextBG:beginAnimation( 310 ) --[[ @ 0]]
				f3_arg0.TextBG:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.TextBG:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.TextBG:completeAnimation() --[[ @ 0]]
			f3_arg0.TextBG:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
			f3_arg0.TextBG:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
			f3_arg0.TextBG:setShaderVector( 2, 0.5, 0.5, 0, 0 ) --[[ @ 0]]
			f3_arg0.TextBG:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
			f3_arg0.TextBG:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
			f3_local0( f3_arg0.TextBG ) --[[ @ 0]]
			local f3_local1 = function ( f6_arg0 )
				local f6_local0 = function ( f7_arg0 )
					local f7_local0 = function ( f8_arg0 )
						local f8_local0 = function ( f9_arg0 )
							f9_arg0:beginAnimation( 190, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
							f9_arg0:setTopBottom( 0.5, 0.5, 13, 25 ) --[[ @ 0]]
							f9_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f8_arg0:beginAnimation( 100 ) --[[ @ 0]]
						f8_arg0:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
						f8_arg0:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f7_arg0:beginAnimation( 199, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
					f7_arg0:setScale( 1, 1 ) --[[ @ 0]]
					f7_arg0:setShaderVector( 0, 3.9, 0, 0, 0 ) --[[ @ 0]]
					f7_arg0:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.BarBtm:beginAnimation( 10 ) --[[ @ 0]]
				f3_arg0.BarBtm:setAlpha( 1 ) --[[ @ 0]]
				f3_arg0.BarBtm:setScale( 0.01, 1 ) --[[ @ 0]]
				f3_arg0.BarBtm:setShaderVector( 0, 9.71, 0, 0, 0 ) --[[ @ 0]]
				f3_arg0.BarBtm:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.BarBtm:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.BarBtm:completeAnimation() --[[ @ 0]]
			f3_arg0.BarBtm:setTopBottom( 0.5, 0.5, -5, 7 ) --[[ @ 0]]
			f3_arg0.BarBtm:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.BarBtm:setScale( 0, 1 ) --[[ @ 0]]
			f3_arg0.BarBtm:setShaderVector( 0, 10, 0, 0, 0 ) --[[ @ 0]]
			f3_local1( f3_arg0.BarBtm ) --[[ @ 0]]
			local f3_local2 = function ( f10_arg0 )
				local f10_local0 = function ( f11_arg0 )
					local f11_local0 = function ( f12_arg0 )
						local f12_local0 = function ( f13_arg0 )
							f13_arg0:beginAnimation( 190, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
							f13_arg0:setTopBottom( 0.5, 0.5, -25, -13 ) --[[ @ 0]]
							f13_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f12_arg0:beginAnimation( 100 ) --[[ @ 0]]
						f12_arg0:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
						f12_arg0:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f11_arg0:beginAnimation( 199, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
					f11_arg0:setScale( 1, 1 ) --[[ @ 0]]
					f11_arg0:setShaderVector( 0, 3.9, 0, 0, 0 ) --[[ @ 0]]
					f11_arg0:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.BarTop:beginAnimation( 10 ) --[[ @ 0]]
				f3_arg0.BarTop:setAlpha( 1 ) --[[ @ 0]]
				f3_arg0.BarTop:setScale( 0.01, 1 ) --[[ @ 0]]
				f3_arg0.BarTop:setShaderVector( 0, 9.71, 0, 0, 0 ) --[[ @ 0]]
				f3_arg0.BarTop:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.BarTop:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.BarTop:completeAnimation() --[[ @ 0]]
			f3_arg0.BarTop:setTopBottom( 0.5, 0.5, -7, 5 ) --[[ @ 0]]
			f3_arg0.BarTop:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.BarTop:setScale( 0, 1 ) --[[ @ 0]]
			f3_arg0.BarTop:setShaderVector( 0, 10, 0, 0, 0 ) --[[ @ 0]]
			f3_local2( f3_arg0.BarTop ) --[[ @ 0]]
			local f3_local3 = function ( f14_arg0 )
				local f14_local0 = function ( f15_arg0 )
					local f15_local0 = function ( f16_arg0 )
						local f16_local0 = function ( f17_arg0 )
							local f17_local0 = function ( f18_arg0 )
								local f18_local0 = function ( f19_arg0 )
									local f19_local0 = function ( f20_arg0 )
										local f20_local0 = function ( f21_arg0 )
											f21_arg0:beginAnimation( 199, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
											f21_arg0:setLeftRight( 0, 0, 0, 32 ) --[[ @ 0]]
											f21_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
										end
										 --[[ @ 0]]
										f20_arg0:beginAnimation( 100 ) --[[ @ 0]]
										f20_arg0:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
										f20_arg0:registerEventHandler( "transition_complete_keyframe", f20_local0 ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f19_arg0:beginAnimation( 9 ) --[[ @ 0]]
									f19_arg0:setShaderVector( 0, 3, 0, 0, 0 ) --[[ @ 0]]
									f19_arg0:registerEventHandler( "transition_complete_keyframe", f19_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f18_arg0:beginAnimation( 89 ) --[[ @ 0]]
								f18_arg0:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
								f18_arg0:registerEventHandler( "transition_complete_keyframe", f18_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f17_arg0:beginAnimation( 10 ) --[[ @ 0]]
							f17_arg0:setShaderVector( 0, 3, 0, 0, 0 ) --[[ @ 0]]
							f17_arg0:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f16_arg0:beginAnimation( 89 ) --[[ @ 0]]
						f16_arg0:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
						f16_arg0:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f15_arg0:beginAnimation( 9 ) --[[ @ 0]]
					f15_arg0:setAlpha( 1 ) --[[ @ 0]]
					f15_arg0:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.RecordDot:beginAnimation( 490 ) --[[ @ 0]]
				f3_arg0.RecordDot:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.RecordDot:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.RecordDot:completeAnimation() --[[ @ 0]]
			f3_arg0.RecordDot:setLeftRight( 0, 0, 72, 104 ) --[[ @ 0]]
			f3_arg0.RecordDot:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.RecordDot:setShaderVector( 0, 3, 0, 0, 0 ) --[[ @ 0]]
			f3_local3( f3_arg0.RecordDot ) --[[ @ 0]]
			local f3_local4 = function ( f22_arg0 )
				local f22_local0 = function ( f23_arg0 )
					f23_arg0:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
					f23_arg0:setLeftRight( 0.5, 0.5, -60, 80 ) --[[ @ 0]]
					f23_arg0:setAlpha( 1 ) --[[ @ 0]]
					f23_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.DeathCamLabel:beginAnimation( 1000 ) --[[ @ 0]]
				f3_arg0.DeathCamLabel:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.DeathCamLabel:registerEventHandler( "transition_complete_keyframe", f22_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.DeathCamLabel:completeAnimation() --[[ @ 0]]
			f3_arg0.DeathCamLabel:setLeftRight( 0.5, 0.5, -30, 110 ) --[[ @ 0]]
			f3_arg0.DeathCamLabel:setAlpha( 0 ) --[[ @ 0]]
			f3_local4( f3_arg0.DeathCamLabel ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
