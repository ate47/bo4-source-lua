-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:a70e8c3b3266263" ) --[[ @ 0]]
require( "x64:f6f77ad298c6619" ) --[[ @ 0]]
require( "x64:30bc472e86b1eed0" ) --[[ @ 0]]
require( "x64:366fd4726ae62457" ) --[[ @ 0]]
require( "x64:6cffe63547e8848b" ) --[[ @ 0]]
require( "x64:30e923077648d54b" ) --[[ @ 0]]

CoD.GameEndScore = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.GameEndScore.__defaultWidth = 1920 --[[ @ 0]]
CoD.GameEndScore.__defaultHeight = 1080 --[[ @ 0]]
CoD.GameEndScore.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	CoD.GameEndScoreUtility.SetupGameEndScoreWidget( self, f1_arg1 ) --[[ @ 0]]
	self:setUseCylinderMapping( false ) --[[ @ 0]]
	self:setClass( CoD.GameEndScore ) --[[ @ 0]]
	self.id = "GameEndScore" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Bg = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Bg:setRGB( 0, 0, 0 ) --[[ @ 0]]
	Bg:setAlpha( 0.5 ) --[[ @ 0]]
	self:addElement( Bg ) --[[ @ 0]]
	self.Bg = Bg --[[ @ 0]]
	
	local Title = CoD.GameEndScoreTitle.new( f1_arg0, f1_arg1, 0.5, 0.5, -480, 480, 0.5, 0.5, -459, -362 ) --[[ @ 0]]
	Title:subscribeToGlobalModel( f1_arg1, "GameScore", nil, function ( model )
		Title:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	Title:subscribeToGlobalModel( f1_arg1, "GameScore", "titleString", function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			Title.MatchInfo:setText( Engine[@"hash_4F9F1239CFD921FE"]( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Title ) --[[ @ 0]]
	self.Title = Title --[[ @ 0]]
	
	local Subtitle = CoD.GameEndScoreSubtitle.new( f1_arg0, f1_arg1, 0.5, 0.5, -375, 375, 0.5, 0.5, -351, -314 ) --[[ @ 0]]
	Subtitle:subscribeToGlobalModel( f1_arg1, "GameScore", "subtitleString", function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			Subtitle.SubtitleText:setText( Engine[@"hash_4F9F1239CFD921FE"]( f4_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Subtitle ) --[[ @ 0]]
	self.Subtitle = Subtitle --[[ @ 0]]
	
	local MatchBonus = CoD.GameEndScoreMatchBonus.new( f1_arg0, f1_arg1, 0.5, 0.5, -250, 250, 0.5, 0.5, 308, 488 ) --[[ @ 0]]
	self:addElement( MatchBonus ) --[[ @ 0]]
	self.MatchBonus = MatchBonus --[[ @ 0]]
	
	local PlayerRoundPipList = CoD.GameEndScoreOutcome.new( f1_arg0, f1_arg1, 0.5, 0.5, -960, 960, 0.5, 0.5, -95, 125 ) --[[ @ 0]]
	self:addElement( PlayerRoundPipList ) --[[ @ 0]]
	self.PlayerRoundPipList = PlayerRoundPipList --[[ @ 0]]
	
	local GameEndScoreOutcomeFFA = CoD.GameEndScoreOutcomeFFA.new( f1_arg0, f1_arg1, 0.5, 0.5, -480, 480, 0.5, 0.5, -200, 200 ) --[[ @ 0]]
	self:addElement( GameEndScoreOutcomeFFA ) --[[ @ 0]]
	self.GameEndScoreOutcomeFFA = GameEndScoreOutcomeFFA --[[ @ 0]]
	
	local MPJoinedInProgressLoss = CoD.MPJoinedInProgressLoss.new( f1_arg0, f1_arg1, 0.5, 0.5, -959.5, 959.5, 0.5, 0.5, -294.5, -246.5 ) --[[ @ 0]]
	self:addElement( MPJoinedInProgressLoss ) --[[ @ 0]]
	self.MPJoinedInProgressLoss = MPJoinedInProgressLoss --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Outcome",
			condition = function ( menu, element, event )
				return CoD.GameEndScoreUtility.ShowOutcomeTransition( f1_arg1 )
			end
		},
		{
			stateName = "OutcomeWithScoreFFA",
			condition = function ( menu, element, event )
				return CoD.GameEndScoreUtility.ShowOutcomeWithScoreTransition( f1_arg1 ) and not IsGametypeTeambased()
			end
		},
		{
			stateName = "OutcomeWithScore",
			condition = function ( menu, element, event )
				return CoD.GameEndScoreUtility.ShowOutcomeWithScoreTransition( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	local f1_local8 = self --[[ @ 0]]
	local f1_local9 = self.subscribeToModel --[[ @ 0]]
	local f1_local10 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local9( f1_local8, f1_local10["gameScore.currentState"], function ( f8_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f8_arg0:get(),
			modelName = "gameScore.currentState"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local8 = self --[[ @ 0]]
	f1_local9 = self.subscribeToModel --[[ @ 0]]
	f1_local10 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local9( f1_local8, f1_local10["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_killcam"]], function ( f9_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f9_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_killcam"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local8 = self --[[ @ 0]]
	f1_local9 = self.subscribeToModel --[[ @ 0]]
	f1_local10 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local9( f1_local8, f1_local10["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_final_killcam"]], function ( f10_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f10_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_final_killcam"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local8 = self --[[ @ 0]]
	f1_local9 = self.subscribeToModel --[[ @ 0]]
	f1_local10 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local9( f1_local8, f1_local10["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_play_of_the_match"]], function ( f11_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f11_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_play_of_the_match"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local8 = self --[[ @ 0]]
	f1_local9 = self.subscribeToModel --[[ @ 0]]
	f1_local10 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local9( f1_local8, f1_local10["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_scoreboard_open"]], function ( f12_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f12_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_scoreboard_open"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local8 = self --[[ @ 0]]
	f1_local9 = self.subscribeToModel --[[ @ 0]]
	f1_local10 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local9( f1_local8, f1_local10.forceScoreboard, function ( f13_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f13_arg0:get(),
			modelName = "forceScoreboard"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "setState", function ( element, controller, f14_arg2, f14_arg3, f14_arg4 )
		if CoD.BaseUtility.IsSelfInState( self, "OutcomeWithScore" ) and not IsCodCaster( controller ) then
			PlaySoundAlias( "uin_mp_end_score" ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	PlayerRoundPipList.id = "PlayerRoundPipList" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.GameEndScore.__resetProperties = function ( f15_arg0 )
	f15_arg0.Subtitle:completeAnimation() --[[ @ 0]]
	f15_arg0.Title:completeAnimation() --[[ @ 0]]
	f15_arg0.Bg:completeAnimation() --[[ @ 0]]
	f15_arg0.MatchBonus:completeAnimation() --[[ @ 0]]
	f15_arg0.GameEndScoreOutcomeFFA:completeAnimation() --[[ @ 0]]
	f15_arg0.MPJoinedInProgressLoss:completeAnimation() --[[ @ 0]]
	f15_arg0.PlayerRoundPipList:completeAnimation() --[[ @ 0]]
	f15_arg0.Subtitle:setAlpha( 1 ) --[[ @ 0]]
	f15_arg0.Title:setAlpha( 1 ) --[[ @ 0]]
	f15_arg0.Bg:setAlpha( 0.5 ) --[[ @ 0]]
	f15_arg0.MatchBonus:setAlpha( 1 ) --[[ @ 0]]
	f15_arg0.GameEndScoreOutcomeFFA:setAlpha( 1 ) --[[ @ 0]]
	f15_arg0.MPJoinedInProgressLoss:setAlpha( 1 ) --[[ @ 0]]
	f15_arg0.PlayerRoundPipList:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.GameEndScore.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			f16_arg0.Bg:completeAnimation() --[[ @ 0]]
			f16_arg0.Bg:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.Bg ) --[[ @ 0]]
			f16_arg0.Title:completeAnimation() --[[ @ 0]]
			f16_arg0.Title:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.Title ) --[[ @ 0]]
			f16_arg0.Subtitle:completeAnimation() --[[ @ 0]]
			f16_arg0.Subtitle:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.Subtitle ) --[[ @ 0]]
			f16_arg0.MatchBonus:completeAnimation() --[[ @ 0]]
			f16_arg0.MatchBonus:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.MatchBonus ) --[[ @ 0]]
			f16_arg0.GameEndScoreOutcomeFFA:completeAnimation() --[[ @ 0]]
			f16_arg0.GameEndScoreOutcomeFFA:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.GameEndScoreOutcomeFFA ) --[[ @ 0]]
			f16_arg0.MPJoinedInProgressLoss:completeAnimation() --[[ @ 0]]
			f16_arg0.MPJoinedInProgressLoss:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.MPJoinedInProgressLoss ) --[[ @ 0]]
		end
	},
	Outcome = {
		DefaultClip = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			local f17_local0 = function ( f18_arg0 )
				f17_arg0.Bg:beginAnimation( 400, Enum[@"luitween"][@"luitween_ease_in"] ) --[[ @ 0]]
				f17_arg0.Bg:setAlpha( 0.4 ) --[[ @ 0]]
				f17_arg0.Bg:registerEventHandler( "interrupted_keyframe", f17_arg0.clipInterrupted ) --[[ @ 0]]
				f17_arg0.Bg:registerEventHandler( "transition_complete_keyframe", f17_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f17_arg0.Bg:completeAnimation() --[[ @ 0]]
			f17_arg0.Bg:setAlpha( 0 ) --[[ @ 0]]
			f17_local0( f17_arg0.Bg ) --[[ @ 0]]
			local f17_local1 = function ( f19_arg0 )
				local f19_local0 = function ( f20_arg0 )
					f20_arg0:beginAnimation( 200 ) --[[ @ 0]]
					f20_arg0:setAlpha( 1 ) --[[ @ 0]]
					f20_arg0:registerEventHandler( "transition_complete_keyframe", f17_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f17_arg0.Title:beginAnimation( 400 ) --[[ @ 0]]
				f17_arg0.Title:registerEventHandler( "interrupted_keyframe", f17_arg0.clipInterrupted ) --[[ @ 0]]
				f17_arg0.Title:registerEventHandler( "transition_complete_keyframe", f19_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f17_arg0.Title:completeAnimation() --[[ @ 0]]
			f17_arg0.Title:setAlpha( 0 ) --[[ @ 0]]
			f17_local1( f17_arg0.Title ) --[[ @ 0]]
			local f17_local2 = function ( f21_arg0 )
				local f21_local0 = function ( f22_arg0 )
					local f22_local0 = function ( f23_arg0 )
						f23_arg0:beginAnimation( 199 ) --[[ @ 0]]
						f23_arg0:setAlpha( 0.8 ) --[[ @ 0]]
						f23_arg0:registerEventHandler( "transition_complete_keyframe", f17_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f22_arg0:beginAnimation( 200 ) --[[ @ 0]]
					f22_arg0:setAlpha( 1 ) --[[ @ 0]]
					f22_arg0:registerEventHandler( "transition_complete_keyframe", f22_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f17_arg0.Subtitle:beginAnimation( 400 ) --[[ @ 0]]
				f17_arg0.Subtitle:registerEventHandler( "interrupted_keyframe", f17_arg0.clipInterrupted ) --[[ @ 0]]
				f17_arg0.Subtitle:registerEventHandler( "transition_complete_keyframe", f21_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f17_arg0.Subtitle:completeAnimation() --[[ @ 0]]
			f17_arg0.Subtitle:setAlpha( 0 ) --[[ @ 0]]
			f17_local2( f17_arg0.Subtitle ) --[[ @ 0]]
			f17_arg0.MatchBonus:completeAnimation() --[[ @ 0]]
			f17_arg0.MatchBonus:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.MatchBonus ) --[[ @ 0]]
			f17_arg0.GameEndScoreOutcomeFFA:completeAnimation() --[[ @ 0]]
			f17_arg0.GameEndScoreOutcomeFFA:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.GameEndScoreOutcomeFFA ) --[[ @ 0]]
		end
	},
	OutcomeWithScoreFFA = {
		DefaultClip = function ( f24_arg0, f24_arg1 )
			f24_arg0:__resetProperties() --[[ @ 0]]
			f24_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			f24_arg0.Bg:completeAnimation() --[[ @ 0]]
			f24_arg0.Bg:setAlpha( 0.8 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.Bg ) --[[ @ 0]]
			local f24_local0 = function ( f25_arg0 )
				f24_arg0.Title:beginAnimation( 200 ) --[[ @ 0]]
				f24_arg0.Title:setAlpha( 1 ) --[[ @ 0]]
				f24_arg0.Title:registerEventHandler( "interrupted_keyframe", f24_arg0.clipInterrupted ) --[[ @ 0]]
				f24_arg0.Title:registerEventHandler( "transition_complete_keyframe", f24_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f24_arg0.Title:completeAnimation() --[[ @ 0]]
			f24_arg0.Title:setAlpha( 0 ) --[[ @ 0]]
			f24_local0( f24_arg0.Title ) --[[ @ 0]]
			local f24_local1 = function ( f26_arg0 )
				local f26_local0 = function ( f27_arg0 )
					f27_arg0:beginAnimation( 210 ) --[[ @ 0]]
					f27_arg0:setAlpha( 0.8 ) --[[ @ 0]]
					f27_arg0:registerEventHandler( "transition_complete_keyframe", f24_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f24_arg0.Subtitle:beginAnimation( 200 ) --[[ @ 0]]
				f24_arg0.Subtitle:setAlpha( 1 ) --[[ @ 0]]
				f24_arg0.Subtitle:registerEventHandler( "interrupted_keyframe", f24_arg0.clipInterrupted ) --[[ @ 0]]
				f24_arg0.Subtitle:registerEventHandler( "transition_complete_keyframe", f26_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f24_arg0.Subtitle:completeAnimation() --[[ @ 0]]
			f24_arg0.Subtitle:setAlpha( 0 ) --[[ @ 0]]
			f24_local1( f24_arg0.Subtitle ) --[[ @ 0]]
			local f24_local2 = function ( f28_arg0 )
				local f28_local0 = function ( f29_arg0 )
					f29_arg0:beginAnimation( 450, Enum[@"luitween"][@"luitween_ease_in"] ) --[[ @ 0]]
					f29_arg0:setAlpha( 1 ) --[[ @ 0]]
					f29_arg0:registerEventHandler( "transition_complete_keyframe", f24_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f24_arg0.MatchBonus:beginAnimation( 1000 ) --[[ @ 0]]
				f24_arg0.MatchBonus:registerEventHandler( "interrupted_keyframe", f24_arg0.clipInterrupted ) --[[ @ 0]]
				f24_arg0.MatchBonus:registerEventHandler( "transition_complete_keyframe", f28_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f24_arg0.MatchBonus:completeAnimation() --[[ @ 0]]
			f24_arg0.MatchBonus:setAlpha( 0 ) --[[ @ 0]]
			f24_local2( f24_arg0.MatchBonus ) --[[ @ 0]]
			f24_arg0.PlayerRoundPipList:completeAnimation() --[[ @ 0]]
			f24_arg0.PlayerRoundPipList:setAlpha( 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.PlayerRoundPipList ) --[[ @ 0]]
			local f24_local3 = function ( f30_arg0 )
				local f30_local0 = function ( f31_arg0 )
					f31_arg0:beginAnimation( 800 ) --[[ @ 0]]
					f31_arg0:setAlpha( 1 ) --[[ @ 0]]
					f31_arg0:registerEventHandler( "transition_complete_keyframe", f24_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f24_arg0.GameEndScoreOutcomeFFA:beginAnimation( 200 ) --[[ @ 0]]
				f24_arg0.GameEndScoreOutcomeFFA:registerEventHandler( "interrupted_keyframe", f24_arg0.clipInterrupted ) --[[ @ 0]]
				f24_arg0.GameEndScoreOutcomeFFA:registerEventHandler( "transition_complete_keyframe", f30_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f24_arg0.GameEndScoreOutcomeFFA:completeAnimation() --[[ @ 0]]
			f24_arg0.GameEndScoreOutcomeFFA:setAlpha( 0 ) --[[ @ 0]]
			f24_local3( f24_arg0.GameEndScoreOutcomeFFA ) --[[ @ 0]]
		end
	},
	OutcomeWithScore = {
		DefaultClip = function ( f32_arg0, f32_arg1 )
			f32_arg0:__resetProperties() --[[ @ 0]]
			f32_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f32_arg0.Bg:completeAnimation() --[[ @ 0]]
			f32_arg0.Bg:setAlpha( 0.8 ) --[[ @ 0]]
			f32_arg0.clipFinished( f32_arg0.Bg ) --[[ @ 0]]
			local f32_local0 = function ( f33_arg0 )
				f32_arg0.Title:beginAnimation( 200 ) --[[ @ 0]]
				f32_arg0.Title:setAlpha( 1 ) --[[ @ 0]]
				f32_arg0.Title:registerEventHandler( "interrupted_keyframe", f32_arg0.clipInterrupted ) --[[ @ 0]]
				f32_arg0.Title:registerEventHandler( "transition_complete_keyframe", f32_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f32_arg0.Title:completeAnimation() --[[ @ 0]]
			f32_arg0.Title:setAlpha( 0 ) --[[ @ 0]]
			f32_local0( f32_arg0.Title ) --[[ @ 0]]
			local f32_local1 = function ( f34_arg0 )
				local f34_local0 = function ( f35_arg0 )
					f35_arg0:beginAnimation( 210 ) --[[ @ 0]]
					f35_arg0:setAlpha( 0.8 ) --[[ @ 0]]
					f35_arg0:registerEventHandler( "transition_complete_keyframe", f32_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f32_arg0.Subtitle:beginAnimation( 200 ) --[[ @ 0]]
				f32_arg0.Subtitle:setAlpha( 1 ) --[[ @ 0]]
				f32_arg0.Subtitle:registerEventHandler( "interrupted_keyframe", f32_arg0.clipInterrupted ) --[[ @ 0]]
				f32_arg0.Subtitle:registerEventHandler( "transition_complete_keyframe", f34_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f32_arg0.Subtitle:completeAnimation() --[[ @ 0]]
			f32_arg0.Subtitle:setAlpha( 0 ) --[[ @ 0]]
			f32_local1( f32_arg0.Subtitle ) --[[ @ 0]]
			local f32_local2 = function ( f36_arg0 )
				local f36_local0 = function ( f37_arg0 )
					f37_arg0:beginAnimation( 450, Enum[@"luitween"][@"luitween_ease_in"] ) --[[ @ 0]]
					f37_arg0:setAlpha( 1 ) --[[ @ 0]]
					f37_arg0:registerEventHandler( "transition_complete_keyframe", f32_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f32_arg0.MatchBonus:beginAnimation( 1000 ) --[[ @ 0]]
				f32_arg0.MatchBonus:registerEventHandler( "interrupted_keyframe", f32_arg0.clipInterrupted ) --[[ @ 0]]
				f32_arg0.MatchBonus:registerEventHandler( "transition_complete_keyframe", f36_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f32_arg0.MatchBonus:completeAnimation() --[[ @ 0]]
			f32_arg0.MatchBonus:setAlpha( 0 ) --[[ @ 0]]
			f32_local2( f32_arg0.MatchBonus ) --[[ @ 0]]
			f32_arg0.GameEndScoreOutcomeFFA:completeAnimation() --[[ @ 0]]
			f32_arg0.GameEndScoreOutcomeFFA:setAlpha( 0 ) --[[ @ 0]]
			f32_arg0.clipFinished( f32_arg0.GameEndScoreOutcomeFFA ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.GameEndScore.__onClose = function ( f38_arg0 )
	f38_arg0.Title:close() --[[ @ 0]]
	f38_arg0.Subtitle:close() --[[ @ 0]]
	f38_arg0.MatchBonus:close() --[[ @ 0]]
	f38_arg0.PlayerRoundPipList:close() --[[ @ 0]]
	f38_arg0.GameEndScoreOutcomeFFA:close() --[[ @ 0]]
	f38_arg0.MPJoinedInProgressLoss:close() --[[ @ 0]]
end
 --[[ @ 0]]
