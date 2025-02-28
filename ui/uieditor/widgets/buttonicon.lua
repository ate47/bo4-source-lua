-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.ButtonIcon = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ButtonIcon.__defaultWidth = 48 --[[ @ 0]]
CoD.ButtonIcon.__defaultHeight = 48 --[[ @ 0]]
CoD.ButtonIcon.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ButtonIcon ) --[[ @ 0]]
	self.id = "ButtonIcon" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local buttonImage = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	buttonImage:subscribeToGlobalModel( f1_arg1, "Controller", "primary_button_image", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			buttonImage:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( buttonImage ) --[[ @ 0]]
	self.buttonImage = buttonImage --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ButtonIcon.__resetProperties = function ( f3_arg0 )
	f3_arg0.buttonImage:completeAnimation() --[[ @ 0]]
	f3_arg0.buttonImage:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ButtonIcon.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f4_arg0.buttonImage:completeAnimation() --[[ @ 0]]
			f4_arg0.buttonImage:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.buttonImage ) --[[ @ 0]]
		end
	},
	Visible = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ButtonIcon.__onClose = function ( f6_arg0 )
	f6_arg0.buttonImage:close() --[[ @ 0]]
end
 --[[ @ 0]]
