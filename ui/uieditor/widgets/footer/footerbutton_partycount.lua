-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.FooterButton_PartyCount = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.FooterButton_PartyCount.__defaultWidth = 240 --[[ @ 0]]
CoD.FooterButton_PartyCount.__defaultHeight = 38 --[[ @ 0]]
CoD.FooterButton_PartyCount.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIHorizontalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 0, false ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Left ) --[[ @ 0]]
	self:setClass( CoD.FooterButton_PartyCount ) --[[ @ 0]]
	self.id = "FooterButton_PartyCount" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Label = LUI.UIText.new( 0, 0, 0, 52, 0, 0, 9, 29 ) --[[ @ 0]]
	Label:setRGB( 0.49, 0.49, 0.49 ) --[[ @ 0]]
	Label:setText( LocalizeToUpperString( @"hash_756004A0B4E33CD8" ) ) --[[ @ 0]]
	Label:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Label:setLetterSpacing( 6 ) --[[ @ 0]]
	Label:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( Label ) --[[ @ 0]]
	self.Label = Label --[[ @ 0]]
	
	local Spacer2 = LUI.UIImage.new( 0, 0, 58, 64, 0, 0, -4, 44 ) --[[ @ 0]]
	Spacer2:setRGB( 0, 0, 0 ) --[[ @ 0]]
	Spacer2:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Spacer2 ) --[[ @ 0]]
	self.Spacer2 = Spacer2 --[[ @ 0]]
	
	local Spacer = LUI.UIImage.new( 0, 0, 52, 58, 0, 0, 1, 49 ) --[[ @ 0]]
	Spacer:setRGB( 0, 0, 0 ) --[[ @ 0]]
	Spacer:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Spacer ) --[[ @ 0]]
	self.Spacer = Spacer --[[ @ 0]]
	
	local PartyCount = LUI.UIText.new( 0, 0, 64, 153, 0, 0, 9, 29 ) --[[ @ 0]]
	PartyCount.__String_Reference = function ()
		PartyCount:setText( ToUpper( CoD.DirectorUtility.PrivateLobbyListPlayerCountAndMax() ) ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	PartyCount.__String_Reference() --[[ @ 0]]
	PartyCount:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	PartyCount:setLetterSpacing( 6 ) --[[ @ 0]]
	PartyCount:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( PartyCount ) --[[ @ 0]]
	self.PartyCount = PartyCount --[[ @ 0]]
	
	local MatchmakingCount = LUI.UIText.new( 0, 0, 64, 153, 0, 0, 9, 29 ) --[[ @ 0]]
	MatchmakingCount:setAlpha( 0 ) --[[ @ 0]]
	MatchmakingCount.__String_Reference = function ()
		MatchmakingCount:setText( CoD.DirectorUtility.LobbyListPlayerCountAndMax() ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	MatchmakingCount.__String_Reference() --[[ @ 0]]
	MatchmakingCount:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	MatchmakingCount:setLetterSpacing( 6 ) --[[ @ 0]]
	MatchmakingCount:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( MatchmakingCount ) --[[ @ 0]]
	self.MatchmakingCount = MatchmakingCount --[[ @ 0]]
	
	local f1_local6 = PartyCount --[[ @ 0]]
	local f1_local7 = PartyCount.subscribeToModel --[[ @ 0]]
	local f1_local8 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local7( f1_local6, f1_local8["lobbyRoot.privateClient.update"], PartyCount.__String_Reference ) --[[ @ 0]]
	f1_local6 = PartyCount --[[ @ 0]]
	f1_local7 = PartyCount.subscribeToModel --[[ @ 0]]
	f1_local8 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local7( f1_local6, f1_local8["lobbyRoot.gameClient.update"], PartyCount.__String_Reference ) --[[ @ 0]]
	f1_local6 = MatchmakingCount --[[ @ 0]]
	f1_local7 = MatchmakingCount.subscribeToModel --[[ @ 0]]
	f1_local8 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local7( f1_local6, f1_local8["lobbyRoot.privateClient.update"], MatchmakingCount.__String_Reference ) --[[ @ 0]]
	f1_local6 = MatchmakingCount --[[ @ 0]]
	f1_local7 = MatchmakingCount.subscribeToModel --[[ @ 0]]
	f1_local8 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local7( f1_local6, f1_local8["lobbyRoot.gameClient.update"], MatchmakingCount.__String_Reference ) --[[ @ 0]]
	self:mergeStateConditions( {
		{
			stateName = "Matchmaking",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsGlobalModelValueEqualToEnum( "lobbyRoot.publicLobby.stage", LuaEnum.PUBLIC_LOBBY.INVALID )
			end
		}
	} ) --[[ @ 0]]
	f1_local6 = self --[[ @ 0]]
	f1_local7 = self.subscribeToModel --[[ @ 0]]
	f1_local8 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local7( f1_local6, f1_local8["lobbyRoot.publicLobby.stage"], function ( f5_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "lobbyRoot.publicLobby.stage"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.FooterButton_PartyCount.__resetProperties = function ( f6_arg0 )
	f6_arg0.Label:completeAnimation() --[[ @ 0]]
	f6_arg0.MatchmakingCount:completeAnimation() --[[ @ 0]]
	f6_arg0.PartyCount:completeAnimation() --[[ @ 0]]
	f6_arg0.Label:setText( LocalizeToUpperString( @"hash_756004A0B4E33CD8" ) ) --[[ @ 0]]
	f6_arg0.MatchmakingCount:setAlpha( 0 ) --[[ @ 0]]
	f6_arg0.PartyCount:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.FooterButton_PartyCount.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Matchmaking = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f8_arg0.Label:completeAnimation() --[[ @ 0]]
			f8_arg0.Label:setText( LocalizeToUpperString( @"hash_5E20D5225108123D" ) ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.Label ) --[[ @ 0]]
			f8_arg0.PartyCount:completeAnimation() --[[ @ 0]]
			f8_arg0.PartyCount:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.PartyCount ) --[[ @ 0]]
			f8_arg0.MatchmakingCount:completeAnimation() --[[ @ 0]]
			f8_arg0.MatchmakingCount:setAlpha( 1 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.MatchmakingCount ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.FooterButton_PartyCount.__onClose = function ( f9_arg0 )
	f9_arg0.PartyCount:close() --[[ @ 0]]
	f9_arg0.MatchmakingCount:close() --[[ @ 0]]
end
 --[[ @ 0]]
