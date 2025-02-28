-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "x64:1fba4267ffde82d4" ) --[[ @ 0]]
require( "x64:6d9555af6faa42f8" ) --[[ @ 0]]

CoD.ScoreInfoProp = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ScoreInfoProp.__defaultWidth = 222 --[[ @ 0]]
CoD.ScoreInfoProp.__defaultHeight = 122 --[[ @ 0]]
CoD.ScoreInfoProp.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ScoreInfoProp ) --[[ @ 0]]
	self.id = "ScoreInfoProp" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local FrameProp = LUI.UIImage.new( 0, 0, 0, 221, 0, 0, 40, 118 ) --[[ @ 0]]
	FrameProp:setImage( RegisterImage( @"uie_ui_hud_prophunt_match_widget_frame" ) ) --[[ @ 0]]
	self:addElement( FrameProp ) --[[ @ 0]]
	self.FrameProp = FrameProp --[[ @ 0]]
	
	local FriendlyWinPips = CoD.ScoreInfo_RoundList.new( f1_arg0, f1_arg1, 0.5, 0.5, -104, -32, 0, 0, 34, 66 ) --[[ @ 0]]
	FriendlyWinPips.RoundPips:setDataSource( "PlayerTeamRoundPips" ) --[[ @ 0]]
	FriendlyWinPips.RoundScoreText:setRGB( 1, 0.99, 1 ) --[[ @ 0]]
	FriendlyWinPips:subscribeToGlobalModel( f1_arg1, "GameScore", "playerScore", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			FriendlyWinPips.RoundScoreText:setText( CoD.GameTypeUtility.RoundsWonOfRoundsTotal( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( FriendlyWinPips ) --[[ @ 0]]
	self.FriendlyWinPips = FriendlyWinPips --[[ @ 0]]
	
	local EnemyWinPips = CoD.ScoreInfo_RoundList.new( f1_arg0, f1_arg1, 0.5, 0.5, 29, 101, 0, 0, 34, 66 ) --[[ @ 0]]
	EnemyWinPips.RoundPips:setDataSource( "EnemyTeamRoundPips" ) --[[ @ 0]]
	EnemyWinPips:subscribeToGlobalModel( f1_arg1, "HUDItems", "colorBlindSensitiveEnemyColor", function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			EnemyWinPips.RoundPips:setRGB( f3_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	EnemyWinPips:subscribeToGlobalModel( f1_arg1, "HUDItems", "colorBlindSensitiveEnemyColor", function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			EnemyWinPips.RoundScoreText:setRGB( f4_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	EnemyWinPips:subscribeToGlobalModel( f1_arg1, "GameScore", "enemyScore", function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			EnemyWinPips.RoundScoreText:setText( CoD.GameTypeUtility.RoundsWonOfRoundsTotal( f5_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( EnemyWinPips ) --[[ @ 0]]
	self.EnemyWinPips = EnemyWinPips --[[ @ 0]]
	
	local PropLivesEnemy = CoD.ScoreInfo_TicketSystemTeam.new( f1_arg0, f1_arg1, 0, 0, 76, 176, 0, 0, 82, 138 ) --[[ @ 0]]
	PropLivesEnemy.Container2:setAlpha( 0 ) --[[ @ 0]]
	PropLivesEnemy.Container:setAlpha( 0 ) --[[ @ 0]]
	PropLivesEnemy.PropLivesIcon:setRGB( ColorSet.EnemyOrange_Bright.r, ColorSet.EnemyOrange_Bright.g, ColorSet.EnemyOrange_Bright.b ) --[[ @ 0]]
	PropLivesEnemy:subscribeToGlobalModel( f1_arg1, "HUDItems", "colorBlindSensitiveEnemyColor", function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			PropLivesEnemy.TeamLivesIcon:setRGB( f6_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	PropLivesEnemy:subscribeToGlobalModel( f1_arg1, "HUDItems", "numPropsAlive", function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			PropLivesEnemy.TeamLivesCount:setText( CoD.BaseUtility.AlreadyLocalized( f7_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( PropLivesEnemy ) --[[ @ 0]]
	self.PropLivesEnemy = PropLivesEnemy --[[ @ 0]]
	
	local PropLivesFriendly = CoD.ScoreInfo_TicketSystemTeam.new( f1_arg0, f1_arg1, 0, 0, 76, 176, 0, 0, 82, 138 ) --[[ @ 0]]
	PropLivesFriendly.Container2:setAlpha( 0 ) --[[ @ 0]]
	PropLivesFriendly.Container:setAlpha( 0 ) --[[ @ 0]]
	PropLivesFriendly.PropLivesIcon:setRGB( ColorSet.PlayerCount.r, ColorSet.PlayerCount.g, ColorSet.PlayerCount.b ) --[[ @ 0]]
	PropLivesFriendly:subscribeToGlobalModel( f1_arg1, "HUDItems", "colorBlindSensitiveFriendlyColor", function ( model )
		local f8_local0 = model:get() --[[ @ 0]]
		if f8_local0 ~= nil then
			PropLivesFriendly.TeamLivesIcon:setRGB( f8_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	PropLivesFriendly:subscribeToGlobalModel( f1_arg1, "HUDItems", "numPropsAlive", function ( model )
		local f9_local0 = model:get() --[[ @ 0]]
		if f9_local0 ~= nil then
			PropLivesFriendly.TeamLivesCount:setText( CoD.BaseUtility.AlreadyLocalized( f9_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( PropLivesFriendly ) --[[ @ 0]]
	self.PropLivesFriendly = PropLivesFriendly --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Props",
			condition = function ( menu, element, event )
				return not IsAttackingTeam( f1_arg1 )
			end
		},
		{
			stateName = "Hunters",
			condition = function ( menu, element, event )
				return IsAttackingTeam( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	local f1_local6 = self --[[ @ 0]]
	local f1_local7 = self.subscribeToModel --[[ @ 0]]
	local f1_local8 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local7( f1_local6, f1_local8["hudItems.war.attackingTeam"], function ( f12_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f12_arg0:get(),
			modelName = "hudItems.war.attackingTeam"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local6 = self --[[ @ 0]]
	f1_local7 = self.subscribeToModel --[[ @ 0]]
	f1_local8 = DataSources.CodCaster.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local7( f1_local6, f1_local8.profileSettingsUpdated, function ( f13_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f13_arg0:get(),
			modelName = "profileSettingsUpdated"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	FriendlyWinPips.id = "FriendlyWinPips" --[[ @ 0]]
	EnemyWinPips.id = "EnemyWinPips" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ScoreInfoProp.__resetProperties = function ( f14_arg0 )
	f14_arg0.PropLivesEnemy:completeAnimation() --[[ @ 0]]
	f14_arg0.PropLivesFriendly:completeAnimation() --[[ @ 0]]
	f14_arg0.PropLivesEnemy:setAlpha( 1 ) --[[ @ 0]]
	f14_arg0.PropLivesFriendly:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ScoreInfoProp.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Props = {
		DefaultClip = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f16_arg0.PropLivesEnemy:completeAnimation() --[[ @ 0]]
			f16_arg0.PropLivesEnemy:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.PropLivesEnemy ) --[[ @ 0]]
		end
	},
	Hunters = {
		DefaultClip = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f17_arg0.PropLivesFriendly:completeAnimation() --[[ @ 0]]
			f17_arg0.PropLivesFriendly:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.PropLivesFriendly ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ScoreInfoProp.__onClose = function ( f18_arg0 )
	f18_arg0.FriendlyWinPips:close() --[[ @ 0]]
	f18_arg0.EnemyWinPips:close() --[[ @ 0]]
	f18_arg0.PropLivesEnemy:close() --[[ @ 0]]
	f18_arg0.PropLivesFriendly:close() --[[ @ 0]]
end
 --[[ @ 0]]
