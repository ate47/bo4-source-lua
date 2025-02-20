-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
CoD.GameEndScoreTeamBacker = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.GameEndScoreTeamBacker.__defaultWidth = 960 --[[ @ 0]]
CoD.GameEndScoreTeamBacker.__defaultHeight = 168 --[[ @ 0]]
CoD.GameEndScoreTeamBacker.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.GameEndScoreTeamBacker ) --[[ @ 0]]
	self.id = "GameEndScoreTeamBacker" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local BgBlur = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 0, 168 ) --[[ @ 0]]
	BgBlur:setImage( RegisterImage( @"hash_7136CAB682831EF3" ) ) --[[ @ 0]]
	BgBlur:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	BgBlur:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( BgBlur ) --[[ @ 0]]
	self.BgBlur = BgBlur --[[ @ 0]]
	
	local BgTint = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 0, 168 ) --[[ @ 0]]
	BgTint:setImage( RegisterImage( @"hash_7136CAB682831EF3" ) ) --[[ @ 0]]
	self:addElement( BgTint ) --[[ @ 0]]
	self.BgTint = BgTint --[[ @ 0]]
	
	local PixelGridTiledBacking = LUI.UIImage.new( 0.02, 0.02, -13, 944, 0.31, 0.31, -44.5, 107.5 ) --[[ @ 0]]
	PixelGridTiledBacking:setAlpha( 0.05 ) --[[ @ 0]]
	PixelGridTiledBacking:setImage( RegisterImage( @"uie_ui_hud_notifications_pixelpattern" ) ) --[[ @ 0]]
	PixelGridTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	PixelGridTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	PixelGridTiledBacking:setupNineSliceShader( 128, 128 ) --[[ @ 0]]
	self:addElement( PixelGridTiledBacking ) --[[ @ 0]]
	self.PixelGridTiledBacking = PixelGridTiledBacking --[[ @ 0]]
	
	local BaseBacking = LUI.UIImage.new( 0, 0, 236.5, 696.5, 0, 0, 36, 132 ) --[[ @ 0]]
	BaseBacking:setAlpha( 0.4 ) --[[ @ 0]]
	BaseBacking:setZRot( 180 ) --[[ @ 0]]
	BaseBacking:setImage( RegisterImage( @"hash_150D844945517BE" ) ) --[[ @ 0]]
	self:addElement( BaseBacking ) --[[ @ 0]]
	self.BaseBacking = BaseBacking --[[ @ 0]]
	
	local Base = LUI.UIImage.new( 0, 0, 236, 696, 0, 0, 36, 132 ) --[[ @ 0]]
	Base:setAlpha( 0.6 ) --[[ @ 0]]
	Base:setImage( RegisterImage( @"hash_63A7D3CD626132BD" ) ) --[[ @ 0]]
	Base:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	Base:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	Base:subscribeToGlobalModel( f1_arg1, "Factions", "alliesFactionColor", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			Base:setRGB( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Base ) --[[ @ 0]]
	self.Base = Base --[[ @ 0]]
	
	local StripBase = LUI.UIImage.new( 0, 0, 236, 696, 0, 0, 124, 132 ) --[[ @ 0]]
	StripBase:setAlpha( 0.17 ) --[[ @ 0]]
	StripBase:setImage( RegisterImage( @"hash_BB009EEABED5079" ) ) --[[ @ 0]]
	StripBase:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	StripBase:subscribeToGlobalModel( f1_arg1, "Factions", "alliesFactionColor", function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			StripBase:setRGB( f3_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( StripBase ) --[[ @ 0]]
	self.StripBase = StripBase --[[ @ 0]]
	
	local StripGlow = LUI.UIImage.new( 0, 0, 236, 696, 0, 0, 122, 130 ) --[[ @ 0]]
	StripGlow:setImage( RegisterImage( @"hash_770FECC2924AE8EC" ) ) --[[ @ 0]]
	StripGlow:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	StripGlow:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	StripGlow:subscribeToGlobalModel( f1_arg1, "Factions", "alliesFactionColor", function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			StripGlow:setRGB( f4_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( StripGlow ) --[[ @ 0]]
	self.StripGlow = StripGlow --[[ @ 0]]
	
	local triangle = LUI.UIImage.new( 0, 0, 55, 63, 0.5, 0.5, -7, 7 ) --[[ @ 0]]
	triangle:setRGB( 0, 0, 0 ) --[[ @ 0]]
	triangle:setAlpha( 0.94 ) --[[ @ 0]]
	triangle:setImage( RegisterImage( @"uie_ui_hud_common_triangle" ) ) --[[ @ 0]]
	self:addElement( triangle ) --[[ @ 0]]
	self.triangle = triangle --[[ @ 0]]
	
	local FrameInnerTop = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 0, 84 ) --[[ @ 0]]
	FrameInnerTop:setImage( RegisterImage( @"hash_4E4D07998F51061E" ) ) --[[ @ 0]]
	self:addElement( FrameInnerTop ) --[[ @ 0]]
	self.FrameInnerTop = FrameInnerTop --[[ @ 0]]
	
	local FrameInnerBot = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 84, 168 ) --[[ @ 0]]
	FrameInnerBot:setXRot( 180 ) --[[ @ 0]]
	FrameInnerBot:setImage( RegisterImage( @"hash_4E4D07998F51061E" ) ) --[[ @ 0]]
	self:addElement( FrameInnerBot ) --[[ @ 0]]
	self.FrameInnerBot = FrameInnerBot --[[ @ 0]]
	
	local FrameOuterBot = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 157, 173 ) --[[ @ 0]]
	FrameOuterBot:setImage( RegisterImage( @"hash_59A6CE40ADA52B7F" ) ) --[[ @ 0]]
	self:addElement( FrameOuterBot ) --[[ @ 0]]
	self.FrameOuterBot = FrameOuterBot --[[ @ 0]]
	
	local FrameOuterTop = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, -3, 13 ) --[[ @ 0]]
	FrameOuterTop:setImage( RegisterImage( @"hash_615DFCC12DDE43E6" ) ) --[[ @ 0]]
	self:addElement( FrameOuterTop ) --[[ @ 0]]
	self.FrameOuterTop = FrameOuterTop --[[ @ 0]]
	
	local microtext = LUI.UIImage.new( 0, 0, 751, 769, 0, 0, 3.5, 7.5 ) --[[ @ 0]]
	microtext:setAlpha( 0.18 ) --[[ @ 0]]
	microtext:setZRot( 180 ) --[[ @ 0]]
	microtext:setImage( RegisterImage( @"hash_116C3274D8031268" ) ) --[[ @ 0]]
	self:addElement( microtext ) --[[ @ 0]]
	self.microtext = microtext --[[ @ 0]]
	
	local microtext5 = LUI.UIImage.new( 0, 0, 751, 769, 0, 0, 159.5, 163.5 ) --[[ @ 0]]
	microtext5:setAlpha( 0.18 ) --[[ @ 0]]
	microtext5:setZRot( 180 ) --[[ @ 0]]
	microtext5:setImage( RegisterImage( @"hash_116C3274D8031268" ) ) --[[ @ 0]]
	self:addElement( microtext5 ) --[[ @ 0]]
	self.microtext5 = microtext5 --[[ @ 0]]
	
	local microtext2 = LUI.UIImage.new( 0, 0, 740, 758, 0, 0, 4, 8 ) --[[ @ 0]]
	microtext2:setAlpha( 0.18 ) --[[ @ 0]]
	microtext2:setImage( RegisterImage( @"hash_116C3274D8031268" ) ) --[[ @ 0]]
	microtext2:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta_normal" ) ) --[[ @ 0]]
	microtext2:setShaderVector( 0, 0, 0.38, 0, 0 ) --[[ @ 0]]
	microtext2:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	microtext2:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	microtext2:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	microtext2:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( microtext2 ) --[[ @ 0]]
	self.microtext2 = microtext2 --[[ @ 0]]
	
	local microtext6 = LUI.UIImage.new( 0, 0, 740, 758, 0, 0, 160, 164 ) --[[ @ 0]]
	microtext6:setAlpha( 0.18 ) --[[ @ 0]]
	microtext6:setImage( RegisterImage( @"hash_116C3274D8031268" ) ) --[[ @ 0]]
	microtext6:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta_normal" ) ) --[[ @ 0]]
	microtext6:setShaderVector( 0, 0, 0.38, 0, 0 ) --[[ @ 0]]
	microtext6:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	microtext6:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	microtext6:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	microtext6:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( microtext6 ) --[[ @ 0]]
	self.microtext6 = microtext6 --[[ @ 0]]
	
	local microtext3 = LUI.UIImage.new( 0, 0, 41, 59, 0, 0, 4, 8 ) --[[ @ 0]]
	microtext3:setAlpha( 0.18 ) --[[ @ 0]]
	microtext3:setZRot( 180 ) --[[ @ 0]]
	microtext3:setImage( RegisterImage( @"hash_116C3274D8031268" ) ) --[[ @ 0]]
	self:addElement( microtext3 ) --[[ @ 0]]
	self.microtext3 = microtext3 --[[ @ 0]]
	
	local microtext7 = LUI.UIImage.new( 0, 0, 41, 59, 0, 0, 160, 164 ) --[[ @ 0]]
	microtext7:setAlpha( 0.18 ) --[[ @ 0]]
	microtext7:setZRot( 180 ) --[[ @ 0]]
	microtext7:setImage( RegisterImage( @"hash_116C3274D8031268" ) ) --[[ @ 0]]
	self:addElement( microtext7 ) --[[ @ 0]]
	self.microtext7 = microtext7 --[[ @ 0]]
	
	local microtext4 = LUI.UIImage.new( 0, 0, 32, 50, 0, 0, 4.5, 8.5 ) --[[ @ 0]]
	microtext4:setAlpha( 0.18 ) --[[ @ 0]]
	microtext4:setImage( RegisterImage( @"hash_116C3274D8031268" ) ) --[[ @ 0]]
	microtext4:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta_normal" ) ) --[[ @ 0]]
	microtext4:setShaderVector( 0, 0, 0.38, 0, 0 ) --[[ @ 0]]
	microtext4:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	microtext4:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	microtext4:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	microtext4:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( microtext4 ) --[[ @ 0]]
	self.microtext4 = microtext4 --[[ @ 0]]
	
	local microtext8 = LUI.UIImage.new( 0, 0, 32, 50, 0, 0, 160.5, 164.5 ) --[[ @ 0]]
	microtext8:setAlpha( 0.18 ) --[[ @ 0]]
	microtext8:setImage( RegisterImage( @"hash_116C3274D8031268" ) ) --[[ @ 0]]
	microtext8:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta_normal" ) ) --[[ @ 0]]
	microtext8:setShaderVector( 0, 0, 0.38, 0, 0 ) --[[ @ 0]]
	microtext8:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	microtext8:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	microtext8:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	microtext8:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( microtext8 ) --[[ @ 0]]
	self.microtext8 = microtext8 --[[ @ 0]]
	
	local FrameLight = LUI.UIImage.new( 0, 0, 7, 15, 0, 0, 74, 94 ) --[[ @ 0]]
	FrameLight:setImage( RegisterImage( @"hash_7C25F7556E987B80" ) ) --[[ @ 0]]
	FrameLight:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	FrameLight:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	FrameLight:subscribeToGlobalModel( f1_arg1, "Factions", "alliesFactionColor", function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			FrameLight:setRGB( f5_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( FrameLight ) --[[ @ 0]]
	self.FrameLight = FrameLight --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.GameEndScoreTeamBacker.__resetProperties = function ( f6_arg0 )
	f6_arg0.Base:completeAnimation() --[[ @ 0]]
	f6_arg0.StripGlow:completeAnimation() --[[ @ 0]]
	f6_arg0.FrameLight:completeAnimation() --[[ @ 0]]
	f6_arg0.Base:setAlpha( 0.6 ) --[[ @ 0]]
	f6_arg0.StripGlow:setAlpha( 1 ) --[[ @ 0]]
	f6_arg0.StripGlow:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	f6_arg0.FrameLight:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.GameEndScoreTeamBacker.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f7_local0 = function ( f8_arg0 )
				local f8_local0 = function ( f9_arg0 )
					f9_arg0:beginAnimation( 1000, Enum[@"hash_1F50FFF429AB1890"][@"hash_15193EA7825DC097"] ) --[[ @ 0]]
					f9_arg0:setAlpha( 0.6 ) --[[ @ 0]]
					f9_arg0:registerEventHandler( "transition_complete_keyframe", f7_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f7_arg0.Base:beginAnimation( 1000, Enum[@"hash_1F50FFF429AB1890"][@"hash_15193EA7825DC097"] ) --[[ @ 0]]
				f7_arg0.Base:setAlpha( 0.8 ) --[[ @ 0]]
				f7_arg0.Base:registerEventHandler( "interrupted_keyframe", f7_arg0.clipInterrupted ) --[[ @ 0]]
				f7_arg0.Base:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f7_arg0.Base:completeAnimation() --[[ @ 0]]
			f7_arg0.Base:setAlpha( 0.6 ) --[[ @ 0]]
			f7_local0( f7_arg0.Base ) --[[ @ 0]]
			local f7_local1 = function ( f10_arg0 )
				local f10_local0 = function ( f11_arg0 )
					f11_arg0:beginAnimation( 1000 ) --[[ @ 0]]
					f11_arg0:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
					f11_arg0:registerEventHandler( "transition_complete_keyframe", f7_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f7_arg0.StripGlow:beginAnimation( 1000 ) --[[ @ 0]]
				f7_arg0.StripGlow:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
				f7_arg0.StripGlow:registerEventHandler( "interrupted_keyframe", f7_arg0.clipInterrupted ) --[[ @ 0]]
				f7_arg0.StripGlow:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f7_arg0.StripGlow:completeAnimation() --[[ @ 0]]
			f7_arg0.StripGlow:setAlpha( 1 ) --[[ @ 0]]
			f7_arg0.StripGlow:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
			f7_local1( f7_arg0.StripGlow ) --[[ @ 0]]
			local f7_local2 = function ( f12_arg0 )
				local f12_local0 = function ( f13_arg0 )
					local f13_local0 = function ( f14_arg0 )
						local f14_local0 = function ( f15_arg0 )
							local f15_local0 = function ( f16_arg0 )
								local f16_local0 = function ( f17_arg0 )
									f17_arg0:beginAnimation( 600 ) --[[ @ 0]]
									f17_arg0:registerEventHandler( "transition_complete_keyframe", f7_arg0.clipFinished ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f16_arg0:beginAnimation( 199, Enum[@"hash_1F50FFF429AB1890"][@"hash_15193EA7825DC097"] ) --[[ @ 0]]
								f16_arg0:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
								f16_arg0:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f15_arg0:beginAnimation( 200, Enum[@"hash_1F50FFF429AB1890"][@"hash_15193EA7825DC097"] ) --[[ @ 0]]
							f15_arg0:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
							f15_arg0:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f14_arg0:beginAnimation( 600 ) --[[ @ 0]]
						f14_arg0:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f13_arg0:beginAnimation( 200, Enum[@"hash_1F50FFF429AB1890"][@"hash_15193EA7825DC097"] ) --[[ @ 0]]
					f13_arg0:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
					f13_arg0:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f7_arg0.FrameLight:beginAnimation( 200, Enum[@"hash_1F50FFF429AB1890"][@"hash_15193EA7825DC097"] ) --[[ @ 0]]
				f7_arg0.FrameLight:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
				f7_arg0.FrameLight:registerEventHandler( "interrupted_keyframe", f7_arg0.clipInterrupted ) --[[ @ 0]]
				f7_arg0.FrameLight:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f7_arg0.FrameLight:completeAnimation() --[[ @ 0]]
			f7_arg0.FrameLight:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
			f7_local2( f7_arg0.FrameLight ) --[[ @ 0]]
			f7_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.GameEndScoreTeamBacker.__onClose = function ( f18_arg0 )
	f18_arg0.Base:close() --[[ @ 0]]
	f18_arg0.StripBase:close() --[[ @ 0]]
	f18_arg0.StripGlow:close() --[[ @ 0]]
	f18_arg0.FrameLight:close() --[[ @ 0]]
end
 --[[ @ 0]]
