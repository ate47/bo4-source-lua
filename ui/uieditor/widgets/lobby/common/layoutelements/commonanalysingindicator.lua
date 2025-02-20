-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
CoD.CommonAnalysingIndicator = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CommonAnalysingIndicator.__defaultWidth = 318 --[[ @ 0]]
CoD.CommonAnalysingIndicator.__defaultHeight = 112 --[[ @ 0]]
CoD.CommonAnalysingIndicator.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CommonAnalysingIndicator ) --[[ @ 0]]
	self.id = "CommonAnalysingIndicator" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local AnalysingFrame = LUI.UIImage.new( 0, 0, 0, 112, 0, 0, 0, 112 ) --[[ @ 0]]
	AnalysingFrame:setImage( RegisterImage( @"uie_ui_menu_inspection_analysing_frame" ) ) --[[ @ 0]]
	AnalysingFrame:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	AnalysingFrame:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( AnalysingFrame ) --[[ @ 0]]
	self.AnalysingFrame = AnalysingFrame --[[ @ 0]]
	
	local AnalysingFrameWipe = LUI.UIImage.new( 0, 0, 0, 112, 0, 0, 0, 112 ) --[[ @ 0]]
	AnalysingFrameWipe:setImage( RegisterImage( @"uie_ui_menu_inspection_analysing_frame" ) ) --[[ @ 0]]
	AnalysingFrameWipe:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta_normal" ) ) --[[ @ 0]]
	AnalysingFrameWipe:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	AnalysingFrameWipe:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	AnalysingFrameWipe:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	AnalysingFrameWipe:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	AnalysingFrameWipe:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( AnalysingFrameWipe ) --[[ @ 0]]
	self.AnalysingFrameWipe = AnalysingFrameWipe --[[ @ 0]]
	
	local AnalysingBacking = LUI.UIImage.new( 0, 0, 70, 318, 0, 0, 14.5, 42.5 ) --[[ @ 0]]
	AnalysingBacking:setImage( RegisterImage( @"uie_ui_menu_inspection_analysing_stripe" ) ) --[[ @ 0]]
	self:addElement( AnalysingBacking ) --[[ @ 0]]
	self.AnalysingBacking = AnalysingBacking --[[ @ 0]]
	
	local AnalysingBackingProgress = LUI.UIImage.new( 0, 0, 70, 318, 0, 0, 14.5, 42.5 ) --[[ @ 0]]
	AnalysingBackingProgress:setImage( RegisterImage( @"uie_ui_menu_inspection_analysing_stripe" ) ) --[[ @ 0]]
	AnalysingBackingProgress:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta" ) ) --[[ @ 0]]
	AnalysingBackingProgress:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	AnalysingBackingProgress:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	AnalysingBackingProgress:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	AnalysingBackingProgress:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	AnalysingBackingProgress:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( AnalysingBackingProgress ) --[[ @ 0]]
	self.AnalysingBackingProgress = AnalysingBackingProgress --[[ @ 0]]
	
	local AnalysingText = LUI.UIImage.new( 0, 0, 81.5, 185.5, 0, 0, 20.5, 52.5 ) --[[ @ 0]]
	AnalysingText:setAlpha( 0 ) --[[ @ 0]]
	AnalysingText:setImage( RegisterImage( @"uie_ui_menu_inspection_analysing_text" ) ) --[[ @ 0]]
	AnalysingText:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	AnalysingText:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( AnalysingText ) --[[ @ 0]]
	self.AnalysingText = AnalysingText --[[ @ 0]]
	
	local ConnectedText = LUI.UIImage.new( 0, 0, 81.5, 181.5, 0, 0, 20.5, 52.5 ) --[[ @ 0]]
	ConnectedText:setAlpha( 0 ) --[[ @ 0]]
	ConnectedText:setImage( RegisterImage( @"uie_ui_menu_inspection_connected_text" ) ) --[[ @ 0]]
	ConnectedText:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	ConnectedText:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( ConnectedText ) --[[ @ 0]]
	self.ConnectedText = ConnectedText --[[ @ 0]]
	
	local ConnectedTextDepth = LUI.UIImage.new( 0, 0, 81.5, 181.5, 0, 0, 20.5, 52.5 ) --[[ @ 0]]
	ConnectedTextDepth:setAlpha( 0 ) --[[ @ 0]]
	ConnectedTextDepth:setImage( RegisterImage( @"uie_ui_menu_inspection_connected_text" ) ) --[[ @ 0]]
	ConnectedTextDepth:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	ConnectedTextDepth:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( ConnectedTextDepth ) --[[ @ 0]]
	self.ConnectedTextDepth = ConnectedTextDepth --[[ @ 0]]
	
	local Arrow = LUI.UIImage.new( 0, 0, 58.5, 70.5, 0, 0, 41.5, 53.5 ) --[[ @ 0]]
	Arrow:setZRot( -90 ) --[[ @ 0]]
	Arrow:setImage( RegisterImage( @"uie_ui_menu_social_emblem_corner" ) ) --[[ @ 0]]
	Arrow:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_F755127C95CF5B6" ) ) --[[ @ 0]]
	Arrow:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Arrow ) --[[ @ 0]]
	self.Arrow = Arrow --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CommonAnalysingIndicator.__resetProperties = function ( f2_arg0 )
	f2_arg0.AnalysingFrame:completeAnimation() --[[ @ 0]]
	f2_arg0.AnalysingFrameWipe:completeAnimation() --[[ @ 0]]
	f2_arg0.AnalysingBacking:completeAnimation() --[[ @ 0]]
	f2_arg0.ConnectedText:completeAnimation() --[[ @ 0]]
	f2_arg0.ConnectedTextDepth:completeAnimation() --[[ @ 0]]
	f2_arg0.Arrow:completeAnimation() --[[ @ 0]]
	f2_arg0.AnalysingBackingProgress:completeAnimation() --[[ @ 0]]
	f2_arg0.AnalysingText:completeAnimation() --[[ @ 0]]
	f2_arg0.AnalysingFrame:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.AnalysingFrameWipe:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.AnalysingFrameWipe:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta_normal" ) ) --[[ @ 0]]
	f2_arg0.AnalysingFrameWipe:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	f2_arg0.AnalysingFrameWipe:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	f2_arg0.AnalysingFrameWipe:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	f2_arg0.AnalysingFrameWipe:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	f2_arg0.AnalysingFrameWipe:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	f2_arg0.AnalysingBacking:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.ConnectedText:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.ConnectedText:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	f2_arg0.ConnectedText:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	f2_arg0.ConnectedTextDepth:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.ConnectedTextDepth:setZoom( 0 ) --[[ @ 0]]
	f2_arg0.Arrow:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.Arrow:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_F755127C95CF5B6" ) ) --[[ @ 0]]
	f2_arg0.Arrow:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	f2_arg0.AnalysingBackingProgress:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta" ) ) --[[ @ 0]]
	f2_arg0.AnalysingBackingProgress:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	f2_arg0.AnalysingBackingProgress:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	f2_arg0.AnalysingBackingProgress:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	f2_arg0.AnalysingBackingProgress:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	f2_arg0.AnalysingBackingProgress:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	f2_arg0.AnalysingText:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.AnalysingText:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	f2_arg0.AnalysingText:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CommonAnalysingIndicator.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			f3_arg0.AnalysingFrame:completeAnimation() --[[ @ 0]]
			f3_arg0.AnalysingFrame:setAlpha( 0.5 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.AnalysingFrame ) --[[ @ 0]]
			f3_arg0.AnalysingFrameWipe:completeAnimation() --[[ @ 0]]
			f3_arg0.AnalysingFrameWipe:setAlpha( 1 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.AnalysingFrameWipe ) --[[ @ 0]]
			f3_arg0.AnalysingBacking:completeAnimation() --[[ @ 0]]
			f3_arg0.AnalysingBacking:setAlpha( 1 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.AnalysingBacking ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					local f5_local0 = function ( f6_arg0 )
						local f6_local0 = function ( f7_arg0 )
							f7_arg0:beginAnimation( 3000 ) --[[ @ 0]]
							f7_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f6_arg0:beginAnimation( 3000 ) --[[ @ 0]]
						f6_arg0:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
						f6_arg0:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f5_arg0:beginAnimation( 2700 ) --[[ @ 0]]
					f5_arg0:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.ConnectedText:beginAnimation( 300, Enum[@"hash_1F50FFF429AB1890"][@"hash_55D2D9CF90AB1735"] ) --[[ @ 0]]
				f3_arg0.ConnectedText:setAlpha( 1 ) --[[ @ 0]]
				f3_arg0.ConnectedText:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.ConnectedText:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.ConnectedText:completeAnimation() --[[ @ 0]]
			f3_arg0.ConnectedText:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.ConnectedText:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
			f3_arg0.ConnectedText:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
			f3_local0( f3_arg0.ConnectedText ) --[[ @ 0]]
			local f3_local1 = function ( f8_arg0 )
				local f8_local0 = function ( f9_arg0 )
					local f9_local0 = function ( f10_arg0 )
						f10_arg0:beginAnimation( 3000 ) --[[ @ 0]]
						f10_arg0:setAlpha( 0 ) --[[ @ 0]]
						f10_arg0:setZoom( 0 ) --[[ @ 0]]
						f10_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f9_arg0:beginAnimation( 3000 ) --[[ @ 0]]
					f9_arg0:setAlpha( 0.5 ) --[[ @ 0]]
					f9_arg0:setZoom( -30 ) --[[ @ 0]]
					f9_arg0:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.ConnectedTextDepth:beginAnimation( 3000 ) --[[ @ 0]]
				f3_arg0.ConnectedTextDepth:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.ConnectedTextDepth:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.ConnectedTextDepth:completeAnimation() --[[ @ 0]]
			f3_arg0.ConnectedTextDepth:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.ConnectedTextDepth:setZoom( 0 ) --[[ @ 0]]
			f3_local1( f3_arg0.ConnectedTextDepth ) --[[ @ 0]]
			local f3_local2 = function ( f11_arg0 )
				local f11_local0 = function ( f12_arg0 )
					local f12_local0 = function ( f13_arg0 )
						local f13_local0 = function ( f14_arg0 )
							f14_arg0:beginAnimation( 3000 ) --[[ @ 0]]
							f14_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f13_arg0:beginAnimation( 3000 ) --[[ @ 0]]
						f13_arg0:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
						f13_arg0:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f12_arg0:beginAnimation( 2700 ) --[[ @ 0]]
					f12_arg0:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
					f12_arg0:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.Arrow:beginAnimation( 300 ) --[[ @ 0]]
				f3_arg0.Arrow:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.Arrow:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.Arrow:completeAnimation() --[[ @ 0]]
			f3_arg0.Arrow:setAlpha( 0.3 ) --[[ @ 0]]
			f3_arg0.Arrow:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_F755127C95CF5B6" ) ) --[[ @ 0]]
			f3_arg0.Arrow:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
			f3_local2( f3_arg0.Arrow ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end,
		Intro = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			local f15_local0 = function ( f16_arg0 )
				local f16_local0 = function ( f17_arg0 )
					local f17_local0 = function ( f18_arg0 )
						f18_arg0:beginAnimation( 200 ) --[[ @ 0]]
						f18_arg0:setAlpha( 0.5 ) --[[ @ 0]]
						f18_arg0:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f17_arg0:beginAnimation( 399 ) --[[ @ 0]]
					f17_arg0:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f15_arg0.AnalysingFrame:beginAnimation( 500 ) --[[ @ 0]]
				f15_arg0.AnalysingFrame:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
				f15_arg0.AnalysingFrame:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.AnalysingFrame:completeAnimation() --[[ @ 0]]
			f15_arg0.AnalysingFrame:setAlpha( 0 ) --[[ @ 0]]
			f15_local0( f15_arg0.AnalysingFrame ) --[[ @ 0]]
			local f15_local1 = function ( f19_arg0 )
				local f19_local0 = function ( f20_arg0 )
					f20_arg0:beginAnimation( 399 ) --[[ @ 0]]
					f20_arg0:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
					f20_arg0:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
					f20_arg0:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f15_arg0.AnalysingFrameWipe:beginAnimation( 500 ) --[[ @ 0]]
				f15_arg0.AnalysingFrameWipe:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
				f15_arg0.AnalysingFrameWipe:registerEventHandler( "transition_complete_keyframe", f19_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.AnalysingFrameWipe:completeAnimation() --[[ @ 0]]
			f15_arg0.AnalysingFrameWipe:setAlpha( 1 ) --[[ @ 0]]
			f15_arg0.AnalysingFrameWipe:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta_normal" ) ) --[[ @ 0]]
			f15_arg0.AnalysingFrameWipe:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
			f15_arg0.AnalysingFrameWipe:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
			f15_arg0.AnalysingFrameWipe:setShaderVector( 2, 1, 1, 0, 0 ) --[[ @ 0]]
			f15_arg0.AnalysingFrameWipe:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
			f15_arg0.AnalysingFrameWipe:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
			f15_local1( f15_arg0.AnalysingFrameWipe ) --[[ @ 0]]
			local f15_local2 = function ( f21_arg0 )
				local f21_local0 = function ( f22_arg0 )
					local f22_local0 = function ( f23_arg0 )
						f23_arg0:beginAnimation( 200 ) --[[ @ 0]]
						f23_arg0:setAlpha( 1 ) --[[ @ 0]]
						f23_arg0:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f22_arg0:beginAnimation( 399 ) --[[ @ 0]]
					f22_arg0:registerEventHandler( "transition_complete_keyframe", f22_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f15_arg0.AnalysingBacking:beginAnimation( 500 ) --[[ @ 0]]
				f15_arg0.AnalysingBacking:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
				f15_arg0.AnalysingBacking:registerEventHandler( "transition_complete_keyframe", f21_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.AnalysingBacking:completeAnimation() --[[ @ 0]]
			f15_arg0.AnalysingBacking:setAlpha( 0 ) --[[ @ 0]]
			f15_local2( f15_arg0.AnalysingBacking ) --[[ @ 0]]
			local f15_local3 = function ( f24_arg0 )
				local f24_local0 = function ( f25_arg0 )
					local f25_local0 = function ( f26_arg0 )
						local f26_local0 = function ( f27_arg0 )
							local f27_local0 = function ( f28_arg0 )
								local f28_local0 = function ( f29_arg0 )
									local f29_local0 = function ( f30_arg0 )
										f30_arg0:beginAnimation( 280 ) --[[ @ 0]]
										f30_arg0:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
										f30_arg0:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f29_arg0:beginAnimation( 9 ) --[[ @ 0]]
									f29_arg0:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
									f29_arg0:registerEventHandler( "transition_complete_keyframe", f29_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f28_arg0:beginAnimation( 199 ) --[[ @ 0]]
								f28_arg0:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
								f28_arg0:registerEventHandler( "transition_complete_keyframe", f28_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f27_arg0:beginAnimation( 9 ) --[[ @ 0]]
							f27_arg0:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
							f27_arg0:registerEventHandler( "transition_complete_keyframe", f27_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f26_arg0:beginAnimation( 200 ) --[[ @ 0]]
						f26_arg0:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
						f26_arg0:registerEventHandler( "transition_complete_keyframe", f26_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f25_arg0:beginAnimation( 500 ) --[[ @ 0]]
					f25_arg0:setShaderVector( 1, 0, 0.05, 0, 0 ) --[[ @ 0]]
					f25_arg0:registerEventHandler( "transition_complete_keyframe", f25_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f15_arg0.AnalysingBackingProgress:beginAnimation( 500 ) --[[ @ 0]]
				f15_arg0.AnalysingBackingProgress:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
				f15_arg0.AnalysingBackingProgress:registerEventHandler( "transition_complete_keyframe", f24_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.AnalysingBackingProgress:completeAnimation() --[[ @ 0]]
			f15_arg0.AnalysingBackingProgress:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta" ) ) --[[ @ 0]]
			f15_arg0.AnalysingBackingProgress:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
			f15_arg0.AnalysingBackingProgress:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
			f15_arg0.AnalysingBackingProgress:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
			f15_arg0.AnalysingBackingProgress:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
			f15_arg0.AnalysingBackingProgress:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
			f15_local3( f15_arg0.AnalysingBackingProgress ) --[[ @ 0]]
			local f15_local4 = function ( f31_arg0 )
				local f31_local0 = function ( f32_arg0 )
					local f32_local0 = function ( f33_arg0 )
						local f33_local0 = function ( f34_arg0 )
							local f34_local0 = function ( f35_arg0 )
								local f35_local0 = function ( f36_arg0 )
									local f36_local0 = function ( f37_arg0 )
										f37_arg0:beginAnimation( 99 ) --[[ @ 0]]
										f37_arg0:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
										f37_arg0:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f36_arg0:beginAnimation( 200 ) --[[ @ 0]]
									f36_arg0:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
									f36_arg0:registerEventHandler( "transition_complete_keyframe", f36_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f35_arg0:beginAnimation( 90 ) --[[ @ 0]]
								f35_arg0:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
								f35_arg0:registerEventHandler( "transition_complete_keyframe", f35_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f34_arg0:beginAnimation( 199 ) --[[ @ 0]]
							f34_arg0:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
							f34_arg0:registerEventHandler( "transition_complete_keyframe", f34_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f33_arg0:beginAnimation( 110 ) --[[ @ 0]]
						f33_arg0:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
						f33_arg0:registerEventHandler( "transition_complete_keyframe", f33_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f32_arg0:beginAnimation( 200, Enum[@"hash_1F50FFF429AB1890"][@"hash_55D2D9CF90AB1735"] | Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
					f32_arg0:setAlpha( 1 ) --[[ @ 0]]
					f32_arg0:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
					f32_arg0:registerEventHandler( "transition_complete_keyframe", f32_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f15_arg0.AnalysingText:beginAnimation( 900 ) --[[ @ 0]]
				f15_arg0.AnalysingText:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
				f15_arg0.AnalysingText:registerEventHandler( "transition_complete_keyframe", f31_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.AnalysingText:completeAnimation() --[[ @ 0]]
			f15_arg0.AnalysingText:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.AnalysingText:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
			f15_arg0.AnalysingText:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
			f15_local4( f15_arg0.AnalysingText ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
