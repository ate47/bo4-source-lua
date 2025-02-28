-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.GenericProjectedTabletInternal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.GenericProjectedTabletInternal.__defaultWidth = 1080 --[[ @ 0]]
CoD.GenericProjectedTabletInternal.__defaultHeight = 608 --[[ @ 0]]
CoD.GenericProjectedTabletInternal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.GenericProjectedTabletInternal ) --[[ @ 0]]
	self.id = "GenericProjectedTabletInternal" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local square = LUI.UIImage.new( 0, 0, 210, 870, 0, 0, 106, 500 ) --[[ @ 0]]
	square:setRGB( 0.6, 0.87, 0.92 ) --[[ @ 0]]
	square:setAlpha( 0.5 ) --[[ @ 0]]
	self:addElement( square ) --[[ @ 0]]
	self.square = square --[[ @ 0]]
	
	local RegBack = LUI.UIImage.new( 0.5, 0.5, -542, 538, 0.5, 0.5, -526, 554 ) --[[ @ 0]]
	RegBack:setRGB( 0.42, 0.69, 0.76 ) --[[ @ 0]]
	RegBack:setAlpha( 0.6 ) --[[ @ 0]]
	RegBack:setImage( RegisterImage( @"uie_hud_t7_minimap_mp_holograms_tablet_nonmap" ) ) --[[ @ 0]]
	RegBack:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_saturation_normal" ) ) --[[ @ 0]]
	RegBack:setShaderVector( 0, 2.85, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( RegBack ) --[[ @ 0]]
	self.RegBack = RegBack --[[ @ 0]]
	
	local AddBack = LUI.UIImage.new( 0.5, 0.5, -542, 538, 0.5, 0.5, -526, 554 ) --[[ @ 0]]
	AddBack:setRGB( 0.35, 0.62, 0.69 ) --[[ @ 0]]
	AddBack:setAlpha( 0.2 ) --[[ @ 0]]
	AddBack:setImage( RegisterImage( @"uie_hud_t7_minimap_mp_holograms_tablet_nonmap" ) ) --[[ @ 0]]
	AddBack:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( AddBack ) --[[ @ 0]]
	self.AddBack = AddBack --[[ @ 0]]
	
	local Image0 = LUI.UIImage.new( 0.5, 0.5, -542, 538, 0.5, 0.5, -526, 554 ) --[[ @ 0]]
	Image0:setAlpha( 0 ) --[[ @ 0]]
	Image0:setImage( RegisterImage( @"uie_hud_t7_minimap_mp_holograms_tablet_nonmap" ) ) --[[ @ 0]]
	Image0:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_saturation_normal" ) ) --[[ @ 0]]
	Image0:setShaderVector( 0, 0.45, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Image0 ) --[[ @ 0]]
	self.Image0 = Image0 --[[ @ 0]]
	
	local lines = LUI.UIImage.new( 0.5, 0.5, -542, 538, 0.5, 0.5, -526, 554 ) --[[ @ 0]]
	lines:setAlpha( 0.9 ) --[[ @ 0]]
	lines:setImage( RegisterImage( @"uie_hud_t7_minimap_mp_holograms_tablet_nonmap_1stperson" ) ) --[[ @ 0]]
	lines:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( lines ) --[[ @ 0]]
	self.lines = lines --[[ @ 0]]
	
	local scroll = LUI.UIImage.new( 0.5, 0.5, -542, 538, 0.5, 0.5, -526, 554 ) --[[ @ 0]]
	scroll:setAlpha( 0.1 ) --[[ @ 0]]
	scroll:setImage( RegisterImage( @"uie_hud_t7_minimap_mp_holograms_tablet_nonmap_1stperson" ) ) --[[ @ 0]]
	scroll:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_tile_scroll" ) ) --[[ @ 0]]
	scroll:setShaderVector( 0, 0.06, 1, 0, 0 ) --[[ @ 0]]
	scroll:setShaderVector( 1, 50, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( scroll ) --[[ @ 0]]
	self.scroll = scroll --[[ @ 0]]
	
	local Scanlines = LUI.UIImage.new( 0.5, 0.5, -542, 538, 0.5, 0.5, -526, 554 ) --[[ @ 0]]
	Scanlines:setRGB( 0.35, 0.62, 0.69 ) --[[ @ 0]]
	Scanlines:setAlpha( 0.3 ) --[[ @ 0]]
	Scanlines:setImage( RegisterImage( @"uie_hud_t7_minimap_mp_holograms_tablet_nonmap" ) ) --[[ @ 0]]
	Scanlines:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_scanlines_add" ) ) --[[ @ 0]]
	Scanlines:setShaderVector( 0, 1.04, 0, 0, 0 ) --[[ @ 0]]
	Scanlines:setShaderVector( 1, 4.24, 0, 0, 0 ) --[[ @ 0]]
	Scanlines:setShaderVector( 2, 0.01, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Scanlines ) --[[ @ 0]]
	self.Scanlines = Scanlines --[[ @ 0]]
	
	local Static = LUI.UIImage.new( 0.5, 0.5, -526, 554, 0.5, 0.5, -529, 551 ) --[[ @ 0]]
	Static:setRGB( 0.7, 0.92, 0.97 ) --[[ @ 0]]
	Static:setAlpha( 0 ) --[[ @ 0]]
	Static:setImage( RegisterImage( @"uie_hud_t7_minimap_mp_ethiopia_full" ) ) --[[ @ 0]]
	Static:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_tile_scroll" ) ) --[[ @ 0]]
	Static:setShaderVector( 0, -0.01, 0.44, 0, 0 ) --[[ @ 0]]
	Static:setShaderVector( 1, 4.29, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Static ) --[[ @ 0]]
	self.Static = Static --[[ @ 0]]
	
	local Image10 = LUI.UIImage.new( 0.5, 0.5, -54, 54, 0.5, 0.5, -56, 52 ) --[[ @ 0]]
	Image10:setAlpha( 0.94 ) --[[ @ 0]]
	Image10:setImage( RegisterImage( @"uie_t7_hud_tablet_nonminimap_cross" ) ) --[[ @ 0]]
	Image10:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Image10 ) --[[ @ 0]]
	self.Image10 = Image10 --[[ @ 0]]
	
	local LineUL = LUI.UIImage.new( 0, 0, 300, 492, 0, 0, 246, 264 ) --[[ @ 0]]
	LineUL:setAlpha( 0.89 ) --[[ @ 0]]
	LineUL:setImage( RegisterImage( @"uie_t7_hud_tablet_nonminimap_line" ) ) --[[ @ 0]]
	LineUL:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( LineUL ) --[[ @ 0]]
	self.LineUL = LineUL --[[ @ 0]]
	
	local LineUR = LUI.UIImage.new( 0, 0, 548, 740, 0, 0, 246, 264 ) --[[ @ 0]]
	LineUR:setAlpha( 0.89 ) --[[ @ 0]]
	LineUR:setYRot( 180 ) --[[ @ 0]]
	LineUR:setImage( RegisterImage( @"uie_t7_hud_tablet_nonminimap_line" ) ) --[[ @ 0]]
	LineUR:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( LineUR ) --[[ @ 0]]
	self.LineUR = LineUR --[[ @ 0]]
	
	local LineLL = LUI.UIImage.new( 0, 0, 300, 492, 0, 0, 334, 352 ) --[[ @ 0]]
	LineLL:setAlpha( 0.89 ) --[[ @ 0]]
	LineLL:setXRot( 190 ) --[[ @ 0]]
	LineLL:setImage( RegisterImage( @"uie_t7_hud_tablet_nonminimap_line" ) ) --[[ @ 0]]
	LineLL:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( LineLL ) --[[ @ 0]]
	self.LineLL = LineLL --[[ @ 0]]
	
	local LineLR = LUI.UIImage.new( 0, 0, 548, 740, 0, 0, 334, 352 ) --[[ @ 0]]
	LineLR:setAlpha( 0.89 ) --[[ @ 0]]
	LineLR:setXRot( 190 ) --[[ @ 0]]
	LineLR:setYRot( 180 ) --[[ @ 0]]
	LineLR:setImage( RegisterImage( @"uie_t7_hud_tablet_nonminimap_line" ) ) --[[ @ 0]]
	LineLR:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( LineLR ) --[[ @ 0]]
	self.LineLR = LineLR --[[ @ 0]]
	
	local targetLarge = LUI.UIImage.new( 0, 0, 535, 630, 0, 0, 198, 293 ) --[[ @ 0]]
	targetLarge:setScale( 1.02, 1.02 ) --[[ @ 0]]
	targetLarge:setImage( RegisterImage( @"uie_t7_hud_target_mortararea_planted" ) ) --[[ @ 0]]
	targetLarge:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( targetLarge ) --[[ @ 0]]
	self.targetLarge = targetLarge --[[ @ 0]]
	
	local targetMed = LUI.UIImage.new( 0, 0, 316, 411, 0, 0, 341.5, 436.5 ) --[[ @ 0]]
	targetMed:setAlpha( 0.62 ) --[[ @ 0]]
	targetMed:setImage( RegisterImage( @"uie_t7_hud_target_mortararea_planted" ) ) --[[ @ 0]]
	targetMed:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( targetMed ) --[[ @ 0]]
	self.targetMed = targetMed --[[ @ 0]]
	
	local targetsmall0 = LUI.UIImage.new( 0, 0, 643, 738, 0, 0, 317, 412 ) --[[ @ 0]]
	targetsmall0:setAlpha( 0.04 ) --[[ @ 0]]
	targetsmall0:setImage( RegisterImage( @"uie_t7_hud_target_mortararea_planted" ) ) --[[ @ 0]]
	targetsmall0:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( targetsmall0 ) --[[ @ 0]]
	self.targetsmall0 = targetsmall0 --[[ @ 0]]
	
	local targetSmall1 = LUI.UIImage.new( 0, 0, 486, 581, 0, 0, 357, 452 ) --[[ @ 0]]
	targetSmall1:setAlpha( 0.98 ) --[[ @ 0]]
	targetSmall1:setScale( 0.6, 0.6 ) --[[ @ 0]]
	targetSmall1:setImage( RegisterImage( @"uie_t7_hud_target_mortararea_planted" ) ) --[[ @ 0]]
	targetSmall1:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( targetSmall1 ) --[[ @ 0]]
	self.targetSmall1 = targetSmall1 --[[ @ 0]]
	
	local targetSmall2 = LUI.UIImage.new( 0, 0, 408, 503, 0, 0, 177, 272 ) --[[ @ 0]]
	targetSmall2:setAlpha( 0.98 ) --[[ @ 0]]
	targetSmall2:setScale( 0.6, 0.6 ) --[[ @ 0]]
	targetSmall2:setImage( RegisterImage( @"uie_t7_hud_target_mortararea_planted" ) ) --[[ @ 0]]
	targetSmall2:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( targetSmall2 ) --[[ @ 0]]
	self.targetSmall2 = targetSmall2 --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.GenericProjectedTabletInternal.__resetProperties = function ( f2_arg0 )
	f2_arg0.Image10:completeAnimation() --[[ @ 0]]
	f2_arg0.targetLarge:completeAnimation() --[[ @ 0]]
	f2_arg0.targetsmall0:completeAnimation() --[[ @ 0]]
	f2_arg0.targetSmall1:completeAnimation() --[[ @ 0]]
	f2_arg0.targetSmall2:completeAnimation() --[[ @ 0]]
	f2_arg0.Scanlines:completeAnimation() --[[ @ 0]]
	f2_arg0.RegBack:completeAnimation() --[[ @ 0]]
	f2_arg0.AddBack:completeAnimation() --[[ @ 0]]
	f2_arg0.targetMed:completeAnimation() --[[ @ 0]]
	f2_arg0.LineUR:completeAnimation() --[[ @ 0]]
	f2_arg0.LineUL:completeAnimation() --[[ @ 0]]
	f2_arg0.LineLR:completeAnimation() --[[ @ 0]]
	f2_arg0.LineLL:completeAnimation() --[[ @ 0]]
	f2_arg0.Image10:setAlpha( 0.94 ) --[[ @ 0]]
	f2_arg0.targetLarge:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.targetLarge:setScale( 1.02, 1.02 ) --[[ @ 0]]
	f2_arg0.targetsmall0:setLeftRight( 0, 0, 643, 738 ) --[[ @ 0]]
	f2_arg0.targetsmall0:setTopBottom( 0, 0, 317, 412 ) --[[ @ 0]]
	f2_arg0.targetsmall0:setAlpha( 0.04 ) --[[ @ 0]]
	f2_arg0.targetsmall0:setZRot( 0 ) --[[ @ 0]]
	f2_arg0.targetsmall0:setZoom( 0 ) --[[ @ 0]]
	f2_arg0.targetSmall1:setAlpha( 0.98 ) --[[ @ 0]]
	f2_arg0.targetSmall2:setAlpha( 0.98 ) --[[ @ 0]]
	f2_arg0.Scanlines:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_scanlines_add" ) ) --[[ @ 0]]
	f2_arg0.Scanlines:setShaderVector( 0, 1.04, 0, 0, 0 ) --[[ @ 0]]
	f2_arg0.Scanlines:setShaderVector( 1, 4.24, 0, 0, 0 ) --[[ @ 0]]
	f2_arg0.Scanlines:setShaderVector( 2, 0.01, 0, 0, 0 ) --[[ @ 0]]
	f2_arg0.RegBack:setAlpha( 0.6 ) --[[ @ 0]]
	f2_arg0.AddBack:setAlpha( 0.2 ) --[[ @ 0]]
	f2_arg0.AddBack:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	f2_arg0.targetMed:setLeftRight( 0, 0, 316, 411 ) --[[ @ 0]]
	f2_arg0.targetMed:setTopBottom( 0, 0, 341.5, 436.5 ) --[[ @ 0]]
	f2_arg0.targetMed:setAlpha( 0.62 ) --[[ @ 0]]
	f2_arg0.targetMed:setZRot( 0 ) --[[ @ 0]]
	f2_arg0.targetMed:setZoom( 0 ) --[[ @ 0]]
	f2_arg0.LineUR:setLeftRight( 0, 0, 548, 740 ) --[[ @ 0]]
	f2_arg0.LineUR:setTopBottom( 0, 0, 246, 264 ) --[[ @ 0]]
	f2_arg0.LineUR:setAlpha( 0.89 ) --[[ @ 0]]
	f2_arg0.LineUL:setLeftRight( 0, 0, 300, 492 ) --[[ @ 0]]
	f2_arg0.LineUL:setTopBottom( 0, 0, 246, 264 ) --[[ @ 0]]
	f2_arg0.LineUL:setAlpha( 0.89 ) --[[ @ 0]]
	f2_arg0.LineLR:setLeftRight( 0, 0, 548, 740 ) --[[ @ 0]]
	f2_arg0.LineLR:setTopBottom( 0, 0, 334, 352 ) --[[ @ 0]]
	f2_arg0.LineLR:setAlpha( 0.89 ) --[[ @ 0]]
	f2_arg0.LineLL:setLeftRight( 0, 0, 300, 492 ) --[[ @ 0]]
	f2_arg0.LineLL:setTopBottom( 0, 0, 334, 352 ) --[[ @ 0]]
	f2_arg0.LineLL:setAlpha( 0.89 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.GenericProjectedTabletInternal.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 13 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					local f5_local0 = function ( f6_arg0 )
						local f6_local0 = function ( f7_arg0 )
							local f7_local0 = function ( f8_arg0 )
								local f8_local0 = function ( f9_arg0 )
									local f9_local0 = function ( f10_arg0 )
										local f10_local0 = function ( f11_arg0 )
											local f11_local0 = function ( f12_arg0 )
												f12_arg0:beginAnimation( 90 ) --[[ @ 0]]
												f12_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
											end
											 --[[ @ 0]]
											f11_arg0:beginAnimation( 19 ) --[[ @ 0]]
											f11_arg0:setAlpha( 0.6 ) --[[ @ 0]]
											f11_arg0:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
										end
										 --[[ @ 0]]
										f10_arg0:beginAnimation( 20 ) --[[ @ 0]]
										f10_arg0:setAlpha( 0.84 ) --[[ @ 0]]
										f10_arg0:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f9_arg0:beginAnimation( 50 ) --[[ @ 0]]
									f9_arg0:setAlpha( 0.6 ) --[[ @ 0]]
									f9_arg0:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f8_arg0:beginAnimation( 119 ) --[[ @ 0]]
								f8_arg0:setAlpha( 0.5 ) --[[ @ 0]]
								f8_arg0:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f7_arg0:beginAnimation( 100 ) --[[ @ 0]]
							f7_arg0:setAlpha( 0.7 ) --[[ @ 0]]
							f7_arg0:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f6_arg0:beginAnimation( 150 ) --[[ @ 0]]
						f6_arg0:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f5_arg0:beginAnimation( 20 ) --[[ @ 0]]
					f5_arg0:setAlpha( 0.6 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.RegBack:beginAnimation( 30 ) --[[ @ 0]]
				f3_arg0.RegBack:setAlpha( 0.8 ) --[[ @ 0]]
				f3_arg0.RegBack:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.RegBack:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.RegBack:completeAnimation() --[[ @ 0]]
			f3_arg0.RegBack:setAlpha( 0.6 ) --[[ @ 0]]
			f3_local0( f3_arg0.RegBack ) --[[ @ 0]]
			local f3_local1 = function ( f13_arg0 )
				local f13_local0 = function ( f14_arg0 )
					local f14_local0 = function ( f15_arg0 )
						local f15_local0 = function ( f16_arg0 )
							local f16_local0 = function ( f17_arg0 )
								local f17_local0 = function ( f18_arg0 )
									local f18_local0 = function ( f19_arg0 )
										local f19_local0 = function ( f20_arg0 )
											local f20_local0 = function ( f21_arg0 )
												f21_arg0:beginAnimation( 150 ) --[[ @ 0]]
												f21_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
											end
											 --[[ @ 0]]
											f20_arg0:beginAnimation( 9 ) --[[ @ 0]]
											f20_arg0:setAlpha( 0.2 ) --[[ @ 0]]
											f20_arg0:registerEventHandler( "transition_complete_keyframe", f20_local0 ) --[[ @ 0]]
										end
										 --[[ @ 0]]
										f19_arg0:beginAnimation( 9 ) --[[ @ 0]]
										f19_arg0:setAlpha( 0.41 ) --[[ @ 0]]
										f19_arg0:registerEventHandler( "transition_complete_keyframe", f19_local0 ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f18_arg0:beginAnimation( 140 ) --[[ @ 0]]
									f18_arg0:registerEventHandler( "transition_complete_keyframe", f18_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f17_arg0:beginAnimation( 49 ) --[[ @ 0]]
								f17_arg0:setAlpha( 0.1 ) --[[ @ 0]]
								f17_arg0:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f16_arg0:beginAnimation( 49 ) --[[ @ 0]]
							f16_arg0:setAlpha( 0.2 ) --[[ @ 0]]
							f16_arg0:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f15_arg0:beginAnimation( 150 ) --[[ @ 0]]
						f15_arg0:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f14_arg0:beginAnimation( 20 ) --[[ @ 0]]
					f14_arg0:setAlpha( 0.1 ) --[[ @ 0]]
					f14_arg0:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.AddBack:beginAnimation( 20 ) --[[ @ 0]]
				f3_arg0.AddBack:setAlpha( 0.63 ) --[[ @ 0]]
				f3_arg0.AddBack:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.AddBack:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.AddBack:completeAnimation() --[[ @ 0]]
			f3_arg0.AddBack:setAlpha( 0.2 ) --[[ @ 0]]
			f3_arg0.AddBack:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
			f3_local1( f3_arg0.AddBack ) --[[ @ 0]]
			local f3_local2 = function ( f22_arg0 )
				local f22_local0 = function ( f23_arg0 )
					local f23_local0 = function ( f24_arg0 )
						local f24_local0 = function ( f25_arg0 )
							local f25_local0 = function ( f26_arg0 )
								local f26_local0 = function ( f27_arg0 )
									f27_arg0:beginAnimation( 190 ) --[[ @ 0]]
									f27_arg0:setShaderVector( 2, 0.01, 0, 0, 0 ) --[[ @ 0]]
									f27_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f26_arg0:beginAnimation( 109 ) --[[ @ 0]]
								f26_arg0:setShaderVector( 1, 4.24, 0, 0, 0 ) --[[ @ 0]]
								f26_arg0:setShaderVector( 2, 0.04, 0, 0, 0 ) --[[ @ 0]]
								f26_arg0:registerEventHandler( "transition_complete_keyframe", f26_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f25_arg0:beginAnimation( 100 ) --[[ @ 0]]
							f25_arg0:setShaderVector( 2, 0.01, 0, 0, 0 ) --[[ @ 0]]
							f25_arg0:registerEventHandler( "transition_complete_keyframe", f25_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f24_arg0:beginAnimation( 60 ) --[[ @ 0]]
						f24_arg0:setShaderVector( 2, 0.06, 0, 0, 0 ) --[[ @ 0]]
						f24_arg0:registerEventHandler( "transition_complete_keyframe", f24_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f23_arg0:beginAnimation( 40 ) --[[ @ 0]]
					f23_arg0:setShaderVector( 2, 0.01, 0, 0, 0 ) --[[ @ 0]]
					f23_arg0:registerEventHandler( "transition_complete_keyframe", f23_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.Scanlines:beginAnimation( 100 ) --[[ @ 0]]
				f3_arg0.Scanlines:setShaderVector( 2, 0.18, 0, 0, 0 ) --[[ @ 0]]
				f3_arg0.Scanlines:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.Scanlines:registerEventHandler( "transition_complete_keyframe", f22_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.Scanlines:completeAnimation() --[[ @ 0]]
			f3_arg0.Scanlines:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_scanlines_add" ) ) --[[ @ 0]]
			f3_arg0.Scanlines:setShaderVector( 0, 1.04, 0, 0, 0 ) --[[ @ 0]]
			f3_arg0.Scanlines:setShaderVector( 1, 4.43, 0, 0, 0 ) --[[ @ 0]]
			f3_arg0.Scanlines:setShaderVector( 2, 0.01, 0, 0, 0 ) --[[ @ 0]]
			f3_local2( f3_arg0.Scanlines ) --[[ @ 0]]
			local f3_local3 = function ( f28_arg0 )
				local f28_local0 = function ( f29_arg0 )
					local f29_local0 = function ( f30_arg0 )
						local f30_local0 = function ( f31_arg0 )
							local f31_local0 = function ( f32_arg0 )
								f32_arg0:beginAnimation( 140 ) --[[ @ 0]]
								f32_arg0:setAlpha( 1 ) --[[ @ 0]]
								f32_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f31_arg0:beginAnimation( 140 ) --[[ @ 0]]
							f31_arg0:registerEventHandler( "transition_complete_keyframe", f31_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f30_arg0:beginAnimation( 99 ) --[[ @ 0]]
						f30_arg0:setAlpha( 0.2 ) --[[ @ 0]]
						f30_arg0:registerEventHandler( "transition_complete_keyframe", f30_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f29_arg0:beginAnimation( 110 ) --[[ @ 0]]
					f29_arg0:setAlpha( 1 ) --[[ @ 0]]
					f29_arg0:registerEventHandler( "transition_complete_keyframe", f29_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.Image10:beginAnimation( 110 ) --[[ @ 0]]
				f3_arg0.Image10:setAlpha( 0.2 ) --[[ @ 0]]
				f3_arg0.Image10:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.Image10:registerEventHandler( "transition_complete_keyframe", f28_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.Image10:completeAnimation() --[[ @ 0]]
			f3_arg0.Image10:setAlpha( 1 ) --[[ @ 0]]
			f3_local3( f3_arg0.Image10 ) --[[ @ 0]]
			local f3_local4 = function ( f33_arg0 )
				local f33_local0 = function ( f34_arg0 )
					local f34_local0 = function ( f35_arg0 )
						local f35_local0 = function ( f36_arg0 )
							local f36_local0 = function ( f37_arg0 )
								f37_arg0:beginAnimation( 70 ) --[[ @ 0]]
								f37_arg0:setAlpha( 1 ) --[[ @ 0]]
								f37_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f36_arg0:beginAnimation( 69 ) --[[ @ 0]]
							f36_arg0:setAlpha( 0.2 ) --[[ @ 0]]
							f36_arg0:registerEventHandler( "transition_complete_keyframe", f36_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f35_arg0:beginAnimation( 80 ) --[[ @ 0]]
						f35_arg0:setAlpha( 1 ) --[[ @ 0]]
						f35_arg0:registerEventHandler( "transition_complete_keyframe", f35_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f34_arg0:beginAnimation( 79 ) --[[ @ 0]]
					f34_arg0:setAlpha( 0.2 ) --[[ @ 0]]
					f34_arg0:registerEventHandler( "transition_complete_keyframe", f34_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f33_arg0:beginAnimation( 180 ) --[[ @ 0]]
				f33_arg0:setLeftRight( 0, 0, 300, 492 ) --[[ @ 0]]
				f33_arg0:setTopBottom( 0, 0, 246, 264 ) --[[ @ 0]]
				f33_arg0:registerEventHandler( "transition_complete_keyframe", f33_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.LineUL:beginAnimation( 120 ) --[[ @ 0]]
			f3_arg0.LineUL:setLeftRight( 0, 0, 276, 468 ) --[[ @ 0]]
			f3_arg0.LineUL:setTopBottom( 0, 0, 207, 225 ) --[[ @ 0]]
			f3_arg0.LineUL:setAlpha( 1 ) --[[ @ 0]]
			f3_arg0.LineUL:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
			f3_arg0.LineUL:registerEventHandler( "transition_complete_keyframe", f3_local4 ) --[[ @ 0]]
			local f3_local5 = function ( f38_arg0 )
				local f38_local0 = function ( f39_arg0 )
					local f39_local0 = function ( f40_arg0 )
						local f40_local0 = function ( f41_arg0 )
							local f41_local0 = function ( f42_arg0 )
								f42_arg0:beginAnimation( 70 ) --[[ @ 0]]
								f42_arg0:setAlpha( 1 ) --[[ @ 0]]
								f42_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f41_arg0:beginAnimation( 69 ) --[[ @ 0]]
							f41_arg0:setAlpha( 0.2 ) --[[ @ 0]]
							f41_arg0:registerEventHandler( "transition_complete_keyframe", f41_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f40_arg0:beginAnimation( 80 ) --[[ @ 0]]
						f40_arg0:setAlpha( 1 ) --[[ @ 0]]
						f40_arg0:registerEventHandler( "transition_complete_keyframe", f40_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f39_arg0:beginAnimation( 79 ) --[[ @ 0]]
					f39_arg0:setAlpha( 0.2 ) --[[ @ 0]]
					f39_arg0:registerEventHandler( "transition_complete_keyframe", f39_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f38_arg0:beginAnimation( 180 ) --[[ @ 0]]
				f38_arg0:setLeftRight( 0, 0, 548, 740 ) --[[ @ 0]]
				f38_arg0:setTopBottom( 0, 0, 246, 264 ) --[[ @ 0]]
				f38_arg0:registerEventHandler( "transition_complete_keyframe", f38_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.LineUR:beginAnimation( 120 ) --[[ @ 0]]
			f3_arg0.LineUR:setLeftRight( 0, 0, 587, 779 ) --[[ @ 0]]
			f3_arg0.LineUR:setTopBottom( 0, 0, 207, 225 ) --[[ @ 0]]
			f3_arg0.LineUR:setAlpha( 1 ) --[[ @ 0]]
			f3_arg0.LineUR:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
			f3_arg0.LineUR:registerEventHandler( "transition_complete_keyframe", f3_local5 ) --[[ @ 0]]
			local f3_local6 = function ( f43_arg0 )
				local f43_local0 = function ( f44_arg0 )
					local f44_local0 = function ( f45_arg0 )
						local f45_local0 = function ( f46_arg0 )
							local f46_local0 = function ( f47_arg0 )
								f47_arg0:beginAnimation( 70 ) --[[ @ 0]]
								f47_arg0:setAlpha( 1 ) --[[ @ 0]]
								f47_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f46_arg0:beginAnimation( 69 ) --[[ @ 0]]
							f46_arg0:setAlpha( 0.2 ) --[[ @ 0]]
							f46_arg0:registerEventHandler( "transition_complete_keyframe", f46_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f45_arg0:beginAnimation( 80 ) --[[ @ 0]]
						f45_arg0:setAlpha( 1 ) --[[ @ 0]]
						f45_arg0:registerEventHandler( "transition_complete_keyframe", f45_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f44_arg0:beginAnimation( 79 ) --[[ @ 0]]
					f44_arg0:setAlpha( 0.2 ) --[[ @ 0]]
					f44_arg0:registerEventHandler( "transition_complete_keyframe", f44_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f43_arg0:beginAnimation( 180 ) --[[ @ 0]]
				f43_arg0:setLeftRight( 0, 0, 300, 492 ) --[[ @ 0]]
				f43_arg0:setTopBottom( 0, 0, 334, 352 ) --[[ @ 0]]
				f43_arg0:registerEventHandler( "transition_complete_keyframe", f43_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.LineLL:beginAnimation( 120 ) --[[ @ 0]]
			f3_arg0.LineLL:setLeftRight( 0, 0, 276, 468 ) --[[ @ 0]]
			f3_arg0.LineLL:setTopBottom( 0, 0, 373, 391 ) --[[ @ 0]]
			f3_arg0.LineLL:setAlpha( 1 ) --[[ @ 0]]
			f3_arg0.LineLL:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
			f3_arg0.LineLL:registerEventHandler( "transition_complete_keyframe", f3_local6 ) --[[ @ 0]]
			local f3_local7 = function ( f48_arg0 )
				local f48_local0 = function ( f49_arg0 )
					local f49_local0 = function ( f50_arg0 )
						local f50_local0 = function ( f51_arg0 )
							local f51_local0 = function ( f52_arg0 )
								f52_arg0:beginAnimation( 70 ) --[[ @ 0]]
								f52_arg0:setAlpha( 1 ) --[[ @ 0]]
								f52_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f51_arg0:beginAnimation( 69 ) --[[ @ 0]]
							f51_arg0:setAlpha( 0.2 ) --[[ @ 0]]
							f51_arg0:registerEventHandler( "transition_complete_keyframe", f51_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f50_arg0:beginAnimation( 80 ) --[[ @ 0]]
						f50_arg0:setAlpha( 1 ) --[[ @ 0]]
						f50_arg0:registerEventHandler( "transition_complete_keyframe", f50_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f49_arg0:beginAnimation( 79 ) --[[ @ 0]]
					f49_arg0:setAlpha( 0.2 ) --[[ @ 0]]
					f49_arg0:registerEventHandler( "transition_complete_keyframe", f49_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f48_arg0:beginAnimation( 180 ) --[[ @ 0]]
				f48_arg0:setLeftRight( 0, 0, 548, 740 ) --[[ @ 0]]
				f48_arg0:setTopBottom( 0, 0, 334, 352 ) --[[ @ 0]]
				f48_arg0:registerEventHandler( "transition_complete_keyframe", f48_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.LineLR:beginAnimation( 120 ) --[[ @ 0]]
			f3_arg0.LineLR:setLeftRight( 0, 0, 584, 776 ) --[[ @ 0]]
			f3_arg0.LineLR:setTopBottom( 0, 0, 373, 391 ) --[[ @ 0]]
			f3_arg0.LineLR:setAlpha( 1 ) --[[ @ 0]]
			f3_arg0.LineLR:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
			f3_arg0.LineLR:registerEventHandler( "transition_complete_keyframe", f3_local7 ) --[[ @ 0]]
			local f3_local8 = function ( f53_arg0 )
				local f53_local0 = function ( f54_arg0 )
					f54_arg0:beginAnimation( 280 ) --[[ @ 0]]
					f54_arg0:setScale( 1, 1 ) --[[ @ 0]]
					f54_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.targetLarge:beginAnimation( 320 ) --[[ @ 0]]
				f3_arg0.targetLarge:setScale( 1.6, 1.6 ) --[[ @ 0]]
				f3_arg0.targetLarge:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.targetLarge:registerEventHandler( "transition_complete_keyframe", f53_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.targetLarge:completeAnimation() --[[ @ 0]]
			f3_arg0.targetLarge:setAlpha( 1 ) --[[ @ 0]]
			f3_arg0.targetLarge:setScale( 1, 1 ) --[[ @ 0]]
			f3_local8( f3_arg0.targetLarge ) --[[ @ 0]]
			local f3_local9 = function ( f55_arg0 )
				local f55_local0 = function ( f56_arg0 )
					f56_arg0:beginAnimation( 260 ) --[[ @ 0]]
					f56_arg0:setLeftRight( 0, 0, 313, 408 ) --[[ @ 0]]
					f56_arg0:setTopBottom( 0, 0, 343.5, 438.5 ) --[[ @ 0]]
					f56_arg0:setAlpha( 0.6 ) --[[ @ 0]]
					f56_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.targetMed:beginAnimation( 340 ) --[[ @ 0]]
				f3_arg0.targetMed:setLeftRight( 0, 0, 397, 492 ) --[[ @ 0]]
				f3_arg0.targetMed:setTopBottom( 0, 0, 293, 388 ) --[[ @ 0]]
				f3_arg0.targetMed:setAlpha( 1 ) --[[ @ 0]]
				f3_arg0.targetMed:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.targetMed:registerEventHandler( "transition_complete_keyframe", f55_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.targetMed:completeAnimation() --[[ @ 0]]
			f3_arg0.targetMed:setLeftRight( 0, 0, 313, 408 ) --[[ @ 0]]
			f3_arg0.targetMed:setTopBottom( 0, 0, 343.5, 438.5 ) --[[ @ 0]]
			f3_arg0.targetMed:setAlpha( 0.6 ) --[[ @ 0]]
			f3_arg0.targetMed:setZRot( 0 ) --[[ @ 0]]
			f3_arg0.targetMed:setZoom( 0 ) --[[ @ 0]]
			f3_local9( f3_arg0.targetMed ) --[[ @ 0]]
			local f3_local10 = function ( f57_arg0 )
				local f57_local0 = function ( f58_arg0 )
					local f58_local0 = function ( f59_arg0 )
						f59_arg0:beginAnimation( 100 ) --[[ @ 0]]
						f59_arg0:setLeftRight( 0, 0, 645, 740 ) --[[ @ 0]]
						f59_arg0:setTopBottom( 0, 0, 318, 413 ) --[[ @ 0]]
						f59_arg0:setAlpha( 0 ) --[[ @ 0]]
						f59_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f58_arg0:beginAnimation( 180 ) --[[ @ 0]]
					f58_arg0:setLeftRight( 0, 0, 622.68, 717.68 ) --[[ @ 0]]
					f58_arg0:setTopBottom( 0, 0, 310.14, 405.14 ) --[[ @ 0]]
					f58_arg0:setAlpha( 0.36 ) --[[ @ 0]]
					f58_arg0:registerEventHandler( "transition_complete_keyframe", f58_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.targetsmall0:beginAnimation( 320 ) --[[ @ 0]]
				f3_arg0.targetsmall0:setLeftRight( 0, 0, 582.5, 677.5 ) --[[ @ 0]]
				f3_arg0.targetsmall0:setTopBottom( 0, 0, 296, 391 ) --[[ @ 0]]
				f3_arg0.targetsmall0:setAlpha( 1 ) --[[ @ 0]]
				f3_arg0.targetsmall0:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.targetsmall0:registerEventHandler( "transition_complete_keyframe", f57_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.targetsmall0:completeAnimation() --[[ @ 0]]
			f3_arg0.targetsmall0:setLeftRight( 0, 0, 695, 790 ) --[[ @ 0]]
			f3_arg0.targetsmall0:setTopBottom( 0, 0, 357, 452 ) --[[ @ 0]]
			f3_arg0.targetsmall0:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.targetsmall0:setZRot( 0 ) --[[ @ 0]]
			f3_arg0.targetsmall0:setZoom( 0 ) --[[ @ 0]]
			f3_local10( f3_arg0.targetsmall0 ) --[[ @ 0]]
			local f3_local11 = function ( f60_arg0 )
				local f60_local0 = function ( f61_arg0 )
					f61_arg0:beginAnimation( 280 ) --[[ @ 0]]
					f61_arg0:setAlpha( 1 ) --[[ @ 0]]
					f61_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.targetSmall1:beginAnimation( 320 ) --[[ @ 0]]
				f3_arg0.targetSmall1:setAlpha( 0.44 ) --[[ @ 0]]
				f3_arg0.targetSmall1:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.targetSmall1:registerEventHandler( "transition_complete_keyframe", f60_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.targetSmall1:completeAnimation() --[[ @ 0]]
			f3_arg0.targetSmall1:setAlpha( 1 ) --[[ @ 0]]
			f3_local11( f3_arg0.targetSmall1 ) --[[ @ 0]]
			local f3_local12 = function ( f62_arg0 )
				local f62_local0 = function ( f63_arg0 )
					f63_arg0:beginAnimation( 400 ) --[[ @ 0]]
					f63_arg0:setAlpha( 1 ) --[[ @ 0]]
					f63_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.targetSmall2:beginAnimation( 200 ) --[[ @ 0]]
				f3_arg0.targetSmall2:setAlpha( 0.39 ) --[[ @ 0]]
				f3_arg0.targetSmall2:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.targetSmall2:registerEventHandler( "transition_complete_keyframe", f62_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.targetSmall2:completeAnimation() --[[ @ 0]]
			f3_arg0.targetSmall2:setAlpha( 1 ) --[[ @ 0]]
			f3_local12( f3_arg0.targetSmall2 ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
