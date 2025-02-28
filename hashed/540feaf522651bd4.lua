-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:5189db42984e831b" ) --[[ @ 0]]
require( "x64:37cfaa6a68d4fa26" ) --[[ @ 0]]
require( "ui/uieditor/widgets/scrollbars/verticalcounter" ) --[[ @ 0]]

CoD.DirectorChooseGameTypeFrameZM = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DirectorChooseGameTypeFrameZM.__defaultWidth = 1920 --[[ @ 0]]
CoD.DirectorChooseGameTypeFrameZM.__defaultHeight = 804 --[[ @ 0]]
CoD.DirectorChooseGameTypeFrameZM.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.DirectorChooseGameTypeFrameZM ) --[[ @ 0]]
	self.id = "DirectorChooseGameTypeFrameZM" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local GameTypeList = LUI.UIList.new( f1_arg0, f1_arg1, 8, 0, nil, false, false, false, false ) --[[ @ 0]]
	GameTypeList:setLeftRight( 0, 0, 100, 500 ) --[[ @ 0]]
	GameTypeList:setTopBottom( 0, 0, 0, 804 ) --[[ @ 0]]
	GameTypeList:setWidgetType( CoD.CustomGames_MapModeSlider ) --[[ @ 0]]
	GameTypeList:setVerticalCount( 14 ) --[[ @ 0]]
	GameTypeList:setSpacing( 8 ) --[[ @ 0]]
	GameTypeList:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	GameTypeList:setVerticalCounter( CoD.verticalCounter ) --[[ @ 0]]
	GameTypeList:setDataSource( "GameTypeListZM" ) --[[ @ 0]]
	GameTypeList:registerEventHandler( "list_item_gain_focus", function ( element, event )
		local f2_local0 = nil --[[ @ 0]]
		CoD.GameTypeUtility.SetGameTypePreviewToElementGameType( element, f1_arg1 ) --[[ @ 0]]
		return f2_local0
	end ) --[[ @ 0]]
	GameTypeList:registerEventHandler( "gain_focus", function ( element, event )
		local f3_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f3_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f3_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f3_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( GameTypeList, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], nil, function ( element, menu, controller, model )
		GameModeSelected( element, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, nil ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	self:addElement( GameTypeList ) --[[ @ 0]]
	self.GameTypeList = GameTypeList --[[ @ 0]]
	
	local MapModeInfo = CoD.CustomGames_MapModeInfo.new( f1_arg0, f1_arg1, 0, 0, 1019, 1819, 0, 0, 0, 804 ) --[[ @ 0]]
	MapModeInfo:subscribeToGlobalModel( f1_arg1, "MapModePreview", "modeName", function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			MapModeInfo.PreviewInfoName:setText( ToUpper( GameTypeToLocalizedGameType( f6_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	MapModeInfo:subscribeToGlobalModel( f1_arg1, "MapModePreview", "modeName", function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			MapModeInfo.PreviewInfoDesc:setText( GameTypeToLocalizedGameTypeDescription( f7_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( MapModeInfo ) --[[ @ 0]]
	self.MapModeInfo = MapModeInfo --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalFirst( self, "close", function ( element )
		SetControllerModelValue( f1_arg1, "mapModeSelection", false ) --[[ @ 0]]
	end ) --[[ @ 0]]
	GameTypeList.id = "GameTypeList" --[[ @ 0]]
	self.__defaultFocus = GameTypeList --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PreLoadFunc then
		PreLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	local f1_local3 = self --[[ @ 0]]
	DataSourceHelperRecreate( f1_arg1, "MapModePreview" ) --[[ @ 0]]
	f1_local3 = GameTypeList --[[ @ 0]]
	if IsPC() then
		CoD.GridAndListUtility.DisableKeyboardNavigationOnGridCounters( f1_local3 ) --[[ @ 0]]
		SetElementProperty( f1_local3, "ignoreSavedActive", true ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.DirectorChooseGameTypeFrameZM.__onClose = function ( f9_arg0 )
	f9_arg0.GameTypeList:close() --[[ @ 0]]
	f9_arg0.MapModeInfo:close() --[[ @ 0]]
end
 --[[ @ 0]]
