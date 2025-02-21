-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "ui/uieditor/widgets/footer/footerbuttondoubleprompts" ) --[[ @ 0]]
require( "ui/uieditor/widgets/footerbuttonprompt" ) --[[ @ 0]]

CoD.fe_RightContainerWithHeroesHead = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.fe_RightContainerWithHeroesHead.__defaultWidth = 1305 --[[ @ 0]]
CoD.fe_RightContainerWithHeroesHead.__defaultHeight = 48 --[[ @ 0]]
CoD.fe_RightContainerWithHeroesHead.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.fe_RightContainerWithHeroesHead ) --[[ @ 0]]
	self.id = "fe_RightContainerWithHeroesHead" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = CoD.isPC --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local Image00 = LUI.UIImage.new( 0, 0, 1301, 1305, 0, 0, -54, 138 ) --[[ @ 0]]
	Image00:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( Image00 ) --[[ @ 0]]
	self.Image00 = Image00 --[[ @ 0]]
	
	local Image0 = LUI.UIImage.new( 0, 0, 1276, 1300, 0, 0, -54, 138 ) --[[ @ 0]]
	Image0:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( Image0 ) --[[ @ 0]]
	self.Image0 = Image0 --[[ @ 0]]
	
	local FooterButtonDoublePrompts = CoD.FooterButtonDoublePrompts.new( f1_arg0, f1_arg1, 1, 1, -631, -358, 1, 1, -48, 0 ) --[[ @ 0]]
	FooterButtonDoublePrompts:subscribeToGlobalModel( f1_arg1, "Controller", "left_shoulder_button_image", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			FooterButtonDoublePrompts.buttonPromptImage:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	FooterButtonDoublePrompts:subscribeToGlobalModel( f1_arg1, "Controller", "right_shoulder_button_image", function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			FooterButtonDoublePrompts.buttonPromptImage1:setImage( RegisterImage( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	FooterButtonDoublePrompts:linkToElementModel( self, "" .. Enum[@"luibutton"][@"lui_key_lb"], false, function ( model )
		FooterButtonDoublePrompts:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( FooterButtonDoublePrompts ) --[[ @ 0]]
	self.FooterButtonDoublePrompts = FooterButtonDoublePrompts --[[ @ 0]]
	
	local Padbtn = CoD.FooterButtonPrompt.new( f1_arg0, f1_arg1, 1, 1, -872, -631, 1, 1, -48, 0 ) --[[ @ 0]]
	Padbtn:subscribeToGlobalModel( f1_arg1, "Controller", "back_button_image", function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			Padbtn.buttonPromptImage:setImage( RegisterImage( f5_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	Padbtn:linkToElementModel( self, "" .. Enum[@"luibutton"][@"lui_key_back"], false, function ( model )
		Padbtn:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Padbtn ) --[[ @ 0]]
	self.Padbtn = Padbtn --[[ @ 0]]
	
	local RJoystickbtn = CoD.FooterButtonPrompt.new( f1_arg0, f1_arg1, 1, 1, -1008, -872, 1, 1, -48, 0 ) --[[ @ 0]]
	RJoystickbtn:subscribeToGlobalModel( f1_arg1, "Controller", "move_right_stick_button_image", function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			RJoystickbtn.buttonPromptImage:setImage( RegisterImage( f7_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	RJoystickbtn:linkToElementModel( self, "" .. Enum[@"luibutton"][@"lui_key_rstick_pressed"], false, function ( model )
		RJoystickbtn:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( RJoystickbtn ) --[[ @ 0]]
	self.RJoystickbtn = RJoystickbtn --[[ @ 0]]
	
	if CoD.isPC then
		Padbtn.id = "Padbtn" --[[ @ 0]]
	end
	if CoD.isPC then
		RJoystickbtn.id = "RJoystickbtn" --[[ @ 0]]
	end
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.fe_RightContainerWithHeroesHead.__onClose = function ( f9_arg0 )
	f9_arg0.FooterButtonDoublePrompts:close() --[[ @ 0]]
	f9_arg0.Padbtn:close() --[[ @ 0]]
	f9_arg0.RJoystickbtn:close() --[[ @ 0]]
end
 --[[ @ 0]]
