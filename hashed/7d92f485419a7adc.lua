-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.DirectorLobbyMemberName = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DirectorLobbyMemberName.__defaultWidth = 241 --[[ @ 0]]
CoD.DirectorLobbyMemberName.__defaultHeight = 28 --[[ @ 0]]
CoD.DirectorLobbyMemberName.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.DirectorLobbyMemberName ) --[[ @ 0]]
	self.id = "DirectorLobbyMemberName" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local gamertag = LUI.UIText.new( 0, 0, 0, 250, 0, 0, -2, 20 ) --[[ @ 0]]
	gamertag.__Color = function ()
		gamertag:setRGB( CoD.DirectorUtility.LobbyPlayerColorByXUIDElseDefaultSelfModel( self:getModel(), "xuid", 1, 1, 1 ) ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	gamertag.__Color() --[[ @ 0]]
	gamertag:setTTF( "notosans_bold" ) --[[ @ 0]]
	gamertag:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	gamertag:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	gamertag:setBackingType( 2 ) --[[ @ 0]]
	gamertag:setBackingColor( 0, 0, 0 ) --[[ @ 0]]
	gamertag:setBackingAlpha( 0.9 ) --[[ @ 0]]
	gamertag:setBackingXPadding( 2 ) --[[ @ 0]]
	gamertag:linkToElementModel( self, "gamertag", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			gamertag:setText( CoD.SocialUtility.CleanGamerTag( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( gamertag ) --[[ @ 0]]
	self.gamertag = gamertag --[[ @ 0]]
	
	gamertag:linkToElementModel( self, "xuid", true, gamertag.__Color ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.DirectorLobbyMemberName.__onClose = function ( f4_arg0 )
	f4_arg0.gamertag:close() --[[ @ 0]]
end
 --[[ @ 0]]
