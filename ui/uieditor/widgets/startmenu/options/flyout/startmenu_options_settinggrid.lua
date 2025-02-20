-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
require( "ui/uieditor/widgets/startmenu/options/flyout/startmenu_options_settinggriditem" ) --[[ @ 0]]

CoD.StartMenu_Options_SettingGrid = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.StartMenu_Options_SettingGrid.__defaultWidth = 600 --[[ @ 0]]
CoD.StartMenu_Options_SettingGrid.__defaultHeight = 410 --[[ @ 0]]
CoD.StartMenu_Options_SettingGrid.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIVerticalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 2, false ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Top ) --[[ @ 0]]
	self:setClass( CoD.StartMenu_Options_SettingGrid ) --[[ @ 0]]
	self.id = "StartMenu_Options_SettingGrid" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local SettingTitle = LUI.UIText.new( 0, 0, 0, 200, 0, 0, 0, 21 ) --[[ @ 0]]
	SettingTitle:setAlpha( 0.25 ) --[[ @ 0]]
	SettingTitle:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	SettingTitle:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	SettingTitle:linkToElementModel( self, "name", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			SettingTitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( SettingTitle ) --[[ @ 0]]
	self.SettingTitle = SettingTitle --[[ @ 0]]
	
	local SettingsGrid = LUI.UIList.new( f1_arg0, f1_arg1, 3, 0, nil, false, false, false, false ) --[[ @ 0]]
	SettingsGrid:mergeStateConditions( {
		{
			stateName = "Active",
			condition = function ( menu, element, event )
				return CoD.OptionsUtility.IsPlayerSettingItemSelected( self, element, f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	local f1_local3 = SettingsGrid --[[ @ 0]]
	local f1_local4 = SettingsGrid.subscribeToModel --[[ @ 0]]
	local f1_local5 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5.PlayerSettingsUpdate, function ( f4_arg0 )
		f1_arg0:updateElementState( SettingsGrid, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f4_arg0:get(),
			modelName = "PlayerSettingsUpdate"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	SettingsGrid:linkToElementModel( SettingsGrid, "currentSelection", true, function ( model )
		f1_arg0:updateElementState( SettingsGrid, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "currentSelection"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	SettingsGrid:setLeftRight( 0, 0, 0, 603 ) --[[ @ 0]]
	SettingsGrid:setTopBottom( 0, 0, 23, 398 ) --[[ @ 0]]
	SettingsGrid:setWidgetType( CoD.StartMenu_Options_SettingGridItem ) --[[ @ 0]]
	SettingsGrid:setHorizontalCount( 2 ) --[[ @ 0]]
	SettingsGrid:setVerticalCount( 6 ) --[[ @ 0]]
	SettingsGrid:setSpacing( 3 ) --[[ @ 0]]
	SettingsGrid:setAlignment( Enum[@"LUIAlignment"][@"hash_3830CFD395E6AA0A"] ) --[[ @ 0]]
	SettingsGrid:linkToElementModel( self, "optionsDatasource", true, function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			SettingsGrid:setDataSource( f6_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	SettingsGrid:registerEventHandler( "gain_focus", function ( element, event )
		local f7_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f7_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f7_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		return f7_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( SettingsGrid, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], nil, function ( element, menu, controller, model )
		ProcessListAction( self, element, controller, menu ) --[[ @ 0]]
		PlaySoundAlias( "uin_paint_decal_nav" ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_6D0BB36CD318F55F", nil, nil ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( SettingsGrid, "setHeight", function ( element, controller )
		RecalculateScaleToElementHeight( self, self ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( SettingsGrid ) --[[ @ 0]]
	self.SettingsGrid = SettingsGrid --[[ @ 0]]
	
	SettingsGrid.id = "SettingsGrid" --[[ @ 0]]
	self.__defaultFocus = SettingsGrid --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local4 = self --[[ @ 0]]
	CoD.OptionsUtility.InitPlayerSettingWidget( self, "SettingsGrid" ) --[[ @ 0]]
	f1_local4 = SettingsGrid --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.StartMenu_Options_SettingGrid.__onClose = function ( f11_arg0 )
	f11_arg0.SettingTitle:close() --[[ @ 0]]
	f11_arg0.SettingsGrid:close() --[[ @ 0]]
end
 --[[ @ 0]]
