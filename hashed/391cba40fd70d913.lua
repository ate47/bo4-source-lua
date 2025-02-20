-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "x64:19f606d91eab9f64" ) --[[ @ 0]]
require( "x64:23e426332d66c91e" ) --[[ @ 0]]
require( "x64:3e38247e77bdfbff" ) --[[ @ 0]]
require( "x64:3c4fa18438e51aa4" ) --[[ @ 0]]
require( "ui/uieditor/widgets/director/directorpartyleaderonlyprompt" ) --[[ @ 0]]
require( "ui/uieditor/widgets/director/directorselectbuttonlines" ) --[[ @ 0]]
require( "x64:60fe5982d27a41c8" ) --[[ @ 0]]
require( "x64:d37cfee68621f73" ) --[[ @ 0]]

CoD.DirectorMapAndGameTypeInternal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DirectorMapAndGameTypeInternal.__defaultWidth = 384 --[[ @ 0]]
CoD.DirectorMapAndGameTypeInternal.__defaultHeight = 216 --[[ @ 0]]
CoD.DirectorMapAndGameTypeInternal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.DirectorMapAndGameTypeInternal ) --[[ @ 0]]
	self.id = "DirectorMapAndGameTypeInternal" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local BackingBlur = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BackingBlur:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	BackingBlur:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( BackingBlur ) --[[ @ 0]]
	self.BackingBlur = BackingBlur --[[ @ 0]]
	
	local FocusGlow = LUI.UIImage.new( 0, 1, -80, 80, -0, 1, -50, 50 ) --[[ @ 0]]
	FocusGlow:setAlpha( 0 ) --[[ @ 0]]
	FocusGlow:setImage( RegisterImage( @"uie_ui_menu_common_focus_glow_small" ) ) --[[ @ 0]]
	FocusGlow:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_6DAB59B2CAE01851" ) ) --[[ @ 0]]
	FocusGlow:setShaderVector( 0, 0, 0, 0.24, 0.24 ) --[[ @ 0]]
	FocusGlow:setShaderVector( 1, 1.2, 0, 0, 0 ) --[[ @ 0]]
	FocusGlow:setupNineSliceShader( 160, 100 ) --[[ @ 0]]
	self:addElement( FocusGlow ) --[[ @ 0]]
	self.FocusGlow = FocusGlow --[[ @ 0]]
	
	local NoiseTiledBacking = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setAlpha( 0.5 ) --[[ @ 0]]
	NoiseTiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	NoiseTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBacking ) --[[ @ 0]]
	self.NoiseTiledBacking = NoiseTiledBacking --[[ @ 0]]
	
	local FocusBrackets = CoD.CommonFocusBrackets.new( f1_arg0, f1_arg1, 0, 1, -20, 20, 0, 1, -20, 20 ) --[[ @ 0]]
	FocusBrackets:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( FocusBrackets ) --[[ @ 0]]
	self.FocusBrackets = FocusBrackets --[[ @ 0]]
	
	local MapImage = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	MapImage:setImage( RegisterImage( @"img_t7_menu_mp_preview_sector" ) ) --[[ @ 0]]
	MapImage:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_1A02C44161370F6D" ) ) --[[ @ 0]]
	MapImage:setShaderVector( 0, 0.5, 0.2, 0, 0 ) --[[ @ 0]]
	MapImage:setShaderVector( 1, 1, 1, 0, 0 ) --[[ @ 0]]
	MapImage:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( MapImage ) --[[ @ 0]]
	self.MapImage = MapImage --[[ @ 0]]
	
	local FrontendFrame = LUI.UIImage.new( 0, 1, -1, 1, 0, 1, -1, 1 ) --[[ @ 0]]
	FrontendFrame:setAlpha( 0.2 ) --[[ @ 0]]
	FrontendFrame:setImage( RegisterImage( @"uie_ui_menu_store_common_frame" ) ) --[[ @ 0]]
	FrontendFrame:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FrontendFrame:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FrontendFrame:setupNineSliceShader( 12, 12 ) --[[ @ 0]]
	self:addElement( FrontendFrame ) --[[ @ 0]]
	self.FrontendFrame = FrontendFrame --[[ @ 0]]
	
	local GamemodeIcon = LUI.UIImage.new( 1, 1, -137, -1, 0.5, 0.5, -77, 59 ) --[[ @ 0]]
	GamemodeIcon:setZoom( 5 ) --[[ @ 0]]
	self:addElement( GamemodeIcon ) --[[ @ 0]]
	self.GamemodeIcon = GamemodeIcon --[[ @ 0]]
	
	local DirectorMapAndGameTypeInternalTitles = CoD.DirectorMapAndGameTypeInternalTitles.new( f1_arg0, f1_arg1, 0, 0, -1, 383, 1, 1, -56, -4 ) --[[ @ 0]]
	DirectorMapAndGameTypeInternalTitles.Label:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_5D68F0B827BDBA25" ) ) --[[ @ 0]]
	DirectorMapAndGameTypeInternalTitles.SubTitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_5ED2FACC41C9E672" ) ) --[[ @ 0]]
	self:addElement( DirectorMapAndGameTypeInternalTitles ) --[[ @ 0]]
	self.DirectorMapAndGameTypeInternalTitles = DirectorMapAndGameTypeInternalTitles --[[ @ 0]]
	
	local PlaylistHeaderBacking = LUI.UIImage.new( 0, 1, 0, 0, 0, 0, 0, 30 ) --[[ @ 0]]
	PlaylistHeaderBacking:setRGB( 0, 0, 0 ) --[[ @ 0]]
	PlaylistHeaderBacking:setAlpha( 0.8 ) --[[ @ 0]]
	self:addElement( PlaylistHeaderBacking ) --[[ @ 0]]
	self.PlaylistHeaderBacking = PlaylistHeaderBacking --[[ @ 0]]
	
	local PlaylistHeader = CoD.DirectorSelectButtonMode.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 0, 0, 30 ) --[[ @ 0]]
	PlaylistHeader:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return not IsLobbyHostOfCurrentMenu()
			end
		}
	} ) --[[ @ 0]]
	PlaylistHeader:appendEventHandler( "on_session_start", function ( f3_arg0, f3_arg1 )
		f3_arg1.menu = f3_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( PlaylistHeader, f3_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	PlaylistHeader:appendEventHandler( "on_session_end", function ( f4_arg0, f4_arg1 )
		f4_arg1.menu = f4_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( PlaylistHeader, f4_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local FrameBorder = PlaylistHeader --[[ @ 0]]
	local PlaylistHeaderNonHost = PlaylistHeader.subscribeToModel --[[ @ 0]]
	local Lines = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	PlaylistHeaderNonHost( FrameBorder, Lines["lobbyRoot.lobbyNav"], function ( f5_arg0 )
		f1_arg0:updateElementState( PlaylistHeader, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	FrameBorder = PlaylistHeader --[[ @ 0]]
	PlaylistHeaderNonHost = PlaylistHeader.subscribeToModel --[[ @ 0]]
	Lines = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	PlaylistHeaderNonHost( FrameBorder, Lines["lobbyRoot.gameClient.update"], function ( f6_arg0 )
		f1_arg0:updateElementState( PlaylistHeader, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f6_arg0:get(),
			modelName = "lobbyRoot.gameClient.update"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	FrameBorder = PlaylistHeader --[[ @ 0]]
	PlaylistHeaderNonHost = PlaylistHeader.subscribeToModel --[[ @ 0]]
	Lines = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	PlaylistHeaderNonHost( FrameBorder, Lines["lobbyRoot.privateClient.update"], function ( f7_arg0 )
		f1_arg0:updateElementState( PlaylistHeader, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f7_arg0:get(),
			modelName = "lobbyRoot.privateClient.update"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:addElement( PlaylistHeader ) --[[ @ 0]]
	self.PlaylistHeader = PlaylistHeader --[[ @ 0]]
	
	PlaylistHeaderNonHost = CoD.DirectorSelectButtonMode.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 0, 0, 30 ) --[[ @ 0]]
	PlaylistHeaderNonHost:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return IsLobbyHostOfCurrentMenu()
			end
		}
	} ) --[[ @ 0]]
	PlaylistHeaderNonHost:appendEventHandler( "on_session_start", function ( f9_arg0, f9_arg1 )
		f9_arg1.menu = f9_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( PlaylistHeaderNonHost, f9_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	PlaylistHeaderNonHost:appendEventHandler( "on_session_end", function ( f10_arg0, f10_arg1 )
		f10_arg1.menu = f10_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( PlaylistHeaderNonHost, f10_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	Lines = PlaylistHeaderNonHost --[[ @ 0]]
	FrameBorder = PlaylistHeaderNonHost.subscribeToModel --[[ @ 0]]
	local FocusBorder = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	FrameBorder( Lines, FocusBorder["lobbyRoot.lobbyNav"], function ( f11_arg0 )
		f1_arg0:updateElementState( PlaylistHeaderNonHost, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f11_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	Lines = PlaylistHeaderNonHost --[[ @ 0]]
	FrameBorder = PlaylistHeaderNonHost.subscribeToModel --[[ @ 0]]
	FocusBorder = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	FrameBorder( Lines, FocusBorder["lobbyRoot.gameClient.update"], function ( f12_arg0 )
		f1_arg0:updateElementState( PlaylistHeaderNonHost, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f12_arg0:get(),
			modelName = "lobbyRoot.gameClient.update"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	Lines = PlaylistHeaderNonHost --[[ @ 0]]
	FrameBorder = PlaylistHeaderNonHost.subscribeToModel --[[ @ 0]]
	FocusBorder = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	FrameBorder( Lines, FocusBorder["lobbyRoot.privateClient.update"], function ( f13_arg0 )
		f1_arg0:updateElementState( PlaylistHeaderNonHost, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f13_arg0:get(),
			modelName = "lobbyRoot.privateClient.update"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:addElement( PlaylistHeaderNonHost ) --[[ @ 0]]
	self.PlaylistHeaderNonHost = PlaylistHeaderNonHost --[[ @ 0]]
	
	FrameBorder = LUI.UIImage.new( 0, 1, -1, 1, 0, 1, -1, 1 ) --[[ @ 0]]
	FrameBorder:setAlpha( 0.15 ) --[[ @ 0]]
	FrameBorder:setImage( RegisterImage( @"uie_ui_menu_store_common_frame" ) ) --[[ @ 0]]
	FrameBorder:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FrameBorder:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FrameBorder:setupNineSliceShader( 12, 12 ) --[[ @ 0]]
	self:addElement( FrameBorder ) --[[ @ 0]]
	self.FrameBorder = FrameBorder --[[ @ 0]]
	
	Lines = CoD.DirectorSelectButtonLines.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 1, -1 ) --[[ @ 0]]
	Lines:setRGB( 0.64, 0.71, 0.78 ) --[[ @ 0]]
	self:addElement( Lines ) --[[ @ 0]]
	self.Lines = Lines --[[ @ 0]]
	
	FocusBorder = LUI.UIImage.new( 0, 1, -4, 4, 0, 1, -4, 4 ) --[[ @ 0]]
	FocusBorder:setRGB( 0.96, 0.94, 0.78 ) --[[ @ 0]]
	FocusBorder:setAlpha( 0 ) --[[ @ 0]]
	FocusBorder:setImage( RegisterImage( @"uie_ui_menu_store_focus_frame" ) ) --[[ @ 0]]
	FocusBorder:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FocusBorder:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FocusBorder:setupNineSliceShader( 10, 10 ) --[[ @ 0]]
	self:addElement( FocusBorder ) --[[ @ 0]]
	self.FocusBorder = FocusBorder --[[ @ 0]]
	
	local DirectorPartyLeaderOnlyPrompt = CoD.DirectorPartyLeaderOnlyPrompt.new( f1_arg0, f1_arg1, 0.5, 0.5, -100, 100, 0.5, 0.5, -12, 12 ) --[[ @ 0]]
	DirectorPartyLeaderOnlyPrompt:mergeStateConditions( {
		{
			stateName = "Invisible",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				local f15_local0 --[[ @ 0]]
				if not IsPartyLeader( f1_arg1 ) then
					f15_local0 = not IsArenaMode() --[[ @ 0]]
				else
					f15_local0 = false --[[ @ 0]]
				end
				return f15_local0
			end
		}
	} ) --[[ @ 0]]
	local ArenaEventTimer = DirectorPartyLeaderOnlyPrompt --[[ @ 0]]
	local DifficultyText = DirectorPartyLeaderOnlyPrompt.subscribeToModel --[[ @ 0]]
	local DoubleXPIconsLeftAligned = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	DifficultyText( ArenaEventTimer, DoubleXPIconsLeftAligned["lobbyRoot.lobbyNav"], function ( f16_arg0 )
		f1_arg0:updateElementState( DirectorPartyLeaderOnlyPrompt, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f16_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	ArenaEventTimer = DirectorPartyLeaderOnlyPrompt --[[ @ 0]]
	DifficultyText = DirectorPartyLeaderOnlyPrompt.subscribeToModel --[[ @ 0]]
	DoubleXPIconsLeftAligned = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	DifficultyText( ArenaEventTimer, DoubleXPIconsLeftAligned["lobbyRoot.privateClient.isHost"], function ( f17_arg0 )
		f1_arg0:updateElementState( DirectorPartyLeaderOnlyPrompt, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f17_arg0:get(),
			modelName = "lobbyRoot.privateClient.isHost"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	ArenaEventTimer = DirectorPartyLeaderOnlyPrompt --[[ @ 0]]
	DifficultyText = DirectorPartyLeaderOnlyPrompt.subscribeToModel --[[ @ 0]]
	DoubleXPIconsLeftAligned = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	DifficultyText( ArenaEventTimer, DoubleXPIconsLeftAligned["lobbyRoot.gameClient.isHost"], function ( f18_arg0 )
		f1_arg0:updateElementState( DirectorPartyLeaderOnlyPrompt, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f18_arg0:get(),
			modelName = "lobbyRoot.gameClient.isHost"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:addElement( DirectorPartyLeaderOnlyPrompt ) --[[ @ 0]]
	self.DirectorPartyLeaderOnlyPrompt = DirectorPartyLeaderOnlyPrompt --[[ @ 0]]
	
	DifficultyText = LUI.UIText.new( 0, 0, 8, 365, 0, 0, 62, 88 ) --[[ @ 0]]
	DifficultyText:setRGB( 0.99, 1, 0.51 ) --[[ @ 0]]
	DifficultyText:setAlpha( 0 ) --[[ @ 0]]
	DifficultyText:setText( "" ) --[[ @ 0]]
	DifficultyText:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	DifficultyText:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	DifficultyText:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( DifficultyText ) --[[ @ 0]]
	self.DifficultyText = DifficultyText --[[ @ 0]]
	
	ArenaEventTimer = CoD.ArenaEventTimer.new( f1_arg0, f1_arg1, 0, 0, 7, 267, 1, 1, -74, -60 ) --[[ @ 0]]
	ArenaEventTimer:mergeStateConditions( {
		{
			stateName = "NextEvent",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	local CustomGamesOfficialBadgeIcon = ArenaEventTimer --[[ @ 0]]
	DoubleXPIconsLeftAligned = ArenaEventTimer.subscribeToModel --[[ @ 0]]
	local f1_local20 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	DoubleXPIconsLeftAligned( CustomGamesOfficialBadgeIcon, f1_local20["lobbyPlaylist.name"], function ( f20_arg0 )
		f1_arg0:updateElementState( ArenaEventTimer, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f20_arg0:get(),
			modelName = "lobbyPlaylist.name"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	CustomGamesOfficialBadgeIcon = ArenaEventTimer --[[ @ 0]]
	DoubleXPIconsLeftAligned = ArenaEventTimer.subscribeToModel --[[ @ 0]]
	f1_local20 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	DoubleXPIconsLeftAligned( CustomGamesOfficialBadgeIcon, f1_local20["lobbyRoot.lobbyNav"], function ( f21_arg0 )
		f1_arg0:updateElementState( ArenaEventTimer, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f21_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	ArenaEventTimer:subscribeToGlobalModel( f1_arg1, "Arena", "arenaEventTimer", function ( model )
		local f22_local0 = model:get() --[[ @ 0]]
		if f22_local0 ~= nil then
			ArenaEventTimer.EventEndsIn:setText( f22_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ArenaEventTimer ) --[[ @ 0]]
	self.ArenaEventTimer = ArenaEventTimer --[[ @ 0]]
	
	DoubleXPIconsLeftAligned = CoD.DoubleXPIconsLeftAlignedFrontendSmall.new( f1_arg0, f1_arg1, 0, 0, -1, 215, 0, 0, 30, 78 ) --[[ @ 0]]
	self:addElement( DoubleXPIconsLeftAligned ) --[[ @ 0]]
	self.DoubleXPIconsLeftAligned = DoubleXPIconsLeftAligned --[[ @ 0]]
	
	CustomGamesOfficialBadgeIcon = CoD.CustomGames_OfficialBadgeIcon.new( f1_arg0, f1_arg1, 1, 1, -64, 0, 0, 0, 0, 64 ) --[[ @ 0]]
	CustomGamesOfficialBadgeIcon:mergeStateConditions( {
		{
			stateName = "IsOfficial",
			condition = function ( menu, element, event )
				return IsCustomMPLobby() and CoD.OptionsUtility.AreAllCustomGameOptionsDefault( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	local f1_local21 = CustomGamesOfficialBadgeIcon --[[ @ 0]]
	f1_local20 = CustomGamesOfficialBadgeIcon.subscribeToModel --[[ @ 0]]
	local f1_local22 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	f1_local20( f1_local21, f1_local22["lobbyRoot.lobbyNav"], function ( f24_arg0 )
		f1_arg0:updateElementState( CustomGamesOfficialBadgeIcon, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f24_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local21 = CustomGamesOfficialBadgeIcon --[[ @ 0]]
	f1_local20 = CustomGamesOfficialBadgeIcon.subscribeToModel --[[ @ 0]]
	f1_local22 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	f1_local20( f1_local21, f1_local22["GametypeSettings.Update"], function ( f25_arg0 )
		f1_arg0:updateElementState( CustomGamesOfficialBadgeIcon, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f25_arg0:get(),
			modelName = "GametypeSettings.Update"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:addElement( CustomGamesOfficialBadgeIcon ) --[[ @ 0]]
	self.CustomGamesOfficialBadgeIcon = CustomGamesOfficialBadgeIcon --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Unselectable",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "Disabled",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.DirectorMapAndGameTypeInternal.__resetProperties = function ( f28_arg0 )
	f28_arg0.DirectorMapAndGameTypeInternalTitles:completeAnimation() --[[ @ 0]]
	f28_arg0.FocusBrackets:completeAnimation() --[[ @ 0]]
	f28_arg0.FocusBorder:completeAnimation() --[[ @ 0]]
	f28_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
	f28_arg0.MapImage:completeAnimation() --[[ @ 0]]
	f28_arg0.DirectorPartyLeaderOnlyPrompt:completeAnimation() --[[ @ 0]]
	f28_arg0.DirectorMapAndGameTypeInternalTitles:setAlpha( 1 ) --[[ @ 0]]
	f28_arg0.DirectorMapAndGameTypeInternalTitles:setZoom( 0 ) --[[ @ 0]]
	f28_arg0.FocusBrackets:setLeftRight( 0, 1, -20, 20 ) --[[ @ 0]]
	f28_arg0.FocusBrackets:setTopBottom( 0, 1, -20, 20 ) --[[ @ 0]]
	f28_arg0.FocusBrackets:setAlpha( 0 ) --[[ @ 0]]
	f28_arg0.FocusBorder:setRGB( 0.96, 0.94, 0.78 ) --[[ @ 0]]
	f28_arg0.FocusBorder:setAlpha( 0 ) --[[ @ 0]]
	f28_arg0.FocusGlow:setAlpha( 0 ) --[[ @ 0]]
	f28_arg0.MapImage:setAlpha( 1 ) --[[ @ 0]]
	f28_arg0.DirectorPartyLeaderOnlyPrompt:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.DirectorMapAndGameTypeInternal.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f29_arg0, f29_arg1 )
			f29_arg0:__resetProperties() --[[ @ 0]]
			f29_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f29_arg0.DirectorMapAndGameTypeInternalTitles:completeAnimation() --[[ @ 0]]
			f29_arg0.DirectorMapAndGameTypeInternalTitles:setAlpha( 1 ) --[[ @ 0]]
			f29_arg0.DirectorMapAndGameTypeInternalTitles:setZoom( 0 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.DirectorMapAndGameTypeInternalTitles ) --[[ @ 0]]
		end,
		Focus = function ( f30_arg0, f30_arg1 )
			f30_arg0:__resetProperties() --[[ @ 0]]
			f30_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f30_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f30_arg0.FocusGlow:setAlpha( 0.6 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.FocusGlow ) --[[ @ 0]]
			f30_arg0.FocusBrackets:completeAnimation() --[[ @ 0]]
			f30_arg0.FocusBrackets:setLeftRight( 0, 1, -10, 10 ) --[[ @ 0]]
			f30_arg0.FocusBrackets:setTopBottom( 0, 1, -10, 10 ) --[[ @ 0]]
			f30_arg0.FocusBrackets:setAlpha( 1 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.FocusBrackets ) --[[ @ 0]]
			f30_arg0.FocusBorder:completeAnimation() --[[ @ 0]]
			f30_arg0.FocusBorder:setAlpha( 1 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.FocusBorder ) --[[ @ 0]]
		end,
		GainFocus = function ( f31_arg0, f31_arg1 )
			f31_arg0:__resetProperties() --[[ @ 0]]
			f31_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			local f31_local0 = function ( f32_arg0 )
				f31_arg0.FocusGlow:beginAnimation( 200, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
				f31_arg0.FocusGlow:setAlpha( 0.6 ) --[[ @ 0]]
				f31_arg0.FocusGlow:registerEventHandler( "interrupted_keyframe", f31_arg0.clipInterrupted ) --[[ @ 0]]
				f31_arg0.FocusGlow:registerEventHandler( "transition_complete_keyframe", f31_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f31_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f31_arg0.FocusGlow:setAlpha( 0 ) --[[ @ 0]]
			f31_local0( f31_arg0.FocusGlow ) --[[ @ 0]]
			local f31_local1 = function ( f33_arg0 )
				local f33_local0 = function ( f34_arg0 )
					f34_arg0:beginAnimation( 50, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
					f34_arg0:setLeftRight( 0, 1, -10, 10 ) --[[ @ 0]]
					f34_arg0:setTopBottom( 0, 1, -10, 10 ) --[[ @ 0]]
					f34_arg0:setAlpha( 1 ) --[[ @ 0]]
					f34_arg0:registerEventHandler( "transition_complete_keyframe", f31_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f31_arg0.FocusBrackets:beginAnimation( 100 ) --[[ @ 0]]
				f31_arg0.FocusBrackets:setLeftRight( 0, 1, -8, 8 ) --[[ @ 0]]
				f31_arg0.FocusBrackets:setTopBottom( 0, 1, -8, 8 ) --[[ @ 0]]
				f31_arg0.FocusBrackets:setAlpha( 0.75 ) --[[ @ 0]]
				f31_arg0.FocusBrackets:registerEventHandler( "interrupted_keyframe", f31_arg0.clipInterrupted ) --[[ @ 0]]
				f31_arg0.FocusBrackets:registerEventHandler( "transition_complete_keyframe", f33_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f31_arg0.FocusBrackets:completeAnimation() --[[ @ 0]]
			f31_arg0.FocusBrackets:setLeftRight( 0, 1, -40, 40 ) --[[ @ 0]]
			f31_arg0.FocusBrackets:setTopBottom( 0, 1, -40, 40 ) --[[ @ 0]]
			f31_arg0.FocusBrackets:setAlpha( 0 ) --[[ @ 0]]
			f31_local1( f31_arg0.FocusBrackets ) --[[ @ 0]]
			f31_arg0.DirectorMapAndGameTypeInternalTitles:completeAnimation() --[[ @ 0]]
			f31_arg0.DirectorMapAndGameTypeInternalTitles:setAlpha( 1 ) --[[ @ 0]]
			f31_arg0.DirectorMapAndGameTypeInternalTitles:setZoom( 0 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.DirectorMapAndGameTypeInternalTitles ) --[[ @ 0]]
			local f31_local2 = function ( f35_arg0 )
				f31_arg0.FocusBorder:beginAnimation( 200, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
				f31_arg0.FocusBorder:setAlpha( 1 ) --[[ @ 0]]
				f31_arg0.FocusBorder:registerEventHandler( "interrupted_keyframe", f31_arg0.clipInterrupted ) --[[ @ 0]]
				f31_arg0.FocusBorder:registerEventHandler( "transition_complete_keyframe", f31_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f31_arg0.FocusBorder:completeAnimation() --[[ @ 0]]
			f31_arg0.FocusBorder:setAlpha( 0 ) --[[ @ 0]]
			f31_local2( f31_arg0.FocusBorder ) --[[ @ 0]]
		end,
		LoseFocus = function ( f36_arg0, f36_arg1 )
			f36_arg0:__resetProperties() --[[ @ 0]]
			f36_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			local f36_local0 = function ( f37_arg0 )
				f36_arg0.FocusGlow:beginAnimation( 200 ) --[[ @ 0]]
				f36_arg0.FocusGlow:setAlpha( 0 ) --[[ @ 0]]
				f36_arg0.FocusGlow:registerEventHandler( "interrupted_keyframe", f36_arg0.clipInterrupted ) --[[ @ 0]]
				f36_arg0.FocusGlow:registerEventHandler( "transition_complete_keyframe", f36_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f36_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f36_arg0.FocusGlow:setAlpha( 0.6 ) --[[ @ 0]]
			f36_local0( f36_arg0.FocusGlow ) --[[ @ 0]]
			local f36_local1 = function ( f38_arg0 )
				f36_arg0.FocusBrackets:beginAnimation( 60, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
				f36_arg0.FocusBrackets:setAlpha( 0 ) --[[ @ 0]]
				f36_arg0.FocusBrackets:registerEventHandler( "interrupted_keyframe", f36_arg0.clipInterrupted ) --[[ @ 0]]
				f36_arg0.FocusBrackets:registerEventHandler( "transition_complete_keyframe", f36_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f36_arg0.FocusBrackets:completeAnimation() --[[ @ 0]]
			f36_arg0.FocusBrackets:setLeftRight( 0, 1, -10, 10 ) --[[ @ 0]]
			f36_arg0.FocusBrackets:setTopBottom( 0, 1, -10, 10 ) --[[ @ 0]]
			f36_arg0.FocusBrackets:setAlpha( 1 ) --[[ @ 0]]
			f36_local1( f36_arg0.FocusBrackets ) --[[ @ 0]]
			f36_arg0.DirectorMapAndGameTypeInternalTitles:completeAnimation() --[[ @ 0]]
			f36_arg0.DirectorMapAndGameTypeInternalTitles:setAlpha( 1 ) --[[ @ 0]]
			f36_arg0.DirectorMapAndGameTypeInternalTitles:setZoom( 0 ) --[[ @ 0]]
			f36_arg0.clipFinished( f36_arg0.DirectorMapAndGameTypeInternalTitles ) --[[ @ 0]]
			local f36_local2 = function ( f39_arg0 )
				f36_arg0.FocusBorder:beginAnimation( 200 ) --[[ @ 0]]
				f36_arg0.FocusBorder:setAlpha( 0 ) --[[ @ 0]]
				f36_arg0.FocusBorder:registerEventHandler( "interrupted_keyframe", f36_arg0.clipInterrupted ) --[[ @ 0]]
				f36_arg0.FocusBorder:registerEventHandler( "transition_complete_keyframe", f36_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f36_arg0.FocusBorder:completeAnimation() --[[ @ 0]]
			f36_arg0.FocusBorder:setAlpha( 1 ) --[[ @ 0]]
			f36_local2( f36_arg0.FocusBorder ) --[[ @ 0]]
		end
	},
	Unselectable = {
		DefaultClip = function ( f40_arg0, f40_arg1 )
			f40_arg0:__resetProperties() --[[ @ 0]]
			f40_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Disabled = {
		DefaultClip = function ( f41_arg0, f41_arg1 )
			f41_arg0:__resetProperties() --[[ @ 0]]
			f41_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f41_arg0.MapImage:completeAnimation() --[[ @ 0]]
			f41_arg0.MapImage:setAlpha( 0.5 ) --[[ @ 0]]
			f41_arg0.clipFinished( f41_arg0.MapImage ) --[[ @ 0]]
			f41_arg0.DirectorMapAndGameTypeInternalTitles:completeAnimation() --[[ @ 0]]
			f41_arg0.DirectorMapAndGameTypeInternalTitles:setAlpha( 1 ) --[[ @ 0]]
			f41_arg0.clipFinished( f41_arg0.DirectorMapAndGameTypeInternalTitles ) --[[ @ 0]]
			f41_arg0.DirectorPartyLeaderOnlyPrompt:completeAnimation() --[[ @ 0]]
			f41_arg0.DirectorPartyLeaderOnlyPrompt:setAlpha( 0 ) --[[ @ 0]]
			f41_arg0.clipFinished( f41_arg0.DirectorPartyLeaderOnlyPrompt ) --[[ @ 0]]
		end,
		Focus = function ( f42_arg0, f42_arg1 )
			f42_arg0:__resetProperties() --[[ @ 0]]
			f42_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f42_arg0.FocusBrackets:completeAnimation() --[[ @ 0]]
			f42_arg0.FocusBrackets:setLeftRight( 0, 1, -10, 10 ) --[[ @ 0]]
			f42_arg0.FocusBrackets:setTopBottom( 0, 1, -10, 10 ) --[[ @ 0]]
			f42_arg0.FocusBrackets:setAlpha( 1 ) --[[ @ 0]]
			f42_arg0.clipFinished( f42_arg0.FocusBrackets ) --[[ @ 0]]
			f42_arg0.MapImage:completeAnimation() --[[ @ 0]]
			f42_arg0.MapImage:setAlpha( 0.5 ) --[[ @ 0]]
			f42_arg0.clipFinished( f42_arg0.MapImage ) --[[ @ 0]]
			f42_arg0.FocusBorder:completeAnimation() --[[ @ 0]]
			f42_arg0.FocusBorder:setAlpha( 0.25 ) --[[ @ 0]]
			f42_arg0.clipFinished( f42_arg0.FocusBorder ) --[[ @ 0]]
			f42_arg0.DirectorPartyLeaderOnlyPrompt:completeAnimation() --[[ @ 0]]
			f42_arg0.DirectorPartyLeaderOnlyPrompt:setAlpha( 1 ) --[[ @ 0]]
			f42_arg0.clipFinished( f42_arg0.DirectorPartyLeaderOnlyPrompt ) --[[ @ 0]]
		end,
		GainFocus = function ( f43_arg0, f43_arg1 )
			f43_arg0:__resetProperties() --[[ @ 0]]
			f43_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			local f43_local0 = function ( f44_arg0 )
				local f44_local0 = function ( f45_arg0 )
					f45_arg0:beginAnimation( 50, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
					f45_arg0:setLeftRight( 0, 1, -10, 10 ) --[[ @ 0]]
					f45_arg0:setTopBottom( 0, 1, -10, 10 ) --[[ @ 0]]
					f45_arg0:setAlpha( 1 ) --[[ @ 0]]
					f45_arg0:registerEventHandler( "transition_complete_keyframe", f43_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f43_arg0.FocusBrackets:beginAnimation( 100 ) --[[ @ 0]]
				f43_arg0.FocusBrackets:setLeftRight( 0, 1, -8, 8 ) --[[ @ 0]]
				f43_arg0.FocusBrackets:setTopBottom( 0, 1, -8, 8 ) --[[ @ 0]]
				f43_arg0.FocusBrackets:setAlpha( 0.75 ) --[[ @ 0]]
				f43_arg0.FocusBrackets:registerEventHandler( "interrupted_keyframe", f43_arg0.clipInterrupted ) --[[ @ 0]]
				f43_arg0.FocusBrackets:registerEventHandler( "transition_complete_keyframe", f44_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f43_arg0.FocusBrackets:completeAnimation() --[[ @ 0]]
			f43_arg0.FocusBrackets:setLeftRight( 0, 1, -40, 40 ) --[[ @ 0]]
			f43_arg0.FocusBrackets:setTopBottom( 0, 1, -40, 40 ) --[[ @ 0]]
			f43_arg0.FocusBrackets:setAlpha( 0 ) --[[ @ 0]]
			f43_local0( f43_arg0.FocusBrackets ) --[[ @ 0]]
			f43_arg0.MapImage:completeAnimation() --[[ @ 0]]
			f43_arg0.MapImage:setAlpha( 0.5 ) --[[ @ 0]]
			f43_arg0.clipFinished( f43_arg0.MapImage ) --[[ @ 0]]
			f43_arg0.DirectorMapAndGameTypeInternalTitles:completeAnimation() --[[ @ 0]]
			f43_arg0.DirectorMapAndGameTypeInternalTitles:setAlpha( 1 ) --[[ @ 0]]
			f43_arg0.clipFinished( f43_arg0.DirectorMapAndGameTypeInternalTitles ) --[[ @ 0]]
			local f43_local1 = function ( f46_arg0 )
				f43_arg0.FocusBorder:beginAnimation( 200 ) --[[ @ 0]]
				f43_arg0.FocusBorder:setAlpha( 0.25 ) --[[ @ 0]]
				f43_arg0.FocusBorder:registerEventHandler( "interrupted_keyframe", f43_arg0.clipInterrupted ) --[[ @ 0]]
				f43_arg0.FocusBorder:registerEventHandler( "transition_complete_keyframe", f43_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f43_arg0.FocusBorder:completeAnimation() --[[ @ 0]]
			f43_arg0.FocusBorder:setRGB( 0.96, 0.94, 0.78 ) --[[ @ 0]]
			f43_arg0.FocusBorder:setAlpha( 0 ) --[[ @ 0]]
			f43_local1( f43_arg0.FocusBorder ) --[[ @ 0]]
			local f43_local2 = function ( f47_arg0 )
				f43_arg0.DirectorPartyLeaderOnlyPrompt:beginAnimation( 200 ) --[[ @ 0]]
				f43_arg0.DirectorPartyLeaderOnlyPrompt:setAlpha( 1 ) --[[ @ 0]]
				f43_arg0.DirectorPartyLeaderOnlyPrompt:registerEventHandler( "interrupted_keyframe", f43_arg0.clipInterrupted ) --[[ @ 0]]
				f43_arg0.DirectorPartyLeaderOnlyPrompt:registerEventHandler( "transition_complete_keyframe", f43_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f43_arg0.DirectorPartyLeaderOnlyPrompt:completeAnimation() --[[ @ 0]]
			f43_arg0.DirectorPartyLeaderOnlyPrompt:setAlpha( 0 ) --[[ @ 0]]
			f43_local2( f43_arg0.DirectorPartyLeaderOnlyPrompt ) --[[ @ 0]]
		end,
		LoseFocus = function ( f48_arg0, f48_arg1 )
			f48_arg0:__resetProperties() --[[ @ 0]]
			f48_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			local f48_local0 = function ( f49_arg0 )
				f48_arg0.FocusBrackets:beginAnimation( 60 ) --[[ @ 0]]
				f48_arg0.FocusBrackets:setAlpha( 0 ) --[[ @ 0]]
				f48_arg0.FocusBrackets:registerEventHandler( "interrupted_keyframe", f48_arg0.clipInterrupted ) --[[ @ 0]]
				f48_arg0.FocusBrackets:registerEventHandler( "transition_complete_keyframe", f48_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f48_arg0.FocusBrackets:completeAnimation() --[[ @ 0]]
			f48_arg0.FocusBrackets:setLeftRight( 0, 1, -10, 10 ) --[[ @ 0]]
			f48_arg0.FocusBrackets:setTopBottom( 0, 1, -10, 10 ) --[[ @ 0]]
			f48_arg0.FocusBrackets:setAlpha( 1 ) --[[ @ 0]]
			f48_local0( f48_arg0.FocusBrackets ) --[[ @ 0]]
			f48_arg0.MapImage:completeAnimation() --[[ @ 0]]
			f48_arg0.MapImage:setAlpha( 0.5 ) --[[ @ 0]]
			f48_arg0.clipFinished( f48_arg0.MapImage ) --[[ @ 0]]
			local f48_local1 = function ( f50_arg0 )
				f48_arg0.FocusBorder:beginAnimation( 200 ) --[[ @ 0]]
				f48_arg0.FocusBorder:setAlpha( 0 ) --[[ @ 0]]
				f48_arg0.FocusBorder:registerEventHandler( "interrupted_keyframe", f48_arg0.clipInterrupted ) --[[ @ 0]]
				f48_arg0.FocusBorder:registerEventHandler( "transition_complete_keyframe", f48_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f48_arg0.FocusBorder:completeAnimation() --[[ @ 0]]
			f48_arg0.FocusBorder:setRGB( 0.96, 0.94, 0.78 ) --[[ @ 0]]
			f48_arg0.FocusBorder:setAlpha( 0.25 ) --[[ @ 0]]
			f48_local1( f48_arg0.FocusBorder ) --[[ @ 0]]
			local f48_local2 = function ( f51_arg0 )
				f48_arg0.DirectorPartyLeaderOnlyPrompt:beginAnimation( 200 ) --[[ @ 0]]
				f48_arg0.DirectorPartyLeaderOnlyPrompt:setAlpha( 0 ) --[[ @ 0]]
				f48_arg0.DirectorPartyLeaderOnlyPrompt:registerEventHandler( "interrupted_keyframe", f48_arg0.clipInterrupted ) --[[ @ 0]]
				f48_arg0.DirectorPartyLeaderOnlyPrompt:registerEventHandler( "transition_complete_keyframe", f48_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f48_arg0.DirectorPartyLeaderOnlyPrompt:completeAnimation() --[[ @ 0]]
			f48_arg0.DirectorPartyLeaderOnlyPrompt:setAlpha( 1 ) --[[ @ 0]]
			f48_local2( f48_arg0.DirectorPartyLeaderOnlyPrompt ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.DirectorMapAndGameTypeInternal.__onClose = function ( f52_arg0 )
	f52_arg0.FocusBrackets:close() --[[ @ 0]]
	f52_arg0.DirectorMapAndGameTypeInternalTitles:close() --[[ @ 0]]
	f52_arg0.PlaylistHeader:close() --[[ @ 0]]
	f52_arg0.PlaylistHeaderNonHost:close() --[[ @ 0]]
	f52_arg0.Lines:close() --[[ @ 0]]
	f52_arg0.DirectorPartyLeaderOnlyPrompt:close() --[[ @ 0]]
	f52_arg0.ArenaEventTimer:close() --[[ @ 0]]
	f52_arg0.DoubleXPIconsLeftAligned:close() --[[ @ 0]]
	f52_arg0.CustomGamesOfficialBadgeIcon:close() --[[ @ 0]]
end
 --[[ @ 0]]
