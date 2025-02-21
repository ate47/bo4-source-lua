-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/dynamiccontainerwidget" ) --[[ @ 0]]
require( "x64:7484d96d72e020cb" ) --[[ @ 0]]
require( "x64:84edea6058974e3" ) --[[ @ 0]]
require( "x64:4ba717ae8e378ed5" ) --[[ @ 0]]
require( "x64:5692fa98381d81d1" ) --[[ @ 0]]
require( "ui/uieditor/widgets/hud/mphinttextcontainer" ) --[[ @ 0]]
require( "x64:459adac4746a97e8" ) --[[ @ 0]]
require( "x64:642130825ee4aad2" ) --[[ @ 0]]
require( "ui/uieditor/widgets/mphudwidgets/scorepopup/mpscr" ) --[[ @ 0]]
require( "x64:3b4608168bbee1cb" ) --[[ @ 0]]
require( "ui/uieditor/widgets/scoreboard/scoreboardwidget" ) --[[ @ 0]]
require( "x64:713012bca0fbd2f4" ) --[[ @ 0]]
require( "ui/uieditor/widgets/chat/ingame/ingamechatclientcontainer" ) --[[ @ 0]]
require( "x64:5c0887595cfb6bb1" ) --[[ @ 0]]

CoD.Hud_MP = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.Hud_MP = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "Hud_MP", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	if IsPC() then
		CoD.PCKoreaUtility.StartKoreaIndulgenceChecks( self ) --[[ @ 0]]
	end
	self:setUseCylinderMapping( true ) --[[ @ 0]]
	self:setClass( CoD.Hud_MP ) --[[ @ 0]]
	self.soundSet = "HUD" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_local1:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local HudMPSafeAreaContainer = CoD.Hud_MP_SafeAreaContainer.new( f1_local1, f1_arg0, 0.5, 0.5, -960, 960, 0.5, 0.5, -540, 540 ) --[[ @ 0]]
	HudMPSafeAreaContainer:registerEventHandler( "menu_loaded", function ( element, event )
		local f2_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f2_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f2_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		if IsPC() then
			SizeToHudArea( element, f1_arg0 ) --[[ @ 0]]
		elseif not IsPC() then
			SizeToSafeArea( element, f1_arg0 ) --[[ @ 0]]
		end
		if not f2_local0 then
			f2_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f2_local0
	end ) --[[ @ 0]]
	self:addElement( HudMPSafeAreaContainer ) --[[ @ 0]]
	self.HudMPSafeAreaContainer = HudMPSafeAreaContainer --[[ @ 0]]
	
	local MPScore = CoD.MPScr.new( f1_local1, f1_arg0, 0.5, 0.5, 84, 234, 0, 0, 492, 530 ) --[[ @ 0]]
	MPScore:subscribeToGlobalModel( f1_arg0, "PerController", "scriptNotify", function ( model )
		local f3_local0 = MPScore --[[ @ 0]]
		if CoD.ModelUtility.IsParamModelEqualToHashString( model, @"score_event" ) and CoD.BountyHunterUtility.GameTypeIsBounty( f1_arg0 ) then
			SetElementProperty( f1_local1, "_ignoreNextMoneyChange", true ) --[[ @ 0]]
			SetMPScoreText( f1_local1, f3_local0, f1_arg0, model ) --[[ @ 0]]
			PlayClipOnElement( self, {
				elementName = "MPScore",
				clipName = "BountyCash"
			}, f1_arg0 ) --[[ @ 0]]
		elseif CoD.ModelUtility.IsParamModelEqualToHashString( model, @"score_event" ) and IsSpecificGadgetInUse( f1_arg0, f3_local0, "gadget_combat_efficiency" ) and not CoD.SpawnSelectionUtility.IsSpawnSelectActive( f1_arg0 ) then
			PlayClipOnElement( self, {
				elementName = "MPScore",
				clipName = "CombatEfficiencyScore"
			}, f1_arg0 ) --[[ @ 0]]
			SetMPScoreText( f1_local1, f3_local0, f1_arg0, model ) --[[ @ 0]]
		elseif CoD.ModelUtility.IsParamModelEqualToHashString( model, @"score_event" ) and not CoD.SpawnSelectionUtility.IsSpawnSelectActive( f1_arg0 ) then
			PlayClipOnElement( self, {
				elementName = "MPScore",
				clipName = "NormalScore"
			}, f1_arg0 ) --[[ @ 0]]
			SetMPScoreText( f1_local1, f3_local0, f1_arg0, model ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( MPScore ) --[[ @ 0]]
	self.MPScore = MPScore --[[ @ 0]]
	
	local fullscreenContainer = CoD.DynamicContainerWidget.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( fullscreenContainer ) --[[ @ 0]]
	self.fullscreenContainer = fullscreenContainer --[[ @ 0]]
	
	local MPDamageFeedback0 = CoD.MPDamageFeedback.new( f1_local1, f1_arg0, 0.5, 0.5, -30, 30, 0.5, 0.5, -30, 30 ) --[[ @ 0]]
	MPDamageFeedback0:subscribeToGlobalModel( f1_arg0, "CurrentWeapon", nil, function ( model )
		MPDamageFeedback0:setModel( model, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( MPDamageFeedback0 ) --[[ @ 0]]
	self.MPDamageFeedback0 = MPDamageFeedback0 --[[ @ 0]]
	
	local IngameChatClientContainer = nil --[[ @ 0]]
	
	IngameChatClientContainer = CoD.IngameChatClientContainer.new( f1_local1, f1_arg0, 0.5, 0.5, -943, -403, 0.5, 0.5, -60, 230 ) --[[ @ 0]]
	self:addElement( IngameChatClientContainer ) --[[ @ 0]]
	self.IngameChatClientContainer = IngameChatClientContainer --[[ @ 0]]
	
	local MPObjectiveNotificationWidget = CoD.MP_ObjectiveNotificationWidget.new( f1_local1, f1_arg0, 0.5, 0.5, -960, 960, 0, 0, 54, 326 ) --[[ @ 0]]
	MPObjectiveNotificationWidget:mergeStateConditions( {
		{
			stateName = "ShowNotification",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "ShowNotificationDefenders",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	MPObjectiveNotificationWidget:subscribeToGlobalModel( f1_arg0, "PerController", "gametypeObjective", function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			MPObjectiveNotificationWidget.GameTypeText:setText( Engine[@"hash_4F9F1239CFD921FE"]( f7_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( MPObjectiveNotificationWidget ) --[[ @ 0]]
	self.MPObjectiveNotificationWidget = MPObjectiveNotificationWidget --[[ @ 0]]
	
	local GameEndScore = CoD.GameEndScore.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( GameEndScore ) --[[ @ 0]]
	self.GameEndScore = GameEndScore --[[ @ 0]]
	
	local HighValueOperatives = CoD.HighValueOperatives.new( f1_local1, f1_arg0, 0.5, 0.5, -960, 960, 0.5, 0.5, -540, 540 ) --[[ @ 0]]
	HighValueOperatives:mergeStateConditions( {
		{
			stateName = "Show",
			condition = function ( menu, element, event )
				return CoD.GameEndScoreUtility.IsGameScoreCurrentState( f1_arg0, "high_value_operatives" )
			end
		}
	} ) --[[ @ 0]]
	local MPHintTextContainer = HighValueOperatives --[[ @ 0]]
	local ScoreboardWidget = HighValueOperatives.subscribeToModel --[[ @ 0]]
	local SpraysAndGestures = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	ScoreboardWidget( MPHintTextContainer, SpraysAndGestures["gameScore.currentState"], function ( f9_arg0 )
		f1_local1:updateElementState( HighValueOperatives, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f9_arg0:get(),
			modelName = "gameScore.currentState"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:addElement( HighValueOperatives ) --[[ @ 0]]
	self.HighValueOperatives = HighValueOperatives --[[ @ 0]]
	
	ScoreboardWidget = CoD.ScoreboardWidget.new( f1_local1, f1_arg0, 0.5, 0.5, -960, 960, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( ScoreboardWidget ) --[[ @ 0]]
	self.ScoreboardWidget = ScoreboardWidget --[[ @ 0]]
	
	MPHintTextContainer = CoD.MPHintTextContainer.new( f1_local1, f1_arg0, 0.5, 0.5, -864, 864, 1, 1, -272, -233 ) --[[ @ 0]]
	MPHintTextContainer:mergeStateConditions( {
		{
			stateName = "display_noblink",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueNonEmptyString( f1_arg0, "MPHintText" )
			end
		}
	} ) --[[ @ 0]]
	local CalloutItems = MPHintTextContainer --[[ @ 0]]
	SpraysAndGestures = MPHintTextContainer.subscribeToModel --[[ @ 0]]
	local PCNotifContainer = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	SpraysAndGestures( CalloutItems, PCNotifContainer.MPHintText, function ( f11_arg0 )
		f1_local1:updateElementState( MPHintTextContainer, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f11_arg0:get(),
			modelName = "MPHintText"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	MPHintTextContainer:subscribeToGlobalModel( f1_arg0, "PerController", "MPHintText", function ( model )
		local f12_local0 = model:get() --[[ @ 0]]
		if f12_local0 ~= nil then
			MPHintTextContainer.MPHintText:setText( CoD.BaseUtility.AlreadyLocalized( f12_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( MPHintTextContainer ) --[[ @ 0]]
	self.MPHintTextContainer = MPHintTextContainer --[[ @ 0]]
	
	SpraysAndGestures = CoD.MPSpraysAndGestures.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( SpraysAndGestures ) --[[ @ 0]]
	self.SpraysAndGestures = SpraysAndGestures --[[ @ 0]]
	
	CalloutItems = CoD.MPCalloutItems.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( CalloutItems ) --[[ @ 0]]
	self.CalloutItems = CalloutItems --[[ @ 0]]
	
	PCNotifContainer = nil --[[ @ 0]]
	
	PCNotifContainer = CoD.PC_Notif_Container.new( f1_local1, f1_arg0, 0.5, 0.5, 470, 920, 0, 0, 30, 130 ) --[[ @ 0]]
	self:addElement( PCNotifContainer ) --[[ @ 0]]
	self.PCNotifContainer = PCNotifContainer --[[ @ 0]]
	
	local FrontendBattlenetContainer = nil --[[ @ 0]]
	
	FrontendBattlenetContainer = CoD.FrontendBattlenetContainer.new( f1_local1, f1_arg0, 0.5, 0.5, -795.5, -359.5, 1, 1, -841, -61 ) --[[ @ 0]]
	self:addElement( FrontendBattlenetContainer ) --[[ @ 0]]
	self.FrontendBattlenetContainer = FrontendBattlenetContainer --[[ @ 0]]
	
	local PlayerEmblem = LUI.UIImage.new( 0, 0, 0, 140, 0, 0, 1109.5, 1249.5 ) --[[ @ 0]]
	PlayerEmblem:setAlpha( 0.01 ) --[[ @ 0]]
	PlayerEmblem:subscribeToGlobalModel( f1_arg0, "StageResults", "potmClient", function ( model )
		local f13_local0 = model:get() --[[ @ 0]]
		if f13_local0 ~= nil then
			PlayerEmblem:setupPlayerEmblemByXUID( GetClientGameLobbyXUIDForClientNumString( f13_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( PlayerEmblem ) --[[ @ 0]]
	self.PlayerEmblem = PlayerEmblem --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "HideAllButScoreboard",
			condition = function ( menu, element, event )
				return Engine[@"isvisibilitybitset"]( f1_arg0, Enum[@"uivisibilitybit"][@"bit_in_killcam"] )
			end
		},
		{
			stateName = "SpeedBoost",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueEqualTo( f1_arg0, "playerAbilities.playerGadget2.id", "gadget_speed_burst" ) and CoD.ModelUtility.IsModelValueEqualToEnum( f1_arg0, "playerAbilities.playerGadget2.state", Enum[@"weapongadgetstates"][@"player_ability_state_inuse"] )
			end
		},
		{
			stateName = "HideForCodCaster",
			condition = function ( menu, element, event )
				return IsCodCaster( f1_arg0 ) and IsCodCasterProfileValueEqualTo( f1_arg0, "shoutcaster_qs_playerhud", 1 )
			end
		}
	} ) --[[ @ 0]]
	local f1_local17 = self --[[ @ 0]]
	local f1_local18 = self.subscribeToModel --[[ @ 0]]
	local f1_local19 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	f1_local18( f1_local17, f1_local19["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_killcam"]], function ( f17_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f17_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_killcam"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local17 = self --[[ @ 0]]
	f1_local18 = self.subscribeToModel --[[ @ 0]]
	f1_local19 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	f1_local18( f1_local17, f1_local19["playerAbilities.playerGadget2.id"], function ( f18_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f18_arg0:get(),
			modelName = "playerAbilities.playerGadget2.id"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local17 = self --[[ @ 0]]
	f1_local18 = self.subscribeToModel --[[ @ 0]]
	f1_local19 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	f1_local18( f1_local17, f1_local19["playerAbilities.playerGadget2.state"], function ( f19_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f19_arg0:get(),
			modelName = "playerAbilities.playerGadget2.state"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local17 = self --[[ @ 0]]
	f1_local18 = self.subscribeToModel --[[ @ 0]]
	f1_local19 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	f1_local18( f1_local17, f1_local19["factions.isCoDCaster"], function ( f20_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f20_arg0:get(),
			modelName = "factions.isCoDCaster"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local17 = self --[[ @ 0]]
	f1_local18 = self.subscribeToModel --[[ @ 0]]
	f1_local19 = DataSources.CodCaster.getModel( f1_arg0 ) --[[ @ 0]]
	f1_local18( f1_local17, f1_local19.profileSettingsUpdated, function ( f21_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f21_arg0:get(),
			modelName = "profileSettingsUpdated"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"], nil, function ( element, menu, controller, model )
		if CoD.HUDUtility.AreXButtonPressesDisallowed( self ) then
			BlockGameFromKeyEvent( controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if CoD.HUDUtility.AreXButtonPressesDisallowed( self ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_0", nil, nil ) --[[ @ 0]]
			return false
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:subscribeToGlobalModel( f1_arg0, "PerController", "scriptNotify", function ( model )
		local f24_local0 = self --[[ @ 0]]
		if CoD.ModelUtility.IsParamModelEqualToHashString( model, @"player_spawned" ) and not CoD.PlayerRoleUtility.IsPositionDraftStage( f1_arg0, CoD.PlayerRoleUtility.DraftStage.DRAFT_STAGE_DRAFT ) then
			CoD.HUDUtility.DisallowXButtonPressForTime( f1_local1, self, 400 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	HudMPSafeAreaContainer.id = "HudMPSafeAreaContainer" --[[ @ 0]]
	if CoD.isPC then
		IngameChatClientContainer.id = "IngameChatClientContainer" --[[ @ 0]]
	end
	GameEndScore.id = "GameEndScore" --[[ @ 0]]
	HighValueOperatives.id = "HighValueOperatives" --[[ @ 0]]
	ScoreboardWidget:setModel( self.buttonModel, f1_arg0 ) --[[ @ 0]]
	ScoreboardWidget.id = "ScoreboardWidget" --[[ @ 0]]
	if CoD.isPC then
		SpraysAndGestures.id = "SpraysAndGestures" --[[ @ 0]]
	end
	if CoD.isPC then
		CalloutItems.id = "CalloutItems" --[[ @ 0]]
	end
	if CoD.isPC then
		PCNotifContainer.id = "PCNotifContainer" --[[ @ 0]]
	end
	if CoD.isPC then
		FrontendBattlenetContainer.id = "FrontendBattlenetContainer" --[[ @ 0]]
	end
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	self.__defaultFocus = HudMPSafeAreaContainer --[[ @ 0]]
	if CoD.isPC and (IsKeyboard( f1_arg0 ) or self.ignoreCursor) then
		self:restoreState( f1_arg0 ) --[[ @ 0]]
	end
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local18 = self --[[ @ 0]]
	SetProperty( self, "preserveLuiButton", {
		[Enum[@"luibutton"][@"lui_key_back"]] = true
	} ) --[[ @ 0]]
	CoD.HUDUtility.SetupGrenadeWarningIndicators( self, f1_arg0 ) --[[ @ 0]]
	SetAllowCursorMovement( f1_local1, false ) --[[ @ 0]]
	CoD.HUDUtility.SetupArmbladeReticles( self, f1_arg0 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.Hud_MP.__resetProperties = function ( f25_arg0 )
	f25_arg0.MPScore:completeAnimation() --[[ @ 0]]
	f25_arg0.MPScore:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.Hud_MP.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f26_arg0, f26_arg1 )
			f26_arg0:__resetProperties() --[[ @ 0]]
			f26_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	HideAllButScoreboard = {
		DefaultClip = function ( f27_arg0, f27_arg1 )
			f27_arg0:__resetProperties() --[[ @ 0]]
			f27_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f27_arg0.MPScore:completeAnimation() --[[ @ 0]]
			f27_arg0.MPScore:setAlpha( 0 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.MPScore ) --[[ @ 0]]
		end
	},
	SpeedBoost = {
		DefaultClip = function ( f28_arg0, f28_arg1 )
			f28_arg0:__resetProperties() --[[ @ 0]]
			f28_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	HideForCodCaster = {
		DefaultClip = function ( f29_arg0, f29_arg1 )
			f29_arg0:__resetProperties() --[[ @ 0]]
			f29_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f29_arg0.MPScore:completeAnimation() --[[ @ 0]]
			f29_arg0.MPScore:setAlpha( 0 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.MPScore ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.Hud_MP.__onClose = function ( f30_arg0 )
	f30_arg0.HudMPSafeAreaContainer:close() --[[ @ 0]]
	f30_arg0.MPScore:close() --[[ @ 0]]
	f30_arg0.fullscreenContainer:close() --[[ @ 0]]
	f30_arg0.MPDamageFeedback0:close() --[[ @ 0]]
	f30_arg0.IngameChatClientContainer:close() --[[ @ 0]]
	f30_arg0.MPObjectiveNotificationWidget:close() --[[ @ 0]]
	f30_arg0.GameEndScore:close() --[[ @ 0]]
	f30_arg0.HighValueOperatives:close() --[[ @ 0]]
	f30_arg0.ScoreboardWidget:close() --[[ @ 0]]
	f30_arg0.MPHintTextContainer:close() --[[ @ 0]]
	f30_arg0.SpraysAndGestures:close() --[[ @ 0]]
	f30_arg0.CalloutItems:close() --[[ @ 0]]
	f30_arg0.PCNotifContainer:close() --[[ @ 0]]
	f30_arg0.FrontendBattlenetContainer:close() --[[ @ 0]]
	f30_arg0.PlayerEmblem:close() --[[ @ 0]]
end
 --[[ @ 0]]
