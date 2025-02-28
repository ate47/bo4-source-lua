-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "ui/uieditor/widgets/footerbuttonprompt" ) --[[ @ 0]]

CoD.MOTD_FeaturedButtonContainer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.MOTD_FeaturedButtonContainer.__defaultWidth = 400 --[[ @ 0]]
CoD.MOTD_FeaturedButtonContainer.__defaultHeight = 48 --[[ @ 0]]
CoD.MOTD_FeaturedButtonContainer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIHorizontalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 0, false ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Right ) --[[ @ 0]]
	self:setClass( CoD.MOTD_FeaturedButtonContainer ) --[[ @ 0]]
	self.id = "MOTD_FeaturedButtonContainer" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = CoD.isPC --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local Xbtn = CoD.FooterButtonPrompt.new( f1_arg0, f1_arg1, 0, 0, 268, 400, 0, 0, 0, 48 ) --[[ @ 0]]
	Xbtn:subscribeToGlobalModel( f1_arg1, "Controller", "alt1_button_image", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			Xbtn.buttonPromptImage:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	Xbtn:linkToElementModel( self, "" .. Enum[@"luibutton"][@"lui_key_xbx_pssquare"], false, function ( model )
		Xbtn:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( Xbtn, "setState", function ( element, controller, f4_arg2, f4_arg3, f4_arg4 )
		if IsInDefaultState( element ) then
			HideWidget( element ) --[[ @ 0]]
		else
			ShowWidget( element ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Xbtn ) --[[ @ 0]]
	self.Xbtn = Xbtn --[[ @ 0]]
	
	local Bbtn = CoD.FooterButtonPrompt.new( f1_arg0, f1_arg1, 0, 0, 148, 268, 0, 0, 0, 48 ) --[[ @ 0]]
	Bbtn:subscribeToGlobalModel( f1_arg1, "Controller", "secondary_button_image", function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			Bbtn.buttonPromptImage:setImage( RegisterImage( f5_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	Bbtn:linkToElementModel( self, "" .. Enum[@"luibutton"][@"lui_key_xbb_pscircle"], false, function ( model )
		Bbtn:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( Bbtn, "setState", function ( element, controller, f7_arg2, f7_arg3, f7_arg4 )
		if IsInDefaultState( element ) then
			HideWidget( element ) --[[ @ 0]]
		else
			ShowWidget( element ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Bbtn ) --[[ @ 0]]
	self.Bbtn = Bbtn --[[ @ 0]]
	
	local Abtn = CoD.FooterButtonPrompt.new( f1_arg0, f1_arg1, 0, 0, 16, 148, 0, 0, 0, 48 ) --[[ @ 0]]
	Abtn:subscribeToGlobalModel( f1_arg1, "Controller", "primary_button_image", function ( model )
		local f8_local0 = model:get() --[[ @ 0]]
		if f8_local0 ~= nil then
			Abtn.buttonPromptImage:setImage( RegisterImage( f8_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	Abtn:linkToElementModel( self, "" .. Enum[@"luibutton"][@"lui_key_xba_pscross"], false, function ( model )
		Abtn:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( Abtn, "setState", function ( element, controller, f10_arg2, f10_arg3, f10_arg4 )
		if IsInDefaultState( element ) then
			HideWidget( element ) --[[ @ 0]]
		else
			ShowWidget( element ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Abtn ) --[[ @ 0]]
	self.Abtn = Abtn --[[ @ 0]]
	
	if CoD.isPC then
		Xbtn.id = "Xbtn" --[[ @ 0]]
	end
	if CoD.isPC then
		Bbtn.id = "Bbtn" --[[ @ 0]]
	end
	if CoD.isPC then
		Abtn.id = "Abtn" --[[ @ 0]]
	end
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.MOTD_FeaturedButtonContainer.__onClose = function ( f11_arg0 )
	f11_arg0.Xbtn:close() --[[ @ 0]]
	f11_arg0.Bbtn:close() --[[ @ 0]]
	f11_arg0.Abtn:close() --[[ @ 0]]
end
 --[[ @ 0]]
