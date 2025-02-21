-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.HUD_ZM_Rush_Point_Award = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.HUD_ZM_Rush_Point_Award.__defaultWidth = 400 --[[ @ 0]]
CoD.HUD_ZM_Rush_Point_Award.__defaultHeight = 250 --[[ @ 0]]
CoD.HUD_ZM_Rush_Point_Award.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.HUD_ZM_Rush_Point_Award ) --[[ @ 0]]
	self.id = "HUD_ZM_Rush_Point_Award" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local GLowMultiply = LUI.UIImage.new( 0, 1, -82, 62, 0.5, 0.5, -70, 37 ) --[[ @ 0]]
	GLowMultiply:setRGB( ColorSet.GroupName.r, ColorSet.GroupName.g, ColorSet.GroupName.b ) --[[ @ 0]]
	GLowMultiply:setAlpha( 0 ) --[[ @ 0]]
	GLowMultiply:setImage( RegisterImage( @"uie_t7_core_hud_mapwidget_panelglow" ) ) --[[ @ 0]]
	self:addElement( GLowMultiply ) --[[ @ 0]]
	self.GLowMultiply = GLowMultiply --[[ @ 0]]
	
	local PointAmount = LUI.UIText.new( 0, 0, 0.5, 400.5, 0, 0, 86, 146 ) --[[ @ 0]]
	PointAmount:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/new" ) ) --[[ @ 0]]
	PointAmount:setTTF( "skorzhen" ) --[[ @ 0]]
	PointAmount:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_171E049B161CD00A" ) ) --[[ @ 0]]
	PointAmount:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	PointAmount:setAlignment( Enum[@"luialignment"][@"lui_alignment_middle"] ) --[[ @ 0]]
	self:addElement( PointAmount ) --[[ @ 0]]
	self.PointAmount = PointAmount --[[ @ 0]]
	
	local Title = LUI.UIText.new( 0, 0, 0.5, 400.5, 0, 0, 148, 184 ) --[[ @ 0]]
	Title:setRGB( ColorSet.GroupName.r, ColorSet.GroupName.g, ColorSet.GroupName.b ) --[[ @ 0]]
	Title:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"zombie/points_pickup" ) ) --[[ @ 0]]
	Title:setTTF( "skorzhen" ) --[[ @ 0]]
	Title:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_171E049B161CD00A" ) ) --[[ @ 0]]
	Title:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Title:setAlignment( Enum[@"luialignment"][@"lui_alignment_middle"] ) --[[ @ 0]]
	self:addElement( Title ) --[[ @ 0]]
	self.Title = Title --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.HUD_ZM_Rush_Point_Award.__resetProperties = function ( f2_arg0 )
	f2_arg0.Title:completeAnimation() --[[ @ 0]]
	f2_arg0.PointAmount:completeAnimation() --[[ @ 0]]
	f2_arg0.GLowMultiply:completeAnimation() --[[ @ 0]]
	f2_arg0.Title:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.PointAmount:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.GLowMultiply:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.HUD_ZM_Rush_Point_Award.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f3_arg0.PointAmount:completeAnimation() --[[ @ 0]]
			f3_arg0.PointAmount:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.PointAmount ) --[[ @ 0]]
			f3_arg0.Title:completeAnimation() --[[ @ 0]]
			f3_arg0.Title:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.Title ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f4_arg0.PointAmount:completeAnimation() --[[ @ 0]]
			f4_arg0.PointAmount:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.PointAmount ) --[[ @ 0]]
			f4_arg0.Title:completeAnimation() --[[ @ 0]]
			f4_arg0.Title:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.Title ) --[[ @ 0]]
		end
	},
	Active = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f5_arg0.PointAmount:completeAnimation() --[[ @ 0]]
			f5_arg0.PointAmount:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.PointAmount ) --[[ @ 0]]
			f5_arg0.Title:completeAnimation() --[[ @ 0]]
			f5_arg0.Title:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.Title ) --[[ @ 0]]
		end,
		AwardPoints = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f6_local0 = function ( f7_arg0 )
				local f7_local0 = function ( f8_arg0 )
					local f8_local0 = function ( f9_arg0 )
						f9_arg0:beginAnimation( 250 ) --[[ @ 0]]
						f9_arg0:setAlpha( 0 ) --[[ @ 0]]
						f9_arg0:registerEventHandler( "transition_complete_keyframe", f6_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f8_arg0:beginAnimation( 250 ) --[[ @ 0]]
					f8_arg0:setAlpha( 0.65 ) --[[ @ 0]]
					f8_arg0:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f6_arg0.GLowMultiply:beginAnimation( 250 ) --[[ @ 0]]
				f6_arg0.GLowMultiply:setAlpha( 0.4 ) --[[ @ 0]]
				f6_arg0.GLowMultiply:registerEventHandler( "interrupted_keyframe", f6_arg0.clipInterrupted ) --[[ @ 0]]
				f6_arg0.GLowMultiply:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f6_arg0.GLowMultiply:completeAnimation() --[[ @ 0]]
			f6_arg0.GLowMultiply:setAlpha( 0 ) --[[ @ 0]]
			f6_local0( f6_arg0.GLowMultiply ) --[[ @ 0]]
			local f6_local1 = function ( f10_arg0 )
				local f10_local0 = function ( f11_arg0 )
					local f11_local0 = function ( f12_arg0 )
						f12_arg0:beginAnimation( 250 ) --[[ @ 0]]
						f12_arg0:setAlpha( 0 ) --[[ @ 0]]
						f12_arg0:registerEventHandler( "transition_complete_keyframe", f6_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f11_arg0:beginAnimation( 250 ) --[[ @ 0]]
					f11_arg0:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f6_arg0.PointAmount:beginAnimation( 250 ) --[[ @ 0]]
				f6_arg0.PointAmount:setAlpha( 1 ) --[[ @ 0]]
				f6_arg0.PointAmount:registerEventHandler( "interrupted_keyframe", f6_arg0.clipInterrupted ) --[[ @ 0]]
				f6_arg0.PointAmount:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f6_arg0.PointAmount:completeAnimation() --[[ @ 0]]
			f6_arg0.PointAmount:setAlpha( 0 ) --[[ @ 0]]
			f6_local1( f6_arg0.PointAmount ) --[[ @ 0]]
			local f6_local2 = function ( f13_arg0 )
				local f13_local0 = function ( f14_arg0 )
					local f14_local0 = function ( f15_arg0 )
						f15_arg0:beginAnimation( 250 ) --[[ @ 0]]
						f15_arg0:setAlpha( 0 ) --[[ @ 0]]
						f15_arg0:registerEventHandler( "transition_complete_keyframe", f6_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f14_arg0:beginAnimation( 250 ) --[[ @ 0]]
					f14_arg0:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f6_arg0.Title:beginAnimation( 250 ) --[[ @ 0]]
				f6_arg0.Title:setAlpha( 1 ) --[[ @ 0]]
				f6_arg0.Title:registerEventHandler( "interrupted_keyframe", f6_arg0.clipInterrupted ) --[[ @ 0]]
				f6_arg0.Title:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f6_arg0.Title:completeAnimation() --[[ @ 0]]
			f6_arg0.Title:setAlpha( 0 ) --[[ @ 0]]
			f6_local2( f6_arg0.Title ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
