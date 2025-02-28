-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.PrematchCountdown_NumbersInternal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PrematchCountdown_NumbersInternal.__defaultWidth = 240 --[[ @ 0]]
CoD.PrematchCountdown_NumbersInternal.__defaultHeight = 105 --[[ @ 0]]
CoD.PrematchCountdown_NumbersInternal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PrematchCountdown_NumbersInternal ) --[[ @ 0]]
	self.id = "PrematchCountdown_NumbersInternal" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Numbers = LUI.UIText.new( 0.5, 0.5, -120, 120, 0, 0, -6, 123 ) --[[ @ 0]]
	Numbers:setText( "" ) --[[ @ 0]]
	Numbers:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	Numbers:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_56250C6FCAC36BD4" ) ) --[[ @ 0]]
	Numbers:setShaderVector( 0, 0.14, 0, 0, 0 ) --[[ @ 0]]
	Numbers:setShaderVector( 1, 0, 0, 0, 0.3 ) --[[ @ 0]]
	Numbers:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Numbers:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( Numbers ) --[[ @ 0]]
	self.Numbers = Numbers --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.PrematchCountdown_NumbersInternal.__resetProperties = function ( f2_arg0 )
	f2_arg0.Numbers:completeAnimation() --[[ @ 0]]
	f2_arg0.Numbers:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.PrematchCountdown_NumbersInternal.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Start = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f4_local0 = function ( f5_arg0 )
				f4_arg0.Numbers:beginAnimation( 260 ) --[[ @ 0]]
				f4_arg0.Numbers:setAlpha( 1 ) --[[ @ 0]]
				f4_arg0.Numbers:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.Numbers:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.Numbers:completeAnimation() --[[ @ 0]]
			f4_arg0.Numbers:setAlpha( 0 ) --[[ @ 0]]
			f4_local0( f4_arg0.Numbers ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
