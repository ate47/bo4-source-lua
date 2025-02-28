-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.AARTierRewardItemHighlight = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AARTierRewardItemHighlight.__defaultWidth = 105 --[[ @ 0]]
CoD.AARTierRewardItemHighlight.__defaultHeight = 136 --[[ @ 0]]
CoD.AARTierRewardItemHighlight.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AARTierRewardItemHighlight ) --[[ @ 0]]
	self.id = "AARTierRewardItemHighlight" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local CommonOuterGlow = LUI.UIImage.new( 0, 1, -12, 12, 0, 1, -12, 12 ) --[[ @ 0]]
	CommonOuterGlow:setRGB( 1, 0.33, 0 ) --[[ @ 0]]
	CommonOuterGlow:setAlpha( 0 ) --[[ @ 0]]
	CommonOuterGlow:setImage( RegisterImage( @"uie_ui_menu_common_outer_glow01" ) ) --[[ @ 0]]
	CommonOuterGlow:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_6DAB59B2CAE01851" ) ) --[[ @ 0]]
	CommonOuterGlow:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	CommonOuterGlow:setShaderVector( 1, 1, 0, 0, 0 ) --[[ @ 0]]
	CommonOuterGlow:setupNineSliceShader( 32, 32 ) --[[ @ 0]]
	self:addElement( CommonOuterGlow ) --[[ @ 0]]
	self.CommonOuterGlow = CommonOuterGlow --[[ @ 0]]
	
	local CommonFrame = LUI.UIImage.new( 0, 1, -1, 1, 0, 1, -1, 1 ) --[[ @ 0]]
	CommonFrame:setRGB( 1, 0.89, 0.47 ) --[[ @ 0]]
	CommonFrame:setAlpha( 0 ) --[[ @ 0]]
	CommonFrame:setImage( RegisterImage( @"hash_5CA6E5C175806396" ) ) --[[ @ 0]]
	CommonFrame:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_normal" ) ) --[[ @ 0]]
	CommonFrame:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	CommonFrame:setupNineSliceShader( 8, 8 ) --[[ @ 0]]
	self:addElement( CommonFrame ) --[[ @ 0]]
	self.CommonFrame = CommonFrame --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.AARTierRewardItemHighlight.__resetProperties = function ( f2_arg0 )
	f2_arg0.CommonFrame:completeAnimation() --[[ @ 0]]
	f2_arg0.CommonOuterGlow:completeAnimation() --[[ @ 0]]
	f2_arg0.CommonFrame:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.CommonOuterGlow:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.AARTierRewardItemHighlight.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Highlighted = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f4_local0 = function ( f5_arg0 )
				f4_arg0.CommonOuterGlow:beginAnimation( 200 ) --[[ @ 0]]
				f4_arg0.CommonOuterGlow:setAlpha( 1 ) --[[ @ 0]]
				f4_arg0.CommonOuterGlow:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.CommonOuterGlow:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.CommonOuterGlow:completeAnimation() --[[ @ 0]]
			f4_arg0.CommonOuterGlow:setAlpha( 0 ) --[[ @ 0]]
			f4_local0( f4_arg0.CommonOuterGlow ) --[[ @ 0]]
			local f4_local1 = function ( f6_arg0 )
				f4_arg0.CommonFrame:beginAnimation( 200 ) --[[ @ 0]]
				f4_arg0.CommonFrame:setAlpha( 1 ) --[[ @ 0]]
				f4_arg0.CommonFrame:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.CommonFrame:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.CommonFrame:completeAnimation() --[[ @ 0]]
			f4_arg0.CommonFrame:setAlpha( 0 ) --[[ @ 0]]
			f4_local1( f4_arg0.CommonFrame ) --[[ @ 0]]
		end
	},
	Highlighted = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f7_arg0.CommonOuterGlow:completeAnimation() --[[ @ 0]]
			f7_arg0.CommonOuterGlow:setAlpha( 1 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.CommonOuterGlow ) --[[ @ 0]]
			f7_arg0.CommonFrame:completeAnimation() --[[ @ 0]]
			f7_arg0.CommonFrame:setAlpha( 1 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.CommonFrame ) --[[ @ 0]]
		end,
		DefaultState = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f8_local0 = function ( f9_arg0 )
				f8_arg0.CommonOuterGlow:beginAnimation( 200 ) --[[ @ 0]]
				f8_arg0.CommonOuterGlow:setAlpha( 0 ) --[[ @ 0]]
				f8_arg0.CommonOuterGlow:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.CommonOuterGlow:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.CommonOuterGlow:completeAnimation() --[[ @ 0]]
			f8_arg0.CommonOuterGlow:setAlpha( 1 ) --[[ @ 0]]
			f8_local0( f8_arg0.CommonOuterGlow ) --[[ @ 0]]
			local f8_local1 = function ( f10_arg0 )
				f8_arg0.CommonFrame:beginAnimation( 200 ) --[[ @ 0]]
				f8_arg0.CommonFrame:setAlpha( 0 ) --[[ @ 0]]
				f8_arg0.CommonFrame:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.CommonFrame:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.CommonFrame:completeAnimation() --[[ @ 0]]
			f8_arg0.CommonFrame:setAlpha( 1 ) --[[ @ 0]]
			f8_local1( f8_arg0.CommonFrame ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
