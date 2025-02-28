-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "ui/uieditor/widgets/common/commonsocialarrow" ) --[[ @ 0]]
require( "ui/uieditor/widgets/director/directordividerwithgradient" ) --[[ @ 0]]

CoD.AARMissionReward_CharacterName = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AARMissionReward_CharacterName.__defaultWidth = 653 --[[ @ 0]]
CoD.AARMissionReward_CharacterName.__defaultHeight = 114 --[[ @ 0]]
CoD.AARMissionReward_CharacterName.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AARMissionReward_CharacterName ) --[[ @ 0]]
	self.id = "AARMissionReward_CharacterName" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local UnlockCondition = LUI.UIText.new( 0, 0, 27, 653, 0, 0, 80, 116 ) --[[ @ 0]]
	UnlockCondition:setRGB( 0.63, 0.77, 0.89 ) --[[ @ 0]]
	UnlockCondition:setAlpha( 0.5 ) --[[ @ 0]]
	UnlockCondition:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	UnlockCondition:setLetterSpacing( 2 ) --[[ @ 0]]
	UnlockCondition:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	UnlockCondition:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	UnlockCondition:linkToElementModel( self, "unlockDesc", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			UnlockCondition:setText( Engine[@"hash_4F9F1239CFD921FE"]( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( UnlockCondition ) --[[ @ 0]]
	self.UnlockCondition = UnlockCondition --[[ @ 0]]
	
	local CharacterName = LUI.UIText.new( 0, 0, 23, 653, 0, 0, -6, 69 ) --[[ @ 0]]
	CharacterName:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
	CharacterName:setAlpha( 0.5 ) --[[ @ 0]]
	CharacterName:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	CharacterName:setLetterSpacing( 8 ) --[[ @ 0]]
	CharacterName:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	CharacterName:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	CharacterName:linkToElementModel( self, "name", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			CharacterName:setText( LocalizeToUpperString( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( CharacterName ) --[[ @ 0]]
	self.CharacterName = CharacterName --[[ @ 0]]
	
	local CommonSocialArrow = CoD.CommonSocialArrow.new( f1_arg0, f1_arg1, 0, 0, -7, 17, 0, 0, 64, 76 ) --[[ @ 0]]
	CommonSocialArrow:setAlpha( 0.5 ) --[[ @ 0]]
	CommonSocialArrow:setZRot( 180 ) --[[ @ 0]]
	self:addElement( CommonSocialArrow ) --[[ @ 0]]
	self.CommonSocialArrow = CommonSocialArrow --[[ @ 0]]
	
	local DirectorDividerWithGradient = CoD.DirectorDividerWithGradient.new( f1_arg0, f1_arg1, 0.5, 0.5, -303.5, 300.5, 0, 0, 70, 71 ) --[[ @ 0]]
	DirectorDividerWithGradient:setRGB( 0.39, 0.39, 0.39 ) --[[ @ 0]]
	self:addElement( DirectorDividerWithGradient ) --[[ @ 0]]
	self.DirectorDividerWithGradient = DirectorDividerWithGradient --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.AARMissionReward_CharacterName.__resetProperties = function ( f4_arg0 )
	f4_arg0.DirectorDividerWithGradient:completeAnimation() --[[ @ 0]]
	f4_arg0.CommonSocialArrow:completeAnimation() --[[ @ 0]]
	f4_arg0.UnlockCondition:completeAnimation() --[[ @ 0]]
	f4_arg0.CharacterName:completeAnimation() --[[ @ 0]]
	f4_arg0.DirectorDividerWithGradient:setLeftRight( 0.5, 0.5, -303.5, 300.5 ) --[[ @ 0]]
	f4_arg0.CommonSocialArrow:setAlpha( 0.5 ) --[[ @ 0]]
	f4_arg0.UnlockCondition:setAlpha( 0.5 ) --[[ @ 0]]
	f4_arg0.CharacterName:setAlpha( 0.5 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.AARMissionReward_CharacterName.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			local f5_local0 = function ( f6_arg0 )
				local f6_local0 = function ( f7_arg0 )
					f7_arg0:beginAnimation( 300 ) --[[ @ 0]]
					f7_arg0:setAlpha( 0.5 ) --[[ @ 0]]
					f7_arg0:registerEventHandler( "transition_complete_keyframe", f5_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f5_arg0.UnlockCondition:beginAnimation( 500 ) --[[ @ 0]]
				f5_arg0.UnlockCondition:registerEventHandler( "interrupted_keyframe", f5_arg0.clipInterrupted ) --[[ @ 0]]
				f5_arg0.UnlockCondition:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f5_arg0.UnlockCondition:completeAnimation() --[[ @ 0]]
			f5_arg0.UnlockCondition:setAlpha( 0 ) --[[ @ 0]]
			f5_local0( f5_arg0.UnlockCondition ) --[[ @ 0]]
			local f5_local1 = function ( f8_arg0 )
				local f8_local0 = function ( f9_arg0 )
					f9_arg0:beginAnimation( 199 ) --[[ @ 0]]
					f9_arg0:setAlpha( 0.5 ) --[[ @ 0]]
					f9_arg0:registerEventHandler( "transition_complete_keyframe", f5_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f5_arg0.CharacterName:beginAnimation( 500 ) --[[ @ 0]]
				f5_arg0.CharacterName:registerEventHandler( "interrupted_keyframe", f5_arg0.clipInterrupted ) --[[ @ 0]]
				f5_arg0.CharacterName:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f5_arg0.CharacterName:completeAnimation() --[[ @ 0]]
			f5_arg0.CharacterName:setAlpha( 0 ) --[[ @ 0]]
			f5_local1( f5_arg0.CharacterName ) --[[ @ 0]]
			local f5_local2 = function ( f10_arg0 )
				f5_arg0.CommonSocialArrow:beginAnimation( 200 ) --[[ @ 0]]
				f5_arg0.CommonSocialArrow:setAlpha( 0.5 ) --[[ @ 0]]
				f5_arg0.CommonSocialArrow:registerEventHandler( "interrupted_keyframe", f5_arg0.clipInterrupted ) --[[ @ 0]]
				f5_arg0.CommonSocialArrow:registerEventHandler( "transition_complete_keyframe", f5_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f5_arg0.CommonSocialArrow:completeAnimation() --[[ @ 0]]
			f5_arg0.CommonSocialArrow:setAlpha( 0 ) --[[ @ 0]]
			f5_local2( f5_arg0.CommonSocialArrow ) --[[ @ 0]]
			local f5_local3 = function ( f11_arg0 )
				local f11_local0 = function ( f12_arg0 )
					f12_arg0:beginAnimation( 300 ) --[[ @ 0]]
					f12_arg0:setLeftRight( 0.5, 0.5, -299.5, 300.5 ) --[[ @ 0]]
					f12_arg0:registerEventHandler( "transition_complete_keyframe", f5_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f5_arg0.DirectorDividerWithGradient:beginAnimation( 200 ) --[[ @ 0]]
				f5_arg0.DirectorDividerWithGradient:registerEventHandler( "interrupted_keyframe", f5_arg0.clipInterrupted ) --[[ @ 0]]
				f5_arg0.DirectorDividerWithGradient:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f5_arg0.DirectorDividerWithGradient:completeAnimation() --[[ @ 0]]
			f5_arg0.DirectorDividerWithGradient:setLeftRight( 0.5, 0.5, -299.5, -299.5 ) --[[ @ 0]]
			f5_local3( f5_arg0.DirectorDividerWithGradient ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.AARMissionReward_CharacterName.__onClose = function ( f13_arg0 )
	f13_arg0.UnlockCondition:close() --[[ @ 0]]
	f13_arg0.CharacterName:close() --[[ @ 0]]
	f13_arg0.CommonSocialArrow:close() --[[ @ 0]]
	f13_arg0.DirectorDividerWithGradient:close() --[[ @ 0]]
end
 --[[ @ 0]]
