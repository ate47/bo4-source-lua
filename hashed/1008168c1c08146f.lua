-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "x64:4a4a7ab0f18d6539" ) --[[ @ 0]]

CoD.GameEndScore_WZ_SafeAreaContainer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.GameEndScore_WZ_SafeAreaContainer.__defaultWidth = 1920 --[[ @ 0]]
CoD.GameEndScore_WZ_SafeAreaContainer.__defaultHeight = 1080 --[[ @ 0]]
CoD.GameEndScore_WZ_SafeAreaContainer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.GameEndScore_WZ_SafeAreaContainer ) --[[ @ 0]]
	self.id = "GameEndScore_WZ_SafeAreaContainer" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local MatchEndTimer = CoD.GameEndScore_MatchEndTimer.new( f1_arg0, f1_arg1, 0.5, 0.5, 508, 884, 1, 1, -150, -81 ) --[[ @ 0]]
	MatchEndTimer:subscribeToGlobalModel( f1_arg1, "GameScore", nil, function ( model )
		MatchEndTimer:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( MatchEndTimer ) --[[ @ 0]]
	self.MatchEndTimer = MatchEndTimer --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.GameEndScore_WZ_SafeAreaContainer.__onClose = function ( f3_arg0 )
	f3_arg0.MatchEndTimer:close() --[[ @ 0]]
end
 --[[ @ 0]]
