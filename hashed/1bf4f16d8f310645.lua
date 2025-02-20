-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
CoD.AmmoWidget_StockAmmo_EmptyPulse = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AmmoWidget_StockAmmo_EmptyPulse.__defaultWidth = 100 --[[ @ 0]]
CoD.AmmoWidget_StockAmmo_EmptyPulse.__defaultHeight = 24 --[[ @ 0]]
CoD.AmmoWidget_StockAmmo_EmptyPulse.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AmmoWidget_StockAmmo_EmptyPulse ) --[[ @ 0]]
	self.id = "AmmoWidget_StockAmmo_EmptyPulse" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Glow = LUI.UIImage.new( 0, 0, -36.5, 135.5, 0, 0, -17, 37 ) --[[ @ 0]]
	Glow:setRGB( 1, 0, 0 ) --[[ @ 0]]
	Glow:setImage( RegisterImage( @"uie_ui_hud_core_no_ammo_glow" ) ) --[[ @ 0]]
	Glow:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Glow ) --[[ @ 0]]
	self.Glow = Glow --[[ @ 0]]
	
	local pulseImage = LUI.UIImage.new( 0, 0, -13, 111, 0, 0, -12, 28 ) --[[ @ 0]]
	pulseImage:setRGB( 1, 0, 0 ) --[[ @ 0]]
	pulseImage:setImage( RegisterImage( @"hash_679EFF63C895F04B" ) ) --[[ @ 0]]
	self:addElement( pulseImage ) --[[ @ 0]]
	self.pulseImage = pulseImage --[[ @ 0]]
	
	local Empty = LUI.UIText.new( 0, 0, -4, 103, 0, 0, 5, 19 ) --[[ @ 0]]
	Empty:setRGB( 1, 0, 0 ) --[[ @ 0]]
	Empty:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_14D7BD9466B67FE1" ) ) --[[ @ 0]]
	Empty:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Empty:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_56250C6FCAC36BD4" ) ) --[[ @ 0]]
	Empty:setShaderVector( 0, 0.5, 0, 0, 0 ) --[[ @ 0]]
	Empty:setShaderVector( 1, 0, 0, 0, 1 ) --[[ @ 0]]
	Empty:setLetterSpacing( 2 ) --[[ @ 0]]
	Empty:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	Empty:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( Empty ) --[[ @ 0]]
	self.Empty = Empty --[[ @ 0]]
	
	self:subscribeToGlobalModel( f1_arg1, "HUDItems", "pulseNoAmmoForReload", function ( model )
		local f2_local0 = self --[[ @ 0]]
		PlayClip( self, "Pulse", f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.AmmoWidget_StockAmmo_EmptyPulse.__resetProperties = function ( f3_arg0 )
	f3_arg0.pulseImage:completeAnimation() --[[ @ 0]]
	f3_arg0.Glow:completeAnimation() --[[ @ 0]]
	f3_arg0.Empty:completeAnimation() --[[ @ 0]]
	f3_arg0.pulseImage:setAlpha( 1 ) --[[ @ 0]]
	f3_arg0.Glow:setAlpha( 1 ) --[[ @ 0]]
	f3_arg0.Empty:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.AmmoWidget_StockAmmo_EmptyPulse.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f4_arg0.Glow:completeAnimation() --[[ @ 0]]
			f4_arg0.Glow:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.Glow ) --[[ @ 0]]
			f4_arg0.pulseImage:completeAnimation() --[[ @ 0]]
			f4_arg0.pulseImage:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.pulseImage ) --[[ @ 0]]
			f4_arg0.Empty:completeAnimation() --[[ @ 0]]
			f4_arg0.Empty:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.Empty ) --[[ @ 0]]
		end,
		Pulse = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f5_local0 = function ( f6_arg0 )
				local f6_local0 = function ( f7_arg0 )
					local f7_local0 = function ( f8_arg0 )
						local f8_local0 = function ( f9_arg0 )
							f9_arg0:beginAnimation( 60 ) --[[ @ 0]]
							f9_arg0:setAlpha( 0 ) --[[ @ 0]]
							f9_arg0:registerEventHandler( "transition_complete_keyframe", f5_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f8_arg0:beginAnimation( 59 ) --[[ @ 0]]
						f8_arg0:setAlpha( 0.04 ) --[[ @ 0]]
						f8_arg0:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f7_arg0:beginAnimation( 60 ) --[[ @ 0]]
					f7_arg0:setAlpha( 0 ) --[[ @ 0]]
					f7_arg0:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f5_arg0.Glow:beginAnimation( 140 ) --[[ @ 0]]
				f5_arg0.Glow:setAlpha( 0.02 ) --[[ @ 0]]
				f5_arg0.Glow:registerEventHandler( "interrupted_keyframe", f5_arg0.clipInterrupted ) --[[ @ 0]]
				f5_arg0.Glow:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f5_arg0.Glow:completeAnimation() --[[ @ 0]]
			f5_arg0.Glow:setAlpha( 0 ) --[[ @ 0]]
			f5_local0( f5_arg0.Glow ) --[[ @ 0]]
			local f5_local1 = function ( f10_arg0 )
				local f10_local0 = function ( f11_arg0 )
					local f11_local0 = function ( f12_arg0 )
						local f12_local0 = function ( f13_arg0 )
							f13_arg0:beginAnimation( 60 ) --[[ @ 0]]
							f13_arg0:setAlpha( 0 ) --[[ @ 0]]
							f13_arg0:registerEventHandler( "transition_complete_keyframe", f5_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f12_arg0:beginAnimation( 59 ) --[[ @ 0]]
						f12_arg0:setAlpha( 0.1 ) --[[ @ 0]]
						f12_arg0:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f11_arg0:beginAnimation( 60, Enum[@"hash_1F50FFF429AB1890"][@"hash_55D2D9CF90AB1735"] | Enum[@"hash_1F50FFF429AB1890"][@"hash_15193EA7825DC097"] ) --[[ @ 0]]
					f11_arg0:setAlpha( 0 ) --[[ @ 0]]
					f11_arg0:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f5_arg0.pulseImage:beginAnimation( 140, Enum[@"hash_1F50FFF429AB1890"][@"hash_55D2D9CF90AB1735"] | Enum[@"hash_1F50FFF429AB1890"][@"hash_15193EA7825DC097"] ) --[[ @ 0]]
				f5_arg0.pulseImage:setAlpha( 0.03 ) --[[ @ 0]]
				f5_arg0.pulseImage:registerEventHandler( "interrupted_keyframe", f5_arg0.clipInterrupted ) --[[ @ 0]]
				f5_arg0.pulseImage:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f5_arg0.pulseImage:completeAnimation() --[[ @ 0]]
			f5_arg0.pulseImage:setAlpha( 0 ) --[[ @ 0]]
			f5_local1( f5_arg0.pulseImage ) --[[ @ 0]]
			local f5_local2 = function ( f14_arg0 )
				local f14_local0 = function ( f15_arg0 )
					local f15_local0 = function ( f16_arg0 )
						local f16_local0 = function ( f17_arg0 )
							f17_arg0:beginAnimation( 60 ) --[[ @ 0]]
							f17_arg0:setAlpha( 0 ) --[[ @ 0]]
							f17_arg0:registerEventHandler( "transition_complete_keyframe", f5_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f16_arg0:beginAnimation( 59 ) --[[ @ 0]]
						f16_arg0:setAlpha( 1 ) --[[ @ 0]]
						f16_arg0:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f15_arg0:beginAnimation( 60 ) --[[ @ 0]]
					f15_arg0:setAlpha( 0 ) --[[ @ 0]]
					f15_arg0:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f5_arg0.Empty:beginAnimation( 140 ) --[[ @ 0]]
				f5_arg0.Empty:setAlpha( 1 ) --[[ @ 0]]
				f5_arg0.Empty:registerEventHandler( "interrupted_keyframe", f5_arg0.clipInterrupted ) --[[ @ 0]]
				f5_arg0.Empty:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f5_arg0.Empty:completeAnimation() --[[ @ 0]]
			f5_arg0.Empty:setAlpha( 0 ) --[[ @ 0]]
			f5_local2( f5_arg0.Empty ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
