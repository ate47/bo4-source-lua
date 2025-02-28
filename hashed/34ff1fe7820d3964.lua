-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:3ea9b3d743198d18" ) --[[ @ 0]]

CoD[@"hash_8482E5A4D7D79F3"] = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD[@"hash_8482E5A4D7D79F3"].__defaultWidth = 960 --[[ @ 0]]
CoD[@"hash_8482E5A4D7D79F3"].__defaultHeight = 240 --[[ @ 0]]
CoD[@"hash_8482E5A4D7D79F3"].new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD[@"hash_8482E5A4D7D79F3"] ) --[[ @ 0]]
	self.id = "CallingCards_Dark_Ops_Master" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Background = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 0, 240 ) --[[ @ 0]]
	Background:setImage( RegisterImage( @"uie_dragon_background" ) ) --[[ @ 0]]
	self:addElement( Background ) --[[ @ 0]]
	self.Background = Background --[[ @ 0]]
	
	local dragon01 = CoD.CallingCards_Asset_dragon.new( f1_arg0, f1_arg1, 0, 0, 171, 395, 0, 0, -54, 154 ) --[[ @ 0]]
	dragon01:setScale( 0.8, 0.8 ) --[[ @ 0]]
	self:addElement( dragon01 ) --[[ @ 0]]
	self.dragon01 = dragon01 --[[ @ 0]]
	
	local pillar = LUI.UIImage.new( 0, 0, 25, 312, 0, 0, -34, 243 ) --[[ @ 0]]
	pillar:setImage( RegisterImage( @"uie_front_pillar" ) ) --[[ @ 0]]
	self:addElement( pillar ) --[[ @ 0]]
	self.pillar = pillar --[[ @ 0]]
	
	local soldier = LUI.UIImage.new( 0, 0, 502, 915, 0, 0, 0, 240 ) --[[ @ 0]]
	soldier:setImage( RegisterImage( @"uie_soldier" ) ) --[[ @ 0]]
	self:addElement( soldier ) --[[ @ 0]]
	self.soldier = soldier --[[ @ 0]]
	
	local soldierGun = LUI.UIImage.new( 0, 0, 545, 960, 0, 0, 0, 240 ) --[[ @ 0]]
	soldierGun:setImage( RegisterImage( @"uie_soldier_gun" ) ) --[[ @ 0]]
	self:addElement( soldierGun ) --[[ @ 0]]
	self.soldierGun = soldierGun --[[ @ 0]]
	
	local soldierGlow = LUI.UIImage.new( 0, 0, 502, 916, 0, 0, 0, 240 ) --[[ @ 0]]
	soldierGlow:setImage( RegisterImage( @"uie_soldier_glow" ) ) --[[ @ 0]]
	soldierGlow:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( soldierGlow ) --[[ @ 0]]
	self.soldierGlow = soldierGlow --[[ @ 0]]
	
	local dragon02 = LUI.UIImage.new( 0, 0, 395, 456, 0, 0, 125.5, 173.5 ) --[[ @ 0]]
	dragon02:setImage( RegisterImage( @"uie_dragon_02" ) ) --[[ @ 0]]
	self:addElement( dragon02 ) --[[ @ 0]]
	self.dragon02 = dragon02 --[[ @ 0]]
	
	local firespot = LUI.UIImage.new( 0, 0, 68.5, 186.5, 0, 0, 122.5, 240.5 ) --[[ @ 0]]
	firespot:setImage( RegisterImage( @"uie_firespots" ) ) --[[ @ 0]]
	firespot:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_flipbook_add" ) ) --[[ @ 0]]
	firespot:setShaderVector( 0, 0, 3, 0, 0 ) --[[ @ 0]]
	firespot:setShaderVector( 1, 6, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( firespot ) --[[ @ 0]]
	self.firespot = firespot --[[ @ 0]]
	
	local firespot2 = LUI.UIImage.new( 0, 0, 473, 576, 0, 0, -66, 37 ) --[[ @ 0]]
	firespot2:setImage( RegisterImage( @"uie_firespots" ) ) --[[ @ 0]]
	firespot2:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_flipbook_add" ) ) --[[ @ 0]]
	firespot2:setShaderVector( 0, 0, 3, 0, 0 ) --[[ @ 0]]
	firespot2:setShaderVector( 1, 6, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( firespot2 ) --[[ @ 0]]
	self.firespot2 = firespot2 --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD[@"hash_8482E5A4D7D79F3"].__resetProperties = function ( f2_arg0 )
	f2_arg0.dragon01:completeAnimation() --[[ @ 0]]
	f2_arg0.soldierGlow:completeAnimation() --[[ @ 0]]
	f2_arg0.dragon02:completeAnimation() --[[ @ 0]]
	f2_arg0.soldierGun:completeAnimation() --[[ @ 0]]
	f2_arg0.soldierGlow:setTopBottom( 0, 0, 0, 240 ) --[[ @ 0]]
	f2_arg0.soldierGlow:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.dragon02:setTopBottom( 0, 0, 125.5, 173.5 ) --[[ @ 0]]
	f2_arg0.soldierGun:setTopBottom( 0, 0, 0, 240 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD[@"hash_8482E5A4D7D79F3"].__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f3_arg0.dragon01:completeAnimation() --[[ @ 0]]
			f3_arg0.dragon01:playClip( "DefaultClip" ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.dragon01 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					local f5_local0 = function ( f6_arg0 )
						local f6_local0 = function ( f7_arg0 )
							local f7_local0 = function ( f8_arg0 )
								local f8_local0 = function ( f9_arg0 )
									f9_arg0:beginAnimation( 500 ) --[[ @ 0]]
									f9_arg0:setTopBottom( 0, 0, 56, 239 ) --[[ @ 0]]
									f9_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f8_arg0:beginAnimation( 500 ) --[[ @ 0]]
								f8_arg0:setTopBottom( 0, 0, 62, 245 ) --[[ @ 0]]
								f8_arg0:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f7_arg0:beginAnimation( 500 ) --[[ @ 0]]
							f7_arg0:setTopBottom( 0, 0, 56, 239 ) --[[ @ 0]]
							f7_arg0:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f6_arg0:beginAnimation( 500 ) --[[ @ 0]]
						f6_arg0:setTopBottom( 0, 0, 62, 245 ) --[[ @ 0]]
						f6_arg0:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f5_arg0:beginAnimation( 500 ) --[[ @ 0]]
					f5_arg0:setTopBottom( 0, 0, 56, 239 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.soldierGun:beginAnimation( 500 ) --[[ @ 0]]
				f3_arg0.soldierGun:setTopBottom( 0, 0, 62, 245 ) --[[ @ 0]]
				f3_arg0.soldierGun:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.soldierGun:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.soldierGun:completeAnimation() --[[ @ 0]]
			f3_arg0.soldierGun:setTopBottom( 0, 0, 56, 239 ) --[[ @ 0]]
			f3_local0( f3_arg0.soldierGun ) --[[ @ 0]]
			local f3_local1 = function ( f10_arg0 )
				local f10_local0 = function ( f11_arg0 )
					local f11_local0 = function ( f12_arg0 )
						local f12_local0 = function ( f13_arg0 )
							f13_arg0:beginAnimation( 29 ) --[[ @ 0]]
							f13_arg0:setAlpha( 0 ) --[[ @ 0]]
							f13_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f12_arg0:beginAnimation( 960 ) --[[ @ 0]]
						f12_arg0:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f11_arg0:beginAnimation( 39 ) --[[ @ 0]]
					f11_arg0:setAlpha( 1 ) --[[ @ 0]]
					f11_arg0:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.soldierGlow:beginAnimation( 1000 ) --[[ @ 0]]
				f3_arg0.soldierGlow:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.soldierGlow:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.soldierGlow:completeAnimation() --[[ @ 0]]
			f3_arg0.soldierGlow:setTopBottom( 0, 0, 0, 240 ) --[[ @ 0]]
			f3_arg0.soldierGlow:setAlpha( 0 ) --[[ @ 0]]
			f3_local1( f3_arg0.soldierGlow ) --[[ @ 0]]
			local f3_local2 = function ( f14_arg0 )
				local f14_local0 = function ( f15_arg0 )
					local f15_local0 = function ( f16_arg0 )
						local f16_local0 = function ( f17_arg0 )
							local f17_local0 = function ( f18_arg0 )
								local f18_local0 = function ( f19_arg0 )
									f19_arg0:beginAnimation( 500 ) --[[ @ 0]]
									f19_arg0:setTopBottom( 0, 0, 78.5, 126.5 ) --[[ @ 0]]
									f19_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f18_arg0:beginAnimation( 500 ) --[[ @ 0]]
								f18_arg0:setTopBottom( 0, 0, 73.5, 121.5 ) --[[ @ 0]]
								f18_arg0:registerEventHandler( "transition_complete_keyframe", f18_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f17_arg0:beginAnimation( 500 ) --[[ @ 0]]
							f17_arg0:setTopBottom( 0, 0, 78.5, 126.5 ) --[[ @ 0]]
							f17_arg0:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f16_arg0:beginAnimation( 500 ) --[[ @ 0]]
						f16_arg0:setTopBottom( 0, 0, 73.5, 121.5 ) --[[ @ 0]]
						f16_arg0:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f15_arg0:beginAnimation( 500 ) --[[ @ 0]]
					f15_arg0:setTopBottom( 0, 0, 78.5, 126.5 ) --[[ @ 0]]
					f15_arg0:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.dragon02:beginAnimation( 500 ) --[[ @ 0]]
				f3_arg0.dragon02:setTopBottom( 0, 0, 73.5, 121.5 ) --[[ @ 0]]
				f3_arg0.dragon02:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.dragon02:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.dragon02:completeAnimation() --[[ @ 0]]
			f3_arg0.dragon02:setTopBottom( 0, 0, 78.5, 126.5 ) --[[ @ 0]]
			f3_local2( f3_arg0.dragon02 ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD[@"hash_8482E5A4D7D79F3"].__onClose = function ( f20_arg0 )
	f20_arg0.dragon01:close() --[[ @ 0]]
end
 --[[ @ 0]]
