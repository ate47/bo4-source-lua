-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "ui/uieditor/widgets/customgames/customgames_optioncategorybutton" ) --[[ @ 0]]
require( "x64:71391e29b3804784" ) --[[ @ 0]]

CoD.CodCasterSettingsSideBarDisplaySettings = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CodCasterSettingsSideBarDisplaySettings.__defaultWidth = 960 --[[ @ 0]]
CoD.CodCasterSettingsSideBarDisplaySettings.__defaultHeight = 1080 --[[ @ 0]]
CoD.CodCasterSettingsSideBarDisplaySettings.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CodCasterSettingsSideBarDisplaySettings ) --[[ @ 0]]
	self.id = "CodCasterSettingsSideBarDisplaySettings" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	local OptionsListPC = nil --[[ @ 0]]
	
	OptionsListPC = CoD.CodCasterSettingsSideBarLoadoutSettingsContainer.new( f1_arg0, f1_arg1, 0, 0, 260, 960, 0, 0, 11, 800 ) --[[ @ 0]]
	OptionsListPC:registerEventHandler( "gain_focus", function ( element, event )
		local f2_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f2_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f2_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xbb_pscircle"] ) --[[ @ 0]]
		return f2_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( OptionsListPC, f1_arg1, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], "ESCAPE", function ( element, menu, controller, model )
		CoD.CodCasterUtility.SetFocusToFirstSelectableItemInButtonList( self, self.OptionsListPC ) --[[ @ 0]]
		SetControllerModelValue( controller, "customGamesEdit", false ) --[[ @ 0]]
		SetFocusToElement( self, "OptionCategoryListPC", controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], @"menu/back", nil, "ESCAPE" ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	self:addElement( OptionsListPC ) --[[ @ 0]]
	self.OptionsListPC = OptionsListPC --[[ @ 0]]
	
	local f1_local2 = nil --[[ @ 0]]
	
	local OptionCategoryListPC = LUI.UIList.new( f1_arg0, f1_arg1, 8, 0, nil, false, false, false, false ) --[[ @ 0]]
	OptionCategoryListPC:setLeftRight( 0, 0, 0, 250 ) --[[ @ 0]]
	OptionCategoryListPC:setTopBottom( 0, 0, 11, 593 ) --[[ @ 0]]
	OptionCategoryListPC:setWidgetType( CoD.CustomGames_OptionCategoryButton ) --[[ @ 0]]
	OptionCategoryListPC:setVerticalCount( 5 ) --[[ @ 0]]
	OptionCategoryListPC:setSpacing( 8 ) --[[ @ 0]]
	OptionCategoryListPC:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	OptionCategoryListPC:setDataSource( "CodCasterDisplaySettingsCategories" ) --[[ @ 0]]
	OptionCategoryListPC:appendEventHandler( "input_source_changed", function ( f5_arg0, f5_arg1 )
		f5_arg1.menu = f5_arg1.menu or f1_arg0 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f5_arg0, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local4 = OptionCategoryListPC --[[ @ 0]]
	local f1_local5 = OptionCategoryListPC.subscribeToModel --[[ @ 0]]
	local f1_local6 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6.LastInput, function ( f6_arg0, f6_arg1 )
		CoD.Menu.UpdateButtonShownState( f6_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	OptionCategoryListPC:registerEventHandler( "gain_focus", function ( element, event )
		local f7_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f7_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f7_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f7_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( OptionCategoryListPC, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		if not IsMouse( controller ) then
			SetControllerModelValue( controller, "customGamesEdit", true ) --[[ @ 0]]
			SetElementState( self, element, controller, "Selected" ) --[[ @ 0]]
			SetFocusToElement( self, "OptionsListPC", controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not IsMouse( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( OptionCategoryListPC ) --[[ @ 0]]
	self.OptionCategoryListPC = OptionCategoryListPC --[[ @ 0]]
	
	f1_local5 = nil --[[ @ 0]]
	f1_local5 = LUI.UIElement.createFake() --[[ @ 0]]
	self.OptionsList = f1_local5 --[[ @ 0]]
	f1_local4 = nil --[[ @ 0]]
	f1_local4 = LUI.UIElement.createFake() --[[ @ 0]]
	self.OptionCategoryList = f1_local4 --[[ @ 0]]
	OptionsListPC:linkToElementModel( OptionCategoryListPC, "optionsListDatasource", true, function ( model )
		local f10_local0 = model:get() --[[ @ 0]]
		if f10_local0 ~= nil then
			OptionsListPC.ButtonList:setDataSource( f10_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	f1_local5:linkToElementModel( f1_local4, "optionsListDatasource", true, function ( model )
		local f11_local0 = model:get() --[[ @ 0]]
		if f11_local0 ~= nil then
			f1_local5.ButtonList:setDataSource( f11_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:mergeStateConditions( {
		{
			stateName = "EditSettings",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueTrue( f1_arg1, "customGamesEdit" ) and not IsPC()
			end
		},
		{
			stateName = "DefaultPC",
			condition = function ( menu, element, event )
				return IsPC()
			end
		}
	} ) --[[ @ 0]]
	local f1_local7 = self --[[ @ 0]]
	f1_local6 = self.subscribeToModel --[[ @ 0]]
	local f1_local8 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local7, f1_local8.customGamesEdit, function ( f14_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f14_arg0:get(),
			modelName = "customGamesEdit"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( self, f1_arg1, Enum[@"luibutton"][@"lui_key_rtrig"], "Y", function ( element, menu, controller, model )
		if not IsRepeatButtonPress( model ) then
			ToggleControllerModelValueNumber( controller, "CodCaster.showSettingsSideBar" ) --[[ @ 0]]
			CoD.CodCasterUtility.SetFocusToFirstSelectableItemInButtonList( self, self.OptionsList ) --[[ @ 0]]
			SetFocusToElement( self, "OptionCategoryList", controller ) --[[ @ 0]]
			CoD.GridAndListUtility.SetFocusToFirstSelectableItem( self.OptionCategoryList ) --[[ @ 0]]
			MakeElementNotFocusable( self, "OptionsList", controller ) --[[ @ 0]]
			SaveShoutcasterSettings( self, element, controller ) --[[ @ 0]]
			GoBack( self, controller ) --[[ @ 0]]
			SetLuiKeyCatcher( false ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not IsRepeatButtonPress( nil ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_rtrig"], @"menu/back", nil, "Y" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "close", function ( element )
		SetControllerModelValue( f1_arg1, "customGamesEdit", false ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self.__on_menuOpened_self = function ( f18_arg0, f18_arg1, f18_arg2, f18_arg3 )
		local f18_local0 = self --[[ @ 0]]
		if not IsPC() then
			DelaySetFocusToElement( self, "OptionCategoryList", f18_arg1, 5 ) --[[ @ 0]]
		elseif IsPC() then
			DelaySetFocusToElement( self, "OptionCategoryListPC", f18_arg1, 5 ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	f1_arg0:addMenuOpenedCallback( self.__on_menuOpened_self ) --[[ @ 0]]
	if CoD.isPC then
		OptionsListPC.id = "OptionsListPC" --[[ @ 0]]
	end
	OptionCategoryListPC.id = "OptionCategoryListPC" --[[ @ 0]]
	f1_local5.id = "OptionsList" --[[ @ 0]]
	f1_local4.id = "OptionCategoryList" --[[ @ 0]]
	self.__defaultFocus = f1_local4 --[[ @ 0]]
	self.__on_close_removeOverrides = function ()
		f1_arg0:removeMenuOpenedCallback( self.__on_menuOpened_self ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local6 = self --[[ @ 0]]
	SetElementCanBeNavigatedTo( OptionCategoryListPC, false ) --[[ @ 0]]
	SetElementCanBeNavigatedTo( f1_local4, false ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.CodCasterSettingsSideBarDisplaySettings.__resetProperties = function ( f20_arg0 )
	f20_arg0.OptionsList:completeAnimation() --[[ @ 0]]
	f20_arg0.OptionCategoryList:completeAnimation() --[[ @ 0]]
	f20_arg0.OptionsList:setAlpha( 1 ) --[[ @ 0]]
	f20_arg0.OptionsList.OptionDesc.OptionTitle:setAlpha( 1 ) --[[ @ 0]]
	f20_arg0.OptionsList.OptionDesc.OptionDesc:setAlpha( 1 ) --[[ @ 0]]
	f20_arg0.OptionCategoryList:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CodCasterSettingsSideBarDisplaySettings.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
			f21_arg0.OptionsList:completeAnimation() --[[ @ 0]]
			f21_arg0.OptionsList.OptionDesc.OptionTitle:completeAnimation() --[[ @ 0]]
			f21_arg0.OptionsList.OptionDesc.OptionDesc:completeAnimation() --[[ @ 0]]
			f21_arg0.OptionsList:setAlpha( 0.12 ) --[[ @ 0]]
			f21_arg0.OptionsList.OptionDesc.OptionTitle:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.OptionsList.OptionDesc.OptionDesc:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.OptionsList ) --[[ @ 0]]
		end
	},
	EditSettings = {
		DefaultClip = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
			f22_arg0.OptionCategoryList:completeAnimation() --[[ @ 0]]
			f22_arg0.OptionCategoryList:setAlpha( 0.12 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.OptionCategoryList ) --[[ @ 0]]
		end
	},
	DefaultPC = {
		DefaultClip = function ( f23_arg0, f23_arg1 )
			f23_arg0:__resetProperties() --[[ @ 0]]
			f23_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.CodCasterSettingsSideBarDisplaySettings.__onClose = function ( f24_arg0 )
	f24_arg0.__on_close_removeOverrides() --[[ @ 0]]
	f24_arg0.OptionsListPC:close() --[[ @ 0]]
	f24_arg0.OptionsList:close() --[[ @ 0]]
	f24_arg0.OptionCategoryListPC:close() --[[ @ 0]]
	f24_arg0.OptionCategoryList:close() --[[ @ 0]]
end
 --[[ @ 0]]
