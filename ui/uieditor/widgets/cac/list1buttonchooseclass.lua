-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/commonlistbuttongenericinternal" ) --[[ @ 0]]

CoD.List1ButtonChooseClass = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.List1ButtonChooseClass.__defaultWidth = 385 --[[ @ 0]]
CoD.List1ButtonChooseClass.__defaultHeight = 43 --[[ @ 0]]
CoD.List1ButtonChooseClass.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.List1ButtonChooseClass ) --[[ @ 0]]
	self.id = "List1ButtonChooseClass" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local ButtonGeneric = CoD.CommonListButtonGenericInternal.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 0, 0, 43 ) --[[ @ 0]]
	ButtonGeneric:linkToElementModel( self, "customClassName", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			ButtonGeneric.Title2:setText( ConvertToUpperString( CoD.BaseUtility.LocalizeIfXHash( f2_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ButtonGeneric ) --[[ @ 0]]
	self.ButtonGeneric = ButtonGeneric --[[ @ 0]]
	
	ButtonGeneric.id = "ButtonGeneric" --[[ @ 0]]
	self.__defaultFocus = ButtonGeneric --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.List1ButtonChooseClass.__resetProperties = function ( f3_arg0 )
	f3_arg0.ButtonGeneric:completeAnimation() --[[ @ 0]]
	f3_arg0.ButtonGeneric:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.List1ButtonChooseClass.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f5_arg0.ButtonGeneric:completeAnimation() --[[ @ 0]]
			f5_arg0.ButtonGeneric:setScale( 1.02, 1.02 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.ButtonGeneric ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f6_local0 = function ( f7_arg0 )
				f6_arg0.ButtonGeneric:beginAnimation( 200 ) --[[ @ 0]]
				f6_arg0.ButtonGeneric:setScale( 1.02, 1.02 ) --[[ @ 0]]
				f6_arg0.ButtonGeneric:registerEventHandler( "interrupted_keyframe", f6_arg0.clipInterrupted ) --[[ @ 0]]
				f6_arg0.ButtonGeneric:registerEventHandler( "transition_complete_keyframe", f6_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f6_arg0.ButtonGeneric:completeAnimation() --[[ @ 0]]
			f6_arg0.ButtonGeneric:setScale( 1, 1 ) --[[ @ 0]]
			f6_local0( f6_arg0.ButtonGeneric ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f8_local0 = function ( f9_arg0 )
				f8_arg0.ButtonGeneric:beginAnimation( 200 ) --[[ @ 0]]
				f8_arg0.ButtonGeneric:setScale( 1, 1 ) --[[ @ 0]]
				f8_arg0.ButtonGeneric:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.ButtonGeneric:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.ButtonGeneric:completeAnimation() --[[ @ 0]]
			f8_arg0.ButtonGeneric:setScale( 1.02, 1.02 ) --[[ @ 0]]
			f8_local0( f8_arg0.ButtonGeneric ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.List1ButtonChooseClass.__onClose = function ( f10_arg0 )
	f10_arg0.ButtonGeneric:close() --[[ @ 0]]
end
 --[[ @ 0]]
