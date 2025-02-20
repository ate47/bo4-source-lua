-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
CoD.StartMenu_Options_Graphics_ColorBlindMinimapPreview = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.StartMenu_Options_Graphics_ColorBlindMinimapPreview.__defaultWidth = 750 --[[ @ 0]]
CoD.StartMenu_Options_Graphics_ColorBlindMinimapPreview.__defaultHeight = 390 --[[ @ 0]]
CoD.StartMenu_Options_Graphics_ColorBlindMinimapPreview.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	CoD.BaseUtility.CreateControllerModel( f1_arg1, "profile.colorblindMode" ) --[[ @ 0]]
	self:setClass( CoD.StartMenu_Options_Graphics_ColorBlindMinimapPreview ) --[[ @ 0]]
	self.id = "StartMenu_Options_Graphics_ColorBlindMinimapPreview" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local minimap = LUI.UIImage.new( 0, 0, 0, 750, 0, 0, 0, 282 ) --[[ @ 0]]
	minimap:setImage( RegisterImage( @"uie_t7_mp_sector_color_blind_map" ) ) --[[ @ 0]]
	self:addElement( minimap ) --[[ @ 0]]
	self.minimap = minimap --[[ @ 0]]
	
	local playerArrow = LUI.UIImage.new( 0, 0, 100, 134, 0, 0, 341, 375 ) --[[ @ 0]]
	playerArrow.__Color = function ()
		playerArrow:setRGB( GetColorBlindSafeColorFromBase( "PlayerYellow", f1_arg1, 1, 1, 1 ) ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	playerArrow.__Color() --[[ @ 0]]
	playerArrow:setImage( RegisterImage( @"t7_hud_waypoints_compassping_player" ) ) --[[ @ 0]]
	self:addElement( playerArrow ) --[[ @ 0]]
	self.playerArrow = playerArrow --[[ @ 0]]
	
	local playerScorestreakDiamond = LUI.UIImage.new( 0, 0, 146.5, 180.5, 0, 0, 341, 375 ) --[[ @ 0]]
	playerScorestreakDiamond.__Color = function ()
		playerScorestreakDiamond:setRGB( GetColorBlindSafeColorFromBase( "PlayerYellow", f1_arg1, 1, 1, 1 ) ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	playerScorestreakDiamond.__Color() --[[ @ 0]]
	playerScorestreakDiamond:setImage( RegisterImage( @"uie_t7_hud_enemysatellite_diamond_top_small" ) ) --[[ @ 0]]
	self:addElement( playerScorestreakDiamond ) --[[ @ 0]]
	self.playerScorestreakDiamond = playerScorestreakDiamond --[[ @ 0]]
	
	local friendlyArrow = LUI.UIImage.new( 0, 0, 358, 392, 0, 0, 341, 375 ) --[[ @ 0]]
	friendlyArrow.__Color = function ()
		friendlyArrow:setRGB( GetColorBlindSafeColorFromBase( "FriendlyBlue", f1_arg1, 1, 1, 1 ) ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	friendlyArrow.__Color() --[[ @ 0]]
	friendlyArrow:setImage( RegisterImage( @"t7_hud_waypoints_compassping_friendly_mp" ) ) --[[ @ 0]]
	self:addElement( friendlyArrow ) --[[ @ 0]]
	self.friendlyArrow = friendlyArrow --[[ @ 0]]
	
	local friendlyPartyArrow = LUI.UIImage.new( 0, 0, 310, 344, 0, 0, 341, 375 ) --[[ @ 0]]
	friendlyPartyArrow.__Color = function ()
		friendlyPartyArrow:setRGB( GetColorBlindSafeColorFromBase( "PartyFriendlyBlue", f1_arg1, 1, 1, 1 ) ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	friendlyPartyArrow.__Color() --[[ @ 0]]
	friendlyPartyArrow:setImage( RegisterImage( @"t7_hud_waypoints_compassping_friendly_mp" ) ) --[[ @ 0]]
	self:addElement( friendlyPartyArrow ) --[[ @ 0]]
	self.friendlyPartyArrow = friendlyPartyArrow --[[ @ 0]]
	
	local friendlyObjective = LUI.UIImage.new( 0, 0, 406, 440, 0, 0, 341, 375 ) --[[ @ 0]]
	friendlyObjective.__Color = function ()
		friendlyObjective:setRGB( GetColorBlindSafeColorFromBase( "FriendlyBlue", f1_arg1, 1, 1, 1 ) ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	friendlyObjective.__Color() --[[ @ 0]]
	friendlyObjective:setImage( RegisterImage( @"hash_53DD751B506DFEB6" ) ) --[[ @ 0]]
	self:addElement( friendlyObjective ) --[[ @ 0]]
	self.friendlyObjective = friendlyObjective --[[ @ 0]]
	
	local enemyArrow = LUI.UIImage.new( 0, 0, 545, 579, 0, 0, 341, 375 ) --[[ @ 0]]
	enemyArrow.__Color = function ()
		enemyArrow:setRGB( GetColorBlindSafeColorFromBase( "EnemyOrange", f1_arg1, 1, 1, 1 ) ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	enemyArrow.__Color() --[[ @ 0]]
	enemyArrow:setImage( RegisterImage( @"t7_hud_waypoints_compassping_enemydirectional" ) ) --[[ @ 0]]
	self:addElement( enemyArrow ) --[[ @ 0]]
	self.enemyArrow = enemyArrow --[[ @ 0]]
	
	local enemyObjective = LUI.UIImage.new( 0, 0, 593, 627, 0, 0, 341, 375 ) --[[ @ 0]]
	enemyObjective.__Color = function ()
		enemyObjective:setRGB( GetColorBlindSafeColorFromBase( "EnemyOrange", f1_arg1, 1, 1, 1 ) ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	enemyObjective.__Color() --[[ @ 0]]
	enemyObjective:setImage( RegisterImage( @"hash_53DD751B506DFEB6" ) ) --[[ @ 0]]
	self:addElement( enemyObjective ) --[[ @ 0]]
	self.enemyObjective = enemyObjective --[[ @ 0]]
	
	local enemyScorestreakDiamond = LUI.UIImage.new( 0, 0, 641, 675, 0, 0, 341, 375 ) --[[ @ 0]]
	enemyScorestreakDiamond.__Color = function ()
		enemyScorestreakDiamond:setRGB( GetColorBlindSafeColorFromBase( "EnemyScorestreakTarget", f1_arg1, 1, 1, 1 ) ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	enemyScorestreakDiamond.__Color() --[[ @ 0]]
	enemyScorestreakDiamond:setImage( RegisterImage( @"uie_t7_hud_enemysatellite_diamond_top_small" ) ) --[[ @ 0]]
	self:addElement( enemyScorestreakDiamond ) --[[ @ 0]]
	self.enemyScorestreakDiamond = enemyScorestreakDiamond --[[ @ 0]]
	
	local playerHeader = LUI.UIText.new( 0, 0, -9, 291, 0, 0, 305.5, 326.5 ) --[[ @ 0]]
	playerHeader.__Color = function ()
		playerHeader:setRGB( GetColorBlindSafeColorFromBase( "PlayerYellow", f1_arg1, 1, 1, 1 ) ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	playerHeader.__Color() --[[ @ 0]]
	playerHeader:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_51F9844545CB4FF6" ) ) --[[ @ 0]]
	playerHeader:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	playerHeader:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	playerHeader:setAlignment( Enum[@"LUIAlignment"][@"hash_670510683C22104B"] ) --[[ @ 0]]
	self:addElement( playerHeader ) --[[ @ 0]]
	self.playerHeader = playerHeader --[[ @ 0]]
	
	local friendlyHeader = LUI.UIText.new( 0, 0, 225, 525, 0, 0, 305.5, 326.5 ) --[[ @ 0]]
	friendlyHeader.__Color = function ()
		friendlyHeader:setRGB( GetColorBlindSafeColorFromBase( "FriendlyBlue", f1_arg1, 1, 1, 1 ) ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	friendlyHeader.__Color() --[[ @ 0]]
	friendlyHeader:setText( LocalizeToUpperString( @"hash_157D890DF7DB4CFC" ) ) --[[ @ 0]]
	friendlyHeader:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	friendlyHeader:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	friendlyHeader:setAlignment( Enum[@"LUIAlignment"][@"hash_670510683C22104B"] ) --[[ @ 0]]
	self:addElement( friendlyHeader ) --[[ @ 0]]
	self.friendlyHeader = friendlyHeader --[[ @ 0]]
	
	local enemyHeader = LUI.UIText.new( 0, 0, 460, 760, 0, 0, 305.5, 326.5 ) --[[ @ 0]]
	enemyHeader.__Color = function ()
		enemyHeader:setRGB( GetColorBlindSafeColorFromBase( "EnemyOrange", f1_arg1, 1, 1, 1 ) ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	enemyHeader.__Color() --[[ @ 0]]
	enemyHeader:setText( LocalizeToUpperString( @"hash_191876E35BECF3CD" ) ) --[[ @ 0]]
	enemyHeader:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	enemyHeader:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	enemyHeader:setAlignment( Enum[@"LUIAlignment"][@"hash_670510683C22104B"] ) --[[ @ 0]]
	self:addElement( enemyHeader ) --[[ @ 0]]
	self.enemyHeader = enemyHeader --[[ @ 0]]
	
	local minimapPlayerArrow = LUI.UIImage.new( 0, 0, 62, 110, 0, 0, 130, 178 ) --[[ @ 0]]
	minimapPlayerArrow.__Color = function ()
		minimapPlayerArrow:setRGB( GetColorBlindSafeColorFromBase( "PlayerYellow", f1_arg1, 1, 1, 1 ) ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	minimapPlayerArrow.__Color() --[[ @ 0]]
	minimapPlayerArrow:setZRot( -90 ) --[[ @ 0]]
	minimapPlayerArrow:setImage( RegisterImage( @"t7_hud_waypoints_compassping_player" ) ) --[[ @ 0]]
	self:addElement( minimapPlayerArrow ) --[[ @ 0]]
	self.minimapPlayerArrow = minimapPlayerArrow --[[ @ 0]]
	
	local minimapFriendlyPlayerArrow = LUI.UIImage.new( 0, 0, 117, 165, 0, 0, 104, 152 ) --[[ @ 0]]
	minimapFriendlyPlayerArrow.__Color = function ()
		minimapFriendlyPlayerArrow:setRGB( GetColorBlindSafeColorFromBase( "FriendlyBlue", f1_arg1, 1, 1, 1 ) ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	minimapFriendlyPlayerArrow.__Color() --[[ @ 0]]
	minimapFriendlyPlayerArrow:setZRot( -34 ) --[[ @ 0]]
	minimapFriendlyPlayerArrow:setImage( RegisterImage( @"t7_hud_waypoints_compassping_friendly_mp" ) ) --[[ @ 0]]
	self:addElement( minimapFriendlyPlayerArrow ) --[[ @ 0]]
	self.minimapFriendlyPlayerArrow = minimapFriendlyPlayerArrow --[[ @ 0]]
	
	local minimapPartyFriendlyPlayerArrow = LUI.UIImage.new( 0, 0, 279, 327, 0, 0, 171, 219 ) --[[ @ 0]]
	minimapPartyFriendlyPlayerArrow.__Color = function ()
		minimapPartyFriendlyPlayerArrow:setRGB( GetColorBlindSafeColorFromBase( "PartyFriendlyBlue", f1_arg1, 1, 1, 1 ) ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	minimapPartyFriendlyPlayerArrow.__Color() --[[ @ 0]]
	minimapPartyFriendlyPlayerArrow:setZRot( -34 ) --[[ @ 0]]
	minimapPartyFriendlyPlayerArrow:setImage( RegisterImage( @"t7_hud_waypoints_compassping_friendly_mp" ) ) --[[ @ 0]]
	self:addElement( minimapPartyFriendlyPlayerArrow ) --[[ @ 0]]
	self.minimapPartyFriendlyPlayerArrow = minimapPartyFriendlyPlayerArrow --[[ @ 0]]
	
	local minimapEnemyPing1 = LUI.UIImage.new( 0, 0, 303, 351, 0, 0, 123, 171 ) --[[ @ 0]]
	minimapEnemyPing1.__Color = function ()
		minimapEnemyPing1:setRGB( GetColorBlindSafeColorFromBase( "EnemyOrange", f1_arg1, 1, 1, 1 ) ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	minimapEnemyPing1.__Color() --[[ @ 0]]
	minimapEnemyPing1:setImage( RegisterImage( @"t7_hud_waypoints_compassping_enemy" ) ) --[[ @ 0]]
	self:addElement( minimapEnemyPing1 ) --[[ @ 0]]
	self.minimapEnemyPing1 = minimapEnemyPing1 --[[ @ 0]]
	
	local minimapEnemyPing2 = LUI.UIImage.new( 0, 0, 412, 460, 0, 0, 93, 141 ) --[[ @ 0]]
	minimapEnemyPing2.__Color = function ()
		minimapEnemyPing2:setRGB( GetColorBlindSafeColorFromBase( "EnemyOrange", f1_arg1, 1, 1, 1 ) ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	minimapEnemyPing2.__Color() --[[ @ 0]]
	minimapEnemyPing2:setImage( RegisterImage( @"t7_hud_waypoints_compassping_enemy" ) ) --[[ @ 0]]
	self:addElement( minimapEnemyPing2 ) --[[ @ 0]]
	self.minimapEnemyPing2 = minimapEnemyPing2 --[[ @ 0]]
	
	local minimapEnemyPing3 = LUI.UIImage.new( 0, 0, 538, 586, 0, 0, 159, 207 ) --[[ @ 0]]
	minimapEnemyPing3.__Color = function ()
		minimapEnemyPing3:setRGB( GetColorBlindSafeColorFromBase( "EnemyOrange", f1_arg1, 1, 1, 1 ) ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	minimapEnemyPing3.__Color() --[[ @ 0]]
	minimapEnemyPing3:setImage( RegisterImage( @"t7_hud_waypoints_compassping_enemy" ) ) --[[ @ 0]]
	self:addElement( minimapEnemyPing3 ) --[[ @ 0]]
	self.minimapEnemyPing3 = minimapEnemyPing3 --[[ @ 0]]
	
	local objectivePointA = LUI.UIImage.new( 0, 0, 135, 183, 0, 0, 146, 194 ) --[[ @ 0]]
	objectivePointA.__Color = function ()
		objectivePointA:setRGB( GetColorBlindSafeColorFromBase( "FriendlyBlue", f1_arg1, 1, 1, 1 ) ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	objectivePointA.__Color() --[[ @ 0]]
	objectivePointA:setImage( RegisterImage( @"t7_hud_waypoints_neutral_new_a_mini" ) ) --[[ @ 0]]
	self:addElement( objectivePointA ) --[[ @ 0]]
	self.objectivePointA = objectivePointA --[[ @ 0]]
	
	local objectivePointB = LUI.UIImage.new( 0, 0, 342, 390, 0, 0, 122, 170 ) --[[ @ 0]]
	objectivePointB:setImage( RegisterImage( @"t7_hud_waypoints_neutral_new_b_mini" ) ) --[[ @ 0]]
	self:addElement( objectivePointB ) --[[ @ 0]]
	self.objectivePointB = objectivePointB --[[ @ 0]]
	
	local objectivePointC = LUI.UIImage.new( 0, 0, 532, 580, 0, 0, 99, 147 ) --[[ @ 0]]
	objectivePointC.__Color = function ()
		objectivePointC:setRGB( GetColorBlindSafeColorFromBase( "EnemyOrange", f1_arg1, 1, 1, 1 ) ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	objectivePointC.__Color() --[[ @ 0]]
	objectivePointC:setImage( RegisterImage( @"t7_hud_waypoints_neutral_new_c_mini" ) ) --[[ @ 0]]
	self:addElement( objectivePointC ) --[[ @ 0]]
	self.objectivePointC = objectivePointC --[[ @ 0]]
	
	local f1_local22 = playerArrow --[[ @ 0]]
	local f1_local23 = playerArrow.subscribeToModel --[[ @ 0]]
	local f1_local24 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local23( f1_local22, f1_local24["profile.colorblindMode"], playerArrow.__Color ) --[[ @ 0]]
	f1_local22 = playerScorestreakDiamond --[[ @ 0]]
	f1_local23 = playerScorestreakDiamond.subscribeToModel --[[ @ 0]]
	f1_local24 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local23( f1_local22, f1_local24["profile.colorblindMode"], playerScorestreakDiamond.__Color ) --[[ @ 0]]
	f1_local22 = friendlyArrow --[[ @ 0]]
	f1_local23 = friendlyArrow.subscribeToModel --[[ @ 0]]
	f1_local24 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local23( f1_local22, f1_local24["profile.colorblindMode"], friendlyArrow.__Color ) --[[ @ 0]]
	f1_local22 = friendlyPartyArrow --[[ @ 0]]
	f1_local23 = friendlyPartyArrow.subscribeToModel --[[ @ 0]]
	f1_local24 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local23( f1_local22, f1_local24["profile.colorblindMode"], friendlyPartyArrow.__Color ) --[[ @ 0]]
	f1_local22 = friendlyObjective --[[ @ 0]]
	f1_local23 = friendlyObjective.subscribeToModel --[[ @ 0]]
	f1_local24 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local23( f1_local22, f1_local24["profile.colorblindMode"], friendlyObjective.__Color ) --[[ @ 0]]
	f1_local22 = enemyArrow --[[ @ 0]]
	f1_local23 = enemyArrow.subscribeToModel --[[ @ 0]]
	f1_local24 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local23( f1_local22, f1_local24["profile.colorblindMode"], enemyArrow.__Color ) --[[ @ 0]]
	f1_local22 = enemyObjective --[[ @ 0]]
	f1_local23 = enemyObjective.subscribeToModel --[[ @ 0]]
	f1_local24 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local23( f1_local22, f1_local24["profile.colorblindMode"], enemyObjective.__Color ) --[[ @ 0]]
	f1_local22 = enemyScorestreakDiamond --[[ @ 0]]
	f1_local23 = enemyScorestreakDiamond.subscribeToModel --[[ @ 0]]
	f1_local24 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local23( f1_local22, f1_local24["profile.colorblindMode"], enemyScorestreakDiamond.__Color ) --[[ @ 0]]
	f1_local22 = playerHeader --[[ @ 0]]
	f1_local23 = playerHeader.subscribeToModel --[[ @ 0]]
	f1_local24 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local23( f1_local22, f1_local24["profile.colorblindMode"], playerHeader.__Color ) --[[ @ 0]]
	f1_local22 = friendlyHeader --[[ @ 0]]
	f1_local23 = friendlyHeader.subscribeToModel --[[ @ 0]]
	f1_local24 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local23( f1_local22, f1_local24["profile.colorblindMode"], friendlyHeader.__Color ) --[[ @ 0]]
	f1_local22 = enemyHeader --[[ @ 0]]
	f1_local23 = enemyHeader.subscribeToModel --[[ @ 0]]
	f1_local24 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local23( f1_local22, f1_local24["profile.colorblindMode"], enemyHeader.__Color ) --[[ @ 0]]
	f1_local22 = minimapPlayerArrow --[[ @ 0]]
	f1_local23 = minimapPlayerArrow.subscribeToModel --[[ @ 0]]
	f1_local24 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local23( f1_local22, f1_local24["profile.colorblindMode"], minimapPlayerArrow.__Color ) --[[ @ 0]]
	f1_local22 = minimapFriendlyPlayerArrow --[[ @ 0]]
	f1_local23 = minimapFriendlyPlayerArrow.subscribeToModel --[[ @ 0]]
	f1_local24 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local23( f1_local22, f1_local24["profile.colorblindMode"], minimapFriendlyPlayerArrow.__Color ) --[[ @ 0]]
	f1_local22 = minimapPartyFriendlyPlayerArrow --[[ @ 0]]
	f1_local23 = minimapPartyFriendlyPlayerArrow.subscribeToModel --[[ @ 0]]
	f1_local24 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local23( f1_local22, f1_local24["profile.colorblindMode"], minimapPartyFriendlyPlayerArrow.__Color ) --[[ @ 0]]
	f1_local22 = minimapEnemyPing1 --[[ @ 0]]
	f1_local23 = minimapEnemyPing1.subscribeToModel --[[ @ 0]]
	f1_local24 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local23( f1_local22, f1_local24["profile.colorblindMode"], minimapEnemyPing1.__Color ) --[[ @ 0]]
	f1_local22 = minimapEnemyPing2 --[[ @ 0]]
	f1_local23 = minimapEnemyPing2.subscribeToModel --[[ @ 0]]
	f1_local24 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local23( f1_local22, f1_local24["profile.colorblindMode"], minimapEnemyPing2.__Color ) --[[ @ 0]]
	f1_local22 = minimapEnemyPing3 --[[ @ 0]]
	f1_local23 = minimapEnemyPing3.subscribeToModel --[[ @ 0]]
	f1_local24 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local23( f1_local22, f1_local24["profile.colorblindMode"], minimapEnemyPing3.__Color ) --[[ @ 0]]
	f1_local22 = objectivePointA --[[ @ 0]]
	f1_local23 = objectivePointA.subscribeToModel --[[ @ 0]]
	f1_local24 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local23( f1_local22, f1_local24["profile.colorblindMode"], objectivePointA.__Color ) --[[ @ 0]]
	f1_local22 = objectivePointC --[[ @ 0]]
	f1_local23 = objectivePointC.subscribeToModel --[[ @ 0]]
	f1_local24 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local23( f1_local22, f1_local24["profile.colorblindMode"], objectivePointC.__Color ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.StartMenu_Options_Graphics_ColorBlindMinimapPreview.__onClose = function ( f21_arg0 )
	f21_arg0.playerArrow:close() --[[ @ 0]]
	f21_arg0.playerScorestreakDiamond:close() --[[ @ 0]]
	f21_arg0.friendlyArrow:close() --[[ @ 0]]
	f21_arg0.friendlyPartyArrow:close() --[[ @ 0]]
	f21_arg0.friendlyObjective:close() --[[ @ 0]]
	f21_arg0.enemyArrow:close() --[[ @ 0]]
	f21_arg0.enemyObjective:close() --[[ @ 0]]
	f21_arg0.enemyScorestreakDiamond:close() --[[ @ 0]]
	f21_arg0.playerHeader:close() --[[ @ 0]]
	f21_arg0.friendlyHeader:close() --[[ @ 0]]
	f21_arg0.enemyHeader:close() --[[ @ 0]]
	f21_arg0.minimapPlayerArrow:close() --[[ @ 0]]
	f21_arg0.minimapFriendlyPlayerArrow:close() --[[ @ 0]]
	f21_arg0.minimapPartyFriendlyPlayerArrow:close() --[[ @ 0]]
	f21_arg0.minimapEnemyPing1:close() --[[ @ 0]]
	f21_arg0.minimapEnemyPing2:close() --[[ @ 0]]
	f21_arg0.minimapEnemyPing3:close() --[[ @ 0]]
	f21_arg0.objectivePointA:close() --[[ @ 0]]
	f21_arg0.objectivePointC:close() --[[ @ 0]]
end
 --[[ @ 0]]
