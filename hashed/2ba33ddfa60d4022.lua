-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.CallingCards_Asset_mech = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CallingCards_Asset_mech.__defaultWidth = 960 --[[ @ 0]]
CoD.CallingCards_Asset_mech.__defaultHeight = 240 --[[ @ 0]]
CoD.CallingCards_Asset_mech.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CallingCards_Asset_mech ) --[[ @ 0]]
	self.id = "CallingCards_Asset_mech" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local mecha = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, -0.5, 239.5 ) --[[ @ 0]]
	mecha:setImage( RegisterImage( @"uie_mecha" ) ) --[[ @ 0]]
	self:addElement( mecha ) --[[ @ 0]]
	self.mecha = mecha --[[ @ 0]]
	
	local mechaLights = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, -1, 239 ) --[[ @ 0]]
	mechaLights:setAlpha( 0 ) --[[ @ 0]]
	mechaLights:setImage( RegisterImage( @"uie_mecha_lights" ) ) --[[ @ 0]]
	self:addElement( mechaLights ) --[[ @ 0]]
	self.mechaLights = mechaLights --[[ @ 0]]
	
	local lazers = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 0, 240 ) --[[ @ 0]]
	lazers:setAlpha( 0 ) --[[ @ 0]]
	lazers:setImage( RegisterImage( @"uie_lazers" ) ) --[[ @ 0]]
	self:addElement( lazers ) --[[ @ 0]]
	self.lazers = lazers --[[ @ 0]]
	
	local lazerOverlay = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 0, 240 ) --[[ @ 0]]
	lazerOverlay:setAlpha( 0 ) --[[ @ 0]]
	lazerOverlay:setImage( RegisterImage( @"uie_lazer_flipbook" ) ) --[[ @ 0]]
	lazerOverlay:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_flipbook_add" ) ) --[[ @ 0]]
	lazerOverlay:setShaderVector( 0, 0, 3, 0, 0 ) --[[ @ 0]]
	lazerOverlay:setShaderVector( 1, 30, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( lazerOverlay ) --[[ @ 0]]
	self.lazerOverlay = lazerOverlay --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CallingCards_Asset_mech.__resetProperties = function ( f2_arg0 )
	f2_arg0.mecha:completeAnimation() --[[ @ 0]]
	f2_arg0.mechaLights:completeAnimation() --[[ @ 0]]
	f2_arg0.lazers:completeAnimation() --[[ @ 0]]
	f2_arg0.lazerOverlay:completeAnimation() --[[ @ 0]]
	f2_arg0.mecha:setTopBottom( 0, 0, -0.5, 239.5 ) --[[ @ 0]]
	f2_arg0.mechaLights:setTopBottom( 0, 0, -1, 239 ) --[[ @ 0]]
	f2_arg0.mechaLights:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.lazers:setTopBottom( 0, 0, 0, 240 ) --[[ @ 0]]
	f2_arg0.lazers:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.lazers:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_normal" ) ) --[[ @ 0]]
	f2_arg0.lazerOverlay:setLeftRight( 0, 0, 0, 960 ) --[[ @ 0]]
	f2_arg0.lazerOverlay:setTopBottom( 0, 0, 0, 240 ) --[[ @ 0]]
	f2_arg0.lazerOverlay:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.lazerOverlay:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_flipbook_add" ) ) --[[ @ 0]]
	f2_arg0.lazerOverlay:setShaderVector( 0, 0, 3, 0, 0 ) --[[ @ 0]]
	f2_arg0.lazerOverlay:setShaderVector( 1, 30, 0, 0, 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CallingCards_Asset_mech.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					local f5_local0 = function ( f6_arg0 )
						f6_arg0:beginAnimation( 1600 ) --[[ @ 0]]
						f6_arg0:setTopBottom( 0, 0, -1, 239 ) --[[ @ 0]]
						f6_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f5_arg0:beginAnimation( 10 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.mecha:beginAnimation( 390 ) --[[ @ 0]]
				f3_arg0.mecha:setTopBottom( 0, 0, 4, 244 ) --[[ @ 0]]
				f3_arg0.mecha:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.mecha:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.mecha:completeAnimation() --[[ @ 0]]
			f3_arg0.mecha:setTopBottom( 0, 0, -1, 239 ) --[[ @ 0]]
			f3_local0( f3_arg0.mecha ) --[[ @ 0]]
			local f3_local1 = function ( f7_arg0 )
				local f7_local0 = function ( f8_arg0 )
					local f8_local0 = function ( f9_arg0 )
						local f9_local0 = function ( f10_arg0 )
							f10_arg0:beginAnimation( 429 ) --[[ @ 0]]
							f10_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f9_arg0:beginAnimation( 20 ) --[[ @ 0]]
						f9_arg0:setAlpha( 0 ) --[[ @ 0]]
						f9_arg0:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f8_arg0:beginAnimation( 1140 ) --[[ @ 0]]
					f8_arg0:setTopBottom( 0, 0, -1, 240 ) --[[ @ 0]]
					f8_arg0:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f7_arg0:beginAnimation( 20 ) --[[ @ 0]]
				f7_arg0:setAlpha( 1 ) --[[ @ 0]]
				f7_arg0:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.mechaLights:beginAnimation( 390 ) --[[ @ 0]]
			f3_arg0.mechaLights:setTopBottom( 0, 0, 3, 244 ) --[[ @ 0]]
			f3_arg0.mechaLights:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.mechaLights:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
			f3_arg0.mechaLights:registerEventHandler( "transition_complete_keyframe", f3_local1 ) --[[ @ 0]]
			local f3_local2 = function ( f11_arg0 )
				local f11_local0 = function ( f12_arg0 )
					local f12_local0 = function ( f13_arg0 )
						local f13_local0 = function ( f14_arg0 )
							f14_arg0:beginAnimation( 429 ) --[[ @ 0]]
							f14_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f13_arg0:beginAnimation( 20 ) --[[ @ 0]]
						f13_arg0:setAlpha( 0 ) --[[ @ 0]]
						f13_arg0:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f12_arg0:beginAnimation( 1140 ) --[[ @ 0]]
					f12_arg0:setTopBottom( 0, 0, 0, 240 ) --[[ @ 0]]
					f12_arg0:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f11_arg0:beginAnimation( 20 ) --[[ @ 0]]
				f11_arg0:setAlpha( 1 ) --[[ @ 0]]
				f11_arg0:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.lazers:beginAnimation( 390 ) --[[ @ 0]]
			f3_arg0.lazers:setTopBottom( 0, 0, 3, 243 ) --[[ @ 0]]
			f3_arg0.lazers:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.lazers:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_normal" ) ) --[[ @ 0]]
			f3_arg0.lazers:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
			f3_arg0.lazers:registerEventHandler( "transition_complete_keyframe", f3_local2 ) --[[ @ 0]]
			local f3_local3 = function ( f15_arg0 )
				local f15_local0 = function ( f16_arg0 )
					local f16_local0 = function ( f17_arg0 )
						local f17_local0 = function ( f18_arg0 )
							f18_arg0:beginAnimation( 429 ) --[[ @ 0]]
							f18_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f17_arg0:beginAnimation( 20 ) --[[ @ 0]]
						f17_arg0:setAlpha( 0 ) --[[ @ 0]]
						f17_arg0:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f16_arg0:beginAnimation( 1140 ) --[[ @ 0]]
					f16_arg0:setTopBottom( 0, 0, 0, 240 ) --[[ @ 0]]
					f16_arg0:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f15_arg0:beginAnimation( 20 ) --[[ @ 0]]
				f15_arg0:setAlpha( 1 ) --[[ @ 0]]
				f15_arg0:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.lazerOverlay:beginAnimation( 390 ) --[[ @ 0]]
			f3_arg0.lazerOverlay:setLeftRight( 0, 0, 0, 960 ) --[[ @ 0]]
			f3_arg0.lazerOverlay:setTopBottom( 0, 0, 3, 243 ) --[[ @ 0]]
			f3_arg0.lazerOverlay:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.lazerOverlay:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_flipbook_add" ) ) --[[ @ 0]]
			f3_arg0.lazerOverlay:setShaderVector( 0, 0, 3, 0, 0 ) --[[ @ 0]]
			f3_arg0.lazerOverlay:setShaderVector( 1, 30, 0, 0, 0 ) --[[ @ 0]]
			f3_arg0.lazerOverlay:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
			f3_arg0.lazerOverlay:registerEventHandler( "transition_complete_keyframe", f3_local3 ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
