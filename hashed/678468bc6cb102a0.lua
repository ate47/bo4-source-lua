-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.ScriptDebugMenuListWidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ScriptDebugMenuListWidget.__defaultWidth = 900 --[[ @ 0]]
CoD.ScriptDebugMenuListWidget.__defaultHeight = 45 --[[ @ 0]]
CoD.ScriptDebugMenuListWidget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ScriptDebugMenuListWidget ) --[[ @ 0]]
	self.id = "ScriptDebugMenuListWidget" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local selectedImage = LUI.UIImage.new( 0, 1, 0, -900, 0, 1, 0, 0 ) --[[ @ 0]]
	selectedImage:setRGB( 1, 0.64, 0 ) --[[ @ 0]]
	selectedImage:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( selectedImage ) --[[ @ 0]]
	self.selectedImage = selectedImage --[[ @ 0]]
	
	local listItemName = LUI.UIText.new( 0, 0, 22, 277, 0.5, 0.5, -18, 12 ) --[[ @ 0]]
	listItemName:setZoom( 10 ) --[[ @ 0]]
	listItemName:setTTF( "default" ) --[[ @ 0]]
	listItemName:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( listItemName ) --[[ @ 0]]
	self.listItemName = listItemName --[[ @ 0]]
	
	self.listItemName:linkToElementModel( self, "color", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			listItemName:setRGB( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self.listItemName:linkToElementModel( self, "name", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			listItemName:setText( f3_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ScriptDebugMenuListWidget.__resetProperties = function ( f4_arg0 )
	f4_arg0.listItemName:completeAnimation() --[[ @ 0]]
	f4_arg0.selectedImage:completeAnimation() --[[ @ 0]]
	f4_arg0.listItemName:setLeftRight( 0, 0, 22, 277 ) --[[ @ 0]]
	f4_arg0.listItemName:setTopBottom( 0.5, 0.5, -18, 12 ) --[[ @ 0]]
	f4_arg0.selectedImage:setLeftRight( 0, 1, 0, -900 ) --[[ @ 0]]
	f4_arg0.selectedImage:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	f4_arg0.selectedImage:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ScriptDebugMenuListWidget.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f5_arg0.listItemName:completeAnimation() --[[ @ 0]]
			f5_arg0.listItemName:setLeftRight( 0, 0, 1.5, 235.5 ) --[[ @ 0]]
			f5_arg0.listItemName:setTopBottom( 0.5, 0.5, -18, 12 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.listItemName ) --[[ @ 0]]
		end,
		Focus = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f6_arg0.selectedImage:completeAnimation() --[[ @ 0]]
			f6_arg0.selectedImage:setLeftRight( 0, 1, 0, -888 ) --[[ @ 0]]
			f6_arg0.selectedImage:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
			f6_arg0.selectedImage:setAlpha( 1 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.selectedImage ) --[[ @ 0]]
			f6_arg0.listItemName:completeAnimation() --[[ @ 0]]
			f6_arg0.listItemName:setLeftRight( 0, 0, 22.5, 256.5 ) --[[ @ 0]]
			f6_arg0.listItemName:setTopBottom( 0.5, 0.5, -18, 12 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.listItemName ) --[[ @ 0]]
		end,
		GainFocus = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f7_local0 = function ( f8_arg0 )
				f7_arg0.selectedImage:beginAnimation( 100 ) --[[ @ 0]]
				f7_arg0.selectedImage:setLeftRight( 0, 1, 0, -888 ) --[[ @ 0]]
				f7_arg0.selectedImage:setAlpha( 1 ) --[[ @ 0]]
				f7_arg0.selectedImage:registerEventHandler( "interrupted_keyframe", f7_arg0.clipInterrupted ) --[[ @ 0]]
				f7_arg0.selectedImage:registerEventHandler( "transition_complete_keyframe", f7_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f7_arg0.selectedImage:completeAnimation() --[[ @ 0]]
			f7_arg0.selectedImage:setLeftRight( 0, 1, 0, -900 ) --[[ @ 0]]
			f7_arg0.selectedImage:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
			f7_arg0.selectedImage:setAlpha( 0 ) --[[ @ 0]]
			f7_local0( f7_arg0.selectedImage ) --[[ @ 0]]
			f7_arg0.listItemName:completeAnimation() --[[ @ 0]]
			f7_arg0.listItemName:setLeftRight( 0, 0, 22.5, 256.5 ) --[[ @ 0]]
			f7_arg0.listItemName:setTopBottom( 0.5, 0.5, -18, 12 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.listItemName ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ScriptDebugMenuListWidget.__onClose = function ( f9_arg0 )
	f9_arg0.listItemName:close() --[[ @ 0]]
end
 --[[ @ 0]]
