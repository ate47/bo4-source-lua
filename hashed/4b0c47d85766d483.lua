-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "ui/uieditor/widgets/dynamiccontainerwidget" ) --[[ @ 0]]

CoD.DirectorLobbyPoseMembers = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DirectorLobbyPoseMembers.__defaultWidth = 1920 --[[ @ 0]]
CoD.DirectorLobbyPoseMembers.__defaultHeight = 1080 --[[ @ 0]]
CoD.DirectorLobbyPoseMembers.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.DirectorLobbyPoseMembers ) --[[ @ 0]]
	self.id = "DirectorLobbyPoseMembers" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local overheadNameContainer = CoD.DynamicContainerWidget.new( f1_arg0, f1_arg1, 0, 0, 0, 1920, 0, 0, 0, 1080 ) --[[ @ 0]]
	self:addElement( overheadNameContainer ) --[[ @ 0]]
	self.overheadNameContainer = overheadNameContainer --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "NotUsingLobbyPoses",
			condition = function ( menu, element, event )
				return not CoD.DirectorUtility.UsingLobbyPoses( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	local f1_local2 = self --[[ @ 0]]
	local f1_local3 = self.subscribeToModel --[[ @ 0]]
	local f1_local4 = DataSources.LobbyRoot.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4.room, function ( f3_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f3_arg0:get(),
			modelName = "room"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local3 = self --[[ @ 0]]
	CoD.LobbyUtility.InitOverheadNamesPreLobby( f1_arg0, f1_arg1, overheadNameContainer ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.DirectorLobbyPoseMembers.__onClose = function ( f4_arg0 )
	f4_arg0.overheadNameContainer:close() --[[ @ 0]]
end
 --[[ @ 0]]
