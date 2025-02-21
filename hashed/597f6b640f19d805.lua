-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.CACWildcardSelectionAnimationPrimary = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CACWildcardSelectionAnimationPrimary.__defaultWidth = 346 --[[ @ 0]]
CoD.CACWildcardSelectionAnimationPrimary.__defaultHeight = 170 --[[ @ 0]]
CoD.CACWildcardSelectionAnimationPrimary.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CACWildcardSelectionAnimationPrimary ) --[[ @ 0]]
	self.id = "CACWildcardSelectionAnimationPrimary" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local GlowBG = LUI.UIImage.new( 0, 1, -6, 6, 0, 1, -6, 6 ) --[[ @ 0]]
	GlowBG:setAlpha( 0.4 ) --[[ @ 0]]
	GlowBG:setXRot( 180 ) --[[ @ 0]]
	GlowBG:setImage( RegisterImage( @"uie_ui_menu_cac_attachment_button_bg_glow_selected" ) ) --[[ @ 0]]
	GlowBG:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_normal" ) ) --[[ @ 0]]
	GlowBG:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	GlowBG:setupNineSliceShader( 74, 56 ) --[[ @ 0]]
	self:addElement( GlowBG ) --[[ @ 0]]
	self.GlowBG = GlowBG --[[ @ 0]]
	
	local FocusBorder = LUI.UIImage.new( 0, 1, -4, 4, 0, 1, -3, 3 ) --[[ @ 0]]
	FocusBorder:setRGB( 0.96, 0.94, 0.78 ) --[[ @ 0]]
	FocusBorder:setAlpha( 0.2 ) --[[ @ 0]]
	FocusBorder:setImage( RegisterImage( @"uie_ui_menu_store_focus_frame" ) ) --[[ @ 0]]
	FocusBorder:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FocusBorder:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FocusBorder:setupNineSliceShader( 10, 10 ) --[[ @ 0]]
	self:addElement( FocusBorder ) --[[ @ 0]]
	self.FocusBorder = FocusBorder --[[ @ 0]]
	
	local GlowAnimBtm = LUI.UIImage.new( 0, 1, 0, 0, 1, 1, -6, 6 ) --[[ @ 0]]
	GlowAnimBtm:setAlpha( 0.15 ) --[[ @ 0]]
	GlowAnimBtm:setImage( RegisterImage( @"uie_ui_menu_cac_attachment_meter_tick_glow" ) ) --[[ @ 0]]
	GlowAnimBtm:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( GlowAnimBtm ) --[[ @ 0]]
	self.GlowAnimBtm = GlowAnimBtm --[[ @ 0]]
	
	local GlowAnimTop = LUI.UIImage.new( 0, 1, 0, 0, 0, 0, -6, 6 ) --[[ @ 0]]
	GlowAnimTop:setAlpha( 0.5 ) --[[ @ 0]]
	GlowAnimTop:setImage( RegisterImage( @"uie_ui_menu_cac_attachment_meter_tick_glow" ) ) --[[ @ 0]]
	GlowAnimTop:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( GlowAnimTop ) --[[ @ 0]]
	self.GlowAnimTop = GlowAnimTop --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CACWildcardSelectionAnimationPrimary.__resetProperties = function ( f2_arg0 )
	f2_arg0.GlowBG:completeAnimation() --[[ @ 0]]
	f2_arg0.FocusBorder:completeAnimation() --[[ @ 0]]
	f2_arg0.GlowAnimBtm:completeAnimation() --[[ @ 0]]
	f2_arg0.GlowAnimTop:completeAnimation() --[[ @ 0]]
	f2_arg0.GlowBG:setAlpha( 0.4 ) --[[ @ 0]]
	f2_arg0.FocusBorder:setAlpha( 0.2 ) --[[ @ 0]]
	f2_arg0.GlowAnimBtm:setAlpha( 0.15 ) --[[ @ 0]]
	f2_arg0.GlowAnimTop:setAlpha( 0.5 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CACWildcardSelectionAnimationPrimary.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					f5_arg0:beginAnimation( 3000 ) --[[ @ 0]]
					f5_arg0:setAlpha( 0.4 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.GlowBG:beginAnimation( 3000 ) --[[ @ 0]]
				f3_arg0.GlowBG:setAlpha( 0.7 ) --[[ @ 0]]
				f3_arg0.GlowBG:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.GlowBG:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.GlowBG:completeAnimation() --[[ @ 0]]
			f3_arg0.GlowBG:setAlpha( 0.4 ) --[[ @ 0]]
			f3_local0( f3_arg0.GlowBG ) --[[ @ 0]]
			local f3_local1 = function ( f6_arg0 )
				local f6_local0 = function ( f7_arg0 )
					f7_arg0:beginAnimation( 3000 ) --[[ @ 0]]
					f7_arg0:setAlpha( 0.2 ) --[[ @ 0]]
					f7_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.FocusBorder:beginAnimation( 3000 ) --[[ @ 0]]
				f3_arg0.FocusBorder:setAlpha( 1 ) --[[ @ 0]]
				f3_arg0.FocusBorder:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.FocusBorder:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.FocusBorder:completeAnimation() --[[ @ 0]]
			f3_arg0.FocusBorder:setAlpha( 0.2 ) --[[ @ 0]]
			f3_local1( f3_arg0.FocusBorder ) --[[ @ 0]]
			local f3_local2 = function ( f8_arg0 )
				local f8_local0 = function ( f9_arg0 )
					f9_arg0:beginAnimation( 3000 ) --[[ @ 0]]
					f9_arg0:setAlpha( 0.15 ) --[[ @ 0]]
					f9_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.GlowAnimBtm:beginAnimation( 3000 ) --[[ @ 0]]
				f3_arg0.GlowAnimBtm:setAlpha( 0.3 ) --[[ @ 0]]
				f3_arg0.GlowAnimBtm:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.GlowAnimBtm:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.GlowAnimBtm:completeAnimation() --[[ @ 0]]
			f3_arg0.GlowAnimBtm:setAlpha( 0.15 ) --[[ @ 0]]
			f3_local2( f3_arg0.GlowAnimBtm ) --[[ @ 0]]
			local f3_local3 = function ( f10_arg0 )
				local f10_local0 = function ( f11_arg0 )
					f11_arg0:beginAnimation( 3000 ) --[[ @ 0]]
					f11_arg0:setAlpha( 0.5 ) --[[ @ 0]]
					f11_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.GlowAnimTop:beginAnimation( 3000 ) --[[ @ 0]]
				f3_arg0.GlowAnimTop:setAlpha( 1 ) --[[ @ 0]]
				f3_arg0.GlowAnimTop:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.GlowAnimTop:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.GlowAnimTop:completeAnimation() --[[ @ 0]]
			f3_arg0.GlowAnimTop:setAlpha( 0.5 ) --[[ @ 0]]
			f3_local3( f3_arg0.GlowAnimTop ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	},
	WildcardHighlight = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
