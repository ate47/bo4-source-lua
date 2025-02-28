-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:3a53799ae85f0491" ) --[[ @ 0]]
require( "ui/uieditor/widgets/lobby/common/layoutelements/commonbglayoutelement02" ) --[[ @ 0]]
require( "ui/uieditor/widgets/scoreboard/tabbedscoreboardfuibox" ) --[[ @ 0]]
require( "ui/uieditor/widgets/startmenu/startmenu_button_callingcards" ) --[[ @ 0]]
require( "ui/uieditor/widgets/startmenu/startmenu_button_emblem" ) --[[ @ 0]]
require( "ui/uieditor/widgets/startmenu/startmenu_button_hero" ) --[[ @ 0]]
require( "x64:356bec199ce0d80e" ) --[[ @ 0]]

CoD.StartMenu_Identity = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.StartMenu_Identity.__defaultWidth = 1920 --[[ @ 0]]
CoD.StartMenu_Identity.__defaultHeight = 780 --[[ @ 0]]
CoD.StartMenu_Identity.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	CoD.BaseUtility.CreateControllerModel( f1_arg1, "CallingCardsIdentity.DataDownloaded" ) --[[ @ 0]]
	CoD.BaseUtility.CreateControllerModel( f1_arg1, "CallingCardsIdentity.GetPublicProfileComplete" ) --[[ @ 0]]
	self:setClass( CoD.StartMenu_Identity ) --[[ @ 0]]
	self.id = "StartMenu_Identity" --[[ @ 0]]
	self.soundSet = "FrontendMain" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local EmblemEditor = CoD.StartMenu_Button_Hero.new( f1_arg0, f1_arg1, 0.5, 0.5, -564, 108, 0.5, 0.5, -341, -11 ) --[[ @ 0]]
	EmblemEditor:mergeStateConditions( {
		{
			stateName = "WZTrialUpsell",
			condition = function ( menu, element, event )
				return IsGameTrial()
			end
		},
		{
			stateName = "Disabled",
			condition = function ( menu, element, event )
				return CoD.DirectorUtility.DisableForCurrentMilestone( f1_arg1 )
			end
		},
		{
			stateName = "OnlineOnly",
			condition = function ( menu, element, event )
				return not CoD.CraftUtility.Emblems_IsEnabled( element, f1_arg1 )
			end
		},
		{
			stateName = "ComingSoon",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "UGCDisabled",
			condition = function ( menu, element, event )
				return IsUserContentRestricted( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	EmblemEditor.ButtonInternal.imageContainer.ImageContainer:setImage( RegisterImage( @"uie_ui_menu_start_menu_emblem" ) ) --[[ @ 0]]
	EmblemEditor.ButtonInternal.Title:setText( "" ) --[[ @ 0]]
	EmblemEditor.ButtonInternal.Subtitle.SubtitleText:setText( LocalizeHash( @"hash_5E93B286AFFF18D" ) ) --[[ @ 0]]
	local Emblems = EmblemEditor --[[ @ 0]]
	local Paintshop = EmblemEditor.subscribeToModel --[[ @ 0]]
	local CallingCards = Engine[@"getglobalmodel"]() --[[ @ 0]]
	Paintshop( Emblems, CallingCards["lobbyRoot.lobbyNetworkMode"], function ( f7_arg0, f7_arg1 )
		CoD.Menu.UpdateButtonShownState( f7_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	Emblems = EmblemEditor --[[ @ 0]]
	Paintshop = EmblemEditor.subscribeToModel --[[ @ 0]]
	CallingCards = Engine[@"getglobalmodel"]() --[[ @ 0]]
	Paintshop( Emblems, CallingCards["lobbyRoot.lobbyNav"], function ( f8_arg0, f8_arg1 )
		CoD.Menu.UpdateButtonShownState( f8_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	EmblemEditor:registerEventHandler( "gain_focus", function ( element, event )
		local f9_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f9_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f9_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f9_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( EmblemEditor, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		if IsGameTrial() then
			OpenPopup( self, "WZTrialUpsellPopup", controller, nil ) --[[ @ 0]]
			return true
		elseif IsLive() and not IsUserContentRestricted( controller ) then
			OpenEmblemSelect( self, element, controller, Enum[@"storagefiletype"][@"storage_emblems"], menu, "true" ) --[[ @ 0]]
			PlaySoundAlias( "uin_toggle_generic" ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsGameTrial() then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		elseif IsLive() and not IsUserContentRestricted( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( EmblemEditor ) --[[ @ 0]]
	self.EmblemEditor = EmblemEditor --[[ @ 0]]
	
	Paintshop = CoD.StartMenu_Button_Hero.new( f1_arg0, f1_arg1, 0.5, 0.5, -564, 108, 0.5, 0.5, 15.5, 346.5 ) --[[ @ 0]]
	Paintshop:mergeStateConditions( {
		{
			stateName = "WZTrialUpsell",
			condition = function ( menu, element, event )
				return IsGameTrial()
			end
		},
		{
			stateName = "Disabled",
			condition = function ( menu, element, event )
				return CoD.DirectorUtility.DisableForCurrentMilestone( f1_arg1 )
			end
		},
		{
			stateName = "OnlineOnly",
			condition = function ( menu, element, event )
				return not CoD.CraftUtility.Paintjobs_IsEnabled( element, f1_arg1 )
			end
		},
		{
			stateName = "ComingSoon",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "UGCDisabled",
			condition = function ( menu, element, event )
				return IsUserContentRestricted( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	Paintshop.ButtonInternal.imageContainer.ImageContainer:setImage( RegisterImage( @"uie_ui_menu_start_menu_paintshop" ) ) --[[ @ 0]]
	Paintshop.ButtonInternal.Title:setText( "" ) --[[ @ 0]]
	Paintshop.ButtonInternal.Subtitle.SubtitleText:setText( LocalizeHash( @"hash_EBF0E83B479C6AB" ) ) --[[ @ 0]]
	CallingCards = Paintshop --[[ @ 0]]
	Emblems = Paintshop.subscribeToModel --[[ @ 0]]
	local f1_local5 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	Emblems( CallingCards, f1_local5["lobbyRoot.lobbyNetworkMode"], function ( f17_arg0, f17_arg1 )
		CoD.Menu.UpdateButtonShownState( f17_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	CallingCards = Paintshop --[[ @ 0]]
	Emblems = Paintshop.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	Emblems( CallingCards, f1_local5["lobbyRoot.lobbyNav"], function ( f18_arg0, f18_arg1 )
		CoD.Menu.UpdateButtonShownState( f18_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	Paintshop:registerEventHandler( "gain_focus", function ( element, event )
		local f19_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f19_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f19_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f19_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( Paintshop, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		if IsGameTrial() then
			OpenPopup( self, "WZTrialUpsellPopup", controller, nil ) --[[ @ 0]]
			return true
		elseif IsLive() and not IsUserContentRestricted( controller ) and IsInDefaultState( element ) then
			CoD.CraftUtility.OpenPaintjobWeaponSelection( self, element, controller, "", menu ) --[[ @ 0]]
			PlaySoundAlias( "uin_toggle_generic" ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsGameTrial() then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		elseif IsLive() and not IsUserContentRestricted( controller ) and IsInDefaultState( element ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( Paintshop ) --[[ @ 0]]
	self.Paintshop = Paintshop --[[ @ 0]]
	
	Emblems = CoD.StartMenu_Button_Emblem.new( f1_arg0, f1_arg1, 0.5, 0.5, 144, 564, 0.5, 0.5, -341, 79 ) --[[ @ 0]]
	Emblems:mergeStateConditions( {
		{
			stateName = "UGCDisabled",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	Emblems.ButtonInternal.Title:setText( "" ) --[[ @ 0]]
	Emblems.ButtonInternal.Subtitle.SubtitleText:setText( LocalizeHash( @"hash_74335B0D906D9B56" ) ) --[[ @ 0]]
	Emblems:subscribeToGlobalModel( f1_arg1, "PerController", "identityBadge.xuid", function ( model )
		local f23_local0 = model:get() --[[ @ 0]]
		if f23_local0 ~= nil then
			Emblems.ButtonInternal.emblem0:setupPlayerEmblemByXUID( f23_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	f1_local5 = Emblems --[[ @ 0]]
	CallingCards = Emblems.subscribeToModel --[[ @ 0]]
	local ClanTagPC = Engine[@"getglobalmodel"]() --[[ @ 0]]
	CallingCards( f1_local5, ClanTagPC["lobbyRoot.lobbyNetworkMode"], function ( f24_arg0, f24_arg1 )
		CoD.Menu.UpdateButtonShownState( f24_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local5 = Emblems --[[ @ 0]]
	CallingCards = Emblems.subscribeToModel --[[ @ 0]]
	ClanTagPC = Engine[@"getglobalmodel"]() --[[ @ 0]]
	CallingCards( f1_local5, ClanTagPC["lobbyRoot.lobbyNav"], function ( f25_arg0, f25_arg1 )
		CoD.Menu.UpdateButtonShownState( f25_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	Emblems:registerEventHandler( "gain_focus", function ( element, event )
		local f26_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f26_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f26_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f26_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( Emblems, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		if IsLive() and not IsUserContentRestricted( controller ) then
			OpenEmblemSelect( self, element, controller, Enum[@"storagefiletype"][@"storage_emblems"], menu, "false" ) --[[ @ 0]]
			PlaySoundAlias( "uin_toggle_generic" ) --[[ @ 0]]
			return true
		else
			OpenEmblemSelect( self, element, controller, Enum[@"storagefiletype"][@"storage_default_emblems"], menu, "false" ) --[[ @ 0]]
			PlaySoundAlias( "uin_toggle_generic" ) --[[ @ 0]]
			return true
		end
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	self:addElement( Emblems ) --[[ @ 0]]
	self.Emblems = Emblems --[[ @ 0]]
	
	CallingCards = CoD.StartMenu_Button_CallingCards.new( f1_arg0, f1_arg1, 0.5, 0.5, 144, 564, 0.5, 0.5, 100, 213 ) --[[ @ 0]]
	CallingCards:mergeStateConditions( {
		{
			stateName = "Disabled",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "Spinning",
			condition = function ( menu, element, event )
				return IsLive() and not CallingCards_IsGetPublicProfileComplete( element, f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	ClanTagPC = CallingCards --[[ @ 0]]
	f1_local5 = CallingCards.subscribeToModel --[[ @ 0]]
	local CornerPipTR = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local5( ClanTagPC, CornerPipTR["lobbyRoot.lobbyNetworkMode"], function ( f31_arg0 )
		f1_arg0:updateElementState( CallingCards, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f31_arg0:get(),
			modelName = "lobbyRoot.lobbyNetworkMode"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	ClanTagPC = CallingCards --[[ @ 0]]
	f1_local5 = CallingCards.subscribeToModel --[[ @ 0]]
	CornerPipTR = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local5( ClanTagPC, CornerPipTR["lobbyRoot.lobbyNav"], function ( f32_arg0 )
		f1_arg0:updateElementState( CallingCards, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f32_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	ClanTagPC = CallingCards --[[ @ 0]]
	f1_local5 = CallingCards.subscribeToModel --[[ @ 0]]
	CornerPipTR = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( ClanTagPC, CornerPipTR["CallingCardsIdentity.GetPublicProfileComplete"], function ( f33_arg0 )
		f1_arg0:updateElementState( CallingCards, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f33_arg0:get(),
			modelName = "CallingCardsIdentity.GetPublicProfileComplete"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	CallingCards.Backing.Title:setText( "" ) --[[ @ 0]]
	CallingCards.Backing.Subtitle.SubtitleText:setText( LocalizeHash( @"hash_3ED22CCD3920E18B" ) ) --[[ @ 0]]
	CallingCards:registerEventHandler( "gain_focus", function ( element, event )
		local f34_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f34_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f34_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f34_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( CallingCards, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		if IsInDefaultState( element ) then
			OpenCallingCards( self, element, controller, "", menu ) --[[ @ 0]]
			PlaySoundAlias( "uin_toggle_generic" ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsInDefaultState( element ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	CallingCards:subscribeToGlobalModel( f1_arg1, "PerController", "CallingCardsIdentity.GetPublicProfileComplete", function ( model )
		local f37_local0 = CallingCards --[[ @ 0]]
		if IsLive() then
			CallingCards_EmblemGetProfile( f1_arg0, f37_local0, f1_arg1 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( CallingCards ) --[[ @ 0]]
	self.CallingCards = CallingCards --[[ @ 0]]
	
	f1_local5 = nil --[[ @ 0]]
	f1_local5 = LUI.UIElement.createFake() --[[ @ 0]]
	self.ClanTag = f1_local5 --[[ @ 0]]
	ClanTagPC = nil --[[ @ 0]]
	
	ClanTagPC = CoD.PC_StartMenu_Button_LG.new( f1_arg0, f1_arg1, 0.5, 0.5, 144, 564, 0.5, 0.5, 233.5, 346.5 ) --[[ @ 0]]
	self:addElement( ClanTagPC ) --[[ @ 0]]
	self.ClanTagPC = ClanTagPC --[[ @ 0]]
	
	CornerPipTR = LUI.UIImage.new( 0.5, 0.5, 578, 602, 0.5, 0.5, -384, -360 ) --[[ @ 0]]
	CornerPipTR:setAlpha( 0.05 ) --[[ @ 0]]
	CornerPipTR:setZRot( -90 ) --[[ @ 0]]
	CornerPipTR:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_window_corner" ) ) --[[ @ 0]]
	self:addElement( CornerPipTR ) --[[ @ 0]]
	self.CornerPipTR = CornerPipTR --[[ @ 0]]
	
	local CornerPipTL = LUI.UIImage.new( 0.5, 0.5, -602, -578, 0.5, 0.5, -384, -360 ) --[[ @ 0]]
	CornerPipTL:setAlpha( 0.05 ) --[[ @ 0]]
	CornerPipTL:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_window_corner" ) ) --[[ @ 0]]
	self:addElement( CornerPipTL ) --[[ @ 0]]
	self.CornerPipTL = CornerPipTL --[[ @ 0]]
	
	local CornerPipBR = LUI.UIImage.new( 0.5, 0.5, 580, 604, 0.5, 0.5, 365.5, 389.5 ) --[[ @ 0]]
	CornerPipBR:setAlpha( 0.05 ) --[[ @ 0]]
	CornerPipBR:setZRot( 180 ) --[[ @ 0]]
	CornerPipBR:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_window_corner" ) ) --[[ @ 0]]
	self:addElement( CornerPipBR ) --[[ @ 0]]
	self.CornerPipBR = CornerPipBR --[[ @ 0]]
	
	local CornerPipBL = LUI.UIImage.new( 0.5, 0.5, -602, -578, 0.5, 0.5, 365.5, 389.5 ) --[[ @ 0]]
	CornerPipBL:setAlpha( 0.05 ) --[[ @ 0]]
	CornerPipBL:setZRot( 90 ) --[[ @ 0]]
	CornerPipBL:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_window_corner" ) ) --[[ @ 0]]
	self:addElement( CornerPipBL ) --[[ @ 0]]
	self.CornerPipBL = CornerPipBL --[[ @ 0]]
	
	local TabbedScoreboardFuiBox = CoD.TabbedScoreboardFuiBox.new( f1_arg0, f1_arg1, 0.5, 0.5, 454, 566, 0.5, 0.5, -361.5, -345.5 ) --[[ @ 0]]
	self:addElement( TabbedScoreboardFuiBox ) --[[ @ 0]]
	self.TabbedScoreboardFuiBox = TabbedScoreboardFuiBox --[[ @ 0]]
	
	local LayoutElement02 = CoD.CommonBgLayoutElement02.new( f1_arg0, f1_arg1, 0.5, 0.5, -111, 193, 0.5, 0.5, 276.5, 352.5 ) --[[ @ 0]]
	LayoutElement02:setZoom( 100 ) --[[ @ 0]]
	LayoutElement02:setScale( 0.3, 0.3 ) --[[ @ 0]]
	self:addElement( LayoutElement02 ) --[[ @ 0]]
	self.LayoutElement02 = LayoutElement02 --[[ @ 0]]
	
	EmblemEditor.id = "EmblemEditor" --[[ @ 0]]
	Paintshop.id = "Paintshop" --[[ @ 0]]
	Emblems.id = "Emblems" --[[ @ 0]]
	CallingCards.id = "CallingCards" --[[ @ 0]]
	f1_local5.id = "ClanTag" --[[ @ 0]]
	if CoD.isPC then
		ClanTagPC.id = "ClanTagPC" --[[ @ 0]]
	end
	self.__defaultFocus = Emblems --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.StartMenu_Identity.__resetProperties = function ( f38_arg0 )
	f38_arg0.EmblemEditor:completeAnimation() --[[ @ 0]]
	f38_arg0.Paintshop:completeAnimation() --[[ @ 0]]
	f38_arg0.Emblems:completeAnimation() --[[ @ 0]]
	f38_arg0.CallingCards:completeAnimation() --[[ @ 0]]
	f38_arg0.ClanTag:completeAnimation() --[[ @ 0]]
	f38_arg0.ClanTagPC:completeAnimation() --[[ @ 0]]
	f38_arg0.EmblemEditor:setAlpha( 1 ) --[[ @ 0]]
	f38_arg0.Paintshop:setAlpha( 1 ) --[[ @ 0]]
	f38_arg0.Emblems:setAlpha( 1 ) --[[ @ 0]]
	f38_arg0.CallingCards:setAlpha( 1 ) --[[ @ 0]]
	f38_arg0.ClanTag:setAlpha( 1 ) --[[ @ 0]]
	f38_arg0.ClanTagPC:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.StartMenu_Identity.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f39_arg0, f39_arg1 )
			f39_arg0:__resetProperties() --[[ @ 0]]
			f39_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			local f39_local0 = function ( f40_arg0 )
				local f40_local0 = function ( f41_arg0 )
					f41_arg0:beginAnimation( 150 ) --[[ @ 0]]
					f41_arg0:setAlpha( 1 ) --[[ @ 0]]
					f41_arg0:registerEventHandler( "transition_complete_keyframe", f39_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f39_arg0.EmblemEditor:beginAnimation( 50 ) --[[ @ 0]]
				f39_arg0.EmblemEditor:registerEventHandler( "interrupted_keyframe", f39_arg0.clipInterrupted ) --[[ @ 0]]
				f39_arg0.EmblemEditor:registerEventHandler( "transition_complete_keyframe", f40_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f39_arg0.EmblemEditor:completeAnimation() --[[ @ 0]]
			f39_arg0.EmblemEditor:setAlpha( 0 ) --[[ @ 0]]
			f39_local0( f39_arg0.EmblemEditor ) --[[ @ 0]]
			local f39_local1 = function ( f42_arg0 )
				local f42_local0 = function ( f43_arg0 )
					f43_arg0:beginAnimation( 150 ) --[[ @ 0]]
					f43_arg0:setAlpha( 1 ) --[[ @ 0]]
					f43_arg0:registerEventHandler( "transition_complete_keyframe", f39_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f39_arg0.Paintshop:beginAnimation( 50 ) --[[ @ 0]]
				f39_arg0.Paintshop:registerEventHandler( "interrupted_keyframe", f39_arg0.clipInterrupted ) --[[ @ 0]]
				f39_arg0.Paintshop:registerEventHandler( "transition_complete_keyframe", f42_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f39_arg0.Paintshop:completeAnimation() --[[ @ 0]]
			f39_arg0.Paintshop:setAlpha( 0 ) --[[ @ 0]]
			f39_local1( f39_arg0.Paintshop ) --[[ @ 0]]
			local f39_local2 = function ( f44_arg0 )
				local f44_local0 = function ( f45_arg0 )
					f45_arg0:beginAnimation( 150 ) --[[ @ 0]]
					f45_arg0:setAlpha( 1 ) --[[ @ 0]]
					f45_arg0:registerEventHandler( "transition_complete_keyframe", f39_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f39_arg0.Emblems:beginAnimation( 250 ) --[[ @ 0]]
				f39_arg0.Emblems:registerEventHandler( "interrupted_keyframe", f39_arg0.clipInterrupted ) --[[ @ 0]]
				f39_arg0.Emblems:registerEventHandler( "transition_complete_keyframe", f44_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f39_arg0.Emblems:completeAnimation() --[[ @ 0]]
			f39_arg0.Emblems:setAlpha( 0.01 ) --[[ @ 0]]
			f39_local2( f39_arg0.Emblems ) --[[ @ 0]]
			local f39_local3 = function ( f46_arg0 )
				local f46_local0 = function ( f47_arg0 )
					f47_arg0:beginAnimation( 139 ) --[[ @ 0]]
					f47_arg0:setAlpha( 1 ) --[[ @ 0]]
					f47_arg0:registerEventHandler( "transition_complete_keyframe", f39_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f39_arg0.CallingCards:beginAnimation( 270 ) --[[ @ 0]]
				f39_arg0.CallingCards:registerEventHandler( "interrupted_keyframe", f39_arg0.clipInterrupted ) --[[ @ 0]]
				f39_arg0.CallingCards:registerEventHandler( "transition_complete_keyframe", f46_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f39_arg0.CallingCards:completeAnimation() --[[ @ 0]]
			f39_arg0.CallingCards:setAlpha( 0 ) --[[ @ 0]]
			f39_local3( f39_arg0.CallingCards ) --[[ @ 0]]
			local f39_local4 = function ( f48_arg0 )
				local f48_local0 = function ( f49_arg0 )
					f49_arg0:beginAnimation( 149 ) --[[ @ 0]]
					f49_arg0:setAlpha( 1 ) --[[ @ 0]]
					f49_arg0:registerEventHandler( "transition_complete_keyframe", function ( element, event )
						f39_arg0.clipFinished( element, event ) --[[ @ 0]]
					end ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f39_arg0.ClanTag:beginAnimation( 300 ) --[[ @ 0]]
				f39_arg0.ClanTag:registerEventHandler( "interrupted_keyframe", f39_arg0.clipInterrupted ) --[[ @ 0]]
				f39_arg0.ClanTag:registerEventHandler( "transition_complete_keyframe", f48_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f39_arg0.ClanTag:completeAnimation() --[[ @ 0]]
			f39_arg0.ClanTag.ButtonInternal.StartMenuButtonFrame:completeAnimation() --[[ @ 0]]
			f39_arg0.ClanTag:setAlpha( 0 ) --[[ @ 0]]
			f39_local4( f39_arg0.ClanTag ) --[[ @ 0]]
			local f39_local5 = function ( f51_arg0 )
				local f51_local0 = function ( f52_arg0 )
					f52_arg0:beginAnimation( 149 ) --[[ @ 0]]
					f52_arg0:setAlpha( 1 ) --[[ @ 0]]
					f52_arg0:registerEventHandler( "transition_complete_keyframe", f39_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f39_arg0.ClanTagPC:beginAnimation( 300 ) --[[ @ 0]]
				f39_arg0.ClanTagPC:registerEventHandler( "interrupted_keyframe", f39_arg0.clipInterrupted ) --[[ @ 0]]
				f39_arg0.ClanTagPC:registerEventHandler( "transition_complete_keyframe", f51_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f39_arg0.ClanTagPC:completeAnimation() --[[ @ 0]]
			f39_arg0.ClanTagPC:setAlpha( 0 ) --[[ @ 0]]
			f39_local5( f39_arg0.ClanTagPC ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.StartMenu_Identity.__onClose = function ( f53_arg0 )
	f53_arg0.EmblemEditor:close() --[[ @ 0]]
	f53_arg0.Paintshop:close() --[[ @ 0]]
	f53_arg0.Emblems:close() --[[ @ 0]]
	f53_arg0.CallingCards:close() --[[ @ 0]]
	f53_arg0.ClanTag:close() --[[ @ 0]]
	f53_arg0.ClanTagPC:close() --[[ @ 0]]
	f53_arg0.TabbedScoreboardFuiBox:close() --[[ @ 0]]
	f53_arg0.LayoutElement02:close() --[[ @ 0]]
end
 --[[ @ 0]]
