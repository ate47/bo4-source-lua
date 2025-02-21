-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.CommonSearchingBar = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CommonSearchingBar.__defaultWidth = 122 --[[ @ 0]]
CoD.CommonSearchingBar.__defaultHeight = 20 --[[ @ 0]]
CoD.CommonSearchingBar.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CommonSearchingBar ) --[[ @ 0]]
	self.id = "CommonSearchingBar" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local LoadingBgElement = LUI.UIImage.new( 0, 0, 0, 122, 0, 0, 0, 20 ) --[[ @ 0]]
	LoadingBgElement:setImage( RegisterImage( @"uie_ui_menu_window_loading_bg" ) ) --[[ @ 0]]
	self:addElement( LoadingBgElement ) --[[ @ 0]]
	self.LoadingBgElement = LoadingBgElement --[[ @ 0]]
	
	local SearchingText = LUI.UIImage.new( 0, 0, 15, 95, 0, 0, 1.5, 13.5 ) --[[ @ 0]]
	SearchingText:setImage( RegisterImage( @"uie_ui_menu_window_loading_text" ) ) --[[ @ 0]]
	SearchingText:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( SearchingText ) --[[ @ 0]]
	self.SearchingText = SearchingText --[[ @ 0]]
	
	local ProgressBar = LUI.UIImage.new( 0, 0, 16, 122, 0, 0, 11, 13 ) --[[ @ 0]]
	ProgressBar:setImage( RegisterImage( @"uie_ui_menu_window_loading_bar" ) ) --[[ @ 0]]
	ProgressBar:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	ProgressBar:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( ProgressBar ) --[[ @ 0]]
	self.ProgressBar = ProgressBar --[[ @ 0]]
	
	local ConnectedText = LUI.UIImage.new( 0, 0, 46, 122, 0, 0, 0, 16 ) --[[ @ 0]]
	ConnectedText:setAlpha( 0 ) --[[ @ 0]]
	ConnectedText:setImage( RegisterImage( @"uie_ui_menu_window_loading_finished" ) ) --[[ @ 0]]
	ConnectedText:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	ConnectedText:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( ConnectedText ) --[[ @ 0]]
	self.ConnectedText = ConnectedText --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CommonSearchingBar.__resetProperties = function ( f2_arg0 )
	f2_arg0.ProgressBar:completeAnimation() --[[ @ 0]]
	f2_arg0.SearchingText:completeAnimation() --[[ @ 0]]
	f2_arg0.LoadingBgElement:completeAnimation() --[[ @ 0]]
	f2_arg0.ConnectedText:completeAnimation() --[[ @ 0]]
	f2_arg0.ProgressBar:setLeftRight( 0, 0, 16, 122 ) --[[ @ 0]]
	f2_arg0.ProgressBar:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.SearchingText:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.LoadingBgElement:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.ConnectedText:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.ConnectedText:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	f2_arg0.ConnectedText:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CommonSearchingBar.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f3_arg0.LoadingBgElement:completeAnimation() --[[ @ 0]]
			f3_arg0.LoadingBgElement:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.LoadingBgElement ) --[[ @ 0]]
			f3_arg0.SearchingText:completeAnimation() --[[ @ 0]]
			f3_arg0.SearchingText:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.SearchingText ) --[[ @ 0]]
			f3_arg0.ProgressBar:completeAnimation() --[[ @ 0]]
			f3_arg0.ProgressBar:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.ProgressBar ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					local f5_local0 = function ( f6_arg0 )
						local f6_local0 = function ( f7_arg0 )
							f7_arg0:beginAnimation( 1000 ) --[[ @ 0]]
							f7_arg0:setAlpha( 0.5 ) --[[ @ 0]]
							f7_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f6_arg0:beginAnimation( 1000, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
						f6_arg0:setAlpha( 0.7 ) --[[ @ 0]]
						f6_arg0:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
						f6_arg0:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f5_arg0:beginAnimation( 1000, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
					f5_arg0:setAlpha( 0.5 ) --[[ @ 0]]
					f5_arg0:setShaderVector( 0, 1.5, 0, 0, 0 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.ConnectedText:beginAnimation( 1000 ) --[[ @ 0]]
				f3_arg0.ConnectedText:setAlpha( 0.8 ) --[[ @ 0]]
				f3_arg0.ConnectedText:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.ConnectedText:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.ConnectedText:completeAnimation() --[[ @ 0]]
			f3_arg0.ConnectedText:setAlpha( 0.5 ) --[[ @ 0]]
			f3_arg0.ConnectedText:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
			f3_arg0.ConnectedText:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
			f3_local0( f3_arg0.ConnectedText ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end,
		Intro = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			local f8_local0 = function ( f9_arg0 )
				local f9_local0 = function ( f10_arg0 )
					local f10_local0 = function ( f11_arg0 )
						f11_arg0:beginAnimation( 299 ) --[[ @ 0]]
						f11_arg0:setAlpha( 0 ) --[[ @ 0]]
						f11_arg0:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f10_arg0:beginAnimation( 1000 ) --[[ @ 0]]
					f10_arg0:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f8_arg0.LoadingBgElement:beginAnimation( 200 ) --[[ @ 0]]
				f8_arg0.LoadingBgElement:setAlpha( 1 ) --[[ @ 0]]
				f8_arg0.LoadingBgElement:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.LoadingBgElement:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.LoadingBgElement:completeAnimation() --[[ @ 0]]
			f8_arg0.LoadingBgElement:setAlpha( 0 ) --[[ @ 0]]
			f8_local0( f8_arg0.LoadingBgElement ) --[[ @ 0]]
			local f8_local1 = function ( f12_arg0 )
				local f12_local0 = function ( f13_arg0 )
					local f13_local0 = function ( f14_arg0 )
						local f14_local0 = function ( f15_arg0 )
							local f15_local0 = function ( f16_arg0 )
								local f16_local0 = function ( f17_arg0 )
									local f17_local0 = function ( f18_arg0 )
										f18_arg0:beginAnimation( 299 ) --[[ @ 0]]
										f18_arg0:setAlpha( 0 ) --[[ @ 0]]
										f18_arg0:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f17_arg0:beginAnimation( 200 ) --[[ @ 0]]
									f17_arg0:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f16_arg0:beginAnimation( 199 ) --[[ @ 0]]
								f16_arg0:setAlpha( 1 ) --[[ @ 0]]
								f16_arg0:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f15_arg0:beginAnimation( 199 ) --[[ @ 0]]
							f15_arg0:setAlpha( 0.5 ) --[[ @ 0]]
							f15_arg0:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f14_arg0:beginAnimation( 200 ) --[[ @ 0]]
						f14_arg0:setAlpha( 1 ) --[[ @ 0]]
						f14_arg0:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f13_arg0:beginAnimation( 200 ) --[[ @ 0]]
					f13_arg0:setAlpha( 0.5 ) --[[ @ 0]]
					f13_arg0:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f8_arg0.SearchingText:beginAnimation( 200 ) --[[ @ 0]]
				f8_arg0.SearchingText:setAlpha( 1 ) --[[ @ 0]]
				f8_arg0.SearchingText:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.SearchingText:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.SearchingText:completeAnimation() --[[ @ 0]]
			f8_arg0.SearchingText:setAlpha( 0 ) --[[ @ 0]]
			f8_local1( f8_arg0.SearchingText ) --[[ @ 0]]
			local f8_local2 = function ( f19_arg0 )
				local f19_local0 = function ( f20_arg0 )
					local f20_local0 = function ( f21_arg0 )
						local f21_local0 = function ( f22_arg0 )
							local f22_local0 = function ( f23_arg0 )
								local f23_local0 = function ( f24_arg0 )
									f24_arg0:beginAnimation( 299 ) --[[ @ 0]]
									f24_arg0:setAlpha( 0 ) --[[ @ 0]]
									f24_arg0:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f23_arg0:beginAnimation( 150 ) --[[ @ 0]]
								f23_arg0:setLeftRight( 0, 0, 16, 122 ) --[[ @ 0]]
								f23_arg0:registerEventHandler( "transition_complete_keyframe", f23_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f22_arg0:beginAnimation( 349 ) --[[ @ 0]]
							f22_arg0:setLeftRight( 0, 0, 16, 110 ) --[[ @ 0]]
							f22_arg0:registerEventHandler( "transition_complete_keyframe", f22_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f21_arg0:beginAnimation( 250 ) --[[ @ 0]]
						f21_arg0:setLeftRight( 0, 0, 16, 54 ) --[[ @ 0]]
						f21_arg0:registerEventHandler( "transition_complete_keyframe", f21_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f20_arg0:beginAnimation( 249 ) --[[ @ 0]]
					f20_arg0:setLeftRight( 0, 0, 16, 48 ) --[[ @ 0]]
					f20_arg0:registerEventHandler( "transition_complete_keyframe", f20_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f8_arg0.ProgressBar:beginAnimation( 200 ) --[[ @ 0]]
				f8_arg0.ProgressBar:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.ProgressBar:registerEventHandler( "transition_complete_keyframe", f19_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.ProgressBar:completeAnimation() --[[ @ 0]]
			f8_arg0.ProgressBar:setLeftRight( 0, 0, 16, 16 ) --[[ @ 0]]
			f8_arg0.ProgressBar:setAlpha( 1 ) --[[ @ 0]]
			f8_local2( f8_arg0.ProgressBar ) --[[ @ 0]]
			local f8_local3 = function ( f25_arg0 )
				local f25_local0 = function ( f26_arg0 )
					local f26_local0 = function ( f27_arg0 )
						f27_arg0:beginAnimation( 100, Enum[@"luitween"][@"luitween_bounce"] | Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
						f27_arg0:setAlpha( 0.5 ) --[[ @ 0]]
						f27_arg0:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
						f27_arg0:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f26_arg0:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_in"] ) --[[ @ 0]]
					f26_arg0:setAlpha( 0.67 ) --[[ @ 0]]
					f26_arg0:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
					f26_arg0:registerEventHandler( "transition_complete_keyframe", f26_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f8_arg0.ConnectedText:beginAnimation( 1300 ) --[[ @ 0]]
				f8_arg0.ConnectedText:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.ConnectedText:registerEventHandler( "transition_complete_keyframe", f25_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.ConnectedText:completeAnimation() --[[ @ 0]]
			f8_arg0.ConnectedText:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.ConnectedText:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
			f8_arg0.ConnectedText:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
			f8_local3( f8_arg0.ConnectedText ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
