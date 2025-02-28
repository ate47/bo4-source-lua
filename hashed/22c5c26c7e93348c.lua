-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "ui/uieditor/widgets/common/commonsocialarrow" ) --[[ @ 0]]
require( "ui/uieditor/widgets/director/directordividerwithgradient" ) --[[ @ 0]]

CoD.CharacterSelection_CharacterInfoSeparator = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CharacterSelection_CharacterInfoSeparator.__defaultWidth = 427 --[[ @ 0]]
CoD.CharacterSelection_CharacterInfoSeparator.__defaultHeight = 12 --[[ @ 0]]
CoD.CharacterSelection_CharacterInfoSeparator.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CharacterSelection_CharacterInfoSeparator ) --[[ @ 0]]
	self.id = "CharacterSelection_CharacterInfoSeparator" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local DirectorDividerWithGradient = CoD.DirectorDividerWithGradient.new( f1_arg0, f1_arg1, 0.5, 0.5, -186.5, 213.5, 0, 0, 5.5, 6.5 ) --[[ @ 0]]
	DirectorDividerWithGradient:setRGB( 0.39, 0.39, 0.39 ) --[[ @ 0]]
	self:addElement( DirectorDividerWithGradient ) --[[ @ 0]]
	self.DirectorDividerWithGradient = DirectorDividerWithGradient --[[ @ 0]]
	
	local CommonSocialArrow = CoD.CommonSocialArrow.new( f1_arg0, f1_arg1, 0, 0, 0, 24, 0, 0, 0, 12 ) --[[ @ 0]]
	CommonSocialArrow:setAlpha( 0.5 ) --[[ @ 0]]
	CommonSocialArrow:setZRot( 180 ) --[[ @ 0]]
	self:addElement( CommonSocialArrow ) --[[ @ 0]]
	self.CommonSocialArrow = CommonSocialArrow --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CharacterSelection_CharacterInfoSeparator.__resetProperties = function ( f2_arg0 )
	f2_arg0.CommonSocialArrow:completeAnimation() --[[ @ 0]]
	f2_arg0.DirectorDividerWithGradient:completeAnimation() --[[ @ 0]]
	f2_arg0.CommonSocialArrow:setAlpha( 0.5 ) --[[ @ 0]]
	f2_arg0.DirectorDividerWithGradient:setLeftRight( 0.5, 0.5, -186.5, 213.5 ) --[[ @ 0]]
	f2_arg0.DirectorDividerWithGradient:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CharacterSelection_CharacterInfoSeparator.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Reveal = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f4_local0 = function ( f5_arg0 )
				local f5_local0 = function ( f6_arg0 )
					f6_arg0:beginAnimation( 300, Enum[@"luitween"][@"luitween_ease_in"] ) --[[ @ 0]]
					f6_arg0:setLeftRight( 0.5, 0.5, -186.5, 213.5 ) --[[ @ 0]]
					f6_arg0:setAlpha( 1 ) --[[ @ 0]]
					f6_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0.DirectorDividerWithGradient:beginAnimation( 200 ) --[[ @ 0]]
				f4_arg0.DirectorDividerWithGradient:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.DirectorDividerWithGradient:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.DirectorDividerWithGradient:completeAnimation() --[[ @ 0]]
			f4_arg0.DirectorDividerWithGradient:setLeftRight( 0.5, 0.5, -186.5, -186.5 ) --[[ @ 0]]
			f4_arg0.DirectorDividerWithGradient:setAlpha( 0 ) --[[ @ 0]]
			f4_local0( f4_arg0.DirectorDividerWithGradient ) --[[ @ 0]]
			local f4_local1 = function ( f7_arg0 )
				f4_arg0.CommonSocialArrow:beginAnimation( 200 ) --[[ @ 0]]
				f4_arg0.CommonSocialArrow:setAlpha( 0.25 ) --[[ @ 0]]
				f4_arg0.CommonSocialArrow:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.CommonSocialArrow:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.CommonSocialArrow:completeAnimation() --[[ @ 0]]
			f4_arg0.CommonSocialArrow:setAlpha( 0 ) --[[ @ 0]]
			f4_local1( f4_arg0.CommonSocialArrow ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.CharacterSelection_CharacterInfoSeparator.__onClose = function ( f8_arg0 )
	f8_arg0.DirectorDividerWithGradient:close() --[[ @ 0]]
	f8_arg0.CommonSocialArrow:close() --[[ @ 0]]
end
 --[[ @ 0]]
