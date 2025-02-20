-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "x64:598b4302d64420a0" ) --[[ @ 0]]

CoD.JumpkitItemEntry = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.JumpkitItemEntry.__defaultWidth = 152 --[[ @ 0]]
CoD.JumpkitItemEntry.__defaultHeight = 152 --[[ @ 0]]
CoD.JumpkitItemEntry.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.JumpkitItemEntry ) --[[ @ 0]]
	self.id = "JumpkitItemEntry" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local JumpkitButtonInternal = CoD.JumpkitButton_Internal.new( f1_arg0, f1_arg1, 0, 0, 0, 152, 0, 0, 0, 152 ) --[[ @ 0]]
	JumpkitButtonInternal:linkToElementModel( self, nil, false, function ( model )
		JumpkitButtonInternal:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( JumpkitButtonInternal ) --[[ @ 0]]
	self.JumpkitButtonInternal = JumpkitButtonInternal --[[ @ 0]]
	
	JumpkitButtonInternal.id = "JumpkitButtonInternal" --[[ @ 0]]
	self.__defaultFocus = JumpkitButtonInternal --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.JumpkitItemEntry.__resetProperties = function ( f3_arg0 )
	f3_arg0.JumpkitButtonInternal:completeAnimation() --[[ @ 0]]
	f3_arg0.JumpkitButtonInternal:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.JumpkitItemEntry.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f5_arg0.JumpkitButtonInternal:completeAnimation() --[[ @ 0]]
			f5_arg0.JumpkitButtonInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.JumpkitButtonInternal ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f6_local0 = function ( f7_arg0 )
				f6_arg0.JumpkitButtonInternal:beginAnimation( 200 ) --[[ @ 0]]
				f6_arg0.JumpkitButtonInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f6_arg0.JumpkitButtonInternal:registerEventHandler( "interrupted_keyframe", f6_arg0.clipInterrupted ) --[[ @ 0]]
				f6_arg0.JumpkitButtonInternal:registerEventHandler( "transition_complete_keyframe", f6_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f6_arg0.JumpkitButtonInternal:completeAnimation() --[[ @ 0]]
			f6_arg0.JumpkitButtonInternal:setScale( 1, 1 ) --[[ @ 0]]
			f6_local0( f6_arg0.JumpkitButtonInternal ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f8_local0 = function ( f9_arg0 )
				f8_arg0.JumpkitButtonInternal:beginAnimation( 200 ) --[[ @ 0]]
				f8_arg0.JumpkitButtonInternal:setScale( 1, 1 ) --[[ @ 0]]
				f8_arg0.JumpkitButtonInternal:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.JumpkitButtonInternal:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.JumpkitButtonInternal:completeAnimation() --[[ @ 0]]
			f8_arg0.JumpkitButtonInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f8_local0( f8_arg0.JumpkitButtonInternal ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.JumpkitItemEntry.__onClose = function ( f10_arg0 )
	f10_arg0.JumpkitButtonInternal:close() --[[ @ 0]]
end
 --[[ @ 0]]
