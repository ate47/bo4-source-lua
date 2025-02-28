-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:4379af6e9d2b74ff" ) --[[ @ 0]]

CoD.Challenges_Summary_NearCompletionButton = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Challenges_Summary_NearCompletionButton.__defaultWidth = 1175 --[[ @ 0]]
CoD.Challenges_Summary_NearCompletionButton.__defaultHeight = 280 --[[ @ 0]]
CoD.Challenges_Summary_NearCompletionButton.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.Challenges_Summary_NearCompletionButton ) --[[ @ 0]]
	self.id = "Challenges_Summary_NearCompletionButton" --[[ @ 0]]
	self.soundSet = "ChooseDecal" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local NearCompletionButton = CoD.NearCompletionButton_Internal.new( f1_arg0, f1_arg1, 0.5, 0.5, -587.5, 587.5, 0.5, 0.5, -140, 140 ) --[[ @ 0]]
	NearCompletionButton:linkToElementModel( self, nil, false, function ( model )
		NearCompletionButton:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( NearCompletionButton ) --[[ @ 0]]
	self.NearCompletionButton = NearCompletionButton --[[ @ 0]]
	
	NearCompletionButton.id = "NearCompletionButton" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.Challenges_Summary_NearCompletionButton.__resetProperties = function ( f3_arg0 )
	f3_arg0.NearCompletionButton:completeAnimation() --[[ @ 0]]
	f3_arg0.NearCompletionButton:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.Challenges_Summary_NearCompletionButton.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f5_arg0.NearCompletionButton:completeAnimation() --[[ @ 0]]
			f5_arg0.NearCompletionButton:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.NearCompletionButton ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f6_local0 = function ( f7_arg0 )
				f6_arg0.NearCompletionButton:beginAnimation( 200 ) --[[ @ 0]]
				f6_arg0.NearCompletionButton:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f6_arg0.NearCompletionButton:registerEventHandler( "interrupted_keyframe", f6_arg0.clipInterrupted ) --[[ @ 0]]
				f6_arg0.NearCompletionButton:registerEventHandler( "transition_complete_keyframe", f6_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f6_arg0.NearCompletionButton:completeAnimation() --[[ @ 0]]
			f6_arg0.NearCompletionButton:setScale( 1, 1 ) --[[ @ 0]]
			f6_local0( f6_arg0.NearCompletionButton ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f8_local0 = function ( f9_arg0 )
				f8_arg0.NearCompletionButton:beginAnimation( 200 ) --[[ @ 0]]
				f8_arg0.NearCompletionButton:setScale( 1, 1 ) --[[ @ 0]]
				f8_arg0.NearCompletionButton:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.NearCompletionButton:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.NearCompletionButton:completeAnimation() --[[ @ 0]]
			f8_arg0.NearCompletionButton:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f8_local0( f8_arg0.NearCompletionButton ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.Challenges_Summary_NearCompletionButton.__onClose = function ( f10_arg0 )
	f10_arg0.NearCompletionButton:close() --[[ @ 0]]
end
 --[[ @ 0]]
