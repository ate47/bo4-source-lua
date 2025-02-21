-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.SupplyChainItemReveal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.SupplyChainItemReveal.__defaultWidth = 105 --[[ @ 0]]
CoD.SupplyChainItemReveal.__defaultHeight = 136 --[[ @ 0]]
CoD.SupplyChainItemReveal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.SupplyChainItemReveal ) --[[ @ 0]]
	self.id = "SupplyChainItemReveal" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local FocusHighlight = LUI.UIImage.new( 0, 1, -38, 38, 0, 1, -47, 47 ) --[[ @ 0]]
	FocusHighlight:setAlpha( 0 ) --[[ @ 0]]
	FocusHighlight:setImage( RegisterImage( @"uie_ui_menu_common_tab_backing" ) ) --[[ @ 0]]
	FocusHighlight:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_6DAB59B2CAE01851" ) ) --[[ @ 0]]
	FocusHighlight:setShaderVector( 0, 0, 0, 0.27, 0.18 ) --[[ @ 0]]
	FocusHighlight:setShaderVector( 1, 0.9, 0, 0, 0 ) --[[ @ 0]]
	FocusHighlight:setupNineSliceShader( 135, 70 ) --[[ @ 0]]
	self:addElement( FocusHighlight ) --[[ @ 0]]
	self.FocusHighlight = FocusHighlight --[[ @ 0]]
	
	local FocusHighlight2 = LUI.UIImage.new( 0, 1, -38, 38, 0, 1, -47, 47 ) --[[ @ 0]]
	FocusHighlight2:setAlpha( 0 ) --[[ @ 0]]
	FocusHighlight2:setImage( RegisterImage( @"uie_ui_menu_common_tab_backing" ) ) --[[ @ 0]]
	FocusHighlight2:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_6DAB59B2CAE01851" ) ) --[[ @ 0]]
	FocusHighlight2:setShaderVector( 0, 0, 0, 0.27, 0.18 ) --[[ @ 0]]
	FocusHighlight2:setShaderVector( 1, 0.9, 0, 0, 0 ) --[[ @ 0]]
	FocusHighlight2:setupNineSliceShader( 135, 70 ) --[[ @ 0]]
	self:addElement( FocusHighlight2 ) --[[ @ 0]]
	self.FocusHighlight2 = FocusHighlight2 --[[ @ 0]]
	
	local FocusGlow = LUI.UIImage.new( 0, 1, -64, 64, 0, 1, -169, 169 ) --[[ @ 0]]
	FocusGlow:setAlpha( 0 ) --[[ @ 0]]
	FocusGlow:setImage( RegisterImage( @"uie_ui_menu_common_tab_glow" ) ) --[[ @ 0]]
	FocusGlow:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_6DAB59B2CAE01851" ) ) --[[ @ 0]]
	FocusGlow:setShaderVector( 0, 0, 0, 0.21, 0.09 ) --[[ @ 0]]
	FocusGlow:setShaderVector( 1, 1.36, 0, 0, 0 ) --[[ @ 0]]
	FocusGlow:setupNineSliceShader( 245, 185 ) --[[ @ 0]]
	self:addElement( FocusGlow ) --[[ @ 0]]
	self.FocusGlow = FocusGlow --[[ @ 0]]
	
	local FocusGlow2 = LUI.UIImage.new( 0, 1, -64, 64, 0, 1, -169, 169 ) --[[ @ 0]]
	FocusGlow2:setRGB( 0.89, 0.49, 0.04 ) --[[ @ 0]]
	FocusGlow2:setAlpha( 0 ) --[[ @ 0]]
	FocusGlow2:setImage( RegisterImage( @"uie_ui_hud_notifications_glow" ) ) --[[ @ 0]]
	FocusGlow2:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_6DAB59B2CAE01851" ) ) --[[ @ 0]]
	FocusGlow2:setShaderVector( 0, 0, 0, 0.21, 0.09 ) --[[ @ 0]]
	FocusGlow2:setShaderVector( 1, 1.36, 0, 0, 0 ) --[[ @ 0]]
	FocusGlow2:setupNineSliceShader( 245, 185 ) --[[ @ 0]]
	self:addElement( FocusGlow2 ) --[[ @ 0]]
	self.FocusGlow2 = FocusGlow2 --[[ @ 0]]
	
	local ThinGlowMid = LUI.UIImage.new( 0, 1, -64, 64, 0, 1, -169, 169 ) --[[ @ 0]]
	ThinGlowMid:setAlpha( 0 ) --[[ @ 0]]
	ThinGlowMid:setScale( 0.14, 2 ) --[[ @ 0]]
	ThinGlowMid:setImage( RegisterImage( @"uie_ui_menu_common_tab_glow" ) ) --[[ @ 0]]
	ThinGlowMid:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_6DAB59B2CAE01851" ) ) --[[ @ 0]]
	ThinGlowMid:setShaderVector( 0, 0, 0, 0.21, 0.09 ) --[[ @ 0]]
	ThinGlowMid:setShaderVector( 1, 1.36, 0, 0, 0 ) --[[ @ 0]]
	ThinGlowMid:setupNineSliceShader( 245, 185 ) --[[ @ 0]]
	self:addElement( ThinGlowMid ) --[[ @ 0]]
	self.ThinGlowMid = ThinGlowMid --[[ @ 0]]
	
	local ThinGlowRight = LUI.UIImage.new( 0, 1, -34, 94, 0, 1, -169, 169 ) --[[ @ 0]]
	ThinGlowRight:setAlpha( 0 ) --[[ @ 0]]
	ThinGlowRight:setScale( 0.07, 1.47 ) --[[ @ 0]]
	ThinGlowRight:setImage( RegisterImage( @"uie_ui_menu_common_tab_glow" ) ) --[[ @ 0]]
	ThinGlowRight:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_6DAB59B2CAE01851" ) ) --[[ @ 0]]
	ThinGlowRight:setShaderVector( 0, 0, 0, 0.21, 0.09 ) --[[ @ 0]]
	ThinGlowRight:setShaderVector( 1, 1.36, 0, 0, 0 ) --[[ @ 0]]
	ThinGlowRight:setupNineSliceShader( 245, 185 ) --[[ @ 0]]
	self:addElement( ThinGlowRight ) --[[ @ 0]]
	self.ThinGlowRight = ThinGlowRight --[[ @ 0]]
	
	local ThinGlowLeft = LUI.UIImage.new( 0, 1, -94, 34, 0, 1, -169, 169 ) --[[ @ 0]]
	ThinGlowLeft:setAlpha( 0 ) --[[ @ 0]]
	ThinGlowLeft:setScale( 0.07, 1.47 ) --[[ @ 0]]
	ThinGlowLeft:setImage( RegisterImage( @"uie_ui_menu_common_tab_glow" ) ) --[[ @ 0]]
	ThinGlowLeft:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_6DAB59B2CAE01851" ) ) --[[ @ 0]]
	ThinGlowLeft:setShaderVector( 0, 0, 0, 0.21, 0.09 ) --[[ @ 0]]
	ThinGlowLeft:setShaderVector( 1, 1.36, 0, 0, 0 ) --[[ @ 0]]
	ThinGlowLeft:setupNineSliceShader( 245, 185 ) --[[ @ 0]]
	self:addElement( ThinGlowLeft ) --[[ @ 0]]
	self.ThinGlowLeft = ThinGlowLeft --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.SupplyChainItemReveal.__resetProperties = function ( f2_arg0 )
	f2_arg0.ThinGlowLeft:completeAnimation() --[[ @ 0]]
	f2_arg0.ThinGlowRight:completeAnimation() --[[ @ 0]]
	f2_arg0.ThinGlowMid:completeAnimation() --[[ @ 0]]
	f2_arg0.FocusGlow2:completeAnimation() --[[ @ 0]]
	f2_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
	f2_arg0.FocusHighlight2:completeAnimation() --[[ @ 0]]
	f2_arg0.FocusHighlight:completeAnimation() --[[ @ 0]]
	f2_arg0.ThinGlowLeft:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.ThinGlowLeft:setScale( 0.07, 1.47 ) --[[ @ 0]]
	f2_arg0.ThinGlowRight:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.ThinGlowRight:setScale( 0.07, 1.47 ) --[[ @ 0]]
	f2_arg0.ThinGlowMid:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.ThinGlowMid:setScale( 0.14, 2 ) --[[ @ 0]]
	f2_arg0.FocusGlow2:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.FocusGlow2:setScale( 1, 1 ) --[[ @ 0]]
	f2_arg0.FocusGlow:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.FocusGlow:setScale( 1, 1 ) --[[ @ 0]]
	f2_arg0.FocusHighlight2:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.FocusHighlight2:setScale( 1, 1 ) --[[ @ 0]]
	f2_arg0.FocusHighlight:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.FocusHighlight:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.SupplyChainItemReveal.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Reveal = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 7 ) --[[ @ 0]]
			local f4_local0 = function ( f5_arg0 )
				local f5_local0 = function ( f6_arg0 )
					f6_arg0:beginAnimation( 199 ) --[[ @ 0]]
					f6_arg0:setAlpha( 0 ) --[[ @ 0]]
					f6_arg0:setScale( 1.3, 1.3 ) --[[ @ 0]]
					f6_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0.FocusHighlight:beginAnimation( 120 ) --[[ @ 0]]
				f4_arg0.FocusHighlight:setAlpha( 1 ) --[[ @ 0]]
				f4_arg0.FocusHighlight:setScale( 1, 1 ) --[[ @ 0]]
				f4_arg0.FocusHighlight:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.FocusHighlight:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.FocusHighlight:completeAnimation() --[[ @ 0]]
			f4_arg0.FocusHighlight:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.FocusHighlight:setScale( 0.7, 0.7 ) --[[ @ 0]]
			f4_local0( f4_arg0.FocusHighlight ) --[[ @ 0]]
			local f4_local1 = function ( f7_arg0 )
				local f7_local0 = function ( f8_arg0 )
					f8_arg0:beginAnimation( 199 ) --[[ @ 0]]
					f8_arg0:setAlpha( 0 ) --[[ @ 0]]
					f8_arg0:setScale( 2, 0.6 ) --[[ @ 0]]
					f8_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0.FocusHighlight2:beginAnimation( 120 ) --[[ @ 0]]
				f4_arg0.FocusHighlight2:setAlpha( 1 ) --[[ @ 0]]
				f4_arg0.FocusHighlight2:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.FocusHighlight2:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.FocusHighlight2:completeAnimation() --[[ @ 0]]
			f4_arg0.FocusHighlight2:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.FocusHighlight2:setScale( 0.9, 0.9 ) --[[ @ 0]]
			f4_local1( f4_arg0.FocusHighlight2 ) --[[ @ 0]]
			local f4_local2 = function ( f9_arg0 )
				local f9_local0 = function ( f10_arg0 )
					f10_arg0:beginAnimation( 199 ) --[[ @ 0]]
					f10_arg0:setAlpha( 0 ) --[[ @ 0]]
					f10_arg0:setScale( 0.8, 0.8 ) --[[ @ 0]]
					f10_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0.FocusGlow:beginAnimation( 120 ) --[[ @ 0]]
				f4_arg0.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
				f4_arg0.FocusGlow:setScale( 1, 1 ) --[[ @ 0]]
				f4_arg0.FocusGlow:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.FocusGlow:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f4_arg0.FocusGlow:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.FocusGlow:setScale( 3, 3 ) --[[ @ 0]]
			f4_local2( f4_arg0.FocusGlow ) --[[ @ 0]]
			local f4_local3 = function ( f11_arg0 )
				local f11_local0 = function ( f12_arg0 )
					f12_arg0:beginAnimation( 199 ) --[[ @ 0]]
					f12_arg0:setAlpha( 0 ) --[[ @ 0]]
					f12_arg0:setScale( 5, 0.25 ) --[[ @ 0]]
					f12_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0.FocusGlow2:beginAnimation( 120 ) --[[ @ 0]]
				f4_arg0.FocusGlow2:setAlpha( 1 ) --[[ @ 0]]
				f4_arg0.FocusGlow2:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.FocusGlow2:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.FocusGlow2:completeAnimation() --[[ @ 0]]
			f4_arg0.FocusGlow2:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.FocusGlow2:setScale( 0.8, 0.8 ) --[[ @ 0]]
			f4_local3( f4_arg0.FocusGlow2 ) --[[ @ 0]]
			f4_arg0.ThinGlowMid:completeAnimation() --[[ @ 0]]
			f4_arg0.ThinGlowMid:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.ThinGlowMid:setScale( 0.14, 1.2 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.ThinGlowMid ) --[[ @ 0]]
			f4_arg0.ThinGlowRight:completeAnimation() --[[ @ 0]]
			f4_arg0.ThinGlowRight:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.ThinGlowRight:setScale( 0.07, 0.7 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.ThinGlowRight ) --[[ @ 0]]
			f4_arg0.ThinGlowLeft:completeAnimation() --[[ @ 0]]
			f4_arg0.ThinGlowLeft:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.ThinGlowLeft:setScale( 0.07, 0.7 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.ThinGlowLeft ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
