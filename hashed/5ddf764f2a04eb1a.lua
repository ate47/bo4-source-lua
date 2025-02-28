-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/callingcards/callingcards_blackmarket_set_widget" ) --[[ @ 0]]
require( "ui/uieditor/widgets/scrollbars/verticalcounter" ) --[[ @ 0]]

CoD.CallingCards_Set_BlackMarket = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CallingCards_Set_BlackMarket.__defaultWidth = 1725 --[[ @ 0]]
CoD.CallingCards_Set_BlackMarket.__defaultHeight = 780 --[[ @ 0]]
CoD.CallingCards_Set_BlackMarket.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CallingCards_Set_BlackMarket ) --[[ @ 0]]
	self.id = "CallingCards_Set_BlackMarket" --[[ @ 0]]
	self.soundSet = "ChooseDecal" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local CallingCardSet = LUI.UIList.new( f1_arg0, f1_arg1, 30, 0, nil, true, false, false, false ) --[[ @ 0]]
	CallingCardSet:setLeftRight( 0.5, 0.5, -709.5, 709.5 ) --[[ @ 0]]
	CallingCardSet:setTopBottom( 0, 0, 57, 723 ) --[[ @ 0]]
	CallingCardSet:setWidgetType( CoD.CallingCards_BlackMarket_Set_Widget ) --[[ @ 0]]
	CallingCardSet:setHorizontalCount( 3 ) --[[ @ 0]]
	CallingCardSet:setVerticalCount( 3 ) --[[ @ 0]]
	CallingCardSet:setSpacing( 30 ) --[[ @ 0]]
	CallingCardSet:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	CallingCardSet:setVerticalCounter( CoD.verticalCounter ) --[[ @ 0]]
	CallingCardSet:setDataSource( "CallingCardSetBlackMarket" ) --[[ @ 0]]
	CallingCardSet:registerEventHandler( "gain_focus", function ( element, event )
		local f2_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f2_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f2_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f2_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( CallingCardSet, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		if not IsGameTrial() then
			ProcessListAction( self, element, controller, menu ) --[[ @ 0]]
			PlaySoundSetSound( self, "action" ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not IsGameTrial() then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( CallingCardSet ) --[[ @ 0]]
	self.CallingCardSet = CallingCardSet --[[ @ 0]]
	
	CallingCardSet.id = "CallingCardSet" --[[ @ 0]]
	self.__defaultFocus = CallingCardSet --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CallingCards_Set_BlackMarket.__onClose = function ( f5_arg0 )
	f5_arg0.CallingCardSet:close() --[[ @ 0]]
end
 --[[ @ 0]]
