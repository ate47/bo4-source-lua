-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.PC_BattlenetFriend_AddFriend_Name = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PC_BattlenetFriend_AddFriend_Name.__defaultWidth = 392 --[[ @ 0]]
CoD.PC_BattlenetFriend_AddFriend_Name.__defaultHeight = 22 --[[ @ 0]]
CoD.PC_BattlenetFriend_AddFriend_Name.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PC_BattlenetFriend_AddFriend_Name ) --[[ @ 0]]
	self.id = "PC_BattlenetFriend_AddFriend_Name" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local FriendName = LUI.UIText.new( 0.99, 0.99, -388, 4, 0.94, 0.94, -20.5, 1.5 ) --[[ @ 0]]
	FriendName:setText( "" ) --[[ @ 0]]
	FriendName:setTTF( "notosans_bold" ) --[[ @ 0]]
	FriendName:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( FriendName ) --[[ @ 0]]
	self.FriendName = FriendName --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local2 = self --[[ @ 0]]
	CoD.BaseUtility.SetUseStencil( self ) --[[ @ 0]]
	f1_local2 = FriendName --[[ @ 0]]
	CoD.BaseUtility.SetUseStencil( self ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.PC_BattlenetFriend_AddFriend_Name.__onClose = function ( f2_arg0 )
	f2_arg0.FriendName:close() --[[ @ 0]]
end
 --[[ @ 0]]
