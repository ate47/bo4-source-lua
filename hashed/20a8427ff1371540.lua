-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "ui/uieditor/widgets/mp/matchsettings/ingameplayerlistrow" ) --[[ @ 0]]
require( "x64:1861b15626f96605" ) --[[ @ 0]]

local PostLoadFunc = function ( self, controller )
	local f1_local0 = function ()
		self.buttonList:updateDataSource( true ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	local f1_local2 = self.subscribeToModel --[[ @ 0]]
	local f1_local3 = Engine[@"getmodelforcontroller"]( controller ) --[[ @ 0]]
	f1_local2( f1_local1, f1_local3:create( "Clients.clientCount" ), function ( f3_arg0 )
		f1_local0() --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local1 = self --[[ @ 0]]
	f1_local2 = self.subscribeToModel --[[ @ 0]]
	f1_local3 = Engine[@"getmodelforcontroller"]( controller ) --[[ @ 0]]
	f1_local2( f1_local1, f1_local3:create( "Clients.clientChangedTeam" ), function ( f4_arg0 )
		f1_local0() --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local1 = self --[[ @ 0]]
	f1_local2 = self.subscribeToModel --[[ @ 0]]
	f1_local3 = Engine[@"getmodelforcontroller"]( controller ) --[[ @ 0]]
	f1_local2( f1_local1, f1_local3:create( "CharacterSelection.clientUpdated" ), function ( f5_arg0 )
		f1_local0() --[[ @ 0]]
	end ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.StartMenu_ChangeTeam = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.StartMenu_ChangeTeam.__defaultWidth = 1725 --[[ @ 0]]
CoD.StartMenu_ChangeTeam.__defaultHeight = 780 --[[ @ 0]]
CoD.StartMenu_ChangeTeam.new = function ( f6_arg0, f6_arg1, f6_arg2, f6_arg3, f6_arg4, f6_arg5, f6_arg6, f6_arg7, f6_arg8, f6_arg9 )
	local self = LUI.UIElement.new( f6_arg2, f6_arg3, f6_arg4, f6_arg5, f6_arg6, f6_arg7, f6_arg8, f6_arg9 ) --[[ @ 0]]
	self:setClass( CoD.StartMenu_ChangeTeam ) --[[ @ 0]]
	self.id = "StartMenu_ChangeTeam" --[[ @ 0]]
	self.soundSet = "ChooseDecal" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local playerList = LUI.UIList.new( f6_arg0, f6_arg1, 2, 0, nil, false, false, false, false ) --[[ @ 0]]
	playerList:setLeftRight( 0.5, 0.5, 50, 650 ) --[[ @ 0]]
	playerList:setTopBottom( 0, 0, 150, 850 ) --[[ @ 0]]
	playerList:setWidgetType( CoD.InGamePlayerListRow ) --[[ @ 0]]
	playerList:setVerticalCount( 18 ) --[[ @ 0]]
	playerList:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	playerList:setDataSource( "InGamePlayerListRowData" ) --[[ @ 0]]
	self:addElement( playerList ) --[[ @ 0]]
	self.playerList = playerList --[[ @ 0]]
	
	local buttonList = LUI.UIList.new( f6_arg0, f6_arg1, 26, 0, nil, false, false, false, false ) --[[ @ 0]]
	buttonList:setLeftRight( 0.5, 0.5, -644, 8 ) --[[ @ 0]]
	buttonList:setTopBottom( 0, 0, 150, 576 ) --[[ @ 0]]
	buttonList:setWidgetType( CoD.StartMenu_ChangeTeam_ListWidget ) --[[ @ 0]]
	buttonList:setHorizontalCount( 3 ) --[[ @ 0]]
	buttonList:setVerticalCount( 2 ) --[[ @ 0]]
	buttonList:setSpacing( 26 ) --[[ @ 0]]
	buttonList:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
	buttonList:setDataSource( "ChangeTeamOptions" ) --[[ @ 0]]
	buttonList:linkToElementModel( buttonList, "disabled", true, function ( model, f7_arg1 )
		CoD.Menu.UpdateButtonShownState( f7_arg1, f6_arg0, f6_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	buttonList:registerEventHandler( "gain_focus", function ( element, event )
		local f8_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f8_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f8_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f6_arg0, f6_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f8_local0
	end ) --[[ @ 0]]
	f6_arg0:AddButtonCallbackFunction( buttonList, f6_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		if not CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "disabled" ) then
			ProcessListAction( self, element, controller, menu ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "disabled" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_72641978FD3DC17A", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( buttonList ) --[[ @ 0]]
	self.buttonList = buttonList --[[ @ 0]]
	
	playerList.id = "playerList" --[[ @ 0]]
	buttonList.id = "buttonList" --[[ @ 0]]
	self.__defaultFocus = buttonList --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f6_arg1, f6_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.StartMenu_ChangeTeam.__onClose = function ( f11_arg0 )
	f11_arg0.playerList:close() --[[ @ 0]]
	f11_arg0.buttonList:close() --[[ @ 0]]
end
 --[[ @ 0]]
