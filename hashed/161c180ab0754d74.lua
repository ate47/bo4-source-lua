-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "ui/uieditor/widgets/codcaster/codcasterplayerlistrowhighlight" ) --[[ @ 0]]
require( "x64:2a4c30ab07b8c22f" ) --[[ @ 0]]
require( "x64:4b672d66c458dc7f" ) --[[ @ 0]]
require( "x64:4cf05df8e6110793" ) --[[ @ 0]]
require( "x64:41e6a720fa965a6a" ) --[[ @ 0]]
require( "x64:d73fbe78518a345" ) --[[ @ 0]]

local PostLoadFunc = function ( self, controller )
	self:subscribeToModel( Engine[@"createmodel"]( Engine[@"getglobalmodel"](), "objectivesUpdated" ), function ( model )
		local f2_local0 = self:getModel() --[[ @ 0]]
		if f2_local0 then
			local f2_local1 = Engine[@"getmodel"]( f2_local0, "clientNum" ) --[[ @ 0]]
			if f2_local1 then
				local f2_local2 = Engine[@"getmodelvalue"]( f2_local1 ) --[[ @ 0]]
				self.ObjectiveStatus:setImage( RegisterImage( GetPlayerListObjectiveImage( controller, f2_local2 ) ) ) --[[ @ 0]]
				self.ObjectiveStatus:setRGB( GetPlayerListObjectiveColor( controller, f2_local2 ) ) --[[ @ 0]]
			end
		end
	end ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CodCasterPlayerListRowWidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CodCasterPlayerListRowWidget.__defaultWidth = 404 --[[ @ 0]]
CoD.CodCasterPlayerListRowWidget.__defaultHeight = 18 --[[ @ 0]]
CoD.CodCasterPlayerListRowWidget.new = function ( f3_arg0, f3_arg1, f3_arg2, f3_arg3, f3_arg4, f3_arg5, f3_arg6, f3_arg7, f3_arg8, f3_arg9 )
	local self = LUI.UIElement.new( f3_arg2, f3_arg3, f3_arg4, f3_arg5, f3_arg6, f3_arg7, f3_arg8, f3_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CodCasterPlayerListRowWidget ) --[[ @ 0]]
	self.id = "CodCasterPlayerListRowWidget" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f3_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local statsbg = LUI.UIImage.new( 1, 1, -194, 0, 0, 0, 0, 18 ) --[[ @ 0]]
	statsbg:setRGB( 0, 0, 0 ) --[[ @ 0]]
	self:addElement( statsbg ) --[[ @ 0]]
	self.statsbg = statsbg --[[ @ 0]]
	
	local BlackBar = LUI.UIImage.new( 0, 1, 0, 0, 0, 0, 0, 16 ) --[[ @ 0]]
	BlackBar:setAlpha( 0.8 ) --[[ @ 0]]
	BlackBar:setImage( RegisterImage( @"uie_codcaster_teamcolloredbg_generic" ) ) --[[ @ 0]]
	BlackBar:linkToElementModel( self, "clientNum", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			BlackBar:setRGB( TeamColorFromPlayerIndex( f3_arg1, f4_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( BlackBar ) --[[ @ 0]]
	self.BlackBar = BlackBar --[[ @ 0]]
	
	local highlight = CoD.CodCasterPlayerListRowHighlight.new( f3_arg0, f3_arg1, 0.5, 0.5, -202, 202, 0, 0, 0, 16 ) --[[ @ 0]]
	highlight:linkToElementModel( self, nil, false, function ( model )
		highlight:setModel( model, f3_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( highlight ) --[[ @ 0]]
	self.highlight = highlight --[[ @ 0]]
	
	local freebg = LUI.UIImage.new( 0.5, 0.5, -202, 202, 0, 0, 0, 16 ) --[[ @ 0]]
	freebg:setAlpha( 0 ) --[[ @ 0]]
	freebg:setImage( RegisterImage( @"hash_BD8D43404DC456" ) ) --[[ @ 0]]
	self:addElement( freebg ) --[[ @ 0]]
	self.freebg = freebg --[[ @ 0]]
	
	local focus = LUI.UIImage.new( 0, 0, -2, 502, 0, 0, -6, 34 ) --[[ @ 0]]
	focus:setAlpha( 0 ) --[[ @ 0]]
	focus:setImage( RegisterImage( @"uie_t7_codcaster_focusback" ) ) --[[ @ 0]]
	self:addElement( focus ) --[[ @ 0]]
	self.focus = focus --[[ @ 0]]
	
	local ScoreboardRowDeathIcon = LUI.UIImage.new( 0, 0, 13, 41, 0.5, 0.5, -16, 12 ) --[[ @ 0]]
	ScoreboardRowDeathIcon:setScale( 0.65, 0.65 ) --[[ @ 0]]
	ScoreboardRowDeathIcon:linkToElementModel( self, "clientNum", true, function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			ScoreboardRowDeathIcon:setupClientStatusImage( f6_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ScoreboardRowDeathIcon ) --[[ @ 0]]
	self.ScoreboardRowDeathIcon = ScoreboardRowDeathIcon --[[ @ 0]]
	
	local Score01 = CoD.PlayerListRowKillandDeathValue.new( f3_arg0, f3_arg1, 0, 0, 250, 345, 0, 0, 1, 16 ) --[[ @ 0]]
	Score01:setAlpha( 0.6 ) --[[ @ 0]]
	Score01:linkToElementModel( self, "clientNumScoreInfoUpdated", true, function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			Score01.Score01:setText( GetCodcasterPlayerListKD( f3_arg1, f7_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Score01 ) --[[ @ 0]]
	self.Score01 = Score01 --[[ @ 0]]
	
	local DeadIcon = LUI.UIImage.new( 0, 0, 17, 37, 0.5, 0.5, -11, 9 ) --[[ @ 0]]
	DeadIcon:setScale( 0.85, 0.75 ) --[[ @ 0]]
	DeadIcon:setImage( RegisterImage( @"hash_39E55E6818C34348" ) ) --[[ @ 0]]
	self:addElement( DeadIcon ) --[[ @ 0]]
	self.DeadIcon = DeadIcon --[[ @ 0]]
	
	local ObjectiveStatus = CoD.CodCasterPortraitObjectiveStatus.new( f3_arg0, f3_arg1, 0, 0, -5, 59, 0.5, 0.5, -33, 31 ) --[[ @ 0]]
	ObjectiveStatus:setScale( 0.2, 0.2 ) --[[ @ 0]]
	ObjectiveStatus:linkToElementModel( self, nil, false, function ( model )
		ObjectiveStatus:setModel( model, f3_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ObjectiveStatus ) --[[ @ 0]]
	self.ObjectiveStatus = ObjectiveStatus --[[ @ 0]]
	
	local Gamertag = CoD.CodCasterPlayerListRowWidgetText.new( f3_arg0, f3_arg1, 0, 0, 41, 206, 0, 0, 0.5, 15.5 ) --[[ @ 0]]
	Gamertag:linkToElementModel( self, nil, false, function ( model )
		Gamertag:setModel( model, f3_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Gamertag ) --[[ @ 0]]
	self.Gamertag = Gamertag --[[ @ 0]]
	
	local Score0100 = CoD.PlayerListRowValue.new( f3_arg0, f3_arg1, 0, 0, 359.5, 406.5, 0, 0, 0.5, 15.5 ) --[[ @ 0]]
	Score0100:setAlpha( 0.6 ) --[[ @ 0]]
	Score0100:linkToElementModel( self, "clientNumScoreInfoUpdated", true, function ( model )
		local f10_local0 = model:get() --[[ @ 0]]
		if f10_local0 ~= nil then
			Score0100.Score0100:setText( CoD.CodCasterUtility.ScoreByGametype( f3_arg1, f10_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Score0100 ) --[[ @ 0]]
	self.Score0100 = Score0100 --[[ @ 0]]
	
	local Score010 = CoD.PlayerListRowValue.new( f3_arg0, f3_arg1, 0, 0, 327.5, 374.5, 0, 0, 0.5, 15.5 ) --[[ @ 0]]
	Score010:setAlpha( 0.6 ) --[[ @ 0]]
	Score010:linkToElementModel( self, "currentStreak", true, function ( model )
		local f11_local0 = model:get() --[[ @ 0]]
		if f11_local0 ~= nil then
			Score010.Score0100:setText( GetScoreboardCurrentStreak( f3_arg1, f11_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Score010 ) --[[ @ 0]]
	self.Score010 = Score010 --[[ @ 0]]
	
	local PlayerListRowHealthValue = CoD.PlayerListRowHealthValue.new( f3_arg0, f3_arg1, 0, 0, 206, 253, 0, 0, 0.5, 15.5 ) --[[ @ 0]]
	PlayerListRowHealthValue:setAlpha( 0.6 ) --[[ @ 0]]
	PlayerListRowHealthValue:linkToElementModel( self, "health.healthValue", true, function ( model )
		local f12_local0 = model:get() --[[ @ 0]]
		if f12_local0 ~= nil then
			PlayerListRowHealthValue.HealthValue:setRGB( CoD.CodCasterUtility.HealthColor( f12_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	PlayerListRowHealthValue:linkToElementModel( self, "health.healthValue", true, function ( model )
		local f13_local0 = model:get() --[[ @ 0]]
		if f13_local0 ~= nil then
			PlayerListRowHealthValue.HealthValue:setText( CoD.BaseUtility.AlreadyLocalized( f13_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( PlayerListRowHealthValue ) --[[ @ 0]]
	self.PlayerListRowHealthValue = PlayerListRowHealthValue --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "IsSelfNextDead",
			condition = function ( menu, element, event )
				return CoD.CodCasterUtility.IsSelfNext( element, f3_arg1 ) and CoD.ModelUtility.IsSelfModelValueEqualTo( element, f3_arg1, "health.healthValue", 0 )
			end
		},
		{
			stateName = "IsSelf",
			condition = function ( menu, element, event )
				return IsScoreboardPlayerSelf( element, f3_arg1 )
			end
		},
		{
			stateName = "PlayerDead",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f3_arg1, "health.healthValue", 0 )
			end
		},
		{
			stateName = "IsSelfNext",
			condition = function ( menu, element, event )
				return CoD.CodCasterUtility.IsSelfNext( element, f3_arg1 )
			end
		}
	} ) --[[ @ 0]]
	local f3_local14 = self --[[ @ 0]]
	local f3_local15 = self.subscribeToModel --[[ @ 0]]
	local f3_local16 = Engine[@"getmodelforcontroller"]( f3_arg1 ) --[[ @ 0]]
	f3_local15( f3_local14, f3_local16["hudItems.codcaster.nextClient"], function ( f18_arg0 )
		f3_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f3_arg0,
			controller = f3_arg1,
			modelValue = f18_arg0:get(),
			modelName = "hudItems.codcaster.nextClient"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:linkToElementModel( self, "health.healthValue", true, function ( model )
		f3_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f3_arg0,
			controller = f3_arg1,
			modelValue = model:get(),
			modelName = "health.healthValue"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "clientNum", true, function ( model )
		f3_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f3_arg0,
			controller = f3_arg1,
			modelValue = model:get(),
			modelName = "clientNum"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f3_local14 = self --[[ @ 0]]
	f3_local15 = self.subscribeToModel --[[ @ 0]]
	f3_local16 = Engine[@"getmodelforcontroller"]( f3_arg1 ) --[[ @ 0]]
	f3_local15( f3_local14, f3_local16["deadSpectator.playerIndex"], function ( f21_arg0 )
		f3_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f3_arg0,
			controller = f3_arg1,
			modelValue = f21_arg0:get(),
			modelName = "deadSpectator.playerIndex"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f3_local14 = self --[[ @ 0]]
	f3_local15 = self.subscribeToModel --[[ @ 0]]
	f3_local16 = Engine[@"getmodelforcontroller"]( f3_arg1 ) --[[ @ 0]]
	f3_local15( f3_local14, f3_local16["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_game_ended"]], function ( f22_arg0 )
		f3_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f3_arg0,
			controller = f3_arg1,
			modelValue = f22_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_game_ended"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self.__on_menuOpened_self = function ( f23_arg0, f23_arg1, f23_arg2, f23_arg3 )
		local f23_local0 = self --[[ @ 0]]
		CoD.CodCasterUtility.ScoreByGametypeInit( self.Score0100 ) --[[ @ 0]]
		CoD.CodCasterUtility.ForcePlayerListEntryUpdate( self, f23_arg1 ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	f3_arg0:addMenuOpenedCallback( self.__on_menuOpened_self ) --[[ @ 0]]
	Gamertag.id = "Gamertag" --[[ @ 0]]
	self.__on_close_removeOverrides = function ()
		f3_arg0:removeMenuOpenedCallback( self.__on_menuOpened_self ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f3_arg1, f3_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CodCasterPlayerListRowWidget.__resetProperties = function ( f25_arg0 )
	f25_arg0.highlight:completeAnimation() --[[ @ 0]]
	f25_arg0.focus:completeAnimation() --[[ @ 0]]
	f25_arg0.DeadIcon:completeAnimation() --[[ @ 0]]
	f25_arg0.ScoreboardRowDeathIcon:completeAnimation() --[[ @ 0]]
	f25_arg0.freebg:completeAnimation() --[[ @ 0]]
	f25_arg0.BlackBar:completeAnimation() --[[ @ 0]]
	f25_arg0.Score0100:completeAnimation() --[[ @ 0]]
	f25_arg0.Score010:completeAnimation() --[[ @ 0]]
	f25_arg0.Score01:completeAnimation() --[[ @ 0]]
	f25_arg0.PlayerListRowHealthValue:completeAnimation() --[[ @ 0]]
	f25_arg0.highlight:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f25_arg0.highlight:setAlpha( 1 ) --[[ @ 0]]
	f25_arg0.focus:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f25_arg0.focus:setAlpha( 0 ) --[[ @ 0]]
	f25_arg0.DeadIcon:setAlpha( 1 ) --[[ @ 0]]
	f25_arg0.ScoreboardRowDeathIcon:setAlpha( 1 ) --[[ @ 0]]
	f25_arg0.freebg:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f25_arg0.freebg:setAlpha( 0 ) --[[ @ 0]]
	f25_arg0.BlackBar:setAlpha( 0.8 ) --[[ @ 0]]
	f25_arg0.Score0100:setAlpha( 0.6 ) --[[ @ 0]]
	f25_arg0.Score010:setAlpha( 0.6 ) --[[ @ 0]]
	f25_arg0.Score01:setAlpha( 0.6 ) --[[ @ 0]]
	f25_arg0.PlayerListRowHealthValue:setAlpha( 0.6 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CodCasterPlayerListRowWidget.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f26_arg0, f26_arg1 )
			f26_arg0:__resetProperties() --[[ @ 0]]
			f26_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f26_arg0.highlight:completeAnimation() --[[ @ 0]]
			f26_arg0.highlight:setAlpha( 0 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.highlight ) --[[ @ 0]]
			f26_arg0.focus:completeAnimation() --[[ @ 0]]
			f26_arg0.focus:setRGB( ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.focus ) --[[ @ 0]]
			f26_arg0.ScoreboardRowDeathIcon:completeAnimation() --[[ @ 0]]
			f26_arg0.ScoreboardRowDeathIcon:setAlpha( 0 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.ScoreboardRowDeathIcon ) --[[ @ 0]]
			f26_arg0.DeadIcon:completeAnimation() --[[ @ 0]]
			f26_arg0.DeadIcon:setAlpha( 0 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.DeadIcon ) --[[ @ 0]]
		end
	},
	IsSelfNextDead = {
		DefaultClip = function ( f27_arg0, f27_arg1 )
			f27_arg0:__resetProperties() --[[ @ 0]]
			f27_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f27_arg0.highlight:completeAnimation() --[[ @ 0]]
			f27_arg0.highlight:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f27_arg0.highlight:setAlpha( 0 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.highlight ) --[[ @ 0]]
			f27_arg0.freebg:completeAnimation() --[[ @ 0]]
			f27_arg0.freebg:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f27_arg0.freebg:setAlpha( 1 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.freebg ) --[[ @ 0]]
			f27_arg0.ScoreboardRowDeathIcon:completeAnimation() --[[ @ 0]]
			f27_arg0.ScoreboardRowDeathIcon:setAlpha( 0 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.ScoreboardRowDeathIcon ) --[[ @ 0]]
			f27_arg0.DeadIcon:completeAnimation() --[[ @ 0]]
			f27_arg0.DeadIcon:setAlpha( 1 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.DeadIcon ) --[[ @ 0]]
		end,
		Focus = function ( f28_arg0, f28_arg1 )
			f28_arg0:__resetProperties() --[[ @ 0]]
			f28_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			f28_arg0.BlackBar:completeAnimation() --[[ @ 0]]
			f28_arg0.BlackBar:setAlpha( 0.8 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.BlackBar ) --[[ @ 0]]
			f28_arg0.focus:completeAnimation() --[[ @ 0]]
			f28_arg0.focus:setAlpha( 0.5 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.focus ) --[[ @ 0]]
			f28_arg0.Score01:completeAnimation() --[[ @ 0]]
			f28_arg0.Score01:setAlpha( 1 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.Score01 ) --[[ @ 0]]
			f28_arg0.Score0100:completeAnimation() --[[ @ 0]]
			f28_arg0.Score0100:setAlpha( 1 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.Score0100 ) --[[ @ 0]]
			f28_arg0.Score010:completeAnimation() --[[ @ 0]]
			f28_arg0.Score010:setAlpha( 1 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.Score010 ) --[[ @ 0]]
			f28_arg0.PlayerListRowHealthValue:completeAnimation() --[[ @ 0]]
			f28_arg0.PlayerListRowHealthValue:setAlpha( 1 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.PlayerListRowHealthValue ) --[[ @ 0]]
		end
	},
	IsSelf = {
		DefaultClip = function ( f29_arg0, f29_arg1 )
			f29_arg0:__resetProperties() --[[ @ 0]]
			f29_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f29_arg0.focus:completeAnimation() --[[ @ 0]]
			f29_arg0.focus:setAlpha( 0 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.focus ) --[[ @ 0]]
			f29_arg0.ScoreboardRowDeathIcon:completeAnimation() --[[ @ 0]]
			f29_arg0.ScoreboardRowDeathIcon:setAlpha( 0 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.ScoreboardRowDeathIcon ) --[[ @ 0]]
			f29_arg0.DeadIcon:completeAnimation() --[[ @ 0]]
			f29_arg0.DeadIcon:setAlpha( 0 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.DeadIcon ) --[[ @ 0]]
		end,
		Focus = function ( f30_arg0, f30_arg1 )
			f30_arg0:__resetProperties() --[[ @ 0]]
			f30_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			f30_arg0.BlackBar:completeAnimation() --[[ @ 0]]
			f30_arg0.BlackBar:setAlpha( 0.8 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.BlackBar ) --[[ @ 0]]
			f30_arg0.focus:completeAnimation() --[[ @ 0]]
			f30_arg0.focus:setAlpha( 0.5 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.focus ) --[[ @ 0]]
			f30_arg0.Score01:completeAnimation() --[[ @ 0]]
			f30_arg0.Score01:setAlpha( 1 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.Score01 ) --[[ @ 0]]
			f30_arg0.Score0100:completeAnimation() --[[ @ 0]]
			f30_arg0.Score0100:setAlpha( 1 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.Score0100 ) --[[ @ 0]]
			f30_arg0.Score010:completeAnimation() --[[ @ 0]]
			f30_arg0.Score010:setAlpha( 1 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.Score010 ) --[[ @ 0]]
			f30_arg0.PlayerListRowHealthValue:completeAnimation() --[[ @ 0]]
			f30_arg0.PlayerListRowHealthValue:setAlpha( 1 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.PlayerListRowHealthValue ) --[[ @ 0]]
		end
	},
	PlayerDead = {
		DefaultClip = function ( f31_arg0, f31_arg1 )
			f31_arg0:__resetProperties() --[[ @ 0]]
			f31_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f31_arg0.highlight:completeAnimation() --[[ @ 0]]
			f31_arg0.highlight:setAlpha( 0 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.highlight ) --[[ @ 0]]
			f31_arg0.ScoreboardRowDeathIcon:completeAnimation() --[[ @ 0]]
			f31_arg0.ScoreboardRowDeathIcon:setAlpha( 0 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.ScoreboardRowDeathIcon ) --[[ @ 0]]
			f31_arg0.DeadIcon:completeAnimation() --[[ @ 0]]
			f31_arg0.DeadIcon:setAlpha( 1 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.DeadIcon ) --[[ @ 0]]
		end
	},
	IsSelfNext = {
		DefaultClip = function ( f32_arg0, f32_arg1 )
			f32_arg0:__resetProperties() --[[ @ 0]]
			f32_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f32_arg0.highlight:completeAnimation() --[[ @ 0]]
			f32_arg0.highlight:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f32_arg0.highlight:setAlpha( 0 ) --[[ @ 0]]
			f32_arg0.clipFinished( f32_arg0.highlight ) --[[ @ 0]]
			f32_arg0.freebg:completeAnimation() --[[ @ 0]]
			f32_arg0.freebg:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f32_arg0.freebg:setAlpha( 1 ) --[[ @ 0]]
			f32_arg0.clipFinished( f32_arg0.freebg ) --[[ @ 0]]
			f32_arg0.ScoreboardRowDeathIcon:completeAnimation() --[[ @ 0]]
			f32_arg0.ScoreboardRowDeathIcon:setAlpha( 0 ) --[[ @ 0]]
			f32_arg0.clipFinished( f32_arg0.ScoreboardRowDeathIcon ) --[[ @ 0]]
			f32_arg0.DeadIcon:completeAnimation() --[[ @ 0]]
			f32_arg0.DeadIcon:setAlpha( 0 ) --[[ @ 0]]
			f32_arg0.clipFinished( f32_arg0.DeadIcon ) --[[ @ 0]]
		end,
		Focus = function ( f33_arg0, f33_arg1 )
			f33_arg0:__resetProperties() --[[ @ 0]]
			f33_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			f33_arg0.BlackBar:completeAnimation() --[[ @ 0]]
			f33_arg0.BlackBar:setAlpha( 0.8 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.BlackBar ) --[[ @ 0]]
			f33_arg0.focus:completeAnimation() --[[ @ 0]]
			f33_arg0.focus:setAlpha( 0.5 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.focus ) --[[ @ 0]]
			f33_arg0.Score01:completeAnimation() --[[ @ 0]]
			f33_arg0.Score01:setAlpha( 1 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.Score01 ) --[[ @ 0]]
			f33_arg0.Score0100:completeAnimation() --[[ @ 0]]
			f33_arg0.Score0100:setAlpha( 1 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.Score0100 ) --[[ @ 0]]
			f33_arg0.Score010:completeAnimation() --[[ @ 0]]
			f33_arg0.Score010:setAlpha( 1 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.Score010 ) --[[ @ 0]]
			f33_arg0.PlayerListRowHealthValue:completeAnimation() --[[ @ 0]]
			f33_arg0.PlayerListRowHealthValue:setAlpha( 1 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.PlayerListRowHealthValue ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.CodCasterPlayerListRowWidget.__onClose = function ( f34_arg0 )
	f34_arg0.__on_close_removeOverrides() --[[ @ 0]]
	f34_arg0.BlackBar:close() --[[ @ 0]]
	f34_arg0.highlight:close() --[[ @ 0]]
	f34_arg0.ScoreboardRowDeathIcon:close() --[[ @ 0]]
	f34_arg0.Score01:close() --[[ @ 0]]
	f34_arg0.ObjectiveStatus:close() --[[ @ 0]]
	f34_arg0.Gamertag:close() --[[ @ 0]]
	f34_arg0.Score0100:close() --[[ @ 0]]
	f34_arg0.Score010:close() --[[ @ 0]]
	f34_arg0.PlayerListRowHealthValue:close() --[[ @ 0]]
end
 --[[ @ 0]]
