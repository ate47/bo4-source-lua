-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "x64:14b67b3d78299a63" ) --[[ @ 0]]
require( "x64:2ef912f3f903134c" ) --[[ @ 0]]
require( "x64:c3fa19037d61cad" ) --[[ @ 0]]

CoD.WZPersonalizeCharacter_CustomCharacterFrameWidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WZPersonalizeCharacter_CustomCharacterFrameWidget.__defaultWidth = 906 --[[ @ 0]]
CoD.WZPersonalizeCharacter_CustomCharacterFrameWidget.__defaultHeight = 800 --[[ @ 0]]
CoD.WZPersonalizeCharacter_CustomCharacterFrameWidget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WZPersonalizeCharacter_CustomCharacterFrameWidget ) --[[ @ 0]]
	self.id = "WZPersonalizeCharacter_CustomCharacterFrameWidget" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local Characters = LUI.UIList.new( f1_arg0, f1_arg1, 0, 0, nil, false, false, false, false ) --[[ @ 0]]
	Characters:setLeftRight( 0, 0, 304, 760 ) --[[ @ 0]]
	Characters:setTopBottom( 0, 0, -0.5, 864.5 ) --[[ @ 0]]
	Characters:setWidgetType( CoD.HubSpecialist_character ) --[[ @ 0]]
	Characters:setHorizontalCount( 3 ) --[[ @ 0]]
	Characters:setVerticalCount( 5 ) --[[ @ 0]]
	Characters:setSpacing( 0 ) --[[ @ 0]]
	Characters:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	Characters:linkToElementModel( self, "characterDatasource", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			Characters:setDataSource( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	Characters:linkToElementModel( Characters, "disabled", true, function ( model, f3_arg1 )
		CoD.Menu.UpdateButtonShownState( f3_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	Characters:registerEventHandler( "list_item_gain_focus", function ( element, event )
		local f4_local0 = nil --[[ @ 0]]
		SetControllerModelValue( f1_arg1, "WZCharacterInfo.infoModel", element:getModel() ) --[[ @ 0]]
		CoD.ModelUtility.SetControllerModelValueToEnum( f1_arg1, "WZCharacterInfo.showInfoState", CoD.WZUtility.CharacterInfoShowState.SHOW ) --[[ @ 0]]
		return f4_local0
	end ) --[[ @ 0]]
	Characters:registerEventHandler( "list_item_lose_focus", function ( element, event )
		local f5_local0 = nil --[[ @ 0]]
		if not CoD.BaseUtility.DoesElementOrChildHaveFocus( self, "CustomCharacter" ) and not CoD.BaseUtility.DoesElementOrChildHaveFocus( self, "Characters" ) then
			PositionDraftOnFocusCharacterLost( self, element, f1_arg1, false ) --[[ @ 0]]
			CoD.ModelUtility.SetControllerModelValueToEnum( f1_arg1, "WZCharacterInfo.showInfoState", CoD.WZUtility.CharacterInfoShowState.HIDE ) --[[ @ 0]]
		end
		return f5_local0
	end ) --[[ @ 0]]
	Characters:registerEventHandler( "gain_focus", function ( element, event )
		local f6_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f6_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f6_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		return f6_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( Characters, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], "ui_confirm", function ( element, menu, controller, model )
		if not CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "disabled" ) and not IsGameTrial() then
			OpenOverlay( self, "WZPersonalizeCharacterInspect", controller, {
				model = element:getModel(),
				properties = {
					_sessionMode = Enum[@"eModes"][@"hash_3BF1DCC8138A9D39"],
					_storageLoadoutBuffer = menu._storageLoadoutBuffer
				}
			} ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "disabled" ) and not IsGameTrial() then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_6D0BB36CD318F55F", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( Characters ) --[[ @ 0]]
	self.Characters = Characters --[[ @ 0]]
	
	local CustomCharacter = CoD.CharacterSelection_CustomCharacterButton.new( f1_arg0, f1_arg1, 0, 0, 0, 300, 0, 0, 32, 512 ) --[[ @ 0]]
	CustomCharacter:mergeStateConditions( {
		{
			stateName = "NoPersonalize",
			condition = function ( menu, element, event )
				return AlwaysTrue()
			end
		}
	} ) --[[ @ 0]]
	CustomCharacter:subscribeToGlobalModel( f1_arg1, "WZDefaultCharacterInfo", nil, function ( model )
		CustomCharacter:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	CustomCharacter:registerEventHandler( "gain_focus", function ( element, event )
		local f11_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f11_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f11_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		return f11_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( CustomCharacter, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], "ui_confirm", function ( element, menu, controller, model )
		PlaySoundAlias( "uin_toggle_generic" ) --[[ @ 0]]
		OpenOverlay( self, "WZPersonalizeCharacterInspect", controller, {
			model = element:getModel(),
			properties = {
				_sessionMode = Enum[@"eModes"][@"hash_3BF1DCC8138A9D39"],
				_storageLoadoutBuffer = menu._storageLoadoutBuffer
			}
		} ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_6D0BB36CD318F55F", nil, "ui_confirm" ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( CustomCharacter, "childFocusGained", function ( element )
		SetControllerModelValue( f1_arg1, "WZCharacterInfo.infoModel", element:getModel() ) --[[ @ 0]]
		CoD.ModelUtility.SetControllerModelValueToEnum( f1_arg1, "WZCharacterInfo.showInfoState", CoD.WZUtility.CharacterInfoShowState.SHOW ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( CustomCharacter, "childFocusLost", function ( element )
		if not CoD.BaseUtility.DoesElementOrChildHaveFocus( self, "Characters" ) then
			CoD.ModelUtility.SetControllerModelValueToEnum( f1_arg1, "WZCharacterInfo.showInfoState", CoD.WZUtility.CharacterInfoShowState.HIDE ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( CustomCharacter ) --[[ @ 0]]
	self.CustomCharacter = CustomCharacter --[[ @ 0]]
	
	Characters.id = "Characters" --[[ @ 0]]
	CustomCharacter.id = "CustomCharacter" --[[ @ 0]]
	self.__defaultFocus = CustomCharacter --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PreLoadFunc then
		PreLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	local f1_local3 = self --[[ @ 0]]
	if CoD.WZUtility.IsCurrentCharacterDefault( f1_arg1 ) then
		ChangeDefaultFocus( self, self.CustomCharacter ) --[[ @ 0]]
		SetElementProperty( f1_local3, "_leftMostElement", self.CustomCharacter.CharacterSelectionCustomCharacterButtonInternal.CommonButtonOutline ) --[[ @ 0]]
	else
		SetElementProperty( f1_local3, "_leftMostElement", self.CustomCharacter.CharacterSelectionCustomCharacterButtonInternal.CommonButtonOutline ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.WZPersonalizeCharacter_CustomCharacterFrameWidget.__onClose = function ( f16_arg0 )
	f16_arg0.Characters:close() --[[ @ 0]]
	f16_arg0.CustomCharacter:close() --[[ @ 0]]
end
 --[[ @ 0]]
