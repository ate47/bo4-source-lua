-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "x64:576b89c73379cfb5" ) --[[ @ 0]]

CoD.ZMScoreInfo = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ZMScoreInfo.__defaultWidth = 166 --[[ @ 0]]
CoD.ZMScoreInfo.__defaultHeight = 166 --[[ @ 0]]
CoD.ZMScoreInfo.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	CoD.BaseUtility.InitControllerModel( f1_arg1, "gameScore.gameTimeLow", 0 ) --[[ @ 0]]
	self:setClass( CoD.ZMScoreInfo ) --[[ @ 0]]
	self.id = "ZMScoreInfo" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local EnemyTeamScoreContainer = CoD.ScoreInfo_ScoreContainer.new( f1_arg0, f1_arg1, 0, 0, 86, 166, 0, 0, 0, 166 ) --[[ @ 0]]
	EnemyTeamScoreContainer.ScoreContainerInternal.TeamLives.TeamLivesCount:setText( 0 ) --[[ @ 0]]
	EnemyTeamScoreContainer:subscribeToGlobalModel( f1_arg1, "GameScore", "enemyScore", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			EnemyTeamScoreContainer.ScoreContainerInternal.ScoreBar.ScoreText:setText( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( EnemyTeamScoreContainer ) --[[ @ 0]]
	self.EnemyTeamScoreContainer = EnemyTeamScoreContainer --[[ @ 0]]
	
	local PlayerTeamScoreContainer = CoD.ScoreInfo_ScoreContainer.new( f1_arg0, f1_arg1, 0, 0, 0, 80, 0, 0, 0, 166 ) --[[ @ 0]]
	PlayerTeamScoreContainer.ScoreContainerInternal.TeamLives.TeamLivesCount:setText( 0 ) --[[ @ 0]]
	PlayerTeamScoreContainer:subscribeToGlobalModel( f1_arg1, "GameScore", "playerScore", function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			PlayerTeamScoreContainer.ScoreContainerInternal.ScoreBar.ScoreText:setText( f3_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( PlayerTeamScoreContainer, "setHeight", function ( element, controller )
		ScaleToElementHeight( self, element, 0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( PlayerTeamScoreContainer ) --[[ @ 0]]
	self.PlayerTeamScoreContainer = PlayerTeamScoreContainer --[[ @ 0]]
	
	EnemyTeamScoreContainer.id = "EnemyTeamScoreContainer" --[[ @ 0]]
	PlayerTeamScoreContainer.id = "PlayerTeamScoreContainer" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local3 = self --[[ @ 0]]
	CallCustomElementFunction_Self( self, "setupGameTimer" ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.ZMScoreInfo.__onClose = function ( f5_arg0 )
	f5_arg0.EnemyTeamScoreContainer:close() --[[ @ 0]]
	f5_arg0.PlayerTeamScoreContainer:close() --[[ @ 0]]
end
 --[[ @ 0]]
