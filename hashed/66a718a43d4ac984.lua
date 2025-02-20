-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "x64:488c89835c36151" ) --[[ @ 0]]
require( "x64:5170894c2be18f57" ) --[[ @ 0]]
require( "x64:7e1697b8a432349" ) --[[ @ 0]]

CoD.zm_game_over = InheritFrom( CoD.Menu ) --[[ @ 0]]
CoD.zm_game_over.__stateMap = {
	"DefaultState",
	"GatewayOpened"
} --[[ @ 0]]
LUI.createMenu.zm_game_over = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "zm_game_over", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	self:setClass( CoD.zm_game_over ) --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_local1:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local SceneBlur = LUI.UIImage.new( 0, 1, -4, 4, 0, 1, -4, 4 ) --[[ @ 0]]
	SceneBlur:setRGB( 0, 0, 0 ) --[[ @ 0]]
	SceneBlur:setAlpha( 0 ) --[[ @ 0]]
	SceneBlur:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_381EEB1F96D4BE0A" ) ) --[[ @ 0]]
	SceneBlur:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( SceneBlur ) --[[ @ 0]]
	self.SceneBlur = SceneBlur --[[ @ 0]]
	
	local BackgroundOverlay = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BackgroundOverlay:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BackgroundOverlay:setAlpha( 0.7 ) --[[ @ 0]]
	self:addElement( BackgroundOverlay ) --[[ @ 0]]
	self.BackgroundOverlay = BackgroundOverlay --[[ @ 0]]
	
	local CroppedZmBacking2 = LUI.UIImage.new( 0, 1, -9, 9, 0, 1, -18, 18 ) --[[ @ 0]]
	CroppedZmBacking2:setAlpha( 0.5 ) --[[ @ 0]]
	CroppedZmBacking2:setImage( RegisterImage( @"uie_ui_hud_zm_aar_reward_bg" ) ) --[[ @ 0]]
	CroppedZmBacking2:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_1A02C44161370F6D" ) ) --[[ @ 0]]
	CroppedZmBacking2:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	CroppedZmBacking2:setShaderVector( 1, 1, 1, 0, 0 ) --[[ @ 0]]
	CroppedZmBacking2:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( CroppedZmBacking2 ) --[[ @ 0]]
	self.CroppedZmBacking2 = CroppedZmBacking2 --[[ @ 0]]
	
	local NoiseTiledBacking = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setAlpha( 0.4 ) --[[ @ 0]]
	NoiseTiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	NoiseTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBacking ) --[[ @ 0]]
	self.NoiseTiledBacking = NoiseTiledBacking --[[ @ 0]]
	
	local TitleSequence = CoD.zm_hud_gameover_titlesequence.new( f1_local1, f1_arg0, 0.5, 0.5, -400, 400, 0, 0, -80, 390 ) --[[ @ 0]]
	TitleSequence:linkToElementModel( self, "rounds", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			TitleSequence.RoundsSurvived:setText( CoD.ZombieUtility.GetSurvivedRoundsText( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( TitleSequence ) --[[ @ 0]]
	self.TitleSequence = TitleSequence --[[ @ 0]]
	
	local RestartLevelPrompt = CoD.ZM_Restart_Level_Prompt.new( f1_local1, f1_arg0, 0.5, 0.5, -350, 350, 0.5, 0.5, 203, 338 ) --[[ @ 0]]
	self:addElement( RestartLevelPrompt ) --[[ @ 0]]
	self.RestartLevelPrompt = RestartLevelPrompt --[[ @ 0]]
	
	local Scoreboard = CoD.Rush_Gameover_Scoreboard.new( f1_local1, f1_arg0, 0.5, 0.5, -500, 500, 0.5, 0.5, -219, 160 ) --[[ @ 0]]
	self:addElement( Scoreboard ) --[[ @ 0]]
	self.Scoreboard = Scoreboard --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalFirst( self, "close", function ( element )
		if IsPC() and IsInTheaterMode() then
			LockInput( self, f1_arg0, false ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	RestartLevelPrompt.id = "RestartLevelPrompt" --[[ @ 0]]
	Scoreboard.id = "Scoreboard" --[[ @ 0]]
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	self.__defaultFocus = RestartLevelPrompt --[[ @ 0]]
	if CoD.isPC and (IsKeyboard( f1_arg0 ) or self.ignoreCursor) then
		self:restoreState( f1_arg0 ) --[[ @ 0]]
	end
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	local f1_local9 = self --[[ @ 0]]
	if IsPC() then
		LockInput( self, f1_arg0, true ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.zm_game_over.__resetProperties = function ( f4_arg0 )
	f4_arg0.RestartLevelPrompt:completeAnimation() --[[ @ 0]]
	f4_arg0.Scoreboard:completeAnimation() --[[ @ 0]]
	f4_arg0.TitleSequence:completeAnimation() --[[ @ 0]]
	f4_arg0.RestartLevelPrompt:setAlpha( 1 ) --[[ @ 0]]
	f4_arg0.Scoreboard:setAlpha( 1 ) --[[ @ 0]]
	f4_arg0.TitleSequence:setAlpha( 1 ) --[[ @ 0]]
	f4_arg0.TitleSequence.TitleShadow:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_722EF41D702EE72D" ) ) --[[ @ 0]]
	f4_arg0.TitleSequence.Title:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_722EF41D702EE72D" ) ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.zm_game_over.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f5_local0 = function ( f6_arg0 )
				local f6_local0 = function ( f7_arg0 )
					f7_arg0:beginAnimation( 200 ) --[[ @ 0]]
					f7_arg0:setAlpha( 1 ) --[[ @ 0]]
					f7_arg0:registerEventHandler( "transition_complete_keyframe", f5_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f5_arg0.TitleSequence:beginAnimation( 100 ) --[[ @ 0]]
				f5_arg0.TitleSequence:registerEventHandler( "interrupted_keyframe", f5_arg0.clipInterrupted ) --[[ @ 0]]
				f5_arg0.TitleSequence:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f5_arg0.TitleSequence:completeAnimation() --[[ @ 0]]
			f5_arg0.TitleSequence:setAlpha( 0 ) --[[ @ 0]]
			f5_local0( f5_arg0.TitleSequence ) --[[ @ 0]]
			local f5_local1 = function ( f8_arg0 )
				local f8_local0 = function ( f9_arg0 )
					f9_arg0:beginAnimation( 190 ) --[[ @ 0]]
					f9_arg0:setAlpha( 1 ) --[[ @ 0]]
					f9_arg0:registerEventHandler( "transition_complete_keyframe", f5_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f5_arg0.RestartLevelPrompt:beginAnimation( 530 ) --[[ @ 0]]
				f5_arg0.RestartLevelPrompt:registerEventHandler( "interrupted_keyframe", f5_arg0.clipInterrupted ) --[[ @ 0]]
				f5_arg0.RestartLevelPrompt:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f5_arg0.RestartLevelPrompt:completeAnimation() --[[ @ 0]]
			f5_arg0.RestartLevelPrompt:setAlpha( 0 ) --[[ @ 0]]
			f5_local1( f5_arg0.RestartLevelPrompt ) --[[ @ 0]]
			local f5_local2 = function ( f10_arg0 )
				local f10_local0 = function ( f11_arg0 )
					f11_arg0:beginAnimation( 229 ) --[[ @ 0]]
					f11_arg0:setAlpha( 1 ) --[[ @ 0]]
					f11_arg0:registerEventHandler( "transition_complete_keyframe", f5_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f5_arg0.Scoreboard:beginAnimation( 300 ) --[[ @ 0]]
				f5_arg0.Scoreboard:registerEventHandler( "interrupted_keyframe", f5_arg0.clipInterrupted ) --[[ @ 0]]
				f5_arg0.Scoreboard:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f5_arg0.Scoreboard:completeAnimation() --[[ @ 0]]
			f5_arg0.Scoreboard:setAlpha( 0 ) --[[ @ 0]]
			f5_local2( f5_arg0.Scoreboard ) --[[ @ 0]]
		end
	},
	GatewayOpened = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f12_arg0.TitleSequence:completeAnimation() --[[ @ 0]]
			f12_arg0.TitleSequence.TitleShadow:completeAnimation() --[[ @ 0]]
			f12_arg0.TitleSequence.Title:completeAnimation() --[[ @ 0]]
			f12_arg0.TitleSequence.TitleShadow:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_386BC28CC483BDEE" ) ) --[[ @ 0]]
			f12_arg0.TitleSequence.Title:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_386BC28CC483BDEE" ) ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.TitleSequence ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.zm_game_over.__onClose = function ( f13_arg0 )
	f13_arg0.TitleSequence:close() --[[ @ 0]]
	f13_arg0.RestartLevelPrompt:close() --[[ @ 0]]
	f13_arg0.Scoreboard:close() --[[ @ 0]]
end
 --[[ @ 0]]
