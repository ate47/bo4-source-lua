-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "x64:2ea9f9f19e68d4b4" ) --[[ @ 0]]
require( "x64:5b0cf638db063f63" ) --[[ @ 0]]
require( "x64:c490b753d8f1aba" ) --[[ @ 0]]
require( "x64:78c5b242b0609336" ) --[[ @ 0]]
require( "x64:4d038722d0aefd00" ) --[[ @ 0]]
require( "x64:642b7a86223bead9" ) --[[ @ 0]]
require( "x64:7da828bb511b1220" ) --[[ @ 0]]
require( "ui/uieditor/widgets/pc/utility/xcammousecontrol" ) --[[ @ 0]]

CoD.InspectionWidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.InspectionWidget.__defaultWidth = 1920 --[[ @ 0]]
CoD.InspectionWidget.__defaultHeight = 1080 --[[ @ 0]]
CoD.InspectionWidget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.InspectionWidget ) --[[ @ 0]]
	self.id = "InspectionWidget" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	local XCamMouseControl = nil --[[ @ 0]]
	
	XCamMouseControl = CoD.XCamMouseControl.new( f1_arg0, f1_arg1, 0.5, 0.5, -190.5, 559.5, 0.5, 0.5, -478, 222 ) --[[ @ 0]]
	self:addElement( XCamMouseControl ) --[[ @ 0]]
	self.XCamMouseControl = XCamMouseControl --[[ @ 0]]
	
	local InspectionWeaponWidget = CoD.InspectionWeaponWidget.new( f1_arg0, f1_arg1, 0.5, 0.5, -825.5, -105.5, 0, 0, 263, 594 ) --[[ @ 0]]
	self:addElement( InspectionWeaponWidget ) --[[ @ 0]]
	self.InspectionWeaponWidget = InspectionWeaponWidget --[[ @ 0]]
	
	local PlayerIdentityInfo = CoD.InspectionSelectedPlayerInfo.new( f1_arg0, f1_arg1, 0.5, 0.5, 476, 824, 0, 0, 263, 711 ) --[[ @ 0]]
	self:addElement( PlayerIdentityInfo ) --[[ @ 0]]
	self.PlayerIdentityInfo = PlayerIdentityInfo --[[ @ 0]]
	
	local LobbyPlayerLevel = CoD.LobbyPlayerInspectionPlayerLevel.new( f1_arg0, f1_arg1, 0.5, 0.5, 476, 824, 0, 0, 747, 909 ) --[[ @ 0]]
	LobbyPlayerLevel:linkToElementModel( self, "info", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			LobbyPlayerLevel:setModel( f2_local0, f1_arg1 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( LobbyPlayerLevel ) --[[ @ 0]]
	self.LobbyPlayerLevel = LobbyPlayerLevel --[[ @ 0]]
	
	local InspectionSinglePlayerLevel = CoD.InspectionPlayerLevel.new( f1_arg0, f1_arg1, 0.5, 0.5, 476, 824, 0, 0, 747, 909 ) --[[ @ 0]]
	self:addElement( InspectionSinglePlayerLevel ) --[[ @ 0]]
	self.InspectionSinglePlayerLevel = InspectionSinglePlayerLevel --[[ @ 0]]
	
	local InspectionBgElements = CoD.InspectionBgElements.new( f1_arg0, f1_arg1, 0.5, 0.5, -1098, 650, 0, 0, 443, 1061 ) --[[ @ 0]]
	self:addElement( InspectionBgElements ) --[[ @ 0]]
	self.InspectionBgElements = InspectionBgElements --[[ @ 0]]
	
	local CallingCardDescriptionText = LUI.UIText.new( 0.5, 0.5, -825.5, -477.5, 0, 0, 915, 933 ) --[[ @ 0]]
	CallingCardDescriptionText:setRGB( ColorSet.T8__OCHRE.r, ColorSet.T8__OCHRE.g, ColorSet.T8__OCHRE.b ) --[[ @ 0]]
	CallingCardDescriptionText:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	CallingCardDescriptionText:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	CallingCardDescriptionText:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	CallingCardDescriptionText:subscribeToGlobalModel( f1_arg1, "InspectionUtilityInfo", "callingCardDescriptionText", function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			CallingCardDescriptionText:setText( f3_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( CallingCardDescriptionText ) --[[ @ 0]]
	self.CallingCardDescriptionText = CallingCardDescriptionText --[[ @ 0]]
	
	local CallingCardTitleText = LUI.UIText.new( 0.5, 0.5, -825.5, -477.5, 0, 0, 596, 617 ) --[[ @ 0]]
	CallingCardTitleText:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	CallingCardTitleText:setAlpha( 0.5 ) --[[ @ 0]]
	CallingCardTitleText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_2D993808FE84F8E0" ) ) --[[ @ 0]]
	CallingCardTitleText:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	CallingCardTitleText:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	CallingCardTitleText:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( CallingCardTitleText ) --[[ @ 0]]
	self.CallingCardTitleText = CallingCardTitleText --[[ @ 0]]
	
	local CallingCardShowcaseList = LUI.UIList.new( f1_arg0, f1_arg1, 10, 0, nil, false, false, false, false ) --[[ @ 0]]
	CallingCardShowcaseList:setLeftRight( 0.5, 0.5, -825.5, -477.5 ) --[[ @ 0]]
	CallingCardShowcaseList:setTopBottom( 0, 0, 624, 905 ) --[[ @ 0]]
	CallingCardShowcaseList:setWidgetType( CoD.InspectCallingCardWidget ) --[[ @ 0]]
	CallingCardShowcaseList:setVerticalCount( 3 ) --[[ @ 0]]
	CallingCardShowcaseList:setSpacing( 10 ) --[[ @ 0]]
	CallingCardShowcaseList:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	CallingCardShowcaseList:setDataSource( "InspectionUtilityCallingCardOptions" ) --[[ @ 0]]
	CallingCardShowcaseList:appendEventHandler( "input_source_changed", function ( f4_arg0, f4_arg1 )
		f4_arg1.menu = f4_arg1.menu or f1_arg0 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f4_arg0, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_6A86619565BE54DB"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local InspectionTrophyWidget = CallingCardShowcaseList --[[ @ 0]]
	local TrophyTitleText = CallingCardShowcaseList.subscribeToModel --[[ @ 0]]
	local f1_local12 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	TrophyTitleText( InspectionTrophyWidget, f1_local12.LastInput, function ( f5_arg0, f5_arg1 )
		CoD.Menu.UpdateButtonShownState( f5_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_6A86619565BE54DB"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	CallingCardShowcaseList:registerEventHandler( "list_item_gain_focus", function ( element, event )
		local f6_local0 = nil --[[ @ 0]]
		CoD.InspectionUtility.OnCallingCardFocusChange( f1_arg0, f1_arg1, element ) --[[ @ 0]]
		return f6_local0
	end ) --[[ @ 0]]
	CallingCardShowcaseList:registerEventHandler( "gain_focus", function ( element, event )
		local f7_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f7_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f7_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_4C083113BC81F23F"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_6A86619565BE54DB"] ) --[[ @ 0]]
		return f7_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( CallingCardShowcaseList, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], nil, function ( element, menu, controller, model )
		ProcessListAction( self, element, controller, menu ) --[[ @ 0]]
		PlaySoundAlias( "uin_press_generic" ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_6D0BB36CD318F55F", nil, nil ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( CallingCardShowcaseList, f1_arg1, Enum[@"LUIButton"][@"hash_4C083113BC81F23F"], nil, function ( element, menu, controller, model )
		if not IsPC() then
			CoD.InspectionUtility.ClearShowcaseCallingCard( menu, element, controller ) --[[ @ 0]]
			PlaySoundAlias( "cac_equipment_remove" ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not IsPC() then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_4C083113BC81F23F"], @"hash_1C9D32CFA07438E0", nil, nil ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( CallingCardShowcaseList, f1_arg1, Enum[@"LUIButton"][@"hash_6A86619565BE54DB"], "ui_remove", function ( element, menu, controller, model )
		if IsMouseOrKeyboard( controller ) then
			CoD.InspectionUtility.ClearShowcaseCallingCard( menu, element, controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsMouseOrKeyboard( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_6A86619565BE54DB"], @"hash_1C9D32CFA07438E0", Enum[@"hash_3BEBDBAEEB3ECCCA"][@"hash_4B6372335C630AD3"], "ui_remove" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	CallingCardShowcaseList:linkToElementModel( self, "xuid", true, function ( model )
		local f14_local0 = CallingCardShowcaseList --[[ @ 0]]
		CoD.InspectionUtility.UpdateCallingCardShowcaseList( f1_arg0, self.CallingCardShowcaseList ) --[[ @ 0]]
	end ) --[[ @ 0]]
	CallingCardShowcaseList:AddContextualMenuAction( f1_arg0, f1_arg1, @"hash_1C9D32CFA07438E0", function ( f15_arg0, f15_arg1, f15_arg2, f15_arg3 )
		return function ( f16_arg0, f16_arg1, f16_arg2, f16_arg3 )
			CoD.InspectionUtility.ClearShowcaseCallingCard( f16_arg1, f16_arg0, f16_arg2 ) --[[ @ 0]]
		end
		
	end ) --[[ @ 0]]
	self:addElement( CallingCardShowcaseList ) --[[ @ 0]]
	self.CallingCardShowcaseList = CallingCardShowcaseList --[[ @ 0]]
	
	TrophyTitleText = LUI.UIText.new( 0.5, 0.5, -449.5, -199.5, 0, 0, 596, 617 ) --[[ @ 0]]
	TrophyTitleText:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	TrophyTitleText:setAlpha( 0 ) --[[ @ 0]]
	TrophyTitleText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_1483B43B98AC6E48" ) ) --[[ @ 0]]
	TrophyTitleText:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	TrophyTitleText:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	TrophyTitleText:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( TrophyTitleText ) --[[ @ 0]]
	self.TrophyTitleText = TrophyTitleText --[[ @ 0]]
	
	InspectionTrophyWidget = CoD.InspectionTrophyWidget.new( f1_arg0, f1_arg1, 0.5, 0.5, -449.5, -199.5, 0, 0, 624, 906 ) --[[ @ 0]]
	InspectionTrophyWidget:setAlpha( 0 ) --[[ @ 0]]
	InspectionTrophyWidget:subscribeToGlobalModel( f1_arg1, "PlayerShowcase", "medal", function ( model )
		InspectionTrophyWidget:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	InspectionTrophyWidget:registerEventHandler( "gain_focus", function ( element, event )
		local f18_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f18_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f18_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		return f18_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( InspectionTrophyWidget, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], nil, function ( element, menu, controller, model )
		CoD.InspectionUtility.OnTrophyShowcaseSelected( menu, controller, element ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_6D0BB36CD318F55F", nil, nil ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	self:addElement( InspectionTrophyWidget ) --[[ @ 0]]
	self.InspectionTrophyWidget = InspectionTrophyWidget --[[ @ 0]]
	
	if CoD.isPC then
		XCamMouseControl.id = "XCamMouseControl" --[[ @ 0]]
	end
	PlayerIdentityInfo.id = "PlayerIdentityInfo" --[[ @ 0]]
	CallingCardShowcaseList.id = "CallingCardShowcaseList" --[[ @ 0]]
	InspectionTrophyWidget.id = "InspectionTrophyWidget" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	f1_local12 = self --[[ @ 0]]
	CoD.InspectionUtility.SubscribeToCallingCardUpdateModels( f1_arg0, self.CallingCardShowcaseList ) --[[ @ 0]]
	f1_local12 = CallingCardShowcaseList --[[ @ 0]]
	if IsPC() then
		CoD.PCWidgetUtility.SetupContextualMenu( f1_local12, f1_arg1, "name", "", "" ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.InspectionWidget.__resetProperties = function ( f21_arg0 )
	f21_arg0.LobbyPlayerLevel:completeAnimation() --[[ @ 0]]
	f21_arg0.InspectionSinglePlayerLevel:completeAnimation() --[[ @ 0]]
	f21_arg0.CallingCardTitleText:completeAnimation() --[[ @ 0]]
	f21_arg0.CallingCardShowcaseList:completeAnimation() --[[ @ 0]]
	f21_arg0.CallingCardDescriptionText:completeAnimation() --[[ @ 0]]
	f21_arg0.InspectionWeaponWidget:completeAnimation() --[[ @ 0]]
	f21_arg0.LobbyPlayerLevel:setAlpha( 1 ) --[[ @ 0]]
	f21_arg0.InspectionSinglePlayerLevel:setAlpha( 1 ) --[[ @ 0]]
	f21_arg0.CallingCardTitleText:setAlpha( 0.5 ) --[[ @ 0]]
	f21_arg0.CallingCardShowcaseList:setAlpha( 1 ) --[[ @ 0]]
	f21_arg0.CallingCardDescriptionText:setAlpha( 1 ) --[[ @ 0]]
	f21_arg0.InspectionWeaponWidget:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.InspectionWidget.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f22_arg0.LobbyPlayerLevel:completeAnimation() --[[ @ 0]]
			f22_arg0.LobbyPlayerLevel:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.LobbyPlayerLevel ) --[[ @ 0]]
		end
	},
	Offline = {
		DefaultClip = function ( f23_arg0, f23_arg1 )
			f23_arg0:__resetProperties() --[[ @ 0]]
			f23_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f23_arg0.LobbyPlayerLevel:completeAnimation() --[[ @ 0]]
			f23_arg0.LobbyPlayerLevel:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.LobbyPlayerLevel ) --[[ @ 0]]
			f23_arg0.InspectionSinglePlayerLevel:completeAnimation() --[[ @ 0]]
			f23_arg0.InspectionSinglePlayerLevel:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.InspectionSinglePlayerLevel ) --[[ @ 0]]
			f23_arg0.CallingCardDescriptionText:completeAnimation() --[[ @ 0]]
			f23_arg0.CallingCardDescriptionText:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.CallingCardDescriptionText ) --[[ @ 0]]
			f23_arg0.CallingCardTitleText:completeAnimation() --[[ @ 0]]
			f23_arg0.CallingCardTitleText:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.CallingCardTitleText ) --[[ @ 0]]
			f23_arg0.CallingCardShowcaseList:completeAnimation() --[[ @ 0]]
			f23_arg0.CallingCardShowcaseList:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.CallingCardShowcaseList ) --[[ @ 0]]
		end
	},
	LobbyState = {
		DefaultClip = function ( f24_arg0, f24_arg1 )
			f24_arg0:__resetProperties() --[[ @ 0]]
			f24_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f24_arg0.LobbyPlayerLevel:completeAnimation() --[[ @ 0]]
			f24_arg0.LobbyPlayerLevel:setAlpha( 1 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.LobbyPlayerLevel ) --[[ @ 0]]
			f24_arg0.InspectionSinglePlayerLevel:completeAnimation() --[[ @ 0]]
			f24_arg0.InspectionSinglePlayerLevel:setAlpha( 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.InspectionSinglePlayerLevel ) --[[ @ 0]]
		end
	},
	WZLobbyState = {
		DefaultClip = function ( f25_arg0, f25_arg1 )
			f25_arg0:__resetProperties() --[[ @ 0]]
			f25_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f25_arg0.InspectionWeaponWidget:completeAnimation() --[[ @ 0]]
			f25_arg0.InspectionWeaponWidget:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.InspectionWeaponWidget ) --[[ @ 0]]
			f25_arg0.LobbyPlayerLevel:completeAnimation() --[[ @ 0]]
			f25_arg0.LobbyPlayerLevel:setAlpha( 1 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.LobbyPlayerLevel ) --[[ @ 0]]
			f25_arg0.InspectionSinglePlayerLevel:completeAnimation() --[[ @ 0]]
			f25_arg0.InspectionSinglePlayerLevel:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.InspectionSinglePlayerLevel ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.InspectionWidget.__onClose = function ( f26_arg0 )
	f26_arg0.XCamMouseControl:close() --[[ @ 0]]
	f26_arg0.InspectionWeaponWidget:close() --[[ @ 0]]
	f26_arg0.PlayerIdentityInfo:close() --[[ @ 0]]
	f26_arg0.LobbyPlayerLevel:close() --[[ @ 0]]
	f26_arg0.InspectionSinglePlayerLevel:close() --[[ @ 0]]
	f26_arg0.InspectionBgElements:close() --[[ @ 0]]
	f26_arg0.CallingCardDescriptionText:close() --[[ @ 0]]
	f26_arg0.CallingCardShowcaseList:close() --[[ @ 0]]
	f26_arg0.InspectionTrophyWidget:close() --[[ @ 0]]
end
 --[[ @ 0]]
