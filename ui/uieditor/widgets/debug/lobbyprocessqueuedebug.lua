-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
require( "ui/uieditor/widgets/debug/lobbyprocessqueuedebugitem" ) --[[ @ 0]]

CoD.LobbyProcessQueueDebug = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.LobbyProcessQueueDebug.__defaultWidth = 500 --[[ @ 0]]
CoD.LobbyProcessQueueDebug.__defaultHeight = 1009 --[[ @ 0]]
CoD.LobbyProcessQueueDebug.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.LobbyProcessQueueDebug ) --[[ @ 0]]
	self.id = "LobbyProcessQueueDebug" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local List = LUI.UIList.new( f1_arg0, f1_arg1, 2, 0, nil, false, false, false, true ) --[[ @ 0]]
	List:setLeftRight( 0, 0, 0, 1119 ) --[[ @ 0]]
	List:setTopBottom( 0, 0, 0, 658 ) --[[ @ 0]]
	List:setWidgetType( CoD.LobbyProcessQueueDebugItem ) --[[ @ 0]]
	List:setVerticalCount( 30 ) --[[ @ 0]]
	List:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	List:setDataSource( "LobbyProcessQueueInfo" ) --[[ @ 0]]
	self:addElement( List ) --[[ @ 0]]
	self.List = List --[[ @ 0]]
	
	List.id = "List" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.LobbyProcessQueueDebug.__onClose = function ( f2_arg0 )
	f2_arg0.List:close() --[[ @ 0]]
end
 --[[ @ 0]]
