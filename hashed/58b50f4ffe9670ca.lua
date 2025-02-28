-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/pc/socialmenu/pc_socialmenu_dropdownbnetstatus" ) --[[ @ 0]]
require( "x64:4ac0bb8eed5b40fa" ) --[[ @ 0]]
require( "x64:3eb0bad5d4e6c01d" ) --[[ @ 0]]

CoD.PC_SocialMenu_FriendTabContent = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PC_SocialMenu_FriendTabContent.__defaultWidth = 1290 --[[ @ 0]]
CoD.PC_SocialMenu_FriendTabContent.__defaultHeight = 802 --[[ @ 0]]
CoD.PC_SocialMenu_FriendTabContent.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PC_SocialMenu_FriendTabContent ) --[[ @ 0]]
	self.id = "PC_SocialMenu_FriendTabContent" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local PlayersList = CoD.PCSocialMenu_PlayersList.new( f1_arg0, f1_arg1, 0.52, 0.52, 5, 619, 0, 0, 19.5, 739.5 ) --[[ @ 0]]
	self:addElement( PlayersList ) --[[ @ 0]]
	self.PlayersList = PlayersList --[[ @ 0]]
	
	local PartyList = CoD.PCSocialMenu_PendingRequests.new( f1_arg0, f1_arg1, 0.48, 0.48, -619, -5, 0, 0, 81.5, 801.5 ) --[[ @ 0]]
	self:addElement( PartyList ) --[[ @ 0]]
	self.PartyList = PartyList --[[ @ 0]]
	
	local PlayerStatus = CoD.PC_SocialMenu_DropDownBNetStatus.new( f1_arg0, f1_arg1, 0.5, 0.5, -644, 0, 0, 0, 0, 32 ) --[[ @ 0]]
	PlayerStatus:subscribeToGlobalModel( f1_arg1, "SocialPlayerBNetStatusSelection", nil, function ( model )
		PlayerStatus:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( PlayerStatus ) --[[ @ 0]]
	self.PlayerStatus = PlayerStatus --[[ @ 0]]
	
	PlayersList.id = "PlayersList" --[[ @ 0]]
	PartyList.id = "PartyList" --[[ @ 0]]
	PlayerStatus.id = "PlayerStatus" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.PC_SocialMenu_FriendTabContent.__onClose = function ( f3_arg0 )
	f3_arg0.PlayersList:close() --[[ @ 0]]
	f3_arg0.PartyList:close() --[[ @ 0]]
	f3_arg0.PlayerStatus:close() --[[ @ 0]]
end
 --[[ @ 0]]
