-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:5189db42984e831b" ) --[[ @ 0]]
require( "x64:37cfaa6a68d4fa26" ) --[[ @ 0]]
require( "ui/uieditor/widgets/scrollbars/verticalcounter" ) --[[ @ 0]]

CoD.DirectorChooseGameTypeFrame = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DirectorChooseGameTypeFrame.__defaultWidth = 1920 --[[ @ 0]]
CoD.DirectorChooseGameTypeFrame.__defaultHeight = 804 --[[ @ 0]]
CoD.DirectorChooseGameTypeFrame.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.DirectorChooseGameTypeFrame ) --[[ @ 0]]
	self.id = "DirectorChooseGameTypeFrame" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	local f1_local1 = nil --[[ @ 0]]
	
	local GameTypeCategoryGridPC = LUI.GridLayout.new( f1_arg0, f1_arg1, false, 0, 0, 8, 0, nil, nil, false, false, false, false ) --[[ @ 0]]
	GameTypeCategoryGridPC:setLeftRight( 0, 0, 100, 500 ) --[[ @ 0]]
	GameTypeCategoryGridPC:setTopBottom( 0, 0, 0, 804 ) --[[ @ 0]]
	GameTypeCategoryGridPC:setWidgetType( CoD.CustomGames_MapModeSlider ) --[[ @ 0]]
	GameTypeCategoryGridPC:setVerticalCount( 14 ) --[[ @ 0]]
	GameTypeCategoryGridPC:setSpacing( 8 ) --[[ @ 0]]
	GameTypeCategoryGridPC:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	GameTypeCategoryGridPC:setDataSource( "GameTypeCategories" ) --[[ @ 0]]
	GameTypeCategoryGridPC:registerEventHandler( "gain_focus", function ( element, event )
		local f2_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f2_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f2_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f2_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( GameTypeCategoryGridPC, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], nil, function ( element, menu, controller, model )
		SetCurrentElementAsActive( self, element, controller ) --[[ @ 0]]
		SetControllerModelValue( controller, "mapModeSelection", true ) --[[ @ 0]]
		SetFocusToElement( self, "GameTypeListPC", controller ) --[[ @ 0]]
		PlaySoundAlias( "cac_open_wpn_cust" ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, nil ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	self:addElement( GameTypeCategoryGridPC ) --[[ @ 0]]
	self.GameTypeCategoryGridPC = GameTypeCategoryGridPC --[[ @ 0]]
	
	local f1_local3 = nil --[[ @ 0]]
	
	local GameTypeListPC = LUI.UIList.new( f1_arg0, f1_arg1, 8, 0, nil, false, false, false, false ) --[[ @ 0]]
	GameTypeListPC:setLeftRight( 0, 0, 525, 925 ) --[[ @ 0]]
	GameTypeListPC:setTopBottom( 0, 0, 0, 804 ) --[[ @ 0]]
	GameTypeListPC:setWidgetType( CoD.CustomGames_MapModeSlider ) --[[ @ 0]]
	GameTypeListPC:setVerticalCount( 14 ) --[[ @ 0]]
	GameTypeListPC:setSpacing( 8 ) --[[ @ 0]]
	GameTypeListPC:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	GameTypeListPC:setVerticalCounter( CoD.verticalCounter ) --[[ @ 0]]
	GameTypeListPC:registerEventHandler( "list_item_gain_focus", function ( element, event )
		local f5_local0 = nil --[[ @ 0]]
		CoD.GameTypeUtility.SetGameTypePreviewToElementGameType( element, f1_arg1 ) --[[ @ 0]]
		return f5_local0
	end ) --[[ @ 0]]
	GameTypeListPC:registerEventHandler( "gain_focus", function ( element, event )
		local f6_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f6_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f6_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xbb_pscircle"] ) --[[ @ 0]]
		return f6_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( GameTypeListPC, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], nil, function ( element, menu, controller, model )
		GameModeSelected( element, controller ) --[[ @ 0]]
		PlaySoundAlias( "cac_open_wpn_cust" ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, nil ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( GameTypeListPC, f1_arg1, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], nil, function ( element, menu, controller, model )
		CoD.OptionsUtility.SetFocusToGrid( self.GameTypeCategoryGridPC ) --[[ @ 0]]
		SetControllerModelValue( controller, "mapModeSelection", false ) --[[ @ 0]]
		DataSourceHelperRecreate( controller, "MapModePreview" ) --[[ @ 0]]
		PlaySoundAlias( "cac_wpn_cust_exit" ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], @"menu/back", nil, nil ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	self:addElement( GameTypeListPC ) --[[ @ 0]]
	self.GameTypeListPC = GameTypeListPC --[[ @ 0]]
	
	local f1_local5 = nil --[[ @ 0]]
	f1_local5 = LUI.UIElement.createFake() --[[ @ 0]]
	self.GameTypeCategoryList = f1_local5 --[[ @ 0]]
	local f1_local6 = nil --[[ @ 0]]
	f1_local6 = LUI.UIElement.createFake() --[[ @ 0]]
	self.GameTypeList = f1_local6 --[[ @ 0]]
	
	local MapModeInfo = CoD.CustomGames_MapModeInfo.new( f1_arg0, f1_arg1, 0, 0, 1019, 1819, 0, 0, 0, 804 ) --[[ @ 0]]
	MapModeInfo:subscribeToGlobalModel( f1_arg1, "MapModePreview", "modeName", function ( model )
		local f11_local0 = model:get() --[[ @ 0]]
		if f11_local0 ~= nil then
			MapModeInfo.PreviewInfoName:setText( ToUpper( GameTypeToLocalizedGameType( f11_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	MapModeInfo:subscribeToGlobalModel( f1_arg1, "MapModePreview", "modeName", function ( model )
		local f12_local0 = model:get() --[[ @ 0]]
		if f12_local0 ~= nil then
			MapModeInfo.PreviewInfoDesc:setText( GameTypeToLocalizedGameTypeDescription( f12_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( MapModeInfo ) --[[ @ 0]]
	self.MapModeInfo = MapModeInfo --[[ @ 0]]
	
	GameTypeListPC:linkToElementModel( GameTypeCategoryGridPC, "gametypeListDatasource", true, function ( model )
		local f13_local0 = model:get() --[[ @ 0]]
		if f13_local0 ~= nil then
			GameTypeListPC:setDataSource( f13_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	f1_local6:linkToElementModel( f1_local5, "gametypeListDatasource", true, function ( model )
		local f14_local0 = model:get() --[[ @ 0]]
		if f14_local0 ~= nil then
			f1_local6:setDataSource( f14_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:mergeStateConditions( {
		{
			stateName = "ChooseGametypePCKeyboardGamepad",
			condition = function ( menu, element, event )
				local f15_local0 = CoD.ModelUtility.IsModelValueTrue( f1_arg1, "mapModeSelection" ) --[[ @ 0]]
				if f15_local0 then
					f15_local0 = IsGamepadOrKeyboardNavigation( f1_arg1 ) --[[ @ 0]]
					if f15_local0 then
						f15_local0 = IsPC() --[[ @ 0]]
					end
				end
				return f15_local0
			end
		},
		{
			stateName = "DefaultStatePCKeyboardGamepad",
			condition = function ( menu, element, event )
				return IsGamepadOrKeyboardNavigation( f1_arg1 ) and IsPC()
			end
		},
		{
			stateName = "ChooseGametype",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueTrue( f1_arg1, "mapModeSelection" )
			end
		}
	} ) --[[ @ 0]]
	local f1_local8 = self --[[ @ 0]]
	local f1_local9 = self.subscribeToModel --[[ @ 0]]
	local f1_local10 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local9( f1_local8, f1_local10.mapModeSelection, function ( f18_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f18_arg0:get(),
			modelName = "mapModeSelection"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:appendEventHandler( "input_source_changed", function ( f19_arg0, f19_arg1 )
		f19_arg1.menu = f19_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( self, f19_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local8 = self --[[ @ 0]]
	f1_local9 = self.subscribeToModel --[[ @ 0]]
	f1_local10 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local9( f1_local8, f1_local10.LastInput, function ( f20_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f20_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "close", function ( element )
		SetControllerModelValue( f1_arg1, "mapModeSelection", false ) --[[ @ 0]]
	end ) --[[ @ 0]]
	GameTypeCategoryGridPC.id = "GameTypeCategoryGridPC" --[[ @ 0]]
	GameTypeListPC.id = "GameTypeListPC" --[[ @ 0]]
	f1_local5.id = "GameTypeCategoryList" --[[ @ 0]]
	f1_local6.id = "GameTypeList" --[[ @ 0]]
	self.__defaultFocus = f1_local5 --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PreLoadFunc then
		PreLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	f1_local9 = self --[[ @ 0]]
	DataSourceHelperRecreate( f1_arg1, "MapModePreview" ) --[[ @ 0]]
	f1_local9 = GameTypeCategoryGridPC --[[ @ 0]]
	if IsPC() then
		SetElementCanBeNavigatedTo( f1_local9, false ) --[[ @ 0]]
		CoD.OptionsUtility.SetFocusToGrid( f1_local9 ) --[[ @ 0]]
	end
	f1_local9 = GameTypeListPC --[[ @ 0]]
	if IsPC() then
		SetElementCanBeNavigatedTo( f1_local9, false ) --[[ @ 0]]
		CoD.GridAndListUtility.DisableKeyboardNavigationOnGridCounters( f1_local9 ) --[[ @ 0]]
		SetElementProperty( f1_local9, "ignoreSavedActive", true ) --[[ @ 0]]
	end
	SetElementCanBeNavigatedTo( f1_local5, false ) --[[ @ 0]]
	SetElementCanBeNavigatedTo( f1_local6, false ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.DirectorChooseGameTypeFrame.__resetProperties = function ( f22_arg0 )
	f22_arg0.GameTypeList:completeAnimation() --[[ @ 0]]
	f22_arg0.GameTypeCategoryGridPC:completeAnimation() --[[ @ 0]]
	f22_arg0.GameTypeListPC:completeAnimation() --[[ @ 0]]
	f22_arg0.GameTypeCategoryList:completeAnimation() --[[ @ 0]]
	f22_arg0.GameTypeList:setAlpha( 1 ) --[[ @ 0]]
	f22_arg0.GameTypeCategoryGridPC:setAlpha( 1 ) --[[ @ 0]]
	f22_arg0.GameTypeListPC:setAlpha( 1 ) --[[ @ 0]]
	f22_arg0.GameTypeCategoryList:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.DirectorChooseGameTypeFrame.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f23_arg0, f23_arg1 )
			f23_arg0:__resetProperties() --[[ @ 0]]
			f23_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
			f23_arg0.GameTypeList:completeAnimation() --[[ @ 0]]
			f23_arg0.GameTypeList:setAlpha( 0.12 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.GameTypeList ) --[[ @ 0]]
		end
	},
	ChooseGametypePCKeyboardGamepad = {
		DefaultClip = function ( f24_arg0, f24_arg1 )
			f24_arg0:__resetProperties() --[[ @ 0]]
			f24_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f24_arg0.GameTypeCategoryGridPC:completeAnimation() --[[ @ 0]]
			f24_arg0.GameTypeCategoryGridPC:setAlpha( 0.12 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.GameTypeCategoryGridPC ) --[[ @ 0]]
		end
	},
	DefaultStatePCKeyboardGamepad = {
		DefaultClip = function ( f25_arg0, f25_arg1 )
			f25_arg0:__resetProperties() --[[ @ 0]]
			f25_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f25_arg0.GameTypeListPC:completeAnimation() --[[ @ 0]]
			f25_arg0.GameTypeListPC:setAlpha( 0.12 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.GameTypeListPC ) --[[ @ 0]]
		end
	},
	ChooseGametype = {
		DefaultClip = function ( f26_arg0, f26_arg1 )
			f26_arg0:__resetProperties() --[[ @ 0]]
			f26_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
			f26_arg0.GameTypeCategoryList:completeAnimation() --[[ @ 0]]
			f26_arg0.GameTypeCategoryList:setAlpha( 0.12 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.GameTypeCategoryList ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.DirectorChooseGameTypeFrame.__onClose = function ( f27_arg0 )
	f27_arg0.GameTypeListPC:close() --[[ @ 0]]
	f27_arg0.GameTypeList:close() --[[ @ 0]]
	f27_arg0.GameTypeCategoryGridPC:close() --[[ @ 0]]
	f27_arg0.GameTypeCategoryList:close() --[[ @ 0]]
	f27_arg0.MapModeInfo:close() --[[ @ 0]]
end
 --[[ @ 0]]
