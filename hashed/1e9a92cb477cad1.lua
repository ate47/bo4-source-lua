-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "x64:74bc0ee537888fc" ) --[[ @ 0]]

CoD.InspectCallingCardWidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.InspectCallingCardWidget.__defaultWidth = 348 --[[ @ 0]]
CoD.InspectCallingCardWidget.__defaultHeight = 87 --[[ @ 0]]
CoD.InspectCallingCardWidget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.InspectCallingCardWidget ) --[[ @ 0]]
	self.id = "InspectCallingCardWidget" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local CommonButtonOutline = CoD.InspectCallingCardWidgetInternal.new( f1_arg0, f1_arg1, 0, 0, 0, 348, 0, 0, 0, 87 ) --[[ @ 0]]
	CommonButtonOutline:linkToElementModel( self, nil, false, function ( model )
		CommonButtonOutline:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( CommonButtonOutline ) --[[ @ 0]]
	self.CommonButtonOutline = CommonButtonOutline --[[ @ 0]]
	
	CommonButtonOutline.id = "CommonButtonOutline" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.InspectCallingCardWidget.__resetProperties = function ( f3_arg0 )
	f3_arg0.CommonButtonOutline:completeAnimation() --[[ @ 0]]
	f3_arg0.CommonButtonOutline:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.InspectCallingCardWidget.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f4_arg0.CommonButtonOutline:completeAnimation() --[[ @ 0]]
			f4_arg0.CommonButtonOutline:setScale( 0.98, 0.97 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.CommonButtonOutline ) --[[ @ 0]]
		end,
		ChildFocus = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f5_arg0.CommonButtonOutline:completeAnimation() --[[ @ 0]]
			f5_arg0.CommonButtonOutline:setScale( 1.01, 1.02 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.CommonButtonOutline ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f6_local0 = function ( f7_arg0 )
				f6_arg0.CommonButtonOutline:beginAnimation( 150 ) --[[ @ 0]]
				f6_arg0.CommonButtonOutline:setScale( 1.01, 1.02 ) --[[ @ 0]]
				f6_arg0.CommonButtonOutline:registerEventHandler( "interrupted_keyframe", f6_arg0.clipInterrupted ) --[[ @ 0]]
				f6_arg0.CommonButtonOutline:registerEventHandler( "transition_complete_keyframe", f6_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f6_arg0.CommonButtonOutline:completeAnimation() --[[ @ 0]]
			f6_arg0.CommonButtonOutline:setScale( 0.98, 0.97 ) --[[ @ 0]]
			f6_local0( f6_arg0.CommonButtonOutline ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f8_local0 = function ( f9_arg0 )
				f8_arg0.CommonButtonOutline:beginAnimation( 100 ) --[[ @ 0]]
				f8_arg0.CommonButtonOutline:setScale( 0.98, 0.97 ) --[[ @ 0]]
				f8_arg0.CommonButtonOutline:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.CommonButtonOutline:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.CommonButtonOutline:completeAnimation() --[[ @ 0]]
			f8_arg0.CommonButtonOutline:setScale( 1.01, 1.02 ) --[[ @ 0]]
			f8_local0( f8_arg0.CommonButtonOutline ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.InspectCallingCardWidget.__onClose = function ( f10_arg0 )
	f10_arg0.CommonButtonOutline:close() --[[ @ 0]]
end
 --[[ @ 0]]
