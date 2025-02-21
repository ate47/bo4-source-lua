-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:16e4029547f3210b" ) --[[ @ 0]]

CoD.CommonListButtonGenericLong = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CommonListButtonGenericLong.__defaultWidth = 400 --[[ @ 0]]
CoD.CommonListButtonGenericLong.__defaultHeight = 43 --[[ @ 0]]
CoD.CommonListButtonGenericLong.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CommonListButtonGenericLong ) --[[ @ 0]]
	self.id = "CommonListButtonGenericLong" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local CommonListButtonGenericInternal = CoD.CommonListButtonGenericLongInternal.new( f1_arg0, f1_arg1, 0.5, 0.5, -200, 200, 0.5, 0.5, -21.5, 21.5 ) --[[ @ 0]]
	CommonListButtonGenericInternal:linkToElementModel( self, "displayText", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			CommonListButtonGenericInternal.Title:setText( ConvertToUpperString( CoD.BaseUtility.LocalizeIfXHash( f2_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( CommonListButtonGenericInternal ) --[[ @ 0]]
	self.CommonListButtonGenericInternal = CommonListButtonGenericInternal --[[ @ 0]]
	
	CommonListButtonGenericInternal.id = "CommonListButtonGenericInternal" --[[ @ 0]]
	self.__defaultFocus = CommonListButtonGenericInternal --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CommonListButtonGenericLong.__resetProperties = function ( f3_arg0 )
	f3_arg0.CommonListButtonGenericInternal:completeAnimation() --[[ @ 0]]
	f3_arg0.CommonListButtonGenericInternal:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CommonListButtonGenericLong.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f5_arg0.CommonListButtonGenericInternal:completeAnimation() --[[ @ 0]]
			f5_arg0.CommonListButtonGenericInternal:setScale( 1.03, 1.03 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.CommonListButtonGenericInternal ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f6_local0 = function ( f7_arg0 )
				f6_arg0.CommonListButtonGenericInternal:beginAnimation( 200 ) --[[ @ 0]]
				f6_arg0.CommonListButtonGenericInternal:setScale( 1.03, 1.03 ) --[[ @ 0]]
				f6_arg0.CommonListButtonGenericInternal:registerEventHandler( "interrupted_keyframe", f6_arg0.clipInterrupted ) --[[ @ 0]]
				f6_arg0.CommonListButtonGenericInternal:registerEventHandler( "transition_complete_keyframe", f6_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f6_arg0.CommonListButtonGenericInternal:completeAnimation() --[[ @ 0]]
			f6_arg0.CommonListButtonGenericInternal:setScale( 1, 1 ) --[[ @ 0]]
			f6_local0( f6_arg0.CommonListButtonGenericInternal ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f8_local0 = function ( f9_arg0 )
				f8_arg0.CommonListButtonGenericInternal:beginAnimation( 200 ) --[[ @ 0]]
				f8_arg0.CommonListButtonGenericInternal:setScale( 1, 1 ) --[[ @ 0]]
				f8_arg0.CommonListButtonGenericInternal:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.CommonListButtonGenericInternal:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.CommonListButtonGenericInternal:completeAnimation() --[[ @ 0]]
			f8_arg0.CommonListButtonGenericInternal:setScale( 1.03, 1.03 ) --[[ @ 0]]
			f8_local0( f8_arg0.CommonListButtonGenericInternal ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.CommonListButtonGenericLong.__onClose = function ( f10_arg0 )
	f10_arg0.CommonListButtonGenericInternal:close() --[[ @ 0]]
end
 --[[ @ 0]]
