-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
CoD.VHUDHawkFramesquare = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.VHUDHawkFramesquare.__defaultWidth = 1920 --[[ @ 0]]
CoD.VHUDHawkFramesquare.__defaultHeight = 1080 --[[ @ 0]]
CoD.VHUDHawkFramesquare.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.VHUDHawkFramesquare ) --[[ @ 0]]
	self.id = "VHUDHawkFramesquare" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local FuiLeft = LUI.UIImage.new( 0.5, 0.5, -484, -404, 0.5, 0.5, 240, 276 ) --[[ @ 0]]
	FuiLeft:setAlpha( 0.5 ) --[[ @ 0]]
	FuiLeft:setImage( RegisterImage( @"uie_ui_hud_vehicle_dart_layout_detail" ) ) --[[ @ 0]]
	FuiLeft:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( FuiLeft ) --[[ @ 0]]
	self.FuiLeft = FuiLeft --[[ @ 0]]
	
	local FuiRight = LUI.UIImage.new( 0.5, 0.5, 484, 404, 0.5, 0.5, 240, 276 ) --[[ @ 0]]
	FuiRight:setAlpha( 0.5 ) --[[ @ 0]]
	FuiRight:setImage( RegisterImage( @"uie_ui_hud_vehicle_dart_layout_detail" ) ) --[[ @ 0]]
	FuiRight:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( FuiRight ) --[[ @ 0]]
	self.FuiRight = FuiRight --[[ @ 0]]
	
	local HalfCircleLine = LUI.UIImage.new( 0.5, 0.5, -135, -15, 0.5, 0.5, -130, 130 ) --[[ @ 0]]
	HalfCircleLine:setAlpha( 0.25 ) --[[ @ 0]]
	HalfCircleLine:setImage( RegisterImage( @"uie_ui_hud_hawk_outer_half_circle" ) ) --[[ @ 0]]
	self:addElement( HalfCircleLine ) --[[ @ 0]]
	self.HalfCircleLine = HalfCircleLine --[[ @ 0]]
	
	local HalfCircleLine2 = LUI.UIImage.new( 0.5, 0.5, 15, 135, 0.5, 0.5, -130, 130 ) --[[ @ 0]]
	HalfCircleLine2:setAlpha( 0.25 ) --[[ @ 0]]
	HalfCircleLine2:setZRot( 180 ) --[[ @ 0]]
	HalfCircleLine2:setImage( RegisterImage( @"uie_ui_hud_hawk_outer_half_circle" ) ) --[[ @ 0]]
	self:addElement( HalfCircleLine2 ) --[[ @ 0]]
	self.HalfCircleLine2 = HalfCircleLine2 --[[ @ 0]]
	
	local HalfCircleLine3 = LUI.UIImage.new( 0.5, 0.5, -40, 40, 0.5, 0.5, -136.5, 36.5 ) --[[ @ 0]]
	HalfCircleLine3:setAlpha( 0.05 ) --[[ @ 0]]
	HalfCircleLine3:setZRot( 270 ) --[[ @ 0]]
	HalfCircleLine3:setImage( RegisterImage( @"uie_ui_hud_hawk_outer_half_circle" ) ) --[[ @ 0]]
	self:addElement( HalfCircleLine3 ) --[[ @ 0]]
	self.HalfCircleLine3 = HalfCircleLine3 --[[ @ 0]]
	
	local HalfCircleLine4 = LUI.UIImage.new( 0.5, 0.5, -40, 40, 0.5, 0.5, -36.5, 136.5 ) --[[ @ 0]]
	HalfCircleLine4:setAlpha( 0.1 ) --[[ @ 0]]
	HalfCircleLine4:setZRot( 90 ) --[[ @ 0]]
	HalfCircleLine4:setImage( RegisterImage( @"uie_ui_hud_hawk_outer_half_circle" ) ) --[[ @ 0]]
	self:addElement( HalfCircleLine4 ) --[[ @ 0]]
	self.HalfCircleLine4 = HalfCircleLine4 --[[ @ 0]]
	
	local HalfCircleFillLarge = LUI.UIImage.new( 0.5, 0.5, -130, 130, 0.5, 0.5, -130, 130 ) --[[ @ 0]]
	HalfCircleFillLarge:setAlpha( 0.15 ) --[[ @ 0]]
	HalfCircleFillLarge:setImage( RegisterImage( @"uie_ui_hud_hawk_full_half_circle_large" ) ) --[[ @ 0]]
	self:addElement( HalfCircleFillLarge ) --[[ @ 0]]
	self.HalfCircleFillLarge = HalfCircleFillLarge --[[ @ 0]]
	
	local HalfCircleFillSmall = LUI.UIImage.new( 0.5, 0.5, -130, 130, 0.5, 0.5, -130, 130 ) --[[ @ 0]]
	HalfCircleFillSmall:setAlpha( 0.15 ) --[[ @ 0]]
	HalfCircleFillSmall:setImage( RegisterImage( @"uie_ui_hud_hawk_full_half_circle" ) ) --[[ @ 0]]
	self:addElement( HalfCircleFillSmall ) --[[ @ 0]]
	self.HalfCircleFillSmall = HalfCircleFillSmall --[[ @ 0]]
	
	local Crosshair = LUI.UIImage.new( 0.5, 0.5, -131.5, 131.5, 0.5, 0.5, -131.5, 131.5 ) --[[ @ 0]]
	Crosshair:setImage( RegisterImage( @"uie_ui_hud_hawk_crosshairs" ) ) --[[ @ 0]]
	self:addElement( Crosshair ) --[[ @ 0]]
	self.Crosshair = Crosshair --[[ @ 0]]
	
	local Line = LUI.UIImage.new( 0.5, 0.5, 118.5, 178.5, 0.5, 0.5, -9, 7 ) --[[ @ 0]]
	Line:setAlpha( 0.25 ) --[[ @ 0]]
	Line:setImage( RegisterImage( @"uie_ui_hud_hawk_horizon_line" ) ) --[[ @ 0]]
	Line:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Line ) --[[ @ 0]]
	self.Line = Line --[[ @ 0]]
	
	local Line2 = LUI.UIImage.new( 0.5, 0.5, -178.5, -118.5, 0.5, 0.5, -9, 7 ) --[[ @ 0]]
	Line2:setAlpha( 0.25 ) --[[ @ 0]]
	Line2:setImage( RegisterImage( @"uie_ui_hud_hawk_horizon_line" ) ) --[[ @ 0]]
	Line2:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Line2 ) --[[ @ 0]]
	self.Line2 = Line2 --[[ @ 0]]
	
	local Line3 = LUI.UIImage.new( 0.5, 0.5, -15, 15, 0.5, 0.5, -142, -126 ) --[[ @ 0]]
	Line3:setAlpha( 0.1 ) --[[ @ 0]]
	Line3:setZRot( 90 ) --[[ @ 0]]
	Line3:setImage( RegisterImage( @"uie_ui_hud_hawk_horizon_line" ) ) --[[ @ 0]]
	Line3:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Line3 ) --[[ @ 0]]
	self.Line3 = Line3 --[[ @ 0]]
	
	local Line4 = LUI.UIImage.new( 0.5, 0.5, -15, 15, 0.5, 0.5, 126, 142 ) --[[ @ 0]]
	Line4:setAlpha( 0.1 ) --[[ @ 0]]
	Line4:setZRot( 90 ) --[[ @ 0]]
	Line4:setImage( RegisterImage( @"uie_ui_hud_hawk_horizon_line" ) ) --[[ @ 0]]
	Line4:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Line4 ) --[[ @ 0]]
	self.Line4 = Line4 --[[ @ 0]]
	
	local Line5 = LUI.UIImage.new( 0.5, 0.5, 197.5, 217.5, 0.5, 0.5, -16, 14 ) --[[ @ 0]]
	Line5:setAlpha( 0.1 ) --[[ @ 0]]
	Line5:setImage( RegisterImage( @"uie_ui_hud_hawk_horizon_line" ) ) --[[ @ 0]]
	Line5:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Line5 ) --[[ @ 0]]
	self.Line5 = Line5 --[[ @ 0]]
	
	local Line6 = LUI.UIImage.new( 0.5, 0.5, -217.5, -197.5, 0.5, 0.5, -16, 14 ) --[[ @ 0]]
	Line6:setAlpha( 0.1 ) --[[ @ 0]]
	Line6:setImage( RegisterImage( @"uie_ui_hud_hawk_horizon_line" ) ) --[[ @ 0]]
	Line6:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Line6 ) --[[ @ 0]]
	self.Line6 = Line6 --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.VHUDHawkFramesquare.__resetProperties = function ( f2_arg0 )
	f2_arg0.FuiLeft:completeAnimation() --[[ @ 0]]
	f2_arg0.FuiRight:completeAnimation() --[[ @ 0]]
	f2_arg0.HalfCircleLine:completeAnimation() --[[ @ 0]]
	f2_arg0.HalfCircleLine2:completeAnimation() --[[ @ 0]]
	f2_arg0.HalfCircleLine3:completeAnimation() --[[ @ 0]]
	f2_arg0.HalfCircleLine4:completeAnimation() --[[ @ 0]]
	f2_arg0.Crosshair:completeAnimation() --[[ @ 0]]
	f2_arg0.Line:completeAnimation() --[[ @ 0]]
	f2_arg0.Line2:completeAnimation() --[[ @ 0]]
	f2_arg0.Line3:completeAnimation() --[[ @ 0]]
	f2_arg0.Line4:completeAnimation() --[[ @ 0]]
	f2_arg0.Line5:completeAnimation() --[[ @ 0]]
	f2_arg0.Line6:completeAnimation() --[[ @ 0]]
	f2_arg0.HalfCircleFillLarge:completeAnimation() --[[ @ 0]]
	f2_arg0.HalfCircleFillSmall:completeAnimation() --[[ @ 0]]
	f2_arg0.FuiLeft:setAlpha( 0.5 ) --[[ @ 0]]
	f2_arg0.FuiRight:setAlpha( 0.5 ) --[[ @ 0]]
	f2_arg0.HalfCircleLine:setLeftRight( 0.5, 0.5, -135, -15 ) --[[ @ 0]]
	f2_arg0.HalfCircleLine:setTopBottom( 0.5, 0.5, -130, 130 ) --[[ @ 0]]
	f2_arg0.HalfCircleLine:setAlpha( 0.25 ) --[[ @ 0]]
	f2_arg0.HalfCircleLine2:setLeftRight( 0.5, 0.5, 15, 135 ) --[[ @ 0]]
	f2_arg0.HalfCircleLine2:setTopBottom( 0.5, 0.5, -130, 130 ) --[[ @ 0]]
	f2_arg0.HalfCircleLine2:setAlpha( 0.25 ) --[[ @ 0]]
	f2_arg0.HalfCircleLine3:setAlpha( 0.05 ) --[[ @ 0]]
	f2_arg0.HalfCircleLine4:setAlpha( 0.1 ) --[[ @ 0]]
	f2_arg0.Crosshair:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.Line:setAlpha( 0.25 ) --[[ @ 0]]
	f2_arg0.Line2:setAlpha( 0.25 ) --[[ @ 0]]
	f2_arg0.Line3:setAlpha( 0.1 ) --[[ @ 0]]
	f2_arg0.Line4:setAlpha( 0.1 ) --[[ @ 0]]
	f2_arg0.Line5:setAlpha( 0.1 ) --[[ @ 0]]
	f2_arg0.Line6:setAlpha( 0.1 ) --[[ @ 0]]
	f2_arg0.HalfCircleFillLarge:setAlpha( 0.15 ) --[[ @ 0]]
	f2_arg0.HalfCircleFillLarge:setZRot( 0 ) --[[ @ 0]]
	f2_arg0.HalfCircleFillSmall:setAlpha( 0.15 ) --[[ @ 0]]
	f2_arg0.HalfCircleFillSmall:setZRot( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.VHUDHawkFramesquare.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 15 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					local f5_local0 = function ( f6_arg0 )
						f6_arg0:beginAnimation( 120 ) --[[ @ 0]]
						f6_arg0:setAlpha( 0.5 ) --[[ @ 0]]
						f6_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f5_arg0:beginAnimation( 100 ) --[[ @ 0]]
					f5_arg0:setAlpha( 1 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.FuiLeft:beginAnimation( 590 ) --[[ @ 0]]
				f3_arg0.FuiLeft:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.FuiLeft:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.FuiLeft:completeAnimation() --[[ @ 0]]
			f3_arg0.FuiLeft:setAlpha( 0.5 ) --[[ @ 0]]
			f3_local0( f3_arg0.FuiLeft ) --[[ @ 0]]
			local f3_local1 = function ( f7_arg0 )
				local f7_local0 = function ( f8_arg0 )
					local f8_local0 = function ( f9_arg0 )
						f9_arg0:beginAnimation( 120 ) --[[ @ 0]]
						f9_arg0:setAlpha( 0.5 ) --[[ @ 0]]
						f9_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f8_arg0:beginAnimation( 100 ) --[[ @ 0]]
					f8_arg0:setAlpha( 1 ) --[[ @ 0]]
					f8_arg0:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.FuiRight:beginAnimation( 590 ) --[[ @ 0]]
				f3_arg0.FuiRight:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.FuiRight:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.FuiRight:completeAnimation() --[[ @ 0]]
			f3_arg0.FuiRight:setAlpha( 0.5 ) --[[ @ 0]]
			f3_local1( f3_arg0.FuiRight ) --[[ @ 0]]
			local f3_local2 = function ( f10_arg0 )
				local f10_local0 = function ( f11_arg0 )
					local f11_local0 = function ( f12_arg0 )
						f12_arg0:beginAnimation( 49 ) --[[ @ 0]]
						f12_arg0:setLeftRight( 0.5, 0.5, -135, -15 ) --[[ @ 0]]
						f12_arg0:setAlpha( 0.25 ) --[[ @ 0]]
						f12_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f11_arg0:beginAnimation( 49 ) --[[ @ 0]]
					f11_arg0:setLeftRight( 0.5, 0.5, -125, -5 ) --[[ @ 0]]
					f11_arg0:setAlpha( 0.2 ) --[[ @ 0]]
					f11_arg0:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.HalfCircleLine:beginAnimation( 150 ) --[[ @ 0]]
				f3_arg0.HalfCircleLine:setLeftRight( 0.5, 0.5, -135.5, -15.5 ) --[[ @ 0]]
				f3_arg0.HalfCircleLine:setTopBottom( 0.5, 0.5, -130, 130 ) --[[ @ 0]]
				f3_arg0.HalfCircleLine:setAlpha( 0.15 ) --[[ @ 0]]
				f3_arg0.HalfCircleLine:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.HalfCircleLine:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.HalfCircleLine:completeAnimation() --[[ @ 0]]
			f3_arg0.HalfCircleLine:setLeftRight( 0.5, 0.5, -370, -130 ) --[[ @ 0]]
			f3_arg0.HalfCircleLine:setTopBottom( 0.5, 0.5, -260, 260 ) --[[ @ 0]]
			f3_arg0.HalfCircleLine:setAlpha( 0 ) --[[ @ 0]]
			f3_local2( f3_arg0.HalfCircleLine ) --[[ @ 0]]
			local f3_local3 = function ( f13_arg0 )
				local f13_local0 = function ( f14_arg0 )
					local f14_local0 = function ( f15_arg0 )
						f15_arg0:beginAnimation( 49 ) --[[ @ 0]]
						f15_arg0:setLeftRight( 0.5, 0.5, 15.5, 135.5 ) --[[ @ 0]]
						f15_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f14_arg0:beginAnimation( 49 ) --[[ @ 0]]
					f14_arg0:setLeftRight( 0.5, 0.5, 5, 125 ) --[[ @ 0]]
					f14_arg0:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.HalfCircleLine2:beginAnimation( 150 ) --[[ @ 0]]
				f3_arg0.HalfCircleLine2:setLeftRight( 0.5, 0.5, 15.5, 135.5 ) --[[ @ 0]]
				f3_arg0.HalfCircleLine2:setTopBottom( 0.5, 0.5, -130, 130 ) --[[ @ 0]]
				f3_arg0.HalfCircleLine2:setAlpha( 0.25 ) --[[ @ 0]]
				f3_arg0.HalfCircleLine2:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.HalfCircleLine2:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.HalfCircleLine2:completeAnimation() --[[ @ 0]]
			f3_arg0.HalfCircleLine2:setLeftRight( 0.5, 0.5, 130, 370 ) --[[ @ 0]]
			f3_arg0.HalfCircleLine2:setTopBottom( 0.5, 0.5, -260, 260 ) --[[ @ 0]]
			f3_arg0.HalfCircleLine2:setAlpha( 0 ) --[[ @ 0]]
			f3_local3( f3_arg0.HalfCircleLine2 ) --[[ @ 0]]
			local f3_local4 = function ( f16_arg0 )
				local f16_local0 = function ( f17_arg0 )
					f17_arg0:beginAnimation( 39 ) --[[ @ 0]]
					f17_arg0:setAlpha( 0.05 ) --[[ @ 0]]
					f17_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.HalfCircleLine3:beginAnimation( 360 ) --[[ @ 0]]
				f3_arg0.HalfCircleLine3:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.HalfCircleLine3:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.HalfCircleLine3:completeAnimation() --[[ @ 0]]
			f3_arg0.HalfCircleLine3:setAlpha( 0.1 ) --[[ @ 0]]
			f3_local4( f3_arg0.HalfCircleLine3 ) --[[ @ 0]]
			local f3_local5 = function ( f18_arg0 )
				local f18_local0 = function ( f19_arg0 )
					f19_arg0:beginAnimation( 39 ) --[[ @ 0]]
					f19_arg0:setAlpha( 0.05 ) --[[ @ 0]]
					f19_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.HalfCircleLine4:beginAnimation( 360 ) --[[ @ 0]]
				f3_arg0.HalfCircleLine4:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.HalfCircleLine4:registerEventHandler( "transition_complete_keyframe", f18_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.HalfCircleLine4:completeAnimation() --[[ @ 0]]
			f3_arg0.HalfCircleLine4:setAlpha( 0.1 ) --[[ @ 0]]
			f3_local5( f3_arg0.HalfCircleLine4 ) --[[ @ 0]]
			local f3_local6 = function ( f20_arg0 )
				local f20_local0 = function ( f21_arg0 )
					local f21_local0 = function ( f22_arg0 )
						local f22_local0 = function ( f23_arg0 )
							f23_arg0:beginAnimation( 119 ) --[[ @ 0]]
							f23_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f22_arg0:beginAnimation( 39 ) --[[ @ 0]]
						f22_arg0:setAlpha( 0.15 ) --[[ @ 0]]
						f22_arg0:registerEventHandler( "transition_complete_keyframe", f22_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f21_arg0:beginAnimation( 110, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
					f21_arg0:setZRot( 0 ) --[[ @ 0]]
					f21_arg0:registerEventHandler( "transition_complete_keyframe", f21_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f20_arg0:beginAnimation( 10 ) --[[ @ 0]]
				f20_arg0:setAlpha( 0.45 ) --[[ @ 0]]
				f20_arg0:registerEventHandler( "transition_complete_keyframe", f20_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.HalfCircleFillLarge:beginAnimation( 240 ) --[[ @ 0]]
			f3_arg0.HalfCircleFillLarge:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.HalfCircleFillLarge:setZRot( 180 ) --[[ @ 0]]
			f3_arg0.HalfCircleFillLarge:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
			f3_arg0.HalfCircleFillLarge:registerEventHandler( "transition_complete_keyframe", f3_local6 ) --[[ @ 0]]
			local f3_local7 = function ( f24_arg0 )
				local f24_local0 = function ( f25_arg0 )
					local f25_local0 = function ( f26_arg0 )
						local f26_local0 = function ( f27_arg0 )
							local f27_local0 = function ( f28_arg0 )
								local f28_local0 = function ( f29_arg0 )
									local f29_local0 = function ( f30_arg0 )
										f30_arg0:beginAnimation( 130 ) --[[ @ 0]]
										f30_arg0:setAlpha( 0.15 ) --[[ @ 0]]
										f30_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f29_arg0:beginAnimation( 39 ) --[[ @ 0]]
									f29_arg0:setAlpha( 0.45 ) --[[ @ 0]]
									f29_arg0:registerEventHandler( "transition_complete_keyframe", f29_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f28_arg0:beginAnimation( 39 ) --[[ @ 0]]
								f28_arg0:setAlpha( 0 ) --[[ @ 0]]
								f28_arg0:registerEventHandler( "transition_complete_keyframe", f28_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f27_arg0:beginAnimation( 39 ) --[[ @ 0]]
							f27_arg0:setAlpha( 0.45 ) --[[ @ 0]]
							f27_arg0:registerEventHandler( "transition_complete_keyframe", f27_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f26_arg0:beginAnimation( 39 ) --[[ @ 0]]
						f26_arg0:setAlpha( 0 ) --[[ @ 0]]
						f26_arg0:registerEventHandler( "transition_complete_keyframe", f26_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f25_arg0:beginAnimation( 110, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
					f25_arg0:setZRot( 0 ) --[[ @ 0]]
					f25_arg0:registerEventHandler( "transition_complete_keyframe", f25_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f24_arg0:beginAnimation( 10 ) --[[ @ 0]]
				f24_arg0:setAlpha( 0.45 ) --[[ @ 0]]
				f24_arg0:registerEventHandler( "transition_complete_keyframe", f24_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.HalfCircleFillSmall:beginAnimation( 240 ) --[[ @ 0]]
			f3_arg0.HalfCircleFillSmall:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.HalfCircleFillSmall:setZRot( -180 ) --[[ @ 0]]
			f3_arg0.HalfCircleFillSmall:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
			f3_arg0.HalfCircleFillSmall:registerEventHandler( "transition_complete_keyframe", f3_local7 ) --[[ @ 0]]
			f3_arg0.Crosshair:completeAnimation() --[[ @ 0]]
			f3_arg0.Crosshair:setAlpha( 1 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.Crosshair ) --[[ @ 0]]
			f3_arg0.Line:completeAnimation() --[[ @ 0]]
			f3_arg0.Line:setAlpha( 0.25 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.Line ) --[[ @ 0]]
			f3_arg0.Line2:completeAnimation() --[[ @ 0]]
			f3_arg0.Line2:setAlpha( 0.25 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.Line2 ) --[[ @ 0]]
			f3_arg0.Line3:completeAnimation() --[[ @ 0]]
			f3_arg0.Line3:setAlpha( 0.1 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.Line3 ) --[[ @ 0]]
			f3_arg0.Line4:completeAnimation() --[[ @ 0]]
			f3_arg0.Line4:setAlpha( 0.1 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.Line4 ) --[[ @ 0]]
			f3_arg0.Line5:completeAnimation() --[[ @ 0]]
			f3_arg0.Line5:setAlpha( 0.1 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.Line5 ) --[[ @ 0]]
			f3_arg0.Line6:completeAnimation() --[[ @ 0]]
			f3_arg0.Line6:setAlpha( 0.1 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.Line6 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
