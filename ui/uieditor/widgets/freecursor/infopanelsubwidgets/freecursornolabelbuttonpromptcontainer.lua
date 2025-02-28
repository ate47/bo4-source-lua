-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/freecursor/infopanelsubwidgets/freecursornolabelbuttonprompt" ) --[[ @ 0]]

CoD.freeCursorNoLabelButtonPromptContainer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.freeCursorNoLabelButtonPromptContainer.__defaultWidth = 621 --[[ @ 0]]
CoD.freeCursorNoLabelButtonPromptContainer.__defaultHeight = 36 --[[ @ 0]]
CoD.freeCursorNoLabelButtonPromptContainer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIHorizontalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 0, false ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Left ) --[[ @ 0]]
	self:setClass( CoD.freeCursorNoLabelButtonPromptContainer ) --[[ @ 0]]
	self.id = "freeCursorNoLabelButtonPromptContainer" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local LeftStick = CoD.freeCursorNoLabelButtonPrompt.new( f1_arg0, f1_arg1, 0, 0, 0, 36, 0, 0, 0, 36 ) --[[ @ 0]]
	LeftStick:subscribeToGlobalModel( f1_arg1, "Controller", "move_left_stick_button_image", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			LeftStick.buttonPromptImage:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	LeftStick:linkToElementModel( self, "" .. Enum[@"luibutton"][@"lui_key_lstick_pressed"], false, function ( model )
		LeftStick:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( LeftStick ) --[[ @ 0]]
	self.LeftStick = LeftStick --[[ @ 0]]
	
	local RTbtn = CoD.freeCursorNoLabelButtonPrompt.new( f1_arg0, f1_arg1, 0, 0, 36, 72, 0, 0, 0, 36 ) --[[ @ 0]]
	RTbtn:subscribeToGlobalModel( f1_arg1, "Controller", "right_trigger_button_image", function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			RTbtn.buttonPromptImage:setImage( RegisterImage( f4_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	RTbtn:linkToElementModel( self, "" .. Enum[@"luibutton"][@"lui_key_rtrig"], false, function ( model )
		RTbtn:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( RTbtn ) --[[ @ 0]]
	self.RTbtn = RTbtn --[[ @ 0]]
	
	local LTbtn = CoD.freeCursorNoLabelButtonPrompt.new( f1_arg0, f1_arg1, 0, 0, 72, 108, 0, 0, 0, 36 ) --[[ @ 0]]
	LTbtn:subscribeToGlobalModel( f1_arg1, "Controller", "left_trigger_button_image", function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			LTbtn.buttonPromptImage:setImage( RegisterImage( f6_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	LTbtn:linkToElementModel( self, "" .. Enum[@"luibutton"][@"lui_key_ltrig"], false, function ( model )
		LTbtn:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( LTbtn ) --[[ @ 0]]
	self.LTbtn = LTbtn --[[ @ 0]]
	
	local Ybtn = CoD.freeCursorNoLabelButtonPrompt.new( f1_arg0, f1_arg1, 0, 0, 108, 144, 0, 0, 0, 36 ) --[[ @ 0]]
	Ybtn:subscribeToGlobalModel( f1_arg1, "Controller", "alt2_button_image", function ( model )
		local f8_local0 = model:get() --[[ @ 0]]
		if f8_local0 ~= nil then
			Ybtn.buttonPromptImage:setImage( RegisterImage( f8_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	Ybtn:linkToElementModel( self, "" .. Enum[@"luibutton"][@"lui_key_xby_pstriangle"], false, function ( model )
		Ybtn:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Ybtn ) --[[ @ 0]]
	self.Ybtn = Ybtn --[[ @ 0]]
	
	local OptionsBtn = CoD.freeCursorNoLabelButtonPrompt.new( f1_arg0, f1_arg1, 0, 0, 144, 180, 0, 0, 0, 36 ) --[[ @ 0]]
	OptionsBtn:subscribeToGlobalModel( f1_arg1, "Controller", "start_button_image", function ( model )
		local f10_local0 = model:get() --[[ @ 0]]
		if f10_local0 ~= nil then
			OptionsBtn.buttonPromptImage:setImage( RegisterImage( f10_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	OptionsBtn:linkToElementModel( self, "" .. Enum[@"luibutton"][@"lui_key_start"], false, function ( model )
		OptionsBtn:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( OptionsBtn ) --[[ @ 0]]
	self.OptionsBtn = OptionsBtn --[[ @ 0]]
	
	local Xbtn = CoD.freeCursorNoLabelButtonPrompt.new( f1_arg0, f1_arg1, 0, 0, 180, 216, 0, 0, 0, 36 ) --[[ @ 0]]
	Xbtn:subscribeToGlobalModel( f1_arg1, "Controller", "alt1_button_image", function ( model )
		local f12_local0 = model:get() --[[ @ 0]]
		if f12_local0 ~= nil then
			Xbtn.buttonPromptImage:setImage( RegisterImage( f12_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	Xbtn:linkToElementModel( self, "" .. Enum[@"luibutton"][@"lui_key_xbx_pssquare"], false, function ( model )
		Xbtn:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Xbtn ) --[[ @ 0]]
	self.Xbtn = Xbtn --[[ @ 0]]
	
	local Bbtn = CoD.freeCursorNoLabelButtonPrompt.new( f1_arg0, f1_arg1, 0, 0, 216, 252, 0, 0, 0, 36 ) --[[ @ 0]]
	Bbtn:subscribeToGlobalModel( f1_arg1, "Controller", "secondary_button_image", function ( model )
		local f14_local0 = model:get() --[[ @ 0]]
		if f14_local0 ~= nil then
			Bbtn.buttonPromptImage:setImage( RegisterImage( f14_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	Bbtn:linkToElementModel( self, "" .. Enum[@"luibutton"][@"lui_key_xbb_pscircle"], false, function ( model )
		Bbtn:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Bbtn ) --[[ @ 0]]
	self.Bbtn = Bbtn --[[ @ 0]]
	
	local Abtn = CoD.freeCursorNoLabelButtonPrompt.new( f1_arg0, f1_arg1, 0, 0, 252, 288, 0, 0, 0, 36 ) --[[ @ 0]]
	Abtn:subscribeToGlobalModel( f1_arg1, "Controller", "primary_button_image", function ( model )
		local f16_local0 = model:get() --[[ @ 0]]
		if f16_local0 ~= nil then
			Abtn.buttonPromptImage:setImage( RegisterImage( f16_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	Abtn:linkToElementModel( self, "" .. Enum[@"luibutton"][@"lui_key_xba_pscross"], false, function ( model )
		Abtn:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Abtn ) --[[ @ 0]]
	self.Abtn = Abtn --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local9 = self --[[ @ 0]]
	CoD.FreeCursorUtility.MakeResizingHorizontalLayout( self ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.freeCursorNoLabelButtonPromptContainer.__onClose = function ( f18_arg0 )
	f18_arg0.LeftStick:close() --[[ @ 0]]
	f18_arg0.RTbtn:close() --[[ @ 0]]
	f18_arg0.LTbtn:close() --[[ @ 0]]
	f18_arg0.Ybtn:close() --[[ @ 0]]
	f18_arg0.OptionsBtn:close() --[[ @ 0]]
	f18_arg0.Xbtn:close() --[[ @ 0]]
	f18_arg0.Bbtn:close() --[[ @ 0]]
	f18_arg0.Abtn:close() --[[ @ 0]]
end
 --[[ @ 0]]
