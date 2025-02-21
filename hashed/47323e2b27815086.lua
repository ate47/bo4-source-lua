-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:2b64d9dfa5911bd2" ) --[[ @ 0]]

CoD.PositionDraft_CharacterList = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PositionDraft_CharacterList.__defaultWidth = 420 --[[ @ 0]]
CoD.PositionDraft_CharacterList.__defaultHeight = 639 --[[ @ 0]]
CoD.PositionDraft_CharacterList.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PositionDraft_CharacterList ) --[[ @ 0]]
	self.id = "PositionDraft_CharacterList" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local Characters = LUI.UIList.new( f1_arg0, f1_arg1, -5, 0, nil, true, false, false, false ) --[[ @ 0]]
	Characters:mergeStateConditions( {
		{
			stateName = "ViewSelectedPlayer_Searching",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	local f1_local2 = Characters --[[ @ 0]]
	local f1_local3 = Characters.subscribeToModel --[[ @ 0]]
	local f1_local4 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4["PositionEditLoadout.SelectedCharacterIndex"], function ( f3_arg0 )
		f1_arg0:updateElementState( Characters, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f3_arg0:get(),
			modelName = "PositionEditLoadout.SelectedCharacterIndex"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	Characters:linkToElementModel( Characters, "characterIndex", true, function ( model )
		f1_arg0:updateElementState( Characters, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "characterIndex"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	Characters:linkToElementModel( Characters, "isBMLocked", true, function ( model )
		f1_arg0:updateElementState( Characters, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "isBMLocked"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	Characters:linkToElementModel( Characters, "disabled", true, function ( model )
		f1_arg0:updateElementState( Characters, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "disabled"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	Characters:linkToElementModel( Characters, "unavailable", true, function ( model )
		f1_arg0:updateElementState( Characters, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "unavailable"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local2 = Characters --[[ @ 0]]
	f1_local3 = Characters.subscribeToModel --[[ @ 0]]
	f1_local4 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local3( f1_local2, f1_local4["hudItems.specialistSwitchIsLethal"], function ( f8_arg0 )
		f1_arg0:updateElementState( Characters, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f8_arg0:get(),
			modelName = "hudItems.specialistSwitchIsLethal"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local2 = Characters --[[ @ 0]]
	f1_local3 = Characters.subscribeToModel --[[ @ 0]]
	f1_local4 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_player_dead"]], function ( f9_arg0 )
		f1_arg0:updateElementState( Characters, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f9_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_player_dead"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	Characters:setLeftRight( 0.5, 0.5, -245, 249 ) --[[ @ 0]]
	Characters:setTopBottom( 0.5, 0.5, -383, 372 ) --[[ @ 0]]
	Characters:setScale( 0.88, 0.88 ) --[[ @ 0]]
	Characters:setWidgetType( CoD.PositionDraft_Character ) --[[ @ 0]]
	Characters:setHorizontalCount( 3 ) --[[ @ 0]]
	Characters:setVerticalCount( 5 ) --[[ @ 0]]
	Characters:setSpacing( -5 ) --[[ @ 0]]
	Characters:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Characters:setDataSource( "PositionDraftCharacters" ) --[[ @ 0]]
	f1_local2 = Characters --[[ @ 0]]
	f1_local3 = Characters.subscribeToModel --[[ @ 0]]
	f1_local4 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4["factions.isCoDCaster"], function ( f10_arg0, f10_arg1 )
		CoD.Menu.UpdateButtonShownState( f10_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	Characters:registerEventHandler( "list_item_gain_focus", function ( element, event )
		local f11_local0 = nil --[[ @ 0]]
		if not IsCodCaster( f1_arg1 ) then
			PositionDraftOnFocusCharacter( self, element, f1_arg1 ) --[[ @ 0]]
		end
		return f11_local0
	end ) --[[ @ 0]]
	Characters:registerEventHandler( "list_item_lose_focus", function ( element, event )
		local f12_local0 = nil --[[ @ 0]]
		if not IsCodCaster( f1_arg1 ) and IsPC() then
			PositionDraftOnFocusCharacterLost( self, element, f1_arg1, false ) --[[ @ 0]]
		end
		return f12_local0
	end ) --[[ @ 0]]
	Characters:registerEventHandler( "gain_focus", function ( element, event )
		local f13_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f13_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f13_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f13_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( Characters, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		if not IsCodCaster( controller ) and IsElementInState( element, "DefaultState" ) then
			PositionDraftSelectCharacter( self, element, controller ) --[[ @ 0]]
			SetLoseFocusToElement( self, "Characters", controller ) --[[ @ 0]]
			SetControllerModelValue( controller, "PositionDraft.characterSelected", true ) --[[ @ 0]]
			PlaySoundAlias( "uin_specialist_select" ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not IsCodCaster( controller ) and IsElementInState( element, "DefaultState" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( Characters, "setState", function ( element, controller, f16_arg2, f16_arg3, f16_arg4 )
		if IsSelfInState( self, "Draft" ) then
			CoD.FreeCursorUtility.RetriggerCursorPosition( f1_arg0, controller ) --[[ @ 0]]
			CheckDefaultPCFocus( self.Characters, f1_arg0, controller ) --[[ @ 0]]
		elseif IsSelfInState( self, "CharacterSelected" ) then
			CoD.FreeCursorUtility.RetriggerCursorPosition( f1_arg0, controller ) --[[ @ 0]]
			CheckDefaultPCFocus( self.PositionDraftReadyButton, f1_arg0, controller ) --[[ @ 0]]
		else
			ClearRecordedFocus( f1_arg0, controller ) --[[ @ 0]]
			CoD.FreeCursorUtility.RetriggerCursorPosition( f1_arg0, controller ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Characters ) --[[ @ 0]]
	self.Characters = Characters --[[ @ 0]]
	
	Characters.id = "Characters" --[[ @ 0]]
	self.__defaultFocus = Characters --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PreLoadFunc then
		PreLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	f1_local3 = self --[[ @ 0]]
	CoD.PlayerRoleUtility.PositionDraftCharactersPostLoad( self, f1_arg1, self.Characters ) --[[ @ 0]]
	f1_local3 = Characters --[[ @ 0]]
	if IsPC() then
		SetElementPropertyEnum( f1_local3, "tooltipArchetype", CoD.FreeCursorUtility.TooltipArchetypes.ACTION_PROMPT ) --[[ @ 0]]
	else
		SetElementPropertyEnum( f1_local3, "tooltipArchetype", CoD.FreeCursorUtility.TooltipArchetypes.ACTION_PROMPT ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.PositionDraft_CharacterList.__onClose = function ( f17_arg0 )
	f17_arg0.Characters:close() --[[ @ 0]]
end
 --[[ @ 0]]
