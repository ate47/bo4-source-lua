-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
require( "x64:bb4d1a31de34c66" ) --[[ @ 0]]
require( "ui/uieditor/widgets/social/social_infopane" ) --[[ @ 0]]
require( "x64:5d1faa058a65aae" ) --[[ @ 0]]
require( "x64:2d685c8ddad85cf" ) --[[ @ 0]]
require( "ui/uieditor/widgets/startmenu/options/startmenuoptionsbackground" ) --[[ @ 0]]
require( "ui/uieditor/widgets/pc_vscrolllist" ) --[[ @ 0]]

CoD.Social_Party = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Social_Party.__defaultWidth = 1920 --[[ @ 0]]
CoD.Social_Party.__defaultHeight = 1080 --[[ @ 0]]
CoD.Social_Party.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.Social_Party ) --[[ @ 0]]
	self.id = "Social_Party" --[[ @ 0]]
	self.soundSet = "ChooseDecal" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local Background = CoD.StartMenuOptionsBackground.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( Background ) --[[ @ 0]]
	self.Background = Background --[[ @ 0]]
	
	local f1_local2 = nil --[[ @ 0]]
	f1_local2 = LUI.UIElement.createFake() --[[ @ 0]]
	self.players = f1_local2 --[[ @ 0]]
	
	local playerInfo = CoD.Social_InfoPane.new( f1_arg0, f1_arg1, 0.5, 0.5, 39, 763, 0, 0, 197, 877 ) --[[ @ 0]]
	self:addElement( playerInfo ) --[[ @ 0]]
	self.playerInfo = playerInfo --[[ @ 0]]
	
	local Title = LUI.UIText.new( 0.5, 0.5, -479, 4, 0, 0, 175, 209 ) --[[ @ 0]]
	Title:setAlpha( 0.8 ) --[[ @ 0]]
	Title:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_17AE9A3B9A819A37" ) ) --[[ @ 0]]
	Title:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Title:setLetterSpacing( 2 ) --[[ @ 0]]
	Title:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	self:addElement( Title ) --[[ @ 0]]
	self.Title = Title --[[ @ 0]]
	
	local gamertag = LUI.UIText.new( 0.5, 0.5, -799, -498, 0, 0, 175, 209 ) --[[ @ 0]]
	gamertag:setRGB( ColorSet.T8__BEIGE__HEADER.r, ColorSet.T8__BEIGE__HEADER.g, ColorSet.T8__BEIGE__HEADER.b ) --[[ @ 0]]
	gamertag:setAlpha( 0.5 ) --[[ @ 0]]
	gamertag:setText( LocalizeToUpperString( @"hash_520661B30B65C27F" ) ) --[[ @ 0]]
	gamertag:setTTF( "notosans_regular" ) --[[ @ 0]]
	gamertag:setLetterSpacing( 2 ) --[[ @ 0]]
	gamertag:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	gamertag:setAlignment( Enum[@"LUIAlignment"][@"hash_670510683C22104B"] ) --[[ @ 0]]
	self:addElement( gamertag ) --[[ @ 0]]
	self.gamertag = gamertag --[[ @ 0]]
	
	local PCSimpleVScrollList = nil --[[ @ 0]]
	
	PCSimpleVScrollList = CoD.PC_VScrollList.new( f1_arg0, f1_arg1, 0.5, 0.5, -485, -4, 0, 0, 216, 1022 ) --[[ @ 0]]
	PCSimpleVScrollList:setScale( 0.95, 0.95 ) --[[ @ 0]]
	PCSimpleVScrollList.ScrollView.View:setWidgetType( CoD.Social_ManagePartyPlayerButton ) --[[ @ 0]]
	PCSimpleVScrollList.ScrollView.View:setVerticalCount( 7 ) --[[ @ 0]]
	PCSimpleVScrollList.ScrollView.View:setSpacing( 1 ) --[[ @ 0]]
	PCSimpleVScrollList.ScrollView.View:setDataSource( "SocialPartyPlayersList" ) --[[ @ 0]]
	self.__on_menuOpened_PCSimpleVScrollList = function ( f2_arg0, f2_arg1, f2_arg2, f2_arg3 )
		local f2_local0 = PCSimpleVScrollList --[[ @ 0]]
		if IsElementReceivingMenuOpenEventForTheFirstTime( self.PCSimpleVScrollList ) then
			CoD.PCWidgetUtility.SetFocusToFirstSelectableItemInPCScrollView( self.PCSimpleVScrollList ) --[[ @ 0]]
			CopyScrollViewActiveModelToElementAndCacheSocialData( self, f2_arg1, self.PCSimpleVScrollList, self.playerInfo ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	f1_arg0:addMenuOpenedCallback( self.__on_menuOpened_PCSimpleVScrollList ) --[[ @ 0]]
	self:addElement( PCSimpleVScrollList ) --[[ @ 0]]
	self.PCSimpleVScrollList = PCSimpleVScrollList --[[ @ 0]]
	
	local SocialPartySettingsButton = CoD.Social_PartySettingsButton.new( f1_arg0, f1_arg1, 0.5, 0.5, -799, -496, 0, 0, 236, 454 ) --[[ @ 0]]
	SocialPartySettingsButton:registerEventHandler( "gain_focus", function ( element, event )
		local f3_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f3_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f3_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		return f3_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( SocialPartySettingsButton, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], nil, function ( element, menu, controller, model )
		OpenPopup( self, "Social_PartySettings", controller ) --[[ @ 0]]
		PlaySoundAlias( "uin_toggle_generic" ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_6D0BB36CD318F55F", nil, nil ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	self:addElement( SocialPartySettingsButton ) --[[ @ 0]]
	self.SocialPartySettingsButton = SocialPartySettingsButton --[[ @ 0]]
	
	local infoBracketBot = LUI.UIImage.new( 0.5, 0.5, -479, 4, 0, 0, 222, 230 ) --[[ @ 0]]
	infoBracketBot:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	infoBracketBot:setAlpha( 0.1 ) --[[ @ 0]]
	infoBracketBot:setZRot( 180 ) --[[ @ 0]]
	infoBracketBot:setImage( RegisterImage( @"hash_4C325BED3F226657" ) ) --[[ @ 0]]
	infoBracketBot:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	infoBracketBot:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	infoBracketBot:setupNineSliceShader( 16, 4 ) --[[ @ 0]]
	self:addElement( infoBracketBot ) --[[ @ 0]]
	self.infoBracketBot = infoBracketBot --[[ @ 0]]
	
	local infoBracketBot2 = LUI.UIImage.new( 0.5, 0.5, -799, -498, 0, 0, 222, 230 ) --[[ @ 0]]
	infoBracketBot2:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	infoBracketBot2:setAlpha( 0.1 ) --[[ @ 0]]
	infoBracketBot2:setZRot( 180 ) --[[ @ 0]]
	infoBracketBot2:setImage( RegisterImage( @"hash_4C325BED3F226657" ) ) --[[ @ 0]]
	infoBracketBot2:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	infoBracketBot2:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	infoBracketBot2:setupNineSliceShader( 16, 4 ) --[[ @ 0]]
	self:addElement( infoBracketBot2 ) --[[ @ 0]]
	self.infoBracketBot2 = infoBracketBot2 --[[ @ 0]]
	
	f1_local2:linkToElementModel( f1_local2.onlineList, nil, false, function ( model )
		f1_local2:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	playerInfo:linkToElementModel( f1_local2.onlineList, nil, false, function ( model )
		playerInfo:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local2.id = "players" --[[ @ 0]]
	playerInfo.id = "playerInfo" --[[ @ 0]]
	if CoD.isPC then
		PCSimpleVScrollList.id = "PCSimpleVScrollList" --[[ @ 0]]
	end
	SocialPartySettingsButton.id = "SocialPartySettingsButton" --[[ @ 0]]
	self.__defaultFocus = f1_local2 --[[ @ 0]]
	self.__on_close_removeOverrides = function ()
		f1_arg0:removeMenuOpenedCallback( self.__on_menuOpened_PCSimpleVScrollList ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local10 = self --[[ @ 0]]
	MenuUnhideFreeCursor( f1_arg0, f1_arg1 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.Social_Party.__onClose = function ( f9_arg0 )
	f9_arg0.__on_close_removeOverrides() --[[ @ 0]]
	f9_arg0.players:close() --[[ @ 0]]
	f9_arg0.playerInfo:close() --[[ @ 0]]
	f9_arg0.Background:close() --[[ @ 0]]
	f9_arg0.PCSimpleVScrollList:close() --[[ @ 0]]
	f9_arg0.SocialPartySettingsButton:close() --[[ @ 0]]
end
 --[[ @ 0]]
