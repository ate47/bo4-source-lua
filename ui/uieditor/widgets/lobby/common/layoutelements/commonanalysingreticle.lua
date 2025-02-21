-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.CommonAnalysingReticle = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CommonAnalysingReticle.__defaultWidth = 276 --[[ @ 0]]
CoD.CommonAnalysingReticle.__defaultHeight = 276 --[[ @ 0]]
CoD.CommonAnalysingReticle.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CommonAnalysingReticle ) --[[ @ 0]]
	self.id = "CommonAnalysingReticle" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local InspecReticleCenter = LUI.UIImage.new( 0, 0, 116, 160, 0, 0, 116, 160 ) --[[ @ 0]]
	InspecReticleCenter:setImage( RegisterImage( @"uie_ui_menu_inspection_reticle_center" ) ) --[[ @ 0]]
	InspecReticleCenter:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_multiply" ) ) --[[ @ 0]]
	self:addElement( InspecReticleCenter ) --[[ @ 0]]
	self.InspecReticleCenter = InspecReticleCenter --[[ @ 0]]
	
	local InspecReticleCenter2 = LUI.UIImage.new( 0, 0, 116, 160, 0, 0, 116, 160 ) --[[ @ 0]]
	InspecReticleCenter2:setImage( RegisterImage( @"uie_ui_menu_inspection_reticle_center" ) ) --[[ @ 0]]
	InspecReticleCenter2:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_multiply" ) ) --[[ @ 0]]
	self:addElement( InspecReticleCenter2 ) --[[ @ 0]]
	self.InspecReticleCenter2 = InspecReticleCenter2 --[[ @ 0]]
	
	local InspecReticleDetail = LUI.UIImage.new( 0, 0, 0, 276, 0, 0, 0, 276 ) --[[ @ 0]]
	InspecReticleDetail:setImage( RegisterImage( @"uie_ui_menu_inspection_reticle_detail" ) ) --[[ @ 0]]
	InspecReticleDetail:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	InspecReticleDetail:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( InspecReticleDetail ) --[[ @ 0]]
	self.InspecReticleDetail = InspecReticleDetail --[[ @ 0]]
	
	local InspecReticleWipe = LUI.UIImage.new( 0, 0, 0, 276, 0, 0, 0, 276 ) --[[ @ 0]]
	InspecReticleWipe:setImage( RegisterImage( @"uie_ui_menu_inspection_reticle" ) ) --[[ @ 0]]
	InspecReticleWipe:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta_normal" ) ) --[[ @ 0]]
	InspecReticleWipe:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	InspecReticleWipe:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	InspecReticleWipe:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	InspecReticleWipe:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	InspecReticleWipe:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( InspecReticleWipe ) --[[ @ 0]]
	self.InspecReticleWipe = InspecReticleWipe --[[ @ 0]]
	
	local InspecReticle = LUI.UIImage.new( 0, 0, 0, 276, 0, 0, 0, 276 ) --[[ @ 0]]
	InspecReticle:setImage( RegisterImage( @"uie_ui_menu_inspection_reticle" ) ) --[[ @ 0]]
	InspecReticle:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_aberration" ) ) --[[ @ 0]]
	InspecReticle:setShaderVector( 0, 0.2, 1, 0, 0 ) --[[ @ 0]]
	InspecReticle:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	InspecReticle:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	InspecReticle:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	InspecReticle:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( InspecReticle ) --[[ @ 0]]
	self.InspecReticle = InspecReticle --[[ @ 0]]
	
	local InspecReticleCornerDots = LUI.UIImage.new( 0, 0, 110, 166, 0, 0, 110, 166 ) --[[ @ 0]]
	InspecReticleCornerDots:setImage( RegisterImage( @"uie_ui_menu_inspection_reticle_dots" ) ) --[[ @ 0]]
	InspecReticleCornerDots:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_aberration" ) ) --[[ @ 0]]
	InspecReticleCornerDots:setShaderVector( 0, 0.2, 1, 0, 0 ) --[[ @ 0]]
	InspecReticleCornerDots:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	InspecReticleCornerDots:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	InspecReticleCornerDots:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	InspecReticleCornerDots:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( InspecReticleCornerDots ) --[[ @ 0]]
	self.InspecReticleCornerDots = InspecReticleCornerDots --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CommonAnalysingReticle.__resetProperties = function ( f2_arg0 )
	f2_arg0.InspecReticleDetail:completeAnimation() --[[ @ 0]]
	f2_arg0.InspecReticleCenter2:completeAnimation() --[[ @ 0]]
	f2_arg0.InspecReticleCenter:completeAnimation() --[[ @ 0]]
	f2_arg0.InspecReticleWipe:completeAnimation() --[[ @ 0]]
	f2_arg0.InspecReticle:completeAnimation() --[[ @ 0]]
	f2_arg0.InspecReticleCornerDots:completeAnimation() --[[ @ 0]]
	f2_arg0.InspecReticleDetail:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.InspecReticleDetail:setZoom( 0 ) --[[ @ 0]]
	f2_arg0.InspecReticleCenter2:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.InspecReticleCenter2:setZoom( 0 ) --[[ @ 0]]
	f2_arg0.InspecReticleCenter:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.InspecReticleWipe:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.InspecReticleWipe:setZRot( 0 ) --[[ @ 0]]
	f2_arg0.InspecReticleWipe:setScale( 1, 1 ) --[[ @ 0]]
	f2_arg0.InspecReticleWipe:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta_normal" ) ) --[[ @ 0]]
	f2_arg0.InspecReticleWipe:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	f2_arg0.InspecReticleWipe:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	f2_arg0.InspecReticleWipe:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	f2_arg0.InspecReticleWipe:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	f2_arg0.InspecReticleWipe:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	f2_arg0.InspecReticle:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.InspecReticle:setZoom( 0 ) --[[ @ 0]]
	f2_arg0.InspecReticleCornerDots:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.InspecReticleCornerDots:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CommonAnalysingReticle.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				f3_arg0.InspecReticleCenter:beginAnimation( 80 ) --[[ @ 0]]
				f3_arg0.InspecReticleCenter:setAlpha( 0 ) --[[ @ 0]]
				f3_arg0.InspecReticleCenter:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.InspecReticleCenter:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.InspecReticleCenter:completeAnimation() --[[ @ 0]]
			f3_arg0.InspecReticleCenter:setAlpha( 1 ) --[[ @ 0]]
			f3_local0( f3_arg0.InspecReticleCenter ) --[[ @ 0]]
			local f3_local1 = function ( f5_arg0 )
				f3_arg0.InspecReticleCenter2:beginAnimation( 80 ) --[[ @ 0]]
				f3_arg0.InspecReticleCenter2:setAlpha( 0 ) --[[ @ 0]]
				f3_arg0.InspecReticleCenter2:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.InspecReticleCenter2:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.InspecReticleCenter2:completeAnimation() --[[ @ 0]]
			f3_arg0.InspecReticleCenter2:setAlpha( 1 ) --[[ @ 0]]
			f3_local1( f3_arg0.InspecReticleCenter2 ) --[[ @ 0]]
			local f3_local2 = function ( f6_arg0 )
				f3_arg0.InspecReticleDetail:beginAnimation( 120 ) --[[ @ 0]]
				f3_arg0.InspecReticleDetail:setAlpha( 0 ) --[[ @ 0]]
				f3_arg0.InspecReticleDetail:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.InspecReticleDetail:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.InspecReticleDetail:completeAnimation() --[[ @ 0]]
			f3_arg0.InspecReticleDetail:setAlpha( 1 ) --[[ @ 0]]
			f3_local2( f3_arg0.InspecReticleDetail ) --[[ @ 0]]
			local f3_local3 = function ( f7_arg0 )
				local f7_local0 = function ( f8_arg0 )
					local f8_local0 = function ( f9_arg0 )
						f9_arg0:beginAnimation( 70 ) --[[ @ 0]]
						f9_arg0:setZRot( 135 ) --[[ @ 0]]
						f9_arg0:setScale( 2, 2 ) --[[ @ 0]]
						f9_arg0:setShaderVector( 0, 0.5, 0.5, 0, 0 ) --[[ @ 0]]
						f9_arg0:setShaderVector( 2, 0.5, 0.5, 0, 0 ) --[[ @ 0]]
						f9_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f8_arg0:beginAnimation( 80 ) --[[ @ 0]]
					f8_arg0:setAlpha( 0 ) --[[ @ 0]]
					f8_arg0:setZRot( 72 ) --[[ @ 0]]
					f8_arg0:setScale( 1.53, 1.53 ) --[[ @ 0]]
					f8_arg0:setShaderVector( 0, 0.27, 0.73, 0, 0 ) --[[ @ 0]]
					f8_arg0:setShaderVector( 2, 0.27, 0.73, 0, 0 ) --[[ @ 0]]
					f8_arg0:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.InspecReticleWipe:beginAnimation( 120 ) --[[ @ 0]]
				f3_arg0.InspecReticleWipe:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.InspecReticleWipe:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.InspecReticleWipe:completeAnimation() --[[ @ 0]]
			f3_arg0.InspecReticleWipe:setAlpha( 1 ) --[[ @ 0]]
			f3_arg0.InspecReticleWipe:setZRot( 0 ) --[[ @ 0]]
			f3_arg0.InspecReticleWipe:setScale( 1, 1 ) --[[ @ 0]]
			f3_arg0.InspecReticleWipe:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta_normal" ) ) --[[ @ 0]]
			f3_arg0.InspecReticleWipe:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
			f3_arg0.InspecReticleWipe:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
			f3_arg0.InspecReticleWipe:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
			f3_arg0.InspecReticleWipe:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
			f3_arg0.InspecReticleWipe:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
			f3_local3( f3_arg0.InspecReticleWipe ) --[[ @ 0]]
			local f3_local4 = function ( f10_arg0 )
				f3_arg0.InspecReticle:beginAnimation( 120 ) --[[ @ 0]]
				f3_arg0.InspecReticle:setAlpha( 0 ) --[[ @ 0]]
				f3_arg0.InspecReticle:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.InspecReticle:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.InspecReticle:completeAnimation() --[[ @ 0]]
			f3_arg0.InspecReticle:setAlpha( 0.2 ) --[[ @ 0]]
			f3_local4( f3_arg0.InspecReticle ) --[[ @ 0]]
			local f3_local5 = function ( f11_arg0 )
				local f11_local0 = function ( f12_arg0 )
					f12_arg0:beginAnimation( 100 ) --[[ @ 0]]
					f12_arg0:setScale( 2, 2 ) --[[ @ 0]]
					f12_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.InspecReticleCornerDots:beginAnimation( 80 ) --[[ @ 0]]
				f3_arg0.InspecReticleCornerDots:setAlpha( 0 ) --[[ @ 0]]
				f3_arg0.InspecReticleCornerDots:setScale( 1.44, 1.44 ) --[[ @ 0]]
				f3_arg0.InspecReticleCornerDots:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.InspecReticleCornerDots:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.InspecReticleCornerDots:completeAnimation() --[[ @ 0]]
			f3_arg0.InspecReticleCornerDots:setAlpha( 1 ) --[[ @ 0]]
			f3_arg0.InspecReticleCornerDots:setScale( 1, 1 ) --[[ @ 0]]
			f3_local5( f3_arg0.InspecReticleCornerDots ) --[[ @ 0]]
		end,
		Intro = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			local f13_local0 = function ( f14_arg0 )
				local f14_local0 = function ( f15_arg0 )
					f15_arg0:beginAnimation( 199 ) --[[ @ 0]]
					f15_arg0:setAlpha( 1 ) --[[ @ 0]]
					f15_arg0:registerEventHandler( "transition_complete_keyframe", f13_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f13_arg0.InspecReticleCenter:beginAnimation( 600 ) --[[ @ 0]]
				f13_arg0.InspecReticleCenter:registerEventHandler( "interrupted_keyframe", f13_arg0.clipInterrupted ) --[[ @ 0]]
				f13_arg0.InspecReticleCenter:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f13_arg0.InspecReticleCenter:completeAnimation() --[[ @ 0]]
			f13_arg0.InspecReticleCenter:setAlpha( 0 ) --[[ @ 0]]
			f13_local0( f13_arg0.InspecReticleCenter ) --[[ @ 0]]
			local f13_local1 = function ( f16_arg0 )
				local f16_local0 = function ( f17_arg0 )
					local f17_local0 = function ( f18_arg0 )
						local f18_local0 = function ( f19_arg0 )
							f19_arg0:beginAnimation( 149 ) --[[ @ 0]]
							f19_arg0:setZoom( 0 ) --[[ @ 0]]
							f19_arg0:registerEventHandler( "transition_complete_keyframe", f13_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f18_arg0:beginAnimation( 150 ) --[[ @ 0]]
						f18_arg0:setZoom( 30 ) --[[ @ 0]]
						f18_arg0:registerEventHandler( "transition_complete_keyframe", f18_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f17_arg0:beginAnimation( 149 ) --[[ @ 0]]
					f17_arg0:setAlpha( 1 ) --[[ @ 0]]
					f17_arg0:setZoom( -20 ) --[[ @ 0]]
					f17_arg0:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f13_arg0.InspecReticleCenter2:beginAnimation( 800 ) --[[ @ 0]]
				f13_arg0.InspecReticleCenter2:registerEventHandler( "interrupted_keyframe", f13_arg0.clipInterrupted ) --[[ @ 0]]
				f13_arg0.InspecReticleCenter2:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f13_arg0.InspecReticleCenter2:completeAnimation() --[[ @ 0]]
			f13_arg0.InspecReticleCenter2:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.InspecReticleCenter2:setZoom( 0 ) --[[ @ 0]]
			f13_local1( f13_arg0.InspecReticleCenter2 ) --[[ @ 0]]
			local f13_local2 = function ( f20_arg0 )
				local f20_local0 = function ( f21_arg0 )
					local f21_local0 = function ( f22_arg0 )
						local f22_local0 = function ( f23_arg0 )
							local f23_local0 = function ( f24_arg0 )
								f24_arg0:beginAnimation( 149 ) --[[ @ 0]]
								f24_arg0:setAlpha( 0.5 ) --[[ @ 0]]
								f24_arg0:setZoom( 0 ) --[[ @ 0]]
								f24_arg0:registerEventHandler( "transition_complete_keyframe", f13_arg0.clipFinished ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f23_arg0:beginAnimation( 149 ) --[[ @ 0]]
							f23_arg0:setAlpha( 0.9 ) --[[ @ 0]]
							f23_arg0:setZoom( -20 ) --[[ @ 0]]
							f23_arg0:registerEventHandler( "transition_complete_keyframe", f23_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f22_arg0:beginAnimation( 150 ) --[[ @ 0]]
						f22_arg0:setAlpha( 0.5 ) --[[ @ 0]]
						f22_arg0:registerEventHandler( "transition_complete_keyframe", f22_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f21_arg0:beginAnimation( 149, Enum[@"luitween"][@"luitween_bounce"] ) --[[ @ 0]]
					f21_arg0:setAlpha( 1 ) --[[ @ 0]]
					f21_arg0:setZoom( 10 ) --[[ @ 0]]
					f21_arg0:registerEventHandler( "transition_complete_keyframe", f21_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f13_arg0.InspecReticleDetail:beginAnimation( 800 ) --[[ @ 0]]
				f13_arg0.InspecReticleDetail:registerEventHandler( "interrupted_keyframe", f13_arg0.clipInterrupted ) --[[ @ 0]]
				f13_arg0.InspecReticleDetail:registerEventHandler( "transition_complete_keyframe", f20_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f13_arg0.InspecReticleDetail:completeAnimation() --[[ @ 0]]
			f13_arg0.InspecReticleDetail:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.InspecReticleDetail:setZoom( 0 ) --[[ @ 0]]
			f13_local2( f13_arg0.InspecReticleDetail ) --[[ @ 0]]
			local f13_local3 = function ( f25_arg0 )
				local f25_local0 = function ( f26_arg0 )
					f26_arg0:beginAnimation( 199 ) --[[ @ 0]]
					f26_arg0:setAlpha( 1 ) --[[ @ 0]]
					f26_arg0:setZRot( 0 ) --[[ @ 0]]
					f26_arg0:setScale( 1, 1 ) --[[ @ 0]]
					f26_arg0:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
					f26_arg0:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
					f26_arg0:registerEventHandler( "transition_complete_keyframe", f13_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f13_arg0.InspecReticleWipe:beginAnimation( 300 ) --[[ @ 0]]
				f13_arg0.InspecReticleWipe:setScale( 2, 2 ) --[[ @ 0]]
				f13_arg0.InspecReticleWipe:registerEventHandler( "interrupted_keyframe", f13_arg0.clipInterrupted ) --[[ @ 0]]
				f13_arg0.InspecReticleWipe:registerEventHandler( "transition_complete_keyframe", f25_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f13_arg0.InspecReticleWipe:completeAnimation() --[[ @ 0]]
			f13_arg0.InspecReticleWipe:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.InspecReticleWipe:setZRot( 135 ) --[[ @ 0]]
			f13_arg0.InspecReticleWipe:setScale( 2, 1.5 ) --[[ @ 0]]
			f13_arg0.InspecReticleWipe:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta_normal" ) ) --[[ @ 0]]
			f13_arg0.InspecReticleWipe:setShaderVector( 0, 0.5, 0.5, 0, 0 ) --[[ @ 0]]
			f13_arg0.InspecReticleWipe:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
			f13_arg0.InspecReticleWipe:setShaderVector( 2, 0.5, 0.5, 0, 0 ) --[[ @ 0]]
			f13_arg0.InspecReticleWipe:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
			f13_arg0.InspecReticleWipe:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
			f13_local3( f13_arg0.InspecReticleWipe ) --[[ @ 0]]
			local f13_local4 = function ( f27_arg0 )
				local f27_local0 = function ( f28_arg0 )
					local f28_local0 = function ( f29_arg0 )
						local f29_local0 = function ( f30_arg0 )
							local f30_local0 = function ( f31_arg0 )
								local f31_local0 = function ( f32_arg0 )
									f32_arg0:beginAnimation( 149 ) --[[ @ 0]]
									f32_arg0:setZoom( 0 ) --[[ @ 0]]
									f32_arg0:registerEventHandler( "transition_complete_keyframe", f13_arg0.clipFinished ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f31_arg0:beginAnimation( 149 ) --[[ @ 0]]
								f31_arg0:setZoom( 20 ) --[[ @ 0]]
								f31_arg0:registerEventHandler( "transition_complete_keyframe", f31_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f30_arg0:beginAnimation( 200 ) --[[ @ 0]]
							f30_arg0:registerEventHandler( "transition_complete_keyframe", f30_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f29_arg0:beginAnimation( 199 ) --[[ @ 0]]
						f29_arg0:setAlpha( 0.2 ) --[[ @ 0]]
						f29_arg0:registerEventHandler( "transition_complete_keyframe", f29_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f28_arg0:beginAnimation( 199 ) --[[ @ 0]]
					f28_arg0:setAlpha( 1 ) --[[ @ 0]]
					f28_arg0:registerEventHandler( "transition_complete_keyframe", f28_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f13_arg0.InspecReticle:beginAnimation( 500 ) --[[ @ 0]]
				f13_arg0.InspecReticle:registerEventHandler( "interrupted_keyframe", f13_arg0.clipInterrupted ) --[[ @ 0]]
				f13_arg0.InspecReticle:registerEventHandler( "transition_complete_keyframe", f27_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f13_arg0.InspecReticle:completeAnimation() --[[ @ 0]]
			f13_arg0.InspecReticle:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.InspecReticle:setZoom( 0 ) --[[ @ 0]]
			f13_local4( f13_arg0.InspecReticle ) --[[ @ 0]]
			local f13_local5 = function ( f33_arg0 )
				local f33_local0 = function ( f34_arg0 )
					local f34_local0 = function ( f35_arg0 )
						local f35_local0 = function ( f36_arg0 )
							f36_arg0:beginAnimation( 800 ) --[[ @ 0]]
							f36_arg0:registerEventHandler( "transition_complete_keyframe", f13_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f35_arg0:beginAnimation( 50 ) --[[ @ 0]]
						f35_arg0:setAlpha( 1 ) --[[ @ 0]]
						f35_arg0:setScale( 1, 1 ) --[[ @ 0]]
						f35_arg0:registerEventHandler( "transition_complete_keyframe", f35_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f34_arg0:beginAnimation( 49 ) --[[ @ 0]]
					f34_arg0:setScale( 1.75, 1.75 ) --[[ @ 0]]
					f34_arg0:registerEventHandler( "transition_complete_keyframe", f34_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f13_arg0.InspecReticleCornerDots:beginAnimation( 600 ) --[[ @ 0]]
				f13_arg0.InspecReticleCornerDots:registerEventHandler( "interrupted_keyframe", f13_arg0.clipInterrupted ) --[[ @ 0]]
				f13_arg0.InspecReticleCornerDots:registerEventHandler( "transition_complete_keyframe", f33_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f13_arg0.InspecReticleCornerDots:completeAnimation() --[[ @ 0]]
			f13_arg0.InspecReticleCornerDots:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.InspecReticleCornerDots:setScale( 2.5, 2.5 ) --[[ @ 0]]
			f13_local5( f13_arg0.InspecReticleCornerDots ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
