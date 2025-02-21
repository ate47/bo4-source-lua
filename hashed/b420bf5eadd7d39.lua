-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.AARTierRewardColumnHeaderHighlighted = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AARTierRewardColumnHeaderHighlighted.__defaultWidth = 105 --[[ @ 0]]
CoD.AARTierRewardColumnHeaderHighlighted.__defaultHeight = 40 --[[ @ 0]]
CoD.AARTierRewardColumnHeaderHighlighted.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AARTierRewardColumnHeaderHighlighted ) --[[ @ 0]]
	self.id = "AARTierRewardColumnHeaderHighlighted" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local CommonOuterGlowThinVert = LUI.UIImage.new( 0, 1, -12, 12, 0, 0, -17.5, 10.5 ) --[[ @ 0]]
	CommonOuterGlowThinVert:setRGB( 1, 0.33, 0 ) --[[ @ 0]]
	CommonOuterGlowThinVert:setAlpha( 0 ) --[[ @ 0]]
	CommonOuterGlowThinVert:setImage( RegisterImage( @"uie_ui_menu_common_outer_glow_thin_vert01" ) ) --[[ @ 0]]
	CommonOuterGlowThinVert:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_6DAB59B2CAE01851" ) ) --[[ @ 0]]
	CommonOuterGlowThinVert:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	CommonOuterGlowThinVert:setShaderVector( 1, 1, 0, 0, 0 ) --[[ @ 0]]
	CommonOuterGlowThinVert:setupNineSliceShader( 32, 32 ) --[[ @ 0]]
	self:addElement( CommonOuterGlowThinVert ) --[[ @ 0]]
	self.CommonOuterGlowThinVert = CommonOuterGlowThinVert --[[ @ 0]]
	
	local CommonOuterGlow01 = LUI.UIImage.new( 0, 1, -12, 12, 0, 1, -12, 12 ) --[[ @ 0]]
	CommonOuterGlow01:setRGB( 1, 0.33, 0 ) --[[ @ 0]]
	CommonOuterGlow01:setAlpha( 0 ) --[[ @ 0]]
	CommonOuterGlow01:setImage( RegisterImage( @"uie_ui_menu_common_outer_glow01" ) ) --[[ @ 0]]
	CommonOuterGlow01:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_6DAB59B2CAE01851" ) ) --[[ @ 0]]
	CommonOuterGlow01:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	CommonOuterGlow01:setShaderVector( 1, 1, 0, 0, 0 ) --[[ @ 0]]
	CommonOuterGlow01:setupNineSliceShader( 32, 32 ) --[[ @ 0]]
	self:addElement( CommonOuterGlow01 ) --[[ @ 0]]
	self.CommonOuterGlow01 = CommonOuterGlow01 --[[ @ 0]]
	
	local brighten = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	brighten:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( brighten ) --[[ @ 0]]
	self.brighten = brighten --[[ @ 0]]
	
	local CommonFrame01 = LUI.UIImage.new( 0, 1, -1, 1, 0, 1, -1, 1 ) --[[ @ 0]]
	CommonFrame01:setRGB( 1, 0.89, 0.47 ) --[[ @ 0]]
	CommonFrame01:setAlpha( 0 ) --[[ @ 0]]
	CommonFrame01:setImage( RegisterImage( @"hash_5CA6E5C175806396" ) ) --[[ @ 0]]
	CommonFrame01:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_normal" ) ) --[[ @ 0]]
	CommonFrame01:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	CommonFrame01:setupNineSliceShader( 8, 8 ) --[[ @ 0]]
	self:addElement( CommonFrame01 ) --[[ @ 0]]
	self.CommonFrame01 = CommonFrame01 --[[ @ 0]]
	
	local Tier = LUI.UIText.new( 0, 1, 3, -3, 0.5, 0.5, -9, 9 ) --[[ @ 0]]
	Tier:setRGB( 1, 0.89, 0.47 ) --[[ @ 0]]
	Tier:setAlpha( 0 ) --[[ @ 0]]
	Tier:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/new" ) ) --[[ @ 0]]
	Tier:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	Tier:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_90D57B1E92D39D7" ) ) --[[ @ 0]]
	Tier:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	Tier:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	Tier:setShaderVector( 2, 1, 0.32, 0, 0.75 ) --[[ @ 0]]
	Tier:setLetterSpacing( 3 ) --[[ @ 0]]
	Tier:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Tier:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	self:addElement( Tier ) --[[ @ 0]]
	self.Tier = Tier --[[ @ 0]]
	
	local Line = LUI.UIImage.new( 0, 1, 0, 0, 0, 0, -5, -2 ) --[[ @ 0]]
	Line:setRGB( 1, 0.89, 0.47 ) --[[ @ 0]]
	Line:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( Line ) --[[ @ 0]]
	self.Line = Line --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.AARTierRewardColumnHeaderHighlighted.__resetProperties = function ( f2_arg0 )
	f2_arg0.CommonOuterGlowThinVert:completeAnimation() --[[ @ 0]]
	f2_arg0.CommonOuterGlow01:completeAnimation() --[[ @ 0]]
	f2_arg0.brighten:completeAnimation() --[[ @ 0]]
	f2_arg0.CommonFrame01:completeAnimation() --[[ @ 0]]
	f2_arg0.Tier:completeAnimation() --[[ @ 0]]
	f2_arg0.Line:completeAnimation() --[[ @ 0]]
	f2_arg0.CommonOuterGlowThinVert:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.CommonOuterGlow01:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.brighten:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.CommonFrame01:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.Tier:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.Line:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.AARTierRewardColumnHeaderHighlighted.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Highlighted = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			local f4_local0 = function ( f5_arg0 )
				f4_arg0.CommonOuterGlowThinVert:beginAnimation( 200 ) --[[ @ 0]]
				f4_arg0.CommonOuterGlowThinVert:setAlpha( 1 ) --[[ @ 0]]
				f4_arg0.CommonOuterGlowThinVert:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.CommonOuterGlowThinVert:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.CommonOuterGlowThinVert:completeAnimation() --[[ @ 0]]
			f4_arg0.CommonOuterGlowThinVert:setAlpha( 0 ) --[[ @ 0]]
			f4_local0( f4_arg0.CommonOuterGlowThinVert ) --[[ @ 0]]
			local f4_local1 = function ( f6_arg0 )
				f4_arg0.CommonOuterGlow01:beginAnimation( 200 ) --[[ @ 0]]
				f4_arg0.CommonOuterGlow01:setAlpha( 1 ) --[[ @ 0]]
				f4_arg0.CommonOuterGlow01:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.CommonOuterGlow01:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.CommonOuterGlow01:completeAnimation() --[[ @ 0]]
			f4_arg0.CommonOuterGlow01:setAlpha( 0 ) --[[ @ 0]]
			f4_local1( f4_arg0.CommonOuterGlow01 ) --[[ @ 0]]
			local f4_local2 = function ( f7_arg0 )
				f4_arg0.brighten:beginAnimation( 200 ) --[[ @ 0]]
				f4_arg0.brighten:setAlpha( 0.1 ) --[[ @ 0]]
				f4_arg0.brighten:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.brighten:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.brighten:completeAnimation() --[[ @ 0]]
			f4_arg0.brighten:setAlpha( 0 ) --[[ @ 0]]
			f4_local2( f4_arg0.brighten ) --[[ @ 0]]
			local f4_local3 = function ( f8_arg0 )
				f4_arg0.CommonFrame01:beginAnimation( 200 ) --[[ @ 0]]
				f4_arg0.CommonFrame01:setAlpha( 1 ) --[[ @ 0]]
				f4_arg0.CommonFrame01:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.CommonFrame01:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.CommonFrame01:completeAnimation() --[[ @ 0]]
			f4_arg0.CommonFrame01:setAlpha( 0 ) --[[ @ 0]]
			f4_local3( f4_arg0.CommonFrame01 ) --[[ @ 0]]
			local f4_local4 = function ( f9_arg0 )
				f4_arg0.Tier:beginAnimation( 200 ) --[[ @ 0]]
				f4_arg0.Tier:setAlpha( 1 ) --[[ @ 0]]
				f4_arg0.Tier:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.Tier:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.Tier:completeAnimation() --[[ @ 0]]
			f4_arg0.Tier:setAlpha( 0 ) --[[ @ 0]]
			f4_local4( f4_arg0.Tier ) --[[ @ 0]]
			local f4_local5 = function ( f10_arg0 )
				f4_arg0.Line:beginAnimation( 200 ) --[[ @ 0]]
				f4_arg0.Line:setAlpha( 1 ) --[[ @ 0]]
				f4_arg0.Line:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.Line:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.Line:completeAnimation() --[[ @ 0]]
			f4_arg0.Line:setAlpha( 0 ) --[[ @ 0]]
			f4_local5( f4_arg0.Line ) --[[ @ 0]]
		end
	},
	Highlighted = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			f11_arg0.CommonOuterGlowThinVert:completeAnimation() --[[ @ 0]]
			f11_arg0.CommonOuterGlowThinVert:setAlpha( 1 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.CommonOuterGlowThinVert ) --[[ @ 0]]
			f11_arg0.CommonOuterGlow01:completeAnimation() --[[ @ 0]]
			f11_arg0.CommonOuterGlow01:setAlpha( 1 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.CommonOuterGlow01 ) --[[ @ 0]]
			f11_arg0.brighten:completeAnimation() --[[ @ 0]]
			f11_arg0.brighten:setAlpha( 0.1 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.brighten ) --[[ @ 0]]
			f11_arg0.CommonFrame01:completeAnimation() --[[ @ 0]]
			f11_arg0.CommonFrame01:setAlpha( 1 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.CommonFrame01 ) --[[ @ 0]]
			f11_arg0.Tier:completeAnimation() --[[ @ 0]]
			f11_arg0.Tier:setAlpha( 1 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.Tier ) --[[ @ 0]]
			f11_arg0.Line:completeAnimation() --[[ @ 0]]
			f11_arg0.Line:setAlpha( 1 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.Line ) --[[ @ 0]]
		end,
		DefaultState = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			local f12_local0 = function ( f13_arg0 )
				f12_arg0.CommonOuterGlowThinVert:beginAnimation( 200 ) --[[ @ 0]]
				f12_arg0.CommonOuterGlowThinVert:setAlpha( 0 ) --[[ @ 0]]
				f12_arg0.CommonOuterGlowThinVert:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.CommonOuterGlowThinVert:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.CommonOuterGlowThinVert:completeAnimation() --[[ @ 0]]
			f12_arg0.CommonOuterGlowThinVert:setAlpha( 1 ) --[[ @ 0]]
			f12_local0( f12_arg0.CommonOuterGlowThinVert ) --[[ @ 0]]
			local f12_local1 = function ( f14_arg0 )
				f12_arg0.CommonOuterGlow01:beginAnimation( 200 ) --[[ @ 0]]
				f12_arg0.CommonOuterGlow01:setAlpha( 0 ) --[[ @ 0]]
				f12_arg0.CommonOuterGlow01:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.CommonOuterGlow01:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.CommonOuterGlow01:completeAnimation() --[[ @ 0]]
			f12_arg0.CommonOuterGlow01:setAlpha( 1 ) --[[ @ 0]]
			f12_local1( f12_arg0.CommonOuterGlow01 ) --[[ @ 0]]
			local f12_local2 = function ( f15_arg0 )
				f12_arg0.brighten:beginAnimation( 200 ) --[[ @ 0]]
				f12_arg0.brighten:setAlpha( 0 ) --[[ @ 0]]
				f12_arg0.brighten:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.brighten:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.brighten:completeAnimation() --[[ @ 0]]
			f12_arg0.brighten:setAlpha( 0.1 ) --[[ @ 0]]
			f12_local2( f12_arg0.brighten ) --[[ @ 0]]
			local f12_local3 = function ( f16_arg0 )
				f12_arg0.CommonFrame01:beginAnimation( 200 ) --[[ @ 0]]
				f12_arg0.CommonFrame01:setAlpha( 0 ) --[[ @ 0]]
				f12_arg0.CommonFrame01:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.CommonFrame01:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.CommonFrame01:completeAnimation() --[[ @ 0]]
			f12_arg0.CommonFrame01:setAlpha( 1 ) --[[ @ 0]]
			f12_local3( f12_arg0.CommonFrame01 ) --[[ @ 0]]
			local f12_local4 = function ( f17_arg0 )
				f12_arg0.Tier:beginAnimation( 200 ) --[[ @ 0]]
				f12_arg0.Tier:setAlpha( 0 ) --[[ @ 0]]
				f12_arg0.Tier:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.Tier:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.Tier:completeAnimation() --[[ @ 0]]
			f12_arg0.Tier:setAlpha( 1 ) --[[ @ 0]]
			f12_local4( f12_arg0.Tier ) --[[ @ 0]]
			local f12_local5 = function ( f18_arg0 )
				f12_arg0.Line:beginAnimation( 200 ) --[[ @ 0]]
				f12_arg0.Line:setAlpha( 0 ) --[[ @ 0]]
				f12_arg0.Line:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.Line:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.Line:completeAnimation() --[[ @ 0]]
			f12_arg0.Line:setAlpha( 1 ) --[[ @ 0]]
			f12_local5( f12_arg0.Line ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
