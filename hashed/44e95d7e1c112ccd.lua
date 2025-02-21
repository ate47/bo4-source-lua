-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD[@"hash_10141F5FCBDC4E50"] = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD[@"hash_10141F5FCBDC4E50"].__defaultWidth = 960 --[[ @ 0]]
CoD[@"hash_10141F5FCBDC4E50"].__defaultHeight = 240 --[[ @ 0]]
CoD[@"hash_10141F5FCBDC4E50"].new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD[@"hash_10141F5FCBDC4E50"] ) --[[ @ 0]]
	self.id = "CallingCards_zm_prestige_allseeingeye" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local background = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 0, 240 ) --[[ @ 0]]
	background:setImage( RegisterImage( @"uie_ui_icon_callingcards_zm_prestige_allseeingeye_background" ) ) --[[ @ 0]]
	self:addElement( background ) --[[ @ 0]]
	self.background = background --[[ @ 0]]
	
	local spotlightColor = LUI.UIImage.new( 0, 0, 53, 254, 0, 0, 34, 246 ) --[[ @ 0]]
	spotlightColor:setRGB( 0.98, 0.87, 0 ) --[[ @ 0]]
	spotlightColor:setAlpha( 0.3 ) --[[ @ 0]]
	spotlightColor:setImage( RegisterImage( @"uie_callingcards_global_master_spotlight" ) ) --[[ @ 0]]
	spotlightColor:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( spotlightColor ) --[[ @ 0]]
	self.spotlightColor = spotlightColor --[[ @ 0]]
	
	local spotlightColor3 = LUI.UIImage.new( 0, 0, 373.5, 475.5, 0, 0, 87, 195 ) --[[ @ 0]]
	spotlightColor3:setRGB( 0.98, 0.87, 0 ) --[[ @ 0]]
	spotlightColor3:setAlpha( 0.3 ) --[[ @ 0]]
	spotlightColor3:setImage( RegisterImage( @"uie_callingcards_global_master_spotlight" ) ) --[[ @ 0]]
	spotlightColor3:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( spotlightColor3 ) --[[ @ 0]]
	self.spotlightColor3 = spotlightColor3 --[[ @ 0]]
	
	local spotlightColor4 = LUI.UIImage.new( 0, 0, 260.5, 355.5, 0, 0, 108, 209 ) --[[ @ 0]]
	spotlightColor4:setRGB( 0.98, 0.87, 0 ) --[[ @ 0]]
	spotlightColor4:setAlpha( 0.3 ) --[[ @ 0]]
	spotlightColor4:setImage( RegisterImage( @"uie_callingcards_global_master_spotlight" ) ) --[[ @ 0]]
	spotlightColor4:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( spotlightColor4 ) --[[ @ 0]]
	self.spotlightColor4 = spotlightColor4 --[[ @ 0]]
	
	local spotlightColor2 = LUI.UIImage.new( 0, 0, 771, 972, 0, 0, 59, 271 ) --[[ @ 0]]
	spotlightColor2:setRGB( 0.98, 0.87, 0 ) --[[ @ 0]]
	spotlightColor2:setAlpha( 0.6 ) --[[ @ 0]]
	spotlightColor2:setImage( RegisterImage( @"uie_callingcards_global_master_spotlight" ) ) --[[ @ 0]]
	spotlightColor2:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( spotlightColor2 ) --[[ @ 0]]
	self.spotlightColor2 = spotlightColor2 --[[ @ 0]]
	
	local mistBack = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 0, 240 ) --[[ @ 0]]
	mistBack:setImage( RegisterImage( @"uie_ui_icon_callingcards_zm_prestige_allseeingeye_pyramid_mist1" ) ) --[[ @ 0]]
	mistBack:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_tile_scroll_normal" ) ) --[[ @ 0]]
	mistBack:setShaderVector( 0, 1, 1, 0, 0 ) --[[ @ 0]]
	mistBack:setShaderVector( 1, 0.05, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( mistBack ) --[[ @ 0]]
	self.mistBack = mistBack --[[ @ 0]]
	
	local monks = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 0, 240 ) --[[ @ 0]]
	monks:setImage( RegisterImage( @"uie_ui_icon_callingcards_zm_prestige_allseeingeye_pyramid_monks" ) ) --[[ @ 0]]
	self:addElement( monks ) --[[ @ 0]]
	self.monks = monks --[[ @ 0]]
	
	local mistFront = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 0, 240 ) --[[ @ 0]]
	mistFront:setImage( RegisterImage( @"uie_ui_icon_callingcards_zm_prestige_allseeingeye_pyramid_mist2" ) ) --[[ @ 0]]
	mistFront:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_tile_scroll_normal" ) ) --[[ @ 0]]
	mistFront:setShaderVector( 0, 1, 1, 0, 0 ) --[[ @ 0]]
	mistFront:setShaderVector( 1, 0.08, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( mistFront ) --[[ @ 0]]
	self.mistFront = mistFront --[[ @ 0]]
	
	local torchFlames = LUI.UIImage.new( 0, 0, 116.5, 200.5, 0, 0, 36, 204 ) --[[ @ 0]]
	torchFlames:setImage( RegisterImage( @"uie_ui_icon_callingcards_zm_prestige_allseeingeye_pyramid_torch_flame" ) ) --[[ @ 0]]
	torchFlames:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_flipbook_add" ) ) --[[ @ 0]]
	torchFlames:setShaderVector( 0, 0, 5, 0, 0 ) --[[ @ 0]]
	torchFlames:setShaderVector( 1, 10, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( torchFlames ) --[[ @ 0]]
	self.torchFlames = torchFlames --[[ @ 0]]
	
	local torchFlames2 = LUI.UIImage.new( 0, 0, 824.5, 902.5, 0, 0, 70, 216 ) --[[ @ 0]]
	torchFlames2:setZRot( 11 ) --[[ @ 0]]
	torchFlames2:setImage( RegisterImage( @"uie_ui_icon_callingcards_zm_prestige_allseeingeye_pyramid_torch_flame" ) ) --[[ @ 0]]
	torchFlames2:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_flipbook_add" ) ) --[[ @ 0]]
	torchFlames2:setShaderVector( 0, 0, 5, 0, 0 ) --[[ @ 0]]
	torchFlames2:setShaderVector( 1, 10, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( torchFlames2 ) --[[ @ 0]]
	self.torchFlames2 = torchFlames2 --[[ @ 0]]
	
	local torchFlames3 = LUI.UIImage.new( 0, 0, 408.5, 444.5, 0, 0, 99, 167 ) --[[ @ 0]]
	torchFlames3:setImage( RegisterImage( @"uie_ui_icon_callingcards_zm_prestige_allseeingeye_pyramid_torch_flame" ) ) --[[ @ 0]]
	torchFlames3:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_flipbook_add" ) ) --[[ @ 0]]
	torchFlames3:setShaderVector( 0, 0, 5, 0, 0 ) --[[ @ 0]]
	torchFlames3:setShaderVector( 1, 10, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( torchFlames3 ) --[[ @ 0]]
	self.torchFlames3 = torchFlames3 --[[ @ 0]]
	
	local torchFlames4 = LUI.UIImage.new( 0, 0, 298.5, 324.5, 0, 0, 126, 176 ) --[[ @ 0]]
	torchFlames4:setImage( RegisterImage( @"uie_ui_icon_callingcards_zm_prestige_allseeingeye_pyramid_torch_flame" ) ) --[[ @ 0]]
	torchFlames4:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_flipbook_add" ) ) --[[ @ 0]]
	torchFlames4:setShaderVector( 0, 0, 5, 0, 0 ) --[[ @ 0]]
	torchFlames4:setShaderVector( 1, 10, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( torchFlames4 ) --[[ @ 0]]
	self.torchFlames4 = torchFlames4 --[[ @ 0]]
	
	local torchFlames5 = LUI.UIImage.new( 0, 0, 895.5, 921.5, 0, 0, 115, 165 ) --[[ @ 0]]
	torchFlames5:setImage( RegisterImage( @"uie_ui_icon_callingcards_zm_prestige_allseeingeye_pyramid_torch_flame" ) ) --[[ @ 0]]
	torchFlames5:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_flipbook_add" ) ) --[[ @ 0]]
	torchFlames5:setShaderVector( 0, 0, 5, 0, 0 ) --[[ @ 0]]
	torchFlames5:setShaderVector( 1, 10, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( torchFlames5 ) --[[ @ 0]]
	self.torchFlames5 = torchFlames5 --[[ @ 0]]
	
	local pyramidSheen1 = LUI.UIImage.new( 0, 0, 533.5, 869.5, 0, 0, 7, 239 ) --[[ @ 0]]
	pyramidSheen1:setImage( RegisterImage( @"uie_ui_icon_callingcards_zm_prestige_allseeingeye_pyramid_mask1" ) ) --[[ @ 0]]
	pyramidSheen1:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta" ) ) --[[ @ 0]]
	pyramidSheen1:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	pyramidSheen1:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	pyramidSheen1:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	pyramidSheen1:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	pyramidSheen1:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( pyramidSheen1 ) --[[ @ 0]]
	self.pyramidSheen1 = pyramidSheen1 --[[ @ 0]]
	
	local sunrays = LUI.UIImage.new( 0, 0, 715.5, 979.5, 0, 0, -10, 150 ) --[[ @ 0]]
	sunrays:setImage( RegisterImage( @"uie_ui_icon_callingcards_zm_prestige_allseeingeye_pyramid_lightrays" ) ) --[[ @ 0]]
	sunrays:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( sunrays ) --[[ @ 0]]
	self.sunrays = sunrays --[[ @ 0]]
	
	local pyramidSheen2 = LUI.UIImage.new( 0, 0, 520.5, 872.5, 0, 0, 130, 242 ) --[[ @ 0]]
	pyramidSheen2:setImage( RegisterImage( @"uie_ui_icon_callingcards_zm_prestige_allseeingeye_pyramid_mask2" ) ) --[[ @ 0]]
	pyramidSheen2:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta" ) ) --[[ @ 0]]
	pyramidSheen2:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	pyramidSheen2:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	pyramidSheen2:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	pyramidSheen2:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	pyramidSheen2:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( pyramidSheen2 ) --[[ @ 0]]
	self.pyramidSheen2 = pyramidSheen2 --[[ @ 0]]
	
	local cropper = LUI.UIImage.new( 0, 0, -32, 992, 0, 0, -392, 632 ) --[[ @ 0]]
	cropper:setAlpha( 0 ) --[[ @ 0]]
	cropper:setImage( RegisterImage( @"uie_stage_crop_prop" ) ) --[[ @ 0]]
	self:addElement( cropper ) --[[ @ 0]]
	self.cropper = cropper --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD[@"hash_10141F5FCBDC4E50"].__resetProperties = function ( f2_arg0 )
	f2_arg0.sunrays:completeAnimation() --[[ @ 0]]
	f2_arg0.pyramidSheen1:completeAnimation() --[[ @ 0]]
	f2_arg0.pyramidSheen2:completeAnimation() --[[ @ 0]]
	f2_arg0.cropper:completeAnimation() --[[ @ 0]]
	f2_arg0.sunrays:setLeftRight( 0, 0, 715.5, 979.5 ) --[[ @ 0]]
	f2_arg0.sunrays:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.pyramidSheen1:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f2_arg0.pyramidSheen1:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.pyramidSheen1:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	f2_arg0.pyramidSheen1:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	f2_arg0.pyramidSheen1:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	f2_arg0.pyramidSheen1:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	f2_arg0.pyramidSheen1:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	f2_arg0.pyramidSheen2:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f2_arg0.pyramidSheen2:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.pyramidSheen2:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	f2_arg0.pyramidSheen2:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	f2_arg0.pyramidSheen2:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	f2_arg0.pyramidSheen2:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	f2_arg0.pyramidSheen2:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	f2_arg0.cropper:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD[@"hash_10141F5FCBDC4E50"].__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					f5_arg0:beginAnimation( 1000 ) --[[ @ 0]]
					f5_arg0:setShaderVector( 0, 0.86, 1.05, 0, 0 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.pyramidSheen1:beginAnimation( 1000 ) --[[ @ 0]]
				f3_arg0.pyramidSheen1:setShaderVector( 0, 0.35, 0.58, 0, 0 ) --[[ @ 0]]
				f3_arg0.pyramidSheen1:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.pyramidSheen1:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.pyramidSheen1:completeAnimation() --[[ @ 0]]
			f3_arg0.pyramidSheen1:setRGB( 0.98, 0.87, 0 ) --[[ @ 0]]
			f3_arg0.pyramidSheen1:setAlpha( 0.25 ) --[[ @ 0]]
			f3_arg0.pyramidSheen1:setShaderVector( 0, -0.13, 0.12, 0, 0 ) --[[ @ 0]]
			f3_arg0.pyramidSheen1:setShaderVector( 1, 0.12, 0.12, 0, 0 ) --[[ @ 0]]
			f3_arg0.pyramidSheen1:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
			f3_arg0.pyramidSheen1:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
			f3_arg0.pyramidSheen1:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
			f3_local0( f3_arg0.pyramidSheen1 ) --[[ @ 0]]
			local f3_local1 = function ( f6_arg0 )
				local f6_local0 = function ( f7_arg0 )
					local f7_local0 = function ( f8_arg0 )
						local f8_local0 = function ( f9_arg0 )
							f9_arg0:beginAnimation( 2000 ) --[[ @ 0]]
							f9_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f8_arg0:beginAnimation( 720 ) --[[ @ 0]]
						f8_arg0:setLeftRight( 0, 0, 505.5, 769.5 ) --[[ @ 0]]
						f8_arg0:setAlpha( 0 ) --[[ @ 0]]
						f8_arg0:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f7_arg0:beginAnimation( 1490 ) --[[ @ 0]]
					f7_arg0:setLeftRight( 0, 0, 555.9, 819.9 ) --[[ @ 0]]
					f7_arg0:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.sunrays:beginAnimation( 790 ) --[[ @ 0]]
				f3_arg0.sunrays:setLeftRight( 0, 0, 660.2, 924.2 ) --[[ @ 0]]
				f3_arg0.sunrays:setAlpha( 1 ) --[[ @ 0]]
				f3_arg0.sunrays:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.sunrays:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.sunrays:completeAnimation() --[[ @ 0]]
			f3_arg0.sunrays:setLeftRight( 0, 0, 715.5, 979.5 ) --[[ @ 0]]
			f3_arg0.sunrays:setAlpha( 0 ) --[[ @ 0]]
			f3_local1( f3_arg0.sunrays ) --[[ @ 0]]
			local f3_local2 = function ( f10_arg0 )
				f3_arg0.pyramidSheen2:beginAnimation( 3370 ) --[[ @ 0]]
				f3_arg0.pyramidSheen2:setShaderVector( 0, 0.92, 1.07, 0, 0 ) --[[ @ 0]]
				f3_arg0.pyramidSheen2:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.pyramidSheen2:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.pyramidSheen2:completeAnimation() --[[ @ 0]]
			f3_arg0.pyramidSheen2:setRGB( 0.98, 0.87, 0 ) --[[ @ 0]]
			f3_arg0.pyramidSheen2:setAlpha( 0.2 ) --[[ @ 0]]
			f3_arg0.pyramidSheen2:setShaderVector( 0, -0.06, 0.07, 0, 0 ) --[[ @ 0]]
			f3_arg0.pyramidSheen2:setShaderVector( 1, 0.12, 0.12, 0, 0 ) --[[ @ 0]]
			f3_arg0.pyramidSheen2:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
			f3_arg0.pyramidSheen2:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
			f3_arg0.pyramidSheen2:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
			f3_local2( f3_arg0.pyramidSheen2 ) --[[ @ 0]]
			f3_arg0.cropper:completeAnimation() --[[ @ 0]]
			f3_arg0.cropper:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.cropper ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
