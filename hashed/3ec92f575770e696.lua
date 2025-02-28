-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:76d20cd5e7e2072b" ) --[[ @ 0]]
require( "ui/uieditor/widgets/dynamiccontainerwidget" ) --[[ @ 0]]
require( "x64:6310a25e996d432a" ) --[[ @ 0]]

CoD.DirectorLobbyPoseMembersZM = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DirectorLobbyPoseMembersZM.__defaultWidth = 1920 --[[ @ 0]]
CoD.DirectorLobbyPoseMembersZM.__defaultHeight = 1080 --[[ @ 0]]
CoD.DirectorLobbyPoseMembersZM.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	CoD.DirectorUtility.HideLoadoutPreview( f1_arg1 ) --[[ @ 0]]
	self:setClass( CoD.DirectorLobbyPoseMembersZM ) --[[ @ 0]]
	self.id = "DirectorLobbyPoseMembersZM" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local DirectorCharacterButtonZM1 = CoD.DirectorCharacterButtonZM.new( f1_arg0, f1_arg1, 0.5, 0.5, -858, -586, 1, 1, -760, -381 ) --[[ @ 0]]
	DirectorCharacterButtonZM1:subscribeToGlobalModel( f1_arg1, "DirectorCharacterButtonZMList", "1", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			DirectorCharacterButtonZM1:setModel( f2_local0, f1_arg1 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( DirectorCharacterButtonZM1, "setState", function ( element, controller, f3_arg2, f3_arg3, f3_arg4 )
		UpdateElementState( self, "ZMLoadoutPreviewFrame", controller ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( DirectorCharacterButtonZM1 ) --[[ @ 0]]
	self.DirectorCharacterButtonZM1 = DirectorCharacterButtonZM1 --[[ @ 0]]
	
	local DirectorCharacterButtonZM2 = CoD.DirectorCharacterButtonZM.new( f1_arg0, f1_arg1, 0.5, 0.5, -542, -270, 1, 1, -760, -381 ) --[[ @ 0]]
	DirectorCharacterButtonZM2:subscribeToGlobalModel( f1_arg1, "DirectorCharacterButtonZMList", "2", function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			DirectorCharacterButtonZM2:setModel( f4_local0, f1_arg1 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( DirectorCharacterButtonZM2, "setState", function ( element, controller, f5_arg2, f5_arg3, f5_arg4 )
		UpdateElementState( self, "ZMLoadoutPreviewFrame", controller ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( DirectorCharacterButtonZM2 ) --[[ @ 0]]
	self.DirectorCharacterButtonZM2 = DirectorCharacterButtonZM2 --[[ @ 0]]
	
	local DirectorCharacterButtonZM3 = CoD.DirectorCharacterButtonZM.new( f1_arg0, f1_arg1, 0.5, 0.5, -226, 46, 1, 1, -760, -381 ) --[[ @ 0]]
	DirectorCharacterButtonZM3:subscribeToGlobalModel( f1_arg1, "DirectorCharacterButtonZMList", "3", function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			DirectorCharacterButtonZM3:setModel( f6_local0, f1_arg1 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( DirectorCharacterButtonZM3, "setState", function ( element, controller, f7_arg2, f7_arg3, f7_arg4 )
		UpdateElementState( self, "ZMLoadoutPreviewFrame", controller ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( DirectorCharacterButtonZM3 ) --[[ @ 0]]
	self.DirectorCharacterButtonZM3 = DirectorCharacterButtonZM3 --[[ @ 0]]
	
	local DirectorCharacterButtonZM4 = CoD.DirectorCharacterButtonZM.new( f1_arg0, f1_arg1, 0.5, 0.5, 90, 362, 1, 1, -760, -381 ) --[[ @ 0]]
	DirectorCharacterButtonZM4:subscribeToGlobalModel( f1_arg1, "DirectorCharacterButtonZMList", "4", function ( model )
		local f8_local0 = model:get() --[[ @ 0]]
		if f8_local0 ~= nil then
			DirectorCharacterButtonZM4:setModel( f8_local0, f1_arg1 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( DirectorCharacterButtonZM4, "setState", function ( element, controller, f9_arg2, f9_arg3, f9_arg4 )
		UpdateElementState( self, "ZMLoadoutPreviewFrame", controller ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( DirectorCharacterButtonZM4 ) --[[ @ 0]]
	self.DirectorCharacterButtonZM4 = DirectorCharacterButtonZM4 --[[ @ 0]]
	
	local overheadNameContainerZM = CoD.DynamicContainerWidget.new( f1_arg0, f1_arg1, 0, 0, 0, 1920, 0, 0, 0, 1080 ) --[[ @ 0]]
	self:addElement( overheadNameContainerZM ) --[[ @ 0]]
	self.overheadNameContainerZM = overheadNameContainerZM --[[ @ 0]]
	
	local ZMLoadoutPreviewFrame = CoD.ZMLoadoutPreviewOrdered.new( f1_arg0, f1_arg1, 0.5, 0.5, -856, 362, 1, 1, -833, -381 ) --[[ @ 0]]
	ZMLoadoutPreviewFrame:mergeStateConditions( {
		{
			stateName = "Left",
			condition = function ( menu, element, event )
				return IsElementInState( self.DirectorCharacterButtonZM1, "LoadoutPreviewLocal" )
			end
		},
		{
			stateName = "LeftCenter",
			condition = function ( menu, element, event )
				return IsElementInState( self.DirectorCharacterButtonZM2, "LoadoutPreviewLocal" )
			end
		},
		{
			stateName = "RightCenter",
			condition = function ( menu, element, event )
				return IsElementInState( self.DirectorCharacterButtonZM3, "LoadoutPreviewLocal" )
			end
		},
		{
			stateName = "Right",
			condition = function ( menu, element, event )
				return IsElementInState( self.DirectorCharacterButtonZM4, "LoadoutPreviewLocal" )
			end
		}
	} ) --[[ @ 0]]
	self:addElement( ZMLoadoutPreviewFrame ) --[[ @ 0]]
	self.ZMLoadoutPreviewFrame = ZMLoadoutPreviewFrame --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "BotsAllowed",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	self:subscribeToGlobalModel( f1_arg1, "GlobalModel", "MapVote.mapVoteMapNext", function ( model )
		local f15_local0 = self --[[ @ 0]]
		DataSourceHelperRecreate( f1_arg1, "DirectorCharacterButtonZMList" ) --[[ @ 0]]
	end ) --[[ @ 0]]
	DirectorCharacterButtonZM1.id = "DirectorCharacterButtonZM1" --[[ @ 0]]
	DirectorCharacterButtonZM2.id = "DirectorCharacterButtonZM2" --[[ @ 0]]
	DirectorCharacterButtonZM3.id = "DirectorCharacterButtonZM3" --[[ @ 0]]
	DirectorCharacterButtonZM4.id = "DirectorCharacterButtonZM4" --[[ @ 0]]
	ZMLoadoutPreviewFrame.id = "ZMLoadoutPreviewFrame" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local7 = self --[[ @ 0]]
	CoD.ZombieUtility.SubscribeToLobbyClientInfo( f1_arg0, f1_arg1 ) --[[ @ 0]]
	CoD.LobbyUtility.InitOverheadNamesZM( f1_arg0, f1_arg1, overheadNameContainerZM ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.DirectorLobbyPoseMembersZM.__onClose = function ( f16_arg0 )
	f16_arg0.DirectorCharacterButtonZM1:close() --[[ @ 0]]
	f16_arg0.DirectorCharacterButtonZM2:close() --[[ @ 0]]
	f16_arg0.DirectorCharacterButtonZM3:close() --[[ @ 0]]
	f16_arg0.DirectorCharacterButtonZM4:close() --[[ @ 0]]
	f16_arg0.overheadNameContainerZM:close() --[[ @ 0]]
	f16_arg0.ZMLoadoutPreviewFrame:close() --[[ @ 0]]
end
 --[[ @ 0]]
