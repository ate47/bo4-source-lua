-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:d4955d888afd063" ) --[[ @ 0]]

CoD.PaintjobPersonalizationSlot = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PaintjobPersonalizationSlot.__defaultWidth = 110 --[[ @ 0]]
CoD.PaintjobPersonalizationSlot.__defaultHeight = 80 --[[ @ 0]]
CoD.PaintjobPersonalizationSlot.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PaintjobPersonalizationSlot ) --[[ @ 0]]
	self.id = "PaintjobPersonalizationSlot" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local DirectorSelectButtonLines = CoD.PaintjobPersonalizationSlotInternal.new( f1_arg0, f1_arg1, 0, 0, -1, 111, 0, 0, 0, 80 ) --[[ @ 0]]
	DirectorSelectButtonLines:linkToElementModel( self, nil, false, function ( model )
		DirectorSelectButtonLines:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( DirectorSelectButtonLines ) --[[ @ 0]]
	self.DirectorSelectButtonLines = DirectorSelectButtonLines --[[ @ 0]]
	
	DirectorSelectButtonLines.id = "DirectorSelectButtonLines" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.PaintjobPersonalizationSlot.__resetProperties = function ( f3_arg0 )
	f3_arg0.DirectorSelectButtonLines:completeAnimation() --[[ @ 0]]
	f3_arg0.DirectorSelectButtonLines:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.PaintjobPersonalizationSlot.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f5_arg0.DirectorSelectButtonLines:completeAnimation() --[[ @ 0]]
			f5_arg0.DirectorSelectButtonLines:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.DirectorSelectButtonLines ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f6_local0 = function ( f7_arg0 )
				f6_arg0.DirectorSelectButtonLines:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_in"] ) --[[ @ 0]]
				f6_arg0.DirectorSelectButtonLines:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f6_arg0.DirectorSelectButtonLines:registerEventHandler( "interrupted_keyframe", f6_arg0.clipInterrupted ) --[[ @ 0]]
				f6_arg0.DirectorSelectButtonLines:registerEventHandler( "transition_complete_keyframe", f6_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f6_arg0.DirectorSelectButtonLines:completeAnimation() --[[ @ 0]]
			f6_arg0.DirectorSelectButtonLines:setScale( 1, 1 ) --[[ @ 0]]
			f6_local0( f6_arg0.DirectorSelectButtonLines ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f8_local0 = function ( f9_arg0 )
				f8_arg0.DirectorSelectButtonLines:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f8_arg0.DirectorSelectButtonLines:setScale( 1, 1 ) --[[ @ 0]]
				f8_arg0.DirectorSelectButtonLines:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.DirectorSelectButtonLines:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.DirectorSelectButtonLines:completeAnimation() --[[ @ 0]]
			f8_arg0.DirectorSelectButtonLines:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f8_local0( f8_arg0.DirectorSelectButtonLines ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.PaintjobPersonalizationSlot.__onClose = function ( f10_arg0 )
	f10_arg0.DirectorSelectButtonLines:close() --[[ @ 0]]
end
 --[[ @ 0]]
