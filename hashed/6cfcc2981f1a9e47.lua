-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
require( "ui/uieditor/widgets/pc/footer/footerbutton_persistent" ) --[[ @ 0]]
require( "x64:37f0168f93c6f579" ) --[[ @ 0]]

CoD.FooterButton_PersistentLeftContainer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.FooterButton_PersistentLeftContainer.__defaultWidth = 480 --[[ @ 0]]
CoD.FooterButton_PersistentLeftContainer.__defaultHeight = 54 --[[ @ 0]]
CoD.FooterButton_PersistentLeftContainer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIHorizontalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 0, false ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Left ) --[[ @ 0]]
	self:setClass( CoD.FooterButton_PersistentLeftContainer ) --[[ @ 0]]
	self.id = "FooterButton_PersistentLeftContainer" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = CoD.isPC --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local FooterButtonChat = CoD.FooterButton_Persistent.new( f1_arg0, f1_arg1, 0, 0, 0, 120, 0, 1, 0, 0 ) --[[ @ 0]]
	FooterButtonChat:mergeStateConditions( {
		{
			stateName = "Disabled",
			condition = function ( menu, element, event )
				return CoD.PCUtility.AreUIShortcutInputLocked( f1_arg1 ) and not CoD.PCUtility.MenuChatToggleShouldBeVisible( element, menu, f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	local FooterButtonSocial = FooterButtonChat --[[ @ 0]]
	local FooterButtonFriends = FooterButtonChat.subscribeToModel --[[ @ 0]]
	local FooterButtonStore = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	FooterButtonFriends( FooterButtonSocial, FooterButtonStore.LockUIShortcutInput, function ( f3_arg0 )
		f1_arg0:updateElementState( FooterButtonChat, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f3_arg0:get(),
			modelName = "LockUIShortcutInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	FooterButtonSocial = FooterButtonChat --[[ @ 0]]
	FooterButtonFriends = FooterButtonChat.subscribeToModel --[[ @ 0]]
	FooterButtonStore = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	FooterButtonFriends( FooterButtonSocial, FooterButtonStore["ChatGlobal.ChatAvailableInMenuEvent"], function ( f4_arg0 )
		f1_arg0:updateElementState( FooterButtonChat, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f4_arg0:get(),
			modelName = "ChatGlobal.ChatAvailableInMenuEvent"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	FooterButtonChat.label:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_7EE439D162567C89" ) ) --[[ @ 0]]
	FooterButtonChat.label2:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_68266B58948F0859" ) ) --[[ @ 0]]
	FooterButtonChat.footerTooltip.label:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_21BBDD7D1B7CFB1B" ) ) --[[ @ 0]]
	FooterButtonChat.footerTooltip.keyPrompt.keybind.__TooltipKeybind = function ()
		FooterButtonChat.footerTooltip.keyPrompt.keybind:setText( Engine[@"hash_4F9F1239CFD921FE"]( CoD.PCUtility.ForceSetTextOnRebind( @"hash_4925899529895C0B" ) ) ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	FooterButtonChat.footerTooltip.keyPrompt.keybind.__TooltipKeybind() --[[ @ 0]]
	FooterButtonChat:registerEventHandler( "gain_focus", function ( element, event )
		local f6_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f6_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f6_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3865DD2DB1EFE9F8"] ) --[[ @ 0]]
		return f6_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( FooterButtonChat, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], "ui_confirm", function ( element, menu, controller, model )
		CoD.PCUtility.ToggleChatVisibility( controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_0", nil, "ui_confirm" ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( FooterButtonChat, f1_arg1, Enum[@"LUIButton"][@"hash_3865DD2DB1EFE9F8"], "MOUSE1", function ( element, menu, controller, model )
		CoD.PCUtility.ToggleChatVisibility( controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3865DD2DB1EFE9F8"], @"hash_0", nil, "MOUSE1" ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	self:addElement( FooterButtonChat ) --[[ @ 0]]
	self.FooterButtonChat = FooterButtonChat --[[ @ 0]]
	
	FooterButtonFriends = CoD.FooterButton_Persistent.new( f1_arg0, f1_arg1, 0, 0, 120, 240, 0, 1, 0, 0 ) --[[ @ 0]]
	FooterButtonFriends:mergeStateConditions( {
		{
			stateName = "Disabled",
			condition = function ( menu, element, event )
				return CoD.PCUtility.AreUIShortcutInputLocked( f1_arg1 ) and not CoD.PCUtility.CanOpenFriends( f1_arg1, menu )
			end
		}
	} ) --[[ @ 0]]
	FooterButtonStore = FooterButtonFriends --[[ @ 0]]
	FooterButtonSocial = FooterButtonFriends.subscribeToModel --[[ @ 0]]
	local FooterButtonSettings = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	FooterButtonSocial( FooterButtonStore, FooterButtonSettings.LockUIShortcutInput, function ( f12_arg0 )
		f1_arg0:updateElementState( FooterButtonFriends, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f12_arg0:get(),
			modelName = "LockUIShortcutInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	FooterButtonFriends.label:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_2139903360C0166C" ) ) --[[ @ 0]]
	FooterButtonFriends.label2:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_308345F92F6F5B30" ) ) --[[ @ 0]]
	FooterButtonFriends.footerTooltip.label:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_2D851B47994EA820" ) ) --[[ @ 0]]
	FooterButtonFriends.footerTooltip.keyPrompt.keybind.__TooltipKeybind = function ()
		FooterButtonFriends.footerTooltip.keyPrompt.keybind:setText( Engine[@"hash_4F9F1239CFD921FE"]( CoD.PCUtility.ForceSetTextOnRebind( @"hash_521CC88215B8CABE" ) ) ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	FooterButtonFriends.footerTooltip.keyPrompt.keybind.__TooltipKeybind() --[[ @ 0]]
	FooterButtonFriends:registerEventHandler( "gain_focus", function ( element, event )
		local f14_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f14_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f14_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3865DD2DB1EFE9F8"] ) --[[ @ 0]]
		return f14_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( FooterButtonFriends, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], "ui_confirm", function ( element, menu, controller, model )
		CoD.PCBattlenetUtility.ToggleBattlenetMenuVisibility( element, menu, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_0", nil, "ui_confirm" ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( FooterButtonFriends, f1_arg1, Enum[@"LUIButton"][@"hash_3865DD2DB1EFE9F8"], "MOUSE1", function ( element, menu, controller, model )
		CoD.PCBattlenetUtility.ToggleBattlenetMenuVisibility( element, menu, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3865DD2DB1EFE9F8"], @"hash_0", nil, "MOUSE1" ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	self:addElement( FooterButtonFriends ) --[[ @ 0]]
	self.FooterButtonFriends = FooterButtonFriends --[[ @ 0]]
	
	FooterButtonSocial = CoD.FooterButton_Persistent.new( f1_arg0, f1_arg1, 0, 0, 240, 360, 0, 1, 0, 0 ) --[[ @ 0]]
	FooterButtonSocial:mergeStateConditions( {
		{
			stateName = "Disabled",
			condition = function ( menu, element, event )
				return CoD.PCUtility.AreUIShortcutInputLocked( f1_arg1 ) and not CoD.PCUtility.CanOpenSocialMenu( f1_arg1, menu )
			end
		}
	} ) --[[ @ 0]]
	FooterButtonSettings = FooterButtonSocial --[[ @ 0]]
	FooterButtonStore = FooterButtonSocial.subscribeToModel --[[ @ 0]]
	local FooterButtonPlayerAccount = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	FooterButtonStore( FooterButtonSettings, FooterButtonPlayerAccount.LockUIShortcutInput, function ( f20_arg0 )
		f1_arg0:updateElementState( FooterButtonSocial, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f20_arg0:get(),
			modelName = "LockUIShortcutInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	FooterButtonSettings = FooterButtonSocial --[[ @ 0]]
	FooterButtonStore = FooterButtonSocial.subscribeToModel --[[ @ 0]]
	FooterButtonPlayerAccount = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	FooterButtonStore( FooterButtonSettings, FooterButtonPlayerAccount["lobbyRoot.lobbyNetworkMode"], function ( f21_arg0 )
		f1_arg0:updateElementState( FooterButtonSocial, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f21_arg0:get(),
			modelName = "lobbyRoot.lobbyNetworkMode"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	FooterButtonSettings = FooterButtonSocial --[[ @ 0]]
	FooterButtonStore = FooterButtonSocial.subscribeToModel --[[ @ 0]]
	FooterButtonPlayerAccount = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	FooterButtonStore( FooterButtonSettings, FooterButtonPlayerAccount["lobbyRoot.lobbyNav"], function ( f22_arg0 )
		f1_arg0:updateElementState( FooterButtonSocial, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f22_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	FooterButtonSocial.label:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_18E8C0862204180A" ) ) --[[ @ 0]]
	FooterButtonSocial.label2:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_A4F37A001911A0A" ) ) --[[ @ 0]]
	FooterButtonSocial.footerTooltip.label:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_5C4B68D4F7C51908" ) ) --[[ @ 0]]
	FooterButtonSocial.footerTooltip.keyPrompt.keybind.__TooltipKeybind = function ()
		FooterButtonSocial.footerTooltip.keyPrompt.keybind:setText( Engine[@"hash_4F9F1239CFD921FE"]( CoD.PCUtility.ForceSetTextOnRebind( @"hash_3EB01F705FEE50EE" ) ) ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	FooterButtonSocial.footerTooltip.keyPrompt.keybind.__TooltipKeybind() --[[ @ 0]]
	FooterButtonSettings = FooterButtonSocial --[[ @ 0]]
	FooterButtonStore = FooterButtonSocial.subscribeToModel --[[ @ 0]]
	FooterButtonPlayerAccount = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	FooterButtonStore( FooterButtonSettings, FooterButtonPlayerAccount["lobbyRoot.lobbyNetworkMode"], function ( f24_arg0, f24_arg1 )
		CoD.Menu.UpdateButtonShownState( f24_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f24_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3865DD2DB1EFE9F8"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	FooterButtonSettings = FooterButtonSocial --[[ @ 0]]
	FooterButtonStore = FooterButtonSocial.subscribeToModel --[[ @ 0]]
	FooterButtonPlayerAccount = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	FooterButtonStore( FooterButtonSettings, FooterButtonPlayerAccount["lobbyRoot.lobbyNav"], function ( f25_arg0, f25_arg1 )
		CoD.Menu.UpdateButtonShownState( f25_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f25_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3865DD2DB1EFE9F8"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	FooterButtonSocial:registerEventHandler( "gain_focus", function ( element, event )
		local f26_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f26_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f26_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3865DD2DB1EFE9F8"] ) --[[ @ 0]]
		return f26_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( FooterButtonSocial, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], "ui_confirm", function ( element, menu, controller, model )
		if not IsLAN() and not IsPlayerAGuest( controller ) and IsPlayerAllowedToPlayOnline( controller ) then
			CoD.PCUtility.ToggleShortcutMenu( menu, controller, "ui_opensocial" ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not IsLAN() and not IsPlayerAGuest( controller ) and IsPlayerAllowedToPlayOnline( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_0", nil, "ui_confirm" ) --[[ @ 0]]
			return false
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( FooterButtonSocial, f1_arg1, Enum[@"LUIButton"][@"hash_3865DD2DB1EFE9F8"], "MOUSE1", function ( element, menu, controller, model )
		if not IsLAN() and not IsPlayerAGuest( controller ) and IsPlayerAllowedToPlayOnline( controller ) then
			CoD.PCUtility.ToggleShortcutMenu( menu, controller, "ui_opensocial" ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not IsLAN() and not IsPlayerAGuest( controller ) and IsPlayerAllowedToPlayOnline( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3865DD2DB1EFE9F8"], @"hash_0", nil, "MOUSE1" ) --[[ @ 0]]
			return false
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( FooterButtonSocial ) --[[ @ 0]]
	self.FooterButtonSocial = FooterButtonSocial --[[ @ 0]]
	
	FooterButtonStore = CoD.FooterButton_Persistent.new( f1_arg0, f1_arg1, 0, 0, 360, 480, 0, 1, 0, 0 ) --[[ @ 0]]
	FooterButtonStore:mergeStateConditions( {
		{
			stateName = "Disabled",
			condition = function ( menu, element, event )
				return CoD.PCUtility.AreUIShortcutInputLocked( f1_arg1 ) and not CoD.PCUtility.CanOpenStore( f1_arg1, menu )
			end
		}
	} ) --[[ @ 0]]
	FooterButtonPlayerAccount = FooterButtonStore --[[ @ 0]]
	FooterButtonSettings = FooterButtonStore.subscribeToModel --[[ @ 0]]
	local f1_local7 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	FooterButtonSettings( FooterButtonPlayerAccount, f1_local7.LockUIShortcutInput, function ( f32_arg0 )
		f1_arg0:updateElementState( FooterButtonStore, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f32_arg0:get(),
			modelName = "LockUIShortcutInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	FooterButtonStore:setAlpha( 0 ) --[[ @ 0]]
	FooterButtonStore.label:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_111EC45AB3B0626" ) ) --[[ @ 0]]
	FooterButtonStore.label2:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_4861ED6423EBD90E" ) ) --[[ @ 0]]
	FooterButtonStore.footerTooltip.label:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_4191CDDA584B4408" ) ) --[[ @ 0]]
	FooterButtonStore.footerTooltip.keyPrompt.keybind:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_48EF09D289B2D63E" ) ) --[[ @ 0]]
	FooterButtonStore:registerEventHandler( "gain_focus", function ( element, event )
		local f33_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f33_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f33_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3865DD2DB1EFE9F8"] ) --[[ @ 0]]
		return f33_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( FooterButtonStore, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], "ui_confirm", function ( element, menu, controller, model )
		CoD.PCUtility.ToggleShortcutMenu( menu, controller, "ui_openstore" ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_0", nil, "ui_confirm" ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( FooterButtonStore, f1_arg1, Enum[@"LUIButton"][@"hash_3865DD2DB1EFE9F8"], "MOUSE1", function ( element, menu, controller, model )
		CoD.PCUtility.ToggleShortcutMenu( menu, controller, "ui_openstore" ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3865DD2DB1EFE9F8"], @"hash_0", nil, "MOUSE1" ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	self:addElement( FooterButtonStore ) --[[ @ 0]]
	self.FooterButtonStore = FooterButtonStore --[[ @ 0]]
	
	FooterButtonSettings = CoD.FooterButton_Persistent.new( f1_arg0, f1_arg1, 0, 0, 480, 600, 0, 1, 0, 0 ) --[[ @ 0]]
	FooterButtonSettings:mergeStateConditions( {
		{
			stateName = "Disabled",
			condition = function ( menu, element, event )
				return CoD.PCUtility.AreUIShortcutInputLocked( f1_arg1 ) and not CoD.PCUtility.CanOpenSettings( f1_arg1, menu )
			end
		}
	} ) --[[ @ 0]]
	f1_local7 = FooterButtonSettings --[[ @ 0]]
	FooterButtonPlayerAccount = FooterButtonSettings.subscribeToModel --[[ @ 0]]
	local f1_local8 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	FooterButtonPlayerAccount( f1_local7, f1_local8.LockUIShortcutInput, function ( f39_arg0 )
		f1_arg0:updateElementState( FooterButtonSettings, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f39_arg0:get(),
			modelName = "LockUIShortcutInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	FooterButtonSettings.label:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_1FBCDFDF3FB70BDC" ) ) --[[ @ 0]]
	FooterButtonSettings.label2:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_5110681AB84DEE00" ) ) --[[ @ 0]]
	FooterButtonSettings.footerTooltip.label:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_11762CBFBF851D22" ) ) --[[ @ 0]]
	FooterButtonSettings.footerTooltip.keyPrompt.keybind.__TooltipKeybind = function ()
		FooterButtonSettings.footerTooltip.keyPrompt.keybind:setText( Engine[@"hash_4F9F1239CFD921FE"]( CoD.PCUtility.ForceSetTextOnRebind( @"hash_4AE4ED13AED2E15C" ) ) ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	FooterButtonSettings.footerTooltip.keyPrompt.keybind.__TooltipKeybind() --[[ @ 0]]
	FooterButtonSettings:registerEventHandler( "gain_focus", function ( element, event )
		local f41_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f41_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f41_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3865DD2DB1EFE9F8"] ) --[[ @ 0]]
		return f41_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( FooterButtonSettings, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], "ui_confirm", function ( element, menu, controller, model )
		CoD.PCUtility.ToggleShortcutMenu( menu, controller, "ui_opensettings" ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_0", nil, "ui_confirm" ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( FooterButtonSettings, f1_arg1, Enum[@"LUIButton"][@"hash_3865DD2DB1EFE9F8"], "MOUSE1", function ( element, menu, controller, model )
		CoD.PCUtility.ToggleShortcutMenu( menu, controller, "ui_opensettings" ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3865DD2DB1EFE9F8"], @"hash_0", nil, "MOUSE1" ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	self:addElement( FooterButtonSettings ) --[[ @ 0]]
	self.FooterButtonSettings = FooterButtonSettings --[[ @ 0]]
	
	FooterButtonPlayerAccount = CoD.FooterButton_Player.new( f1_arg0, f1_arg1, 0, 0, 600, 720, 0, 1, 0, 0 ) --[[ @ 0]]
	FooterButtonPlayerAccount:mergeStateConditions( {
		{
			stateName = "Disabled",
			condition = function ( menu, element, event )
				return CoD.PCUtility.AreUIShortcutInputLocked( f1_arg1 ) and not CoD.PCUtility.CanOpenPlayerAccount( f1_arg1, menu )
			end
		}
	} ) --[[ @ 0]]
	f1_local8 = FooterButtonPlayerAccount --[[ @ 0]]
	f1_local7 = FooterButtonPlayerAccount.subscribeToModel --[[ @ 0]]
	local f1_local9 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local7( f1_local8, f1_local9.LockUIShortcutInput, function ( f47_arg0 )
		f1_arg0:updateElementState( FooterButtonPlayerAccount, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f47_arg0:get(),
			modelName = "LockUIShortcutInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	FooterButtonPlayerAccount.Internal.footerTooltip.label:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_B828992E638B17B" ) ) --[[ @ 0]]
	FooterButtonPlayerAccount.Internal.footerTooltip.keyPrompt.keybind.__Internal_TooltipKeybind = function ()
		FooterButtonPlayerAccount.Internal.footerTooltip.keyPrompt.keybind:setText( Engine[@"hash_4F9F1239CFD921FE"]( CoD.PCUtility.ForceSetTextOnRebind( @"hash_2689F7EF9B424B" ) ) ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	FooterButtonPlayerAccount.Internal.footerTooltip.keyPrompt.keybind.__Internal_TooltipKeybind() --[[ @ 0]]
	FooterButtonPlayerAccount:registerEventHandler( "gain_focus", function ( element, event )
		local f49_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f49_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f49_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3865DD2DB1EFE9F8"] ) --[[ @ 0]]
		return f49_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( FooterButtonPlayerAccount, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], "ui_confirm", function ( element, menu, controller, model )
		CoD.PCUtility.ToggleShortcutMenu( menu, controller, "ui_openPlayerAccount" ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_0", nil, "ui_confirm" ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( FooterButtonPlayerAccount, f1_arg1, Enum[@"LUIButton"][@"hash_3865DD2DB1EFE9F8"], "MOUSE1", function ( element, menu, controller, model )
		CoD.PCUtility.ToggleShortcutMenu( menu, controller, "ui_openPlayerAccount" ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3865DD2DB1EFE9F8"], @"hash_0", nil, "MOUSE1" ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	self:addElement( FooterButtonPlayerAccount ) --[[ @ 0]]
	self.FooterButtonPlayerAccount = FooterButtonPlayerAccount --[[ @ 0]]
	
	f1_local8 = FooterButtonChat --[[ @ 0]]
	f1_local7 = FooterButtonChat.subscribeToModel --[[ @ 0]]
	f1_local9 = DataSources.KeybindMessages.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local7( f1_local8, f1_local9.isBindingKey, FooterButtonChat.footerTooltip.keyPrompt.keybind.__TooltipKeybind ) --[[ @ 0]]
	f1_local8 = FooterButtonFriends --[[ @ 0]]
	f1_local7 = FooterButtonFriends.subscribeToModel --[[ @ 0]]
	f1_local9 = DataSources.KeybindMessages.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local7( f1_local8, f1_local9.isBindingKey, FooterButtonFriends.footerTooltip.keyPrompt.keybind.__TooltipKeybind ) --[[ @ 0]]
	f1_local8 = FooterButtonSocial --[[ @ 0]]
	f1_local7 = FooterButtonSocial.subscribeToModel --[[ @ 0]]
	f1_local9 = DataSources.KeybindMessages.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local7( f1_local8, f1_local9.isBindingKey, FooterButtonSocial.footerTooltip.keyPrompt.keybind.__TooltipKeybind ) --[[ @ 0]]
	f1_local8 = FooterButtonSettings --[[ @ 0]]
	f1_local7 = FooterButtonSettings.subscribeToModel --[[ @ 0]]
	f1_local9 = DataSources.KeybindMessages.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local7( f1_local8, f1_local9.isBindingKey, FooterButtonSettings.footerTooltip.keyPrompt.keybind.__TooltipKeybind ) --[[ @ 0]]
	f1_local8 = FooterButtonPlayerAccount --[[ @ 0]]
	f1_local7 = FooterButtonPlayerAccount.subscribeToModel --[[ @ 0]]
	f1_local9 = DataSources.KeybindMessages.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local7( f1_local8, f1_local9.isBindingKey, FooterButtonPlayerAccount.Internal.footerTooltip.keyPrompt.keybind.__Internal_TooltipKeybind ) --[[ @ 0]]
	if CoD.isPC then
		FooterButtonChat.id = "FooterButtonChat" --[[ @ 0]]
	end
	if CoD.isPC then
		FooterButtonFriends.id = "FooterButtonFriends" --[[ @ 0]]
	end
	if CoD.isPC then
		FooterButtonSocial.id = "FooterButtonSocial" --[[ @ 0]]
	end
	if CoD.isPC then
		FooterButtonStore.id = "FooterButtonStore" --[[ @ 0]]
	end
	if CoD.isPC then
		FooterButtonSettings.id = "FooterButtonSettings" --[[ @ 0]]
	end
	if CoD.isPC then
		FooterButtonPlayerAccount.id = "FooterButtonPlayerAccount" --[[ @ 0]]
	end
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	f1_local7 = self --[[ @ 0]]
	SetElementProperty( FooterButtonChat, "__isChatToggleButton", true ) --[[ @ 0]]
	SetElementProperty( FooterButtonFriends, "__isFrontendBattlenetToggleButton", true ) --[[ @ 0]]
	f1_local7 = FooterButtonPlayerAccount --[[ @ 0]]
	if IsInGame() then
		HideWidget( f1_local7 ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.FooterButton_PersistentLeftContainer.__onClose = function ( f54_arg0 )
	f54_arg0.FooterButtonChat:close() --[[ @ 0]]
	f54_arg0.FooterButtonFriends:close() --[[ @ 0]]
	f54_arg0.FooterButtonSocial:close() --[[ @ 0]]
	f54_arg0.FooterButtonStore:close() --[[ @ 0]]
	f54_arg0.FooterButtonSettings:close() --[[ @ 0]]
	f54_arg0.FooterButtonPlayerAccount:close() --[[ @ 0]]
end
 --[[ @ 0]]
