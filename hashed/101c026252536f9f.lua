-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:32
CoD.PositionDraft_EnemyStatus = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PositionDraft_EnemyStatus.__defaultWidth = 400 --[[ @ 0]]
CoD.PositionDraft_EnemyStatus.__defaultHeight = 90 --[[ @ 0]]
CoD.PositionDraft_EnemyStatus.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	CoD.BaseUtility.CreateControllerModel( f1_arg1, "Clients.enemyCount" ) --[[ @ 0]]
	self:setClass( CoD.PositionDraft_EnemyStatus ) --[[ @ 0]]
	self.id = "PositionDraft_EnemyStatus" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local EnemiesReadyBackground = LUI.UIImage.new( 0, 1, 0, 0, 0, 0, 6.5, 68.5 ) --[[ @ 0]]
	EnemiesReadyBackground:setRGB( 0, 0, 0 ) --[[ @ 0]]
	EnemiesReadyBackground:setAlpha( 0.7 ) --[[ @ 0]]
	EnemiesReadyBackground:setYRot( 180 ) --[[ @ 0]]
	self:addElement( EnemiesReadyBackground ) --[[ @ 0]]
	self.EnemiesReadyBackground = EnemiesReadyBackground --[[ @ 0]]
	
	local EnemiesReady = LUI.UIText.new( 0, 0.9, 0, 0, 0.52, 0.52, -8, 16 ) --[[ @ 0]]
	EnemiesReady:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	EnemiesReady:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_2675EA06AE086251" ) ) --[[ @ 0]]
	EnemiesReady:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	EnemiesReady:setLetterSpacing( 1 ) --[[ @ 0]]
	EnemiesReady:setAlignment( Enum[@"LUIAlignment"][@"hash_3830CFD395E6AA0A"] ) --[[ @ 0]]
	EnemiesReady:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( EnemiesReady ) --[[ @ 0]]
	self.EnemiesReady = EnemiesReady --[[ @ 0]]
	
	local WaitingForEnemyTeamBackground = LUI.UIImage.new( 0, 1, 0, 0, 0, 0, 2, 43 ) --[[ @ 0]]
	WaitingForEnemyTeamBackground:setRGB( 0.72, 0.65, 0.5 ) --[[ @ 0]]
	WaitingForEnemyTeamBackground:setAlpha( 0 ) --[[ @ 0]]
	WaitingForEnemyTeamBackground:setYRot( 180 ) --[[ @ 0]]
	WaitingForEnemyTeamBackground:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_normal" ) ) --[[ @ 0]]
	WaitingForEnemyTeamBackground:setShaderVector( 0, 1.1, 0, 0, 0 ) --[[ @ 0]]
	WaitingForEnemyTeamBackground:setShaderVector( 1, 0.71, 0, 0, 0 ) --[[ @ 0]]
	WaitingForEnemyTeamBackground:setShaderVector( 2, 1, 0, 0, 0 ) --[[ @ 0]]
	WaitingForEnemyTeamBackground:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	WaitingForEnemyTeamBackground:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( WaitingForEnemyTeamBackground ) --[[ @ 0]]
	self.WaitingForEnemyTeamBackground = WaitingForEnemyTeamBackground --[[ @ 0]]
	
	local WaitingForEnemyTeam = LUI.UIText.new( 0, 0.9, 0, 0, 0.52, 0.52, -36.5, -12.5 ) --[[ @ 0]]
	WaitingForEnemyTeam:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
	WaitingForEnemyTeam:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_4CB55EDAFFF81C41" ) ) --[[ @ 0]]
	WaitingForEnemyTeam:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	WaitingForEnemyTeam:setLetterSpacing( 3 ) --[[ @ 0]]
	WaitingForEnemyTeam:setAlignment( Enum[@"LUIAlignment"][@"hash_3830CFD395E6AA0A"] ) --[[ @ 0]]
	WaitingForEnemyTeam:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( WaitingForEnemyTeam ) --[[ @ 0]]
	self.WaitingForEnemyTeam = WaitingForEnemyTeam --[[ @ 0]]
	
	local LineTop01 = LUI.UIImage.new( 0, 1, 0, 0, 0, 0, 6, 7 ) --[[ @ 0]]
	LineTop01:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	LineTop01:setAlpha( 0.5 ) --[[ @ 0]]
	self:addElement( LineTop01 ) --[[ @ 0]]
	self.LineTop01 = LineTop01 --[[ @ 0]]
	
	local Pip01 = LUI.UIImage.new( 0, 0, 0, 1, 0, 0, 16, 17 ) --[[ @ 0]]
	Pip01:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	Pip01:setAlpha( 0.5 ) --[[ @ 0]]
	self:addElement( Pip01 ) --[[ @ 0]]
	self.Pip01 = Pip01 --[[ @ 0]]
	
	local Corner01 = LUI.UIImage.new( 0, 0, 0, 1, 0, 0, 6, 12 ) --[[ @ 0]]
	Corner01:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	Corner01:setAlpha( 0.5 ) --[[ @ 0]]
	self:addElement( Corner01 ) --[[ @ 0]]
	self.Corner01 = Corner01 --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "WaitingForEnemyTeam",
			condition = function ( menu, element, event )
				return TeamIsReady( f1_arg1 ) and not EnemyTeamIsReady( f1_arg1 )
			end
		},
		{
			stateName = "NoEnemies",
			condition = function ( menu, element, event )
				return AlwaysTrue()
			end
		}
	} ) --[[ @ 0]]
	local f1_local8 = self --[[ @ 0]]
	local f1_local9 = self.subscribeToModel --[[ @ 0]]
	local f1_local10 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local9( f1_local8, f1_local10["Clients.clientCount"], function ( f4_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f4_arg0:get(),
			modelName = "Clients.clientCount"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local8 = self --[[ @ 0]]
	f1_local9 = self.subscribeToModel --[[ @ 0]]
	f1_local10 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local9( f1_local8, f1_local10["Clients.clientReadyCount"], function ( f5_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "Clients.clientReadyCount"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.PositionDraft_EnemyStatus.__resetProperties = function ( f6_arg0 )
	f6_arg0.WaitingForEnemyTeamBackground:completeAnimation() --[[ @ 0]]
	f6_arg0.WaitingForEnemyTeam:completeAnimation() --[[ @ 0]]
	f6_arg0.EnemiesReadyBackground:completeAnimation() --[[ @ 0]]
	f6_arg0.EnemiesReady:completeAnimation() --[[ @ 0]]
	f6_arg0.Pip01:completeAnimation() --[[ @ 0]]
	f6_arg0.LineTop01:completeAnimation() --[[ @ 0]]
	f6_arg0.Corner01:completeAnimation() --[[ @ 0]]
	f6_arg0.WaitingForEnemyTeamBackground:setAlpha( 0 ) --[[ @ 0]]
	f6_arg0.WaitingForEnemyTeam:setAlpha( 1 ) --[[ @ 0]]
	f6_arg0.EnemiesReadyBackground:setAlpha( 0.7 ) --[[ @ 0]]
	f6_arg0.EnemiesReady:setAlpha( 1 ) --[[ @ 0]]
	f6_arg0.Pip01:setAlpha( 0.5 ) --[[ @ 0]]
	f6_arg0.LineTop01:setAlpha( 0.5 ) --[[ @ 0]]
	f6_arg0.Corner01:setAlpha( 0.5 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.PositionDraft_EnemyStatus.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f7_arg0.WaitingForEnemyTeamBackground:completeAnimation() --[[ @ 0]]
			f7_arg0.WaitingForEnemyTeamBackground:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.WaitingForEnemyTeamBackground ) --[[ @ 0]]
			f7_arg0.WaitingForEnemyTeam:completeAnimation() --[[ @ 0]]
			f7_arg0.WaitingForEnemyTeam:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.WaitingForEnemyTeam ) --[[ @ 0]]
		end
	},
	WaitingForEnemyTeam = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f8_arg0.WaitingForEnemyTeamBackground:completeAnimation() --[[ @ 0]]
			f8_arg0.WaitingForEnemyTeamBackground:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.WaitingForEnemyTeamBackground ) --[[ @ 0]]
			f8_arg0.WaitingForEnemyTeam:completeAnimation() --[[ @ 0]]
			f8_arg0.WaitingForEnemyTeam:setAlpha( 1 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.WaitingForEnemyTeam ) --[[ @ 0]]
		end
	},
	NoEnemies = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 7 ) --[[ @ 0]]
			f9_arg0.EnemiesReadyBackground:completeAnimation() --[[ @ 0]]
			f9_arg0.EnemiesReadyBackground:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.EnemiesReadyBackground ) --[[ @ 0]]
			f9_arg0.EnemiesReady:completeAnimation() --[[ @ 0]]
			f9_arg0.EnemiesReady:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.EnemiesReady ) --[[ @ 0]]
			f9_arg0.WaitingForEnemyTeamBackground:completeAnimation() --[[ @ 0]]
			f9_arg0.WaitingForEnemyTeamBackground:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.WaitingForEnemyTeamBackground ) --[[ @ 0]]
			f9_arg0.WaitingForEnemyTeam:completeAnimation() --[[ @ 0]]
			f9_arg0.WaitingForEnemyTeam:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.WaitingForEnemyTeam ) --[[ @ 0]]
			f9_arg0.LineTop01:completeAnimation() --[[ @ 0]]
			f9_arg0.LineTop01:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.LineTop01 ) --[[ @ 0]]
			f9_arg0.Pip01:completeAnimation() --[[ @ 0]]
			f9_arg0.Pip01:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.Pip01 ) --[[ @ 0]]
			f9_arg0.Corner01:completeAnimation() --[[ @ 0]]
			f9_arg0.Corner01:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.Corner01 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
