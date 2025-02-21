-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "ui/uieditor/widgets/customgames/customgames_optioncategorybutton" ) --[[ @ 0]]
require( "ui/uieditor/widgets/scrollbars/verticalcounter" ) --[[ @ 0]]
require( "x64:348be5c6feaceeb4" ) --[[ @ 0]]
require( "ui/uieditor/widgets/startmenu/options/flyout/startmenu_options_settingslider" ) --[[ @ 0]]

CoD.DirectorCodCasterLoadoutSettings = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DirectorCodCasterLoadoutSettings.__defaultWidth = 1920 --[[ @ 0]]
CoD.DirectorCodCasterLoadoutSettings.__defaultHeight = 1080 --[[ @ 0]]
CoD.DirectorCodCasterLoadoutSettings.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.DirectorCodCasterLoadoutSettings ) --[[ @ 0]]
	self.id = "DirectorCodCasterLoadoutSettings" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	local f1_local1 = nil --[[ @ 0]]
	
	local ButtonListPC = LUI.UIList.new( f1_arg0, f1_arg1, 6, 0, nil, false, false, false, false ) --[[ @ 0]]
	ButtonListPC:setLeftRight( 0, 0, 366, 1066 ) --[[ @ 0]]
	ButtonListPC:setTopBottom( 0, 0, 52, 722 ) --[[ @ 0]]
	ButtonListPC:setWidgetType( CoD.StartMenu_Options_SettingSlider ) --[[ @ 0]]
	ButtonListPC:setVerticalCount( 13 ) --[[ @ 0]]
	ButtonListPC:setSpacing( 6 ) --[[ @ 0]]
	ButtonListPC:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	ButtonListPC:setVerticalCounter( CoD.verticalCounter ) --[[ @ 0]]
	ButtonListPC:registerEventHandler( "list_item_gain_focus", function ( element, event )
		local f2_local0 = nil --[[ @ 0]]
		ProcessListAction( self, element, f1_arg1, f1_arg0 ) --[[ @ 0]]
		GameSettingsButtonGainFocus( self, element, f1_arg1 ) --[[ @ 0]]
		SetCurrentElementAsActive( self, element, f1_arg1 ) --[[ @ 0]]
		return f2_local0
	end ) --[[ @ 0]]
	ButtonListPC:registerEventHandler( "gain_focus", function ( element, event )
		local f3_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f3_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f3_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		SetElementCanBeNavigatedTo( self.OptionCategoryListPC, false ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xbb_pscircle"] ) --[[ @ 0]]
		return f3_local0
	end ) --[[ @ 0]]
	ButtonListPC:registerEventHandler( "lose_focus", function ( element, event )
		local f4_local0 = nil --[[ @ 0]]
		if element.loseFocus then
			f4_local0 = element:loseFocus( event ) --[[ @ 0]]
		elseif element.super.loseFocus then
			f4_local0 = element.super:loseFocus( event ) --[[ @ 0]]
		end
		SetElementCanBeNavigatedTo( self.OptionCategoryListPC, true ) --[[ @ 0]]
		return f4_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( ButtonListPC, f1_arg1, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], nil, function ( element, menu, controller, model )
		CoD.GridAndListUtility.SetFocusToFirstSelectableItem( self.ButtonListPC ) --[[ @ 0]]
		SetControllerModelValue( controller, "customGamesEdit", false ) --[[ @ 0]]
		SetFocusToElement( self, "OptionCategoryListPC", controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], @"menu/back", nil, nil ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	self:addElement( ButtonListPC ) --[[ @ 0]]
	self.ButtonListPC = ButtonListPC --[[ @ 0]]
	
	local f1_local3 = nil --[[ @ 0]]
	
	local OptionCategoryListPC = LUI.UIList.new( f1_arg0, f1_arg1, 8, 0, nil, false, false, false, false ) --[[ @ 0]]
	OptionCategoryListPC:setLeftRight( 0, 0, 100, 350 ) --[[ @ 0]]
	OptionCategoryListPC:setTopBottom( 0, 0, 52, 634 ) --[[ @ 0]]
	OptionCategoryListPC:setWidgetType( CoD.CustomGames_OptionCategoryButton ) --[[ @ 0]]
	OptionCategoryListPC:setVerticalCount( 5 ) --[[ @ 0]]
	OptionCategoryListPC:setSpacing( 8 ) --[[ @ 0]]
	OptionCategoryListPC:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	OptionCategoryListPC:setDataSource( "CodCasterLoadoutSettingsCategories" ) --[[ @ 0]]
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
	f1_arg0:AddButtonCallbackFunction( OptionCategoryListPC, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], nil, function ( element, menu, controller, model )
		ShowWidget( self.ButtonListPC ) --[[ @ 0]]
		SetCurrentElementAsActive( self, element, controller ) --[[ @ 0]]
		SetFocusToElement( self, "ButtonListPC", controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, nil ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	self:addElement( OptionCategoryListPC ) --[[ @ 0]]
	self.OptionCategoryListPC = OptionCategoryListPC --[[ @ 0]]
	
	local f1_local5 = nil --[[ @ 0]]
	f1_local5 = LUI.UIElement.createFake() --[[ @ 0]]
	self.ButtonList = f1_local5 --[[ @ 0]]
	local f1_local6 = nil --[[ @ 0]]
	f1_local6 = LUI.UIElement.createFake() --[[ @ 0]]
	self.OptionCategoryList = f1_local6 --[[ @ 0]]
	
	local OptionInfo = CoD.StartMenu_Options_SettingInfo.new( f1_arg0, f1_arg1, 0, 0, 1088, 1788, 0, 0, 52, 156 ) --[[ @ 0]]
	self:addElement( OptionInfo ) --[[ @ 0]]
	self.OptionInfo = OptionInfo --[[ @ 0]]
	
	ButtonListPC:linkToElementModel( OptionCategoryListPC, "optionsListDatasource", true, function ( model )
		local f10_local0 = model:get() --[[ @ 0]]
		if f10_local0 ~= nil then
			ButtonListPC:setDataSource( f10_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	f1_local5:linkToElementModel( f1_local6, "optionsListDatasource", true, function ( model )
		local f11_local0 = model:get() --[[ @ 0]]
		if f11_local0 ~= nil then
			f1_local5:setDataSource( f11_local0 ) --[[ @ 0]]
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
			stateName = "DefaultStatePC",
			condition = function ( menu, element, event )
				return IsPC()
			end
		}
	} ) --[[ @ 0]]
	local f1_local8 = self --[[ @ 0]]
	local f1_local9 = self.subscribeToModel --[[ @ 0]]
	local f1_local10 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local9( f1_local8, f1_local10.customGamesEdit, function ( f14_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f14_arg0:get(),
			modelName = "customGamesEdit"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "close", function ( element )
		SetControllerModelValue( f1_arg1, "customGamesEdit", false ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ButtonListPC.id = "ButtonListPC" --[[ @ 0]]
	OptionCategoryListPC.id = "OptionCategoryListPC" --[[ @ 0]]
	f1_local5.id = "ButtonList" --[[ @ 0]]
	f1_local6.id = "OptionCategoryList" --[[ @ 0]]
	self.__defaultFocus = f1_local6 --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PreLoadFunc then
		PreLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	f1_local9 = self --[[ @ 0]]
	if IsPC() then
		ChangeDefaultFocus( self, self.OptionCategoryListPC ) --[[ @ 0]]
		ForceCheckDefaultPCFocus( self.OptionCategoryListPC, f1_arg0, f1_arg1 ) --[[ @ 0]]
	end
	f1_local9 = ButtonListPC --[[ @ 0]]
	if IsPC() then
		SetElementCanBeNavigatedTo( f1_local9, false ) --[[ @ 0]]
		SetElementProperty( f1_local9, "ignoreSavedActive", true ) --[[ @ 0]]
	end
	SetElementCanBeNavigatedTo( f1_local5, false ) --[[ @ 0]]
	SetElementCanBeNavigatedTo( f1_local6, false ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.DirectorCodCasterLoadoutSettings.__resetProperties = function ( f16_arg0 )
	f16_arg0.ButtonList:completeAnimation() --[[ @ 0]]
	f16_arg0.OptionInfo:completeAnimation() --[[ @ 0]]
	f16_arg0.OptionCategoryList:completeAnimation() --[[ @ 0]]
	f16_arg0.ButtonList:setAlpha( 1 ) --[[ @ 0]]
	f16_arg0.OptionInfo:setAlpha( 1 ) --[[ @ 0]]
	f16_arg0.OptionCategoryList:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.DirectorCodCasterLoadoutSettings.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f17_arg0.ButtonList:completeAnimation() --[[ @ 0]]
			f17_arg0.ButtonList:setAlpha( 0.12 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.ButtonList ) --[[ @ 0]]
			f17_arg0.OptionInfo:completeAnimation() --[[ @ 0]]
			f17_arg0.OptionInfo:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.OptionInfo ) --[[ @ 0]]
		end
	},
	EditSettings = {
		DefaultClip = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
			f18_arg0.OptionCategoryList:completeAnimation() --[[ @ 0]]
			f18_arg0.OptionCategoryList:setAlpha( 0.12 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.OptionCategoryList ) --[[ @ 0]]
		end
	},
	DefaultStatePC = {
		DefaultClip = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.DirectorCodCasterLoadoutSettings.__onClose = function ( f20_arg0 )
	f20_arg0.ButtonListPC:close() --[[ @ 0]]
	f20_arg0.ButtonList:close() --[[ @ 0]]
	f20_arg0.OptionCategoryListPC:close() --[[ @ 0]]
	f20_arg0.OptionCategoryList:close() --[[ @ 0]]
	f20_arg0.OptionInfo:close() --[[ @ 0]]
end
 --[[ @ 0]]
