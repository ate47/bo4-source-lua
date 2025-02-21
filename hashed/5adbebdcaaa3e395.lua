-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.CallingCards_CowboyBounce = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CallingCards_CowboyBounce.__defaultWidth = 960 --[[ @ 0]]
CoD.CallingCards_CowboyBounce.__defaultHeight = 240 --[[ @ 0]]
CoD.CallingCards_CowboyBounce.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CallingCards_CowboyBounce ) --[[ @ 0]]
	self.id = "CallingCards_CowboyBounce" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local cowboy = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 0, 240 ) --[[ @ 0]]
	cowboy:setImage( RegisterImage( @"uie_cowboy" ) ) --[[ @ 0]]
	self:addElement( cowboy ) --[[ @ 0]]
	self.cowboy = cowboy --[[ @ 0]]
	
	local lightFX1 = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 0, 240 ) --[[ @ 0]]
	lightFX1:setAlpha( 0 ) --[[ @ 0]]
	lightFX1:setImage( RegisterImage( @"uie_light_fx_01" ) ) --[[ @ 0]]
	self:addElement( lightFX1 ) --[[ @ 0]]
	self.lightFX1 = lightFX1 --[[ @ 0]]
	
	local lightFX2 = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 0, 240 ) --[[ @ 0]]
	lightFX2:setAlpha( 0 ) --[[ @ 0]]
	lightFX2:setImage( RegisterImage( @"uie_light_fx_02" ) ) --[[ @ 0]]
	self:addElement( lightFX2 ) --[[ @ 0]]
	self.lightFX2 = lightFX2 --[[ @ 0]]
	
	local bullet = LUI.UIImage.new( 0, 0, 398, 614, 0, 0, 26, 90 ) --[[ @ 0]]
	bullet:setImage( RegisterImage( @"uie_bullet" ) ) --[[ @ 0]]
	bullet:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( bullet ) --[[ @ 0]]
	self.bullet = bullet --[[ @ 0]]
	
	local bullet2 = LUI.UIImage.new( 0, 0, 264, 480, 0, 0, 14, 78 ) --[[ @ 0]]
	bullet2:setAlpha( 0 ) --[[ @ 0]]
	bullet2:setImage( RegisterImage( @"uie_bullet" ) ) --[[ @ 0]]
	bullet2:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( bullet2 ) --[[ @ 0]]
	self.bullet2 = bullet2 --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CallingCards_CowboyBounce.__resetProperties = function ( f2_arg0 )
	f2_arg0.cowboy:completeAnimation() --[[ @ 0]]
	f2_arg0.lightFX1:completeAnimation() --[[ @ 0]]
	f2_arg0.bullet:completeAnimation() --[[ @ 0]]
	f2_arg0.lightFX2:completeAnimation() --[[ @ 0]]
	f2_arg0.bullet2:completeAnimation() --[[ @ 0]]
	f2_arg0.cowboy:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.lightFX1:setLeftRight( 0, 0, 0, 960 ) --[[ @ 0]]
	f2_arg0.lightFX1:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.bullet:setLeftRight( 0, 0, 398, 614 ) --[[ @ 0]]
	f2_arg0.bullet:setTopBottom( 0, 0, 26, 90 ) --[[ @ 0]]
	f2_arg0.bullet:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.lightFX2:setLeftRight( 0, 0, 0, 960 ) --[[ @ 0]]
	f2_arg0.lightFX2:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.bullet2:setLeftRight( 0, 0, 264, 480 ) --[[ @ 0]]
	f2_arg0.bullet2:setTopBottom( 0, 0, 14, 78 ) --[[ @ 0]]
	f2_arg0.bullet2:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CallingCards_CowboyBounce.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f3_arg0.cowboy:completeAnimation() --[[ @ 0]]
			f3_arg0.cowboy:setAlpha( 1 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.cowboy ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					local f5_local0 = function ( f6_arg0 )
						f6_arg0:beginAnimation( 120 ) --[[ @ 0]]
						f6_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f5_arg0:beginAnimation( 60 ) --[[ @ 0]]
					f5_arg0:setAlpha( 0 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.lightFX1:beginAnimation( 60 ) --[[ @ 0]]
				f3_arg0.lightFX1:setAlpha( 1 ) --[[ @ 0]]
				f3_arg0.lightFX1:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.lightFX1:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.lightFX1:completeAnimation() --[[ @ 0]]
			f3_arg0.lightFX1:setLeftRight( 0, 0, 9, 969 ) --[[ @ 0]]
			f3_arg0.lightFX1:setAlpha( 0 ) --[[ @ 0]]
			f3_local0( f3_arg0.lightFX1 ) --[[ @ 0]]
			local f3_local1 = function ( f7_arg0 )
				local f7_local0 = function ( f8_arg0 )
					local f8_local0 = function ( f9_arg0 )
						local f9_local0 = function ( f10_arg0 )
							f10_arg0:beginAnimation( 19 ) --[[ @ 0]]
							f10_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f9_arg0:beginAnimation( 49 ) --[[ @ 0]]
						f9_arg0:setAlpha( 1 ) --[[ @ 0]]
						f9_arg0:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f8_arg0:beginAnimation( 49 ) --[[ @ 0]]
					f8_arg0:setAlpha( 0 ) --[[ @ 0]]
					f8_arg0:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f7_arg0:beginAnimation( 10 ) --[[ @ 0]]
				f7_arg0:setAlpha( 1 ) --[[ @ 0]]
				f7_arg0:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.lightFX2:beginAnimation( 130 ) --[[ @ 0]]
			f3_arg0.lightFX2:setLeftRight( 0, 0, 10, 970 ) --[[ @ 0]]
			f3_arg0.lightFX2:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.lightFX2:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
			f3_arg0.lightFX2:registerEventHandler( "transition_complete_keyframe", f3_local1 ) --[[ @ 0]]
			local f3_local2 = function ( f11_arg0 )
				local f11_local0 = function ( f12_arg0 )
					local f12_local0 = function ( f13_arg0 )
						local f13_local0 = function ( f14_arg0 )
							local f14_local0 = function ( f15_arg0 )
								local f15_local0 = function ( f16_arg0 )
									f16_arg0:beginAnimation( 139 ) --[[ @ 0]]
									f16_arg0:setLeftRight( 0, 0, 55, 271 ) --[[ @ 0]]
									f16_arg0:setTopBottom( 0, 0, 162, 226 ) --[[ @ 0]]
									f16_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f15_arg0:beginAnimation( 9 ) --[[ @ 0]]
								f15_arg0:setLeftRight( 0, 0, 236, 452 ) --[[ @ 0]]
								f15_arg0:setTopBottom( 0, 0, 191, 255 ) --[[ @ 0]]
								f15_arg0:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f14_arg0:beginAnimation( 10 ) --[[ @ 0]]
							f14_arg0:setLeftRight( 0, 0, 229, 445 ) --[[ @ 0]]
							f14_arg0:setTopBottom( 0, 0, 165, 229 ) --[[ @ 0]]
							f14_arg0:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f13_arg0:beginAnimation( 20 ) --[[ @ 0]]
						f13_arg0:setLeftRight( 0, 0, 326, 542 ) --[[ @ 0]]
						f13_arg0:setTopBottom( 0, 0, 135, 199 ) --[[ @ 0]]
						f13_arg0:setAlpha( 0 ) --[[ @ 0]]
						f13_arg0:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f12_arg0:beginAnimation( 30 ) --[[ @ 0]]
					f12_arg0:setLeftRight( 0, 0, 341, 557 ) --[[ @ 0]]
					f12_arg0:setTopBottom( 0, 0, 127, 191 ) --[[ @ 0]]
					f12_arg0:setAlpha( 1 ) --[[ @ 0]]
					f12_arg0:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f11_arg0:beginAnimation( 10 ) --[[ @ 0]]
				f11_arg0:setLeftRight( 0, 0, 480, 696 ) --[[ @ 0]]
				f11_arg0:setTopBottom( 0, 0, 78, 142 ) --[[ @ 0]]
				f11_arg0:setAlpha( 0 ) --[[ @ 0]]
				f11_arg0:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.bullet:beginAnimation( 20 ) --[[ @ 0]]
			f3_arg0.bullet:setLeftRight( 0, 0, 548, 764 ) --[[ @ 0]]
			f3_arg0.bullet:setTopBottom( 0, 0, 50, 114 ) --[[ @ 0]]
			f3_arg0.bullet:setAlpha( 1 ) --[[ @ 0]]
			f3_arg0.bullet:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
			f3_arg0.bullet:registerEventHandler( "transition_complete_keyframe", f3_local2 ) --[[ @ 0]]
			local f3_local3 = function ( f17_arg0 )
				local f17_local0 = function ( f18_arg0 )
					local f18_local0 = function ( f19_arg0 )
						local f19_local0 = function ( f20_arg0 )
							f20_arg0:beginAnimation( 30 ) --[[ @ 0]]
							f20_arg0:setLeftRight( 0, 0, -57, 159 ) --[[ @ 0]]
							f20_arg0:setTopBottom( 0, 0, 169, 233 ) --[[ @ 0]]
							f20_arg0:setAlpha( 0 ) --[[ @ 0]]
							f20_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f19_arg0:beginAnimation( 29 ) --[[ @ 0]]
						f19_arg0:setLeftRight( 0, 0, 137, 353 ) --[[ @ 0]]
						f19_arg0:setTopBottom( 0, 0, 116, 180 ) --[[ @ 0]]
						f19_arg0:registerEventHandler( "transition_complete_keyframe", f19_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f18_arg0:beginAnimation( 10 ) --[[ @ 0]]
					f18_arg0:setLeftRight( 0, 0, 207, 423 ) --[[ @ 0]]
					f18_arg0:setTopBottom( 0, 0, 98, 162 ) --[[ @ 0]]
					f18_arg0:registerEventHandler( "transition_complete_keyframe", f18_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f17_arg0:beginAnimation( 10 ) --[[ @ 0]]
				f17_arg0:setAlpha( 1 ) --[[ @ 0]]
				f17_arg0:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.bullet2:beginAnimation( 160 ) --[[ @ 0]]
			f3_arg0.bullet2:setLeftRight( 0, 0, 296, 512 ) --[[ @ 0]]
			f3_arg0.bullet2:setTopBottom( 0, 0, 63, 127 ) --[[ @ 0]]
			f3_arg0.bullet2:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.bullet2:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
			f3_arg0.bullet2:registerEventHandler( "transition_complete_keyframe", f3_local3 ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
