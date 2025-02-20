-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
require( "ui/uieditor/widgets/aar_t8/levelup/aarxpmeter" ) --[[ @ 0]]
require( "x64:6341ce33d59fafd1" ) --[[ @ 0]]
require( "x64:7c048e011d7fa11c" ) --[[ @ 0]]
require( "x64:6e6df4068375d284" ) --[[ @ 0]]
require( "x64:2b64d9dfa5911bd2" ) --[[ @ 0]]
require( "x64:753cb15c89114c6" ) --[[ @ 0]]
require( "x64:12190adaba331dcb" ) --[[ @ 0]]
require( "x64:7b710bc406e458bd" ) --[[ @ 0]]

CoD.StartMenu_ChangeSpecialist = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.StartMenu_ChangeSpecialist.__defaultWidth = 1980 --[[ @ 0]]
CoD.StartMenu_ChangeSpecialist.__defaultHeight = 1080 --[[ @ 0]]
CoD.StartMenu_ChangeSpecialist.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	if IsInGame() then
		CoD.PlayerRoleUtility.SetPositionDraftSelectedCharacterIndex( f1_arg1 ) --[[ @ 0]]
	end
	self:setClass( CoD.StartMenu_ChangeSpecialist ) --[[ @ 0]]
	self.id = "StartMenu_ChangeSpecialist" --[[ @ 0]]
	self.soundSet = "MultiplayerMain" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local specialistRespawnDesc = LUI.UIText.new( 0.5, 0.5, -281.5, 281.5, 0.5, 0.5, -339.5, -306.5 ) --[[ @ 0]]
	specialistRespawnDesc:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
	specialistRespawnDesc:setZoom( 10 ) --[[ @ 0]]
	specialistRespawnDesc:setText( LocalizeToUpperString( @"hash_4AC6339F7CCE11C4" ) ) --[[ @ 0]]
	specialistRespawnDesc:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	specialistRespawnDesc:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	specialistRespawnDesc:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( specialistRespawnDesc ) --[[ @ 0]]
	self.specialistRespawnDesc = specialistRespawnDesc --[[ @ 0]]
	
	local Characters = LUI.UIList.new( f1_arg0, f1_arg1, 2, 0, nil, false, false, false, false ) --[[ @ 0]]
	Characters:mergeStateConditions( {
		{
			stateName = "ViewSelectedPlayer_Searching",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	local f1_local3 = Characters --[[ @ 0]]
	local DraftCooldown = Characters.subscribeToModel --[[ @ 0]]
	local ChangeClassButtonPC = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	DraftCooldown( f1_local3, ChangeClassButtonPC["PositionEditLoadout.SelectedCharacterIndex"], function ( f3_arg0 )
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
	f1_local3 = Characters --[[ @ 0]]
	DraftCooldown = Characters.subscribeToModel --[[ @ 0]]
	ChangeClassButtonPC = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	DraftCooldown( f1_local3, ChangeClassButtonPC["hudItems.specialistSwitchIsLethal"], function ( f8_arg0 )
		f1_arg0:updateElementState( Characters, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f8_arg0:get(),
			modelName = "hudItems.specialistSwitchIsLethal"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = Characters --[[ @ 0]]
	DraftCooldown = Characters.subscribeToModel --[[ @ 0]]
	ChangeClassButtonPC = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	DraftCooldown( f1_local3, ChangeClassButtonPC["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_534C7B2375D2D47"]], function ( f9_arg0 )
		f1_arg0:updateElementState( Characters, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f9_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_534C7B2375D2D47"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	Characters:setLeftRight( 0.5, 0.5, -594, 594 ) --[[ @ 0]]
	Characters:setTopBottom( 0.5, 0.5, -301, 11 ) --[[ @ 0]]
	Characters:setWidgetType( CoD.PositionDraft_Character ) --[[ @ 0]]
	Characters:setHorizontalCount( 7 ) --[[ @ 0]]
	Characters:setVerticalCount( 2 ) --[[ @ 0]]
	Characters:setBalanceGridRows( true ) --[[ @ 0]]
	Characters:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	Characters:setDataSource( "PositionDraftCharacters" ) --[[ @ 0]]
	Characters:registerEventHandler( "lose_list_focus", function ( element, event )
		local f10_local0 = nil --[[ @ 0]]
		CoD.GridAndListUtility.UpdateDataSource( self.Characters, false, false, false ) --[[ @ 0]]
		return f10_local0
	end ) --[[ @ 0]]
	Characters:registerEventHandler( "list_item_gain_focus", function ( element, event )
		local f11_local0 = nil --[[ @ 0]]
		CoD.BaseUtility.SetElementModelToOtherElementModel( f1_arg1, self.RestrictedText, element ) --[[ @ 0]]
		UpdateElementState( self, "RestrictedText", f1_arg1 ) --[[ @ 0]]
		return f11_local0
	end ) --[[ @ 0]]
	Characters:registerEventHandler( "gain_focus", function ( element, event )
		local f12_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f12_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f12_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		return f12_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( Characters, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], "ui_confirm", function ( element, menu, controller, model )
		if CoD.PlayerRoleUtility.IsSpecialistSelectable( element, controller ) and not IsElementInState( element, "Unavailable" ) and not IsElementInState( element, "UnavailablePC" ) and not IsPC() and CoD.BaseUtility.IsButtonHoldFinished( model ) then
			CoD.PlayerRoleUtility.InGameChangeSpecialist( element, controller ) --[[ @ 0]]
			PlaySoundAlias( "uin_start_char_select" ) --[[ @ 0]]
			return true
		elseif CoD.PlayerRoleUtility.IsSpecialistSelectable( element, controller ) and not IsElementInState( element, "Unavailable" ) and not IsElementInState( element, "UnavailablePC" ) and IsPC() and not CoD.BaseUtility.IsButtonHoldFinished( model ) then
			CoD.PlayerRoleUtility.InGameChangeSpecialist( element, controller ) --[[ @ 0]]
			PlaySoundAlias( "uin_start_char_select" ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if CoD.PlayerRoleUtility.IsSpecialistSelectable( element, controller ) and not IsElementInState( element, "Unavailable" ) and not IsElementInState( element, "UnavailablePC" ) and not IsPC() then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_6D0BB36CD318F55F", Enum[@"hash_3BEBDBAEEB3ECCCA"][@"hash_771B04FAC5BE0E35"] | 400 << Enum[@"hash_3BEBDBAEEB3ECCCA"][@"hash_176ADD225D738C93"], "ui_confirm" ) --[[ @ 0]]
			return true
		elseif CoD.PlayerRoleUtility.IsSpecialistSelectable( element, controller ) and not IsElementInState( element, "Unavailable" ) and not IsElementInState( element, "UnavailablePC" ) and IsPC() then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_6D0BB36CD318F55F", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( Characters ) --[[ @ 0]]
	self.Characters = Characters --[[ @ 0]]
	
	DraftCooldown = CoD.PositionDraft_Cooldown.new( f1_arg0, f1_arg1, 0.5, 0.5, -862.5, 862.5, 0.5, 0.5, -391.5, -354.5 ) --[[ @ 0]]
	DraftCooldown:setZoom( 10 ) --[[ @ 0]]
	self:addElement( DraftCooldown ) --[[ @ 0]]
	self.DraftCooldown = DraftCooldown --[[ @ 0]]
	
	f1_local3 = nil --[[ @ 0]]
	f1_local3 = LUI.UIElement.createFake() --[[ @ 0]]
	self.ChangeClassButton = f1_local3 --[[ @ 0]]
	ChangeClassButtonPC = nil --[[ @ 0]]
	
	ChangeClassButtonPC = CoD.DirectorGenericButton.new( f1_arg0, f1_arg1, 0.5, 0.5, -125, 125, 1, 1, -300, -208 ) --[[ @ 0]]
	ChangeClassButtonPC:setScale( 0.8, 0.8 ) --[[ @ 0]]
	ChangeClassButtonPC.DirectorSelectButtonMiniInternal.MiddleText:setText( LocalizeToUpperString( @"hash_783E3BA6F8C2DB04" ) ) --[[ @ 0]]
	ChangeClassButtonPC.DirectorSelectButtonMiniInternal.MiddleTextFocus:setText( LocalizeToUpperString( @"hash_783E3BA6F8C2DB04" ) ) --[[ @ 0]]
	local f1_local6 = ChangeClassButtonPC --[[ @ 0]]
	local f1_local7 = ChangeClassButtonPC.subscribeToModel --[[ @ 0]]
	local SignatureAbility = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local7( f1_local6, SignatureAbility["PositionDraft.stage"], function ( f15_arg0, f15_arg1 )
		CoD.Menu.UpdateButtonShownState( f15_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	ChangeClassButtonPC:registerEventHandler( "gain_focus", function ( element, event )
		local f16_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f16_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f16_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		return f16_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( ChangeClassButtonPC, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], "ui_confirm", function ( element, menu, controller, model )
		if CoD.ModelUtility.IsModelValueLessThan( controller, "PositionDraft.stage", 6 ) then
			CoD.StartMenuUtility.ShowClassSelectSlideout( menu, controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if CoD.ModelUtility.IsModelValueLessThan( controller, "PositionDraft.stage", 6 ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_0", nil, "ui_confirm" ) --[[ @ 0]]
			return false
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( ChangeClassButtonPC ) --[[ @ 0]]
	self.ChangeClassButtonPC = ChangeClassButtonPC --[[ @ 0]]
	
	f1_local7 = nil --[[ @ 0]]
	f1_local7 = LUI.UIElement.createFake() --[[ @ 0]]
	self.ArenaQuitButton = f1_local7 --[[ @ 0]]
	f1_local6 = nil --[[ @ 0]]
	f1_local6 = LUI.UIElement.createFake() --[[ @ 0]]
	self.QuitButton = f1_local6 --[[ @ 0]]
	
	SignatureAbility = CoD.StartMenu_SignatureItem.new( f1_arg0, f1_arg1, 0.5, 0.5, -41.5, 498.5, 0.5, 0.5, 45.5, 160.5 ) --[[ @ 0]]
	SignatureAbility:setScale( 0.8, 0.8 ) --[[ @ 0]]
	self:addElement( SignatureAbility ) --[[ @ 0]]
	self.SignatureAbility = SignatureAbility --[[ @ 0]]
	
	local SignatureEquipment = CoD.StartMenu_SignatureItem.new( f1_arg0, f1_arg1, 0.5, 0.5, -498.5, 41.5, 0.5, 0.5, 45.5, 160.5 ) --[[ @ 0]]
	SignatureEquipment:setScale( 0.8, 0.8 ) --[[ @ 0]]
	self:addElement( SignatureEquipment ) --[[ @ 0]]
	self.SignatureEquipment = SignatureEquipment --[[ @ 0]]
	
	local SelectedClassMiniPreview = CoD.SelectedClassMiniPreview.new( f1_arg0, f1_arg1, -0.1, 1.1, 0, 0, 1, 1, -186.5, 113.5 ) --[[ @ 0]]
	self:addElement( SelectedClassMiniPreview ) --[[ @ 0]]
	self.SelectedClassMiniPreview = SelectedClassMiniPreview --[[ @ 0]]
	
	local XpMeter = CoD.AARXpMeter.new( f1_arg0, f1_arg1, 0.5, 0.5, -878.5, 421.5, 1, 1, -347, -328 ) --[[ @ 0]]
	XpMeter:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return not IsPublicOnlineGame()
			end
		}
	} ) --[[ @ 0]]
	XpMeter.PreviousXP.Meter:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	XpMeter.PreviousXP.MeterAdd:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	XpMeter.PreviousXP.MeterGlow:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	XpMeter:subscribeToGlobalModel( f1_arg1, "XPProgressionBar", nil, function ( model )
		XpMeter:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	XpMeter:subscribeToGlobalModel( f1_arg1, "XPProgressionBar", "progress", function ( model )
		local f21_local0 = model:get() --[[ @ 0]]
		if f21_local0 ~= nil then
			XpMeter.EarnedXP.Meter:setShaderVector( 0, CoD.GetVectorComponentFromString( f21_local0, 1 ), CoD.GetVectorComponentFromString( f21_local0, 2 ), CoD.GetVectorComponentFromString( f21_local0, 3 ), CoD.GetVectorComponentFromString( f21_local0, 4 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	XpMeter:subscribeToGlobalModel( f1_arg1, "XPProgressionBar", "progress", function ( model )
		local f22_local0 = model:get() --[[ @ 0]]
		if f22_local0 ~= nil then
			XpMeter.EarnedXP.MeterAdd:setShaderVector( 0, CoD.GetVectorComponentFromString( f22_local0, 1 ), CoD.GetVectorComponentFromString( f22_local0, 2 ), CoD.GetVectorComponentFromString( f22_local0, 3 ), CoD.GetVectorComponentFromString( f22_local0, 4 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	XpMeter:subscribeToGlobalModel( f1_arg1, "XPProgressionBar", "progress", function ( model )
		local f23_local0 = model:get() --[[ @ 0]]
		if f23_local0 ~= nil then
			XpMeter.EarnedXP.MeterGlow:setShaderVector( 0, CoD.GetVectorComponentFromString( f23_local0, 1 ), CoD.GetVectorComponentFromString( f23_local0, 2 ), CoD.GetVectorComponentFromString( f23_local0, 3 ), CoD.GetVectorComponentFromString( f23_local0, 4 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	XpMeter:linkToElementModel( self, "xpEarnedDuringMatch", true, function ( model )
		local f24_local0 = model:get() --[[ @ 0]]
		if f24_local0 ~= nil then
			XpMeter.xpEarnedText:setText( LocalizeIntoString( @"hash_75C4E2BA06EA49A5", f24_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	XpMeter:linkToElementModel( self, "xpNeededToLevelUp", true, function ( model )
		local f25_local0 = model:get() --[[ @ 0]]
		if f25_local0 ~= nil then
			XpMeter.xpNeededText:setText( LocalizeIntoString( @"hash_42B924F206C5B4D8", f25_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( XpMeter ) --[[ @ 0]]
	self.XpMeter = XpMeter --[[ @ 0]]
	
	local PCKoreaContentDescriptorsIcons = nil --[[ @ 0]]
	
	PCKoreaContentDescriptorsIcons = CoD.PC_Korea_ContentDescriptors_Container.new( f1_arg0, f1_arg1, 0.5, 0.5, -885.5, -696.5, 0, 0, 89.5, 425.5 ) --[[ @ 0]]
	self:addElement( PCKoreaContentDescriptorsIcons ) --[[ @ 0]]
	self.PCKoreaContentDescriptorsIcons = PCKoreaContentDescriptorsIcons --[[ @ 0]]
	
	local RestrictedText = CoD.RestrictedItemWarningText.new( f1_arg0, f1_arg1, 0.5, 0.5, -247, 247, 0.5, 0.5, 19.5, 49.5 ) --[[ @ 0]]
	RestrictedText:mergeStateConditions( {
		{
			stateName = "CharacterRestricted",
			condition = function ( menu, element, event )
				return CoD.HUDUtility.IsGameTypeCWL() and CoD.PlayerRoleUtility.IsSelfModelCharacterRestricted( element )
			end
		},
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				local f27_local0 --[[ @ 0]]
				if not CoD.DirectorUtility.ShowDirectorPregame( f1_arg1 ) and not IsPublicWZLobby() then
					f27_local0 = CoD.PlayerRoleUtility.IsAnyAbilityRestricted( element ) --[[ @ 0]]
				else
					f27_local0 = false --[[ @ 0]]
				end
				return f27_local0
			end
		}
	} ) --[[ @ 0]]
	local f1_local14 = RestrictedText --[[ @ 0]]
	local f1_local15 = RestrictedText.subscribeToModel --[[ @ 0]]
	local f1_local16 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	f1_local15( f1_local14, f1_local16["lobbyRoot.lobbyNav"], function ( f28_arg0 )
		f1_arg0:updateElementState( RestrictedText, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f28_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:addElement( RestrictedText ) --[[ @ 0]]
	self.RestrictedText = RestrictedText --[[ @ 0]]
	
	SignatureAbility:linkToElementModel( Characters, "equipment", false, function ( model )
		SignatureAbility:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	SignatureEquipment:linkToElementModel( Characters, "ability", false, function ( model )
		SignatureEquipment:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:mergeStateConditions( {
		{
			stateName = "GameTypeBounty",
			condition = function ( menu, element, event )
				return CoD.BountyHunterUtility.GameTypeHidesChooseClass( f1_arg1 )
			end
		},
		{
			stateName = "Arena",
			condition = function ( menu, element, event )
				return IsArenaMode()
			end
		}
	} ) --[[ @ 0]]
	f1_local14 = self --[[ @ 0]]
	f1_local15 = self.subscribeToModel --[[ @ 0]]
	f1_local16 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	f1_local15( f1_local14, f1_local16["lobbyRoot.lobbyNav"], function ( f33_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f33_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self.__on_onStartMenuOpened_self = function ( f34_arg0, f34_arg1 )
		local f34_local0 = self --[[ @ 0]]
		CoD.PlayerRoleUtility.UpdatePositionDraftModels( f34_arg1 ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( f1_arg0, "onStartMenuOpened", self.__on_onStartMenuOpened_self ) --[[ @ 0]]
	self:subscribeToGlobalModel( f1_arg1, "PerController", "scriptNotify", function ( model )
		local f35_local0 = self --[[ @ 0]]
		if CoD.ModelUtility.IsParamModelEqualToHashString( model, @"hash_2DDDF8559F5B304D" ) and CoD.ModelUtility.IsScriptNotifyDataArgEqualTo( model, 1, 1 ) then
			CoD.ModelUtility.SetScriptNotifyDataArg( model, 1, 0 ) --[[ @ 0]]
			StartMenuGoBack( f1_arg0, f1_arg1 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	Characters.id = "Characters" --[[ @ 0]]
	f1_local3.id = "ChangeClassButton" --[[ @ 0]]
	if CoD.isPC then
		ChangeClassButtonPC.id = "ChangeClassButtonPC" --[[ @ 0]]
	end
	f1_local7.id = "ArenaQuitButton" --[[ @ 0]]
	f1_local6:appendEventHandler( "menu_loaded", function ()
		f1_local6:setModel( f1_arg0.buttonModel, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local6.id = "QuitButton" --[[ @ 0]]
	SelectedClassMiniPreview.id = "SelectedClassMiniPreview" --[[ @ 0]]
	self.__defaultFocus = f1_local3 --[[ @ 0]]
	self.__on_close_removeOverrides = function ()
		LUI.OverrideFunction_Remove( f1_arg0, "onStartMenuOpened", self.__on_onStartMenuOpened_self ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	f1_local15 = self --[[ @ 0]]
	if IsPC() and IsMouseOrKeyboard( f1_arg1 ) then
		CoD.PlayerRoleUtility.SubscribeForPostionDraftUpdates( self, f1_arg1 ) --[[ @ 0]]
		CoD.PCUtility.SetListOrGridAsAcceptingFocusToActiveElement( self.Characters ) --[[ @ 0]]
		CoD.BountyHunterUtility.SetChangeSpecialistDefaultFocus( self, f1_arg1 ) --[[ @ 0]]
	else
		CoD.PlayerRoleUtility.SubscribeForPostionDraftUpdates( self, f1_arg1 ) --[[ @ 0]]
		CoD.BountyHunterUtility.SetChangeSpecialistDefaultFocus( self, f1_arg1 ) --[[ @ 0]]
	end
	f1_local15 = Characters --[[ @ 0]]
	if IsPC() then
		SetElementPropertyEnum( f1_local15, "tooltipArchetype", CoD.FreeCursorUtility.TooltipArchetypes.DEFAULT ) --[[ @ 0]]
	else
		SetElementPropertyEnum( f1_local15, "tooltipArchetype", CoD.FreeCursorUtility.TooltipArchetypes.DEFAULT ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.StartMenu_ChangeSpecialist.__resetProperties = function ( f38_arg0 )
	f38_arg0.ArenaQuitButton:completeAnimation() --[[ @ 0]]
	f38_arg0.ChangeClassButton:completeAnimation() --[[ @ 0]]
	f38_arg0.QuitButton:completeAnimation() --[[ @ 0]]
	f38_arg0.SelectedClassMiniPreview:completeAnimation() --[[ @ 0]]
	f38_arg0.ChangeClassButtonPC:completeAnimation() --[[ @ 0]]
	f38_arg0.XpMeter:completeAnimation() --[[ @ 0]]
	f38_arg0.ArenaQuitButton:setAlpha( 0 ) --[[ @ 0]]
	f38_arg0.ChangeClassButton:setAlpha( 1 ) --[[ @ 0]]
	f38_arg0.QuitButton:setLeftRight( 0.5, 0.5, -12, 238 ) --[[ @ 0]]
	f38_arg0.QuitButton:setAlpha( 1 ) --[[ @ 0]]
	f38_arg0.SelectedClassMiniPreview:setAlpha( 1 ) --[[ @ 0]]
	f38_arg0.ChangeClassButtonPC:setAlpha( 1 ) --[[ @ 0]]
	f38_arg0.XpMeter:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.StartMenu_ChangeSpecialist.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f39_arg0, f39_arg1 )
			f39_arg0:__resetProperties() --[[ @ 0]]
			f39_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
			f39_arg0.ArenaQuitButton:completeAnimation() --[[ @ 0]]
			f39_arg0.ArenaQuitButton:setAlpha( 0 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.ArenaQuitButton ) --[[ @ 0]]
		end
	},
	GameTypeBounty = {
		DefaultClip = function ( f40_arg0, f40_arg1 )
			f40_arg0:__resetProperties() --[[ @ 0]]
			f40_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f40_arg0.ChangeClassButton:completeAnimation() --[[ @ 0]]
			f40_arg0.ChangeClassButton:setAlpha( 0 ) --[[ @ 0]]
			f40_arg0.clipFinished( f40_arg0.ChangeClassButton ) --[[ @ 0]]
			f40_arg0.ChangeClassButtonPC:completeAnimation() --[[ @ 0]]
			f40_arg0.ChangeClassButtonPC:setAlpha( 0 ) --[[ @ 0]]
			f40_arg0.clipFinished( f40_arg0.ChangeClassButtonPC ) --[[ @ 0]]
			f40_arg0.QuitButton:completeAnimation() --[[ @ 0]]
			f40_arg0.QuitButton:setLeftRight( 0.5, 0.5, -125, 125 ) --[[ @ 0]]
			f40_arg0.clipFinished( f40_arg0.QuitButton ) --[[ @ 0]]
			f40_arg0.SelectedClassMiniPreview:completeAnimation() --[[ @ 0]]
			f40_arg0.SelectedClassMiniPreview:setAlpha( 0 ) --[[ @ 0]]
			f40_arg0.clipFinished( f40_arg0.SelectedClassMiniPreview ) --[[ @ 0]]
		end
	},
	Arena = {
		DefaultClip = function ( f41_arg0, f41_arg1 )
			f41_arg0:__resetProperties() --[[ @ 0]]
			f41_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f41_arg0.ArenaQuitButton:completeAnimation() --[[ @ 0]]
			f41_arg0.ArenaQuitButton:setAlpha( 1 ) --[[ @ 0]]
			f41_arg0.clipFinished( f41_arg0.ArenaQuitButton ) --[[ @ 0]]
			f41_arg0.QuitButton:completeAnimation() --[[ @ 0]]
			f41_arg0.QuitButton:setAlpha( 0 ) --[[ @ 0]]
			f41_arg0.clipFinished( f41_arg0.QuitButton ) --[[ @ 0]]
			f41_arg0.XpMeter:completeAnimation() --[[ @ 0]]
			f41_arg0.XpMeter:setAlpha( 0 ) --[[ @ 0]]
			f41_arg0.clipFinished( f41_arg0.XpMeter ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.StartMenu_ChangeSpecialist.__onClose = function ( f42_arg0 )
	f42_arg0.__on_close_removeOverrides() --[[ @ 0]]
	f42_arg0.SignatureAbility:close() --[[ @ 0]]
	f42_arg0.SignatureEquipment:close() --[[ @ 0]]
	f42_arg0.Characters:close() --[[ @ 0]]
	f42_arg0.DraftCooldown:close() --[[ @ 0]]
	f42_arg0.ChangeClassButton:close() --[[ @ 0]]
	f42_arg0.ChangeClassButtonPC:close() --[[ @ 0]]
	f42_arg0.ArenaQuitButton:close() --[[ @ 0]]
	f42_arg0.QuitButton:close() --[[ @ 0]]
	f42_arg0.SelectedClassMiniPreview:close() --[[ @ 0]]
	f42_arg0.XpMeter:close() --[[ @ 0]]
	f42_arg0.PCKoreaContentDescriptorsIcons:close() --[[ @ 0]]
	f42_arg0.RestrictedText:close() --[[ @ 0]]
end
 --[[ @ 0]]
