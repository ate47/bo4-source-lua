-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "ui/uieditor/widgets/social/social_options_slidernarrow" ) --[[ @ 0]]

CoD.PCVoiceChatWidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PCVoiceChatWidget.__defaultWidth = 430 --[[ @ 0]]
CoD.PCVoiceChatWidget.__defaultHeight = 100 --[[ @ 0]]
CoD.PCVoiceChatWidget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PCVoiceChatWidget ) --[[ @ 0]]
	self.id = "PCVoiceChatWidget" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Image = LUI.UIImage.new( 0, 0, 8, 419, 0, 0, 26, 73 ) --[[ @ 0]]
	Image:setRGB( 0, 0, 0 ) --[[ @ 0]]
	Image:setAlpha( 0.5 ) --[[ @ 0]]
	self:addElement( Image ) --[[ @ 0]]
	self.Image = Image --[[ @ 0]]
	
	local ButtonList2 = LUI.UIList.new( f1_arg0, f1_arg1, 40, 0, nil, false, false, false, false ) --[[ @ 0]]
	ButtonList2:setLeftRight( 0, 0, -50, 480 ) --[[ @ 0]]
	ButtonList2:setTopBottom( 0, 0, 20, 80 ) --[[ @ 0]]
	ButtonList2:setScale( 0.78, 0.78 ) --[[ @ 0]]
	ButtonList2:setWidgetType( CoD.Social_Options_SliderNarrow ) --[[ @ 0]]
	ButtonList2:setSpacing( 40 ) --[[ @ 0]]
	ButtonList2:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	ButtonList2:setDataSource( "PartyVoiceChatControl" ) --[[ @ 0]]
	ButtonList2:registerEventHandler( "gain_focus", function ( element, event )
		local f2_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f2_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f2_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		return f2_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( ButtonList2, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], "ui_confirm", function ( element, menu, controller, model )
		if HasProperty( element, "action" ) then
			ProcessListAction( self, element, controller, menu ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if HasProperty( element, "action" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_6D0BB36CD318F55F", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( ButtonList2 ) --[[ @ 0]]
	self.ButtonList2 = ButtonList2 --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return IsPC()
			end
		}
	} ) --[[ @ 0]]
	ButtonList2.id = "ButtonList2" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.PCVoiceChatWidget.__onClose = function ( f6_arg0 )
	f6_arg0.ButtonList2:close() --[[ @ 0]]
end
 --[[ @ 0]]
