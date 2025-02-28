-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:1c1299b38cb2e0e" ) --[[ @ 0]]
require( "x64:5dd90405b817027f" ) --[[ @ 0]]
require( "x64:3fa31663b3b7e3c1" ) --[[ @ 0]]

CoD.CodCasterAnnouncementFeed = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CodCasterAnnouncementFeed.__defaultWidth = 394 --[[ @ 0]]
CoD.CodCasterAnnouncementFeed.__defaultHeight = 24 --[[ @ 0]]
CoD.CodCasterAnnouncementFeed.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CodCasterAnnouncementFeed ) --[[ @ 0]]
	self.id = "CodCasterAnnouncementFeed" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local AnnouncementImageBackground = CoD.Codcaster_annoncement_bg.new( f1_arg0, f1_arg1, 0, 0, -33, 427, 0, 0, 20, 52 ) --[[ @ 0]]
	AnnouncementImageBackground:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( AnnouncementImageBackground ) --[[ @ 0]]
	self.AnnouncementImageBackground = AnnouncementImageBackground --[[ @ 0]]
	
	local AnnouncementImageHighlightLeft = CoD.Codcaster_AnnouncementHighlight.new( f1_arg0, f1_arg1, 0, 0, -17, 46, 0, 0, 23, 51 ) --[[ @ 0]]
	AnnouncementImageHighlightLeft:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( AnnouncementImageHighlightLeft ) --[[ @ 0]]
	self.AnnouncementImageHighlightLeft = AnnouncementImageHighlightLeft --[[ @ 0]]
	
	local AnnouncementImageHighlightRight = CoD.Codcaster_AnnouncementHighlight.new( f1_arg0, f1_arg1, 0, 0, 349, 412, 0, 0, 23, 51 ) --[[ @ 0]]
	AnnouncementImageHighlightRight:setAlpha( 0 ) --[[ @ 0]]
	AnnouncementImageHighlightRight:setYRot( 180 ) --[[ @ 0]]
	self:addElement( AnnouncementImageHighlightRight ) --[[ @ 0]]
	self.AnnouncementImageHighlightRight = AnnouncementImageHighlightRight --[[ @ 0]]
	
	local AnnouncementFeedText = CoD.CodCasterAnnouncementFeedText.new( f1_arg0, f1_arg1, 0, 0, -105.5, 499.5, 0, 0, 29, 44 ) --[[ @ 0]]
	AnnouncementFeedText:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( AnnouncementFeedText ) --[[ @ 0]]
	self.AnnouncementFeedText = AnnouncementFeedText --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "HiddenDueToDS",
			condition = function ( menu, element, event )
				return not IsCodCasterProfileValueEqualTo( f1_arg1, "shoutcaster_ds_teamscore", 1 )
			end
		},
		{
			stateName = "HiddenDueToDS2",
			condition = function ( menu, element, event )
				return not IsCodCasterProfileValueEqualTo( f1_arg1, "shoutcaster_ds_notification_announcements", 1 )
			end
		},
		{
			stateName = "HiddenDueToQS",
			condition = function ( menu, element, event )
				return not IsCodCasterProfileValueEqualTo( f1_arg1, "shoutcaster_qs_playerlist", 1 )
			end
		},
		{
			stateName = "HiddenDueToScoreboard",
			condition = function ( menu, element, event )
				return true
			end
		},
		{
			stateName = "NoRoundAndLives",
			condition = function ( menu, element, event )
				local f6_local0 --[[ @ 0]]
				if not CoD.HUDUtility.ShouldShowTeamLives( f1_arg1 ) and not IsGametypeSettingsValue( "roundLimit", 3 ) then
					f6_local0 = not CoD.HUDUtility.IsGameTypeEqualToString( "ctf" ) --[[ @ 0]]
				else
					f6_local0 = false --[[ @ 0]]
				end
				return f6_local0
			end
		},
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return true
			end
		}
	} ) --[[ @ 0]]
	local f1_local5 = self --[[ @ 0]]
	local f1_local6 = self.subscribeToModel --[[ @ 0]]
	local f1_local7 = DataSources.CodCaster.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local5, f1_local7.profileSettingsUpdated, function ( f8_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f8_arg0:get(),
			modelName = "profileSettingsUpdated"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self.__on_menuOpened_self = function ( f9_arg0, f9_arg1, f9_arg2, f9_arg3 )
		UpdateSelfElementState( f9_arg2, self, f9_arg1 ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	f1_arg0:addMenuOpenedCallback( self.__on_menuOpened_self ) --[[ @ 0]]
	self.__on_close_removeOverrides = function ()
		f1_arg0:removeMenuOpenedCallback( self.__on_menuOpened_self ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local6 = self --[[ @ 0]]
	CoD.CodCasterUtility.PostLoad( self, f1_arg1 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.CodCasterAnnouncementFeed.__resetProperties = function ( f11_arg0 )
	f11_arg0.AnnouncementImageBackground:completeAnimation() --[[ @ 0]]
	f11_arg0.AnnouncementImageHighlightLeft:completeAnimation() --[[ @ 0]]
	f11_arg0.AnnouncementImageHighlightRight:completeAnimation() --[[ @ 0]]
	f11_arg0.AnnouncementFeedText:completeAnimation() --[[ @ 0]]
	f11_arg0.AnnouncementImageBackground:setTopBottom( 0, 0, 20, 52 ) --[[ @ 0]]
	f11_arg0.AnnouncementImageBackground:setAlpha( 0 ) --[[ @ 0]]
	f11_arg0.AnnouncementImageHighlightLeft:setTopBottom( 0, 0, 23, 51 ) --[[ @ 0]]
	f11_arg0.AnnouncementImageHighlightLeft:setAlpha( 0 ) --[[ @ 0]]
	f11_arg0.AnnouncementImageHighlightRight:setTopBottom( 0, 0, 23, 51 ) --[[ @ 0]]
	f11_arg0.AnnouncementImageHighlightRight:setAlpha( 0 ) --[[ @ 0]]
	f11_arg0.AnnouncementFeedText:setTopBottom( 0, 0, 29, 44 ) --[[ @ 0]]
	f11_arg0.AnnouncementFeedText:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CodCasterAnnouncementFeed.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f12_arg0.AnnouncementImageBackground:completeAnimation() --[[ @ 0]]
			f12_arg0.AnnouncementImageBackground:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.AnnouncementImageBackground ) --[[ @ 0]]
			f12_arg0.AnnouncementImageHighlightLeft:completeAnimation() --[[ @ 0]]
			f12_arg0.AnnouncementImageHighlightLeft:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.AnnouncementImageHighlightLeft ) --[[ @ 0]]
			f12_arg0.AnnouncementImageHighlightRight:completeAnimation() --[[ @ 0]]
			f12_arg0.AnnouncementImageHighlightRight:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.AnnouncementImageHighlightRight ) --[[ @ 0]]
		end,
		OnTeam1 = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f13_local0 = function ( f14_arg0 )
				f13_arg0.AnnouncementImageBackground:beginAnimation( 300, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f13_arg0.AnnouncementImageBackground:setTopBottom( 0, 0, 20, 52 ) --[[ @ 0]]
				f13_arg0.AnnouncementImageBackground:setAlpha( 1 ) --[[ @ 0]]
				f13_arg0.AnnouncementImageBackground:registerEventHandler( "interrupted_keyframe", f13_arg0.clipInterrupted ) --[[ @ 0]]
				f13_arg0.AnnouncementImageBackground:registerEventHandler( "transition_complete_keyframe", f13_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f13_arg0.AnnouncementImageBackground:completeAnimation() --[[ @ 0]]
			f13_arg0.AnnouncementImageBackground:setTopBottom( 0, 0, -4, 28 ) --[[ @ 0]]
			f13_arg0.AnnouncementImageBackground:setAlpha( 0 ) --[[ @ 0]]
			f13_local0( f13_arg0.AnnouncementImageBackground ) --[[ @ 0]]
			local f13_local1 = function ( f15_arg0 )
				f13_arg0.AnnouncementImageHighlightLeft:beginAnimation( 300, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f13_arg0.AnnouncementImageHighlightLeft:setTopBottom( 0, 0, 23, 51 ) --[[ @ 0]]
				f13_arg0.AnnouncementImageHighlightLeft:setAlpha( 1 ) --[[ @ 0]]
				f13_arg0.AnnouncementImageHighlightLeft:registerEventHandler( "interrupted_keyframe", f13_arg0.clipInterrupted ) --[[ @ 0]]
				f13_arg0.AnnouncementImageHighlightLeft:registerEventHandler( "transition_complete_keyframe", f13_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f13_arg0.AnnouncementImageHighlightLeft:completeAnimation() --[[ @ 0]]
			f13_arg0.AnnouncementImageHighlightLeft:setTopBottom( 0, 0, -1, 27 ) --[[ @ 0]]
			f13_arg0.AnnouncementImageHighlightLeft:setAlpha( 0 ) --[[ @ 0]]
			f13_local1( f13_arg0.AnnouncementImageHighlightLeft ) --[[ @ 0]]
			local f13_local2 = function ( f16_arg0 )
				f13_arg0.AnnouncementFeedText:beginAnimation( 300, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f13_arg0.AnnouncementFeedText:setTopBottom( 0, 0, 30, 45 ) --[[ @ 0]]
				f13_arg0.AnnouncementFeedText:setAlpha( 1 ) --[[ @ 0]]
				f13_arg0.AnnouncementFeedText:registerEventHandler( "interrupted_keyframe", f13_arg0.clipInterrupted ) --[[ @ 0]]
				f13_arg0.AnnouncementFeedText:registerEventHandler( "transition_complete_keyframe", f13_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f13_arg0.AnnouncementFeedText:completeAnimation() --[[ @ 0]]
			f13_arg0.AnnouncementFeedText:setTopBottom( 0, 0, 5, 20 ) --[[ @ 0]]
			f13_arg0.AnnouncementFeedText:setAlpha( 0 ) --[[ @ 0]]
			f13_local2( f13_arg0.AnnouncementFeedText ) --[[ @ 0]]
		end,
		OnTeam2 = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f17_local0 = function ( f18_arg0 )
				f17_arg0.AnnouncementImageBackground:beginAnimation( 300, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f17_arg0.AnnouncementImageBackground:setTopBottom( 0, 0, 20, 52 ) --[[ @ 0]]
				f17_arg0.AnnouncementImageBackground:setAlpha( 1 ) --[[ @ 0]]
				f17_arg0.AnnouncementImageBackground:registerEventHandler( "interrupted_keyframe", f17_arg0.clipInterrupted ) --[[ @ 0]]
				f17_arg0.AnnouncementImageBackground:registerEventHandler( "transition_complete_keyframe", f17_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f17_arg0.AnnouncementImageBackground:completeAnimation() --[[ @ 0]]
			f17_arg0.AnnouncementImageBackground:setTopBottom( 0, 0, -4, 28 ) --[[ @ 0]]
			f17_arg0.AnnouncementImageBackground:setAlpha( 0 ) --[[ @ 0]]
			f17_local0( f17_arg0.AnnouncementImageBackground ) --[[ @ 0]]
			local f17_local1 = function ( f19_arg0 )
				f17_arg0.AnnouncementImageHighlightRight:beginAnimation( 300, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f17_arg0.AnnouncementImageHighlightRight:setTopBottom( 0, 0, 23, 51 ) --[[ @ 0]]
				f17_arg0.AnnouncementImageHighlightRight:setAlpha( 1 ) --[[ @ 0]]
				f17_arg0.AnnouncementImageHighlightRight:registerEventHandler( "interrupted_keyframe", f17_arg0.clipInterrupted ) --[[ @ 0]]
				f17_arg0.AnnouncementImageHighlightRight:registerEventHandler( "transition_complete_keyframe", f17_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f17_arg0.AnnouncementImageHighlightRight:completeAnimation() --[[ @ 0]]
			f17_arg0.AnnouncementImageHighlightRight:setTopBottom( 0, 0, -1, 27 ) --[[ @ 0]]
			f17_arg0.AnnouncementImageHighlightRight:setAlpha( 0 ) --[[ @ 0]]
			f17_local1( f17_arg0.AnnouncementImageHighlightRight ) --[[ @ 0]]
			local f17_local2 = function ( f20_arg0 )
				f17_arg0.AnnouncementFeedText:beginAnimation( 300, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f17_arg0.AnnouncementFeedText:setTopBottom( 0, 0, 30, 45 ) --[[ @ 0]]
				f17_arg0.AnnouncementFeedText:setAlpha( 1 ) --[[ @ 0]]
				f17_arg0.AnnouncementFeedText:registerEventHandler( "interrupted_keyframe", f17_arg0.clipInterrupted ) --[[ @ 0]]
				f17_arg0.AnnouncementFeedText:registerEventHandler( "transition_complete_keyframe", f17_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f17_arg0.AnnouncementFeedText:completeAnimation() --[[ @ 0]]
			f17_arg0.AnnouncementFeedText:setTopBottom( 0, 0, 5, 20 ) --[[ @ 0]]
			f17_arg0.AnnouncementFeedText:setAlpha( 0 ) --[[ @ 0]]
			f17_local2( f17_arg0.AnnouncementFeedText ) --[[ @ 0]]
		end,
		OffTeam1 = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f21_local0 = function ( f22_arg0 )
				f21_arg0.AnnouncementImageBackground:beginAnimation( 300, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f21_arg0.AnnouncementImageBackground:setTopBottom( 0, 0, -4, 28 ) --[[ @ 0]]
				f21_arg0.AnnouncementImageBackground:setAlpha( 0 ) --[[ @ 0]]
				f21_arg0.AnnouncementImageBackground:registerEventHandler( "interrupted_keyframe", f21_arg0.clipInterrupted ) --[[ @ 0]]
				f21_arg0.AnnouncementImageBackground:registerEventHandler( "transition_complete_keyframe", f21_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f21_arg0.AnnouncementImageBackground:completeAnimation() --[[ @ 0]]
			f21_arg0.AnnouncementImageBackground:setTopBottom( 0, 0, 20, 52 ) --[[ @ 0]]
			f21_arg0.AnnouncementImageBackground:setAlpha( 1 ) --[[ @ 0]]
			f21_local0( f21_arg0.AnnouncementImageBackground ) --[[ @ 0]]
			local f21_local1 = function ( f23_arg0 )
				f21_arg0.AnnouncementImageHighlightLeft:beginAnimation( 300, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f21_arg0.AnnouncementImageHighlightLeft:setTopBottom( 0, 0, -1, 27 ) --[[ @ 0]]
				f21_arg0.AnnouncementImageHighlightLeft:setAlpha( 0 ) --[[ @ 0]]
				f21_arg0.AnnouncementImageHighlightLeft:registerEventHandler( "interrupted_keyframe", f21_arg0.clipInterrupted ) --[[ @ 0]]
				f21_arg0.AnnouncementImageHighlightLeft:registerEventHandler( "transition_complete_keyframe", f21_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f21_arg0.AnnouncementImageHighlightLeft:completeAnimation() --[[ @ 0]]
			f21_arg0.AnnouncementImageHighlightLeft:setTopBottom( 0, 0, 23, 51 ) --[[ @ 0]]
			f21_arg0.AnnouncementImageHighlightLeft:setAlpha( 1 ) --[[ @ 0]]
			f21_local1( f21_arg0.AnnouncementImageHighlightLeft ) --[[ @ 0]]
			local f21_local2 = function ( f24_arg0 )
				f21_arg0.AnnouncementFeedText:beginAnimation( 300, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f21_arg0.AnnouncementFeedText:setTopBottom( 0, 0, 5, 20 ) --[[ @ 0]]
				f21_arg0.AnnouncementFeedText:setAlpha( 0 ) --[[ @ 0]]
				f21_arg0.AnnouncementFeedText:registerEventHandler( "interrupted_keyframe", f21_arg0.clipInterrupted ) --[[ @ 0]]
				f21_arg0.AnnouncementFeedText:registerEventHandler( "transition_complete_keyframe", f21_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f21_arg0.AnnouncementFeedText:completeAnimation() --[[ @ 0]]
			f21_arg0.AnnouncementFeedText:setTopBottom( 0, 0, 30, 45 ) --[[ @ 0]]
			f21_arg0.AnnouncementFeedText:setAlpha( 1 ) --[[ @ 0]]
			f21_local2( f21_arg0.AnnouncementFeedText ) --[[ @ 0]]
		end,
		OffTeam2 = function ( f25_arg0, f25_arg1 )
			f25_arg0:__resetProperties() --[[ @ 0]]
			f25_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f25_local0 = function ( f26_arg0 )
				f25_arg0.AnnouncementImageBackground:beginAnimation( 300, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f25_arg0.AnnouncementImageBackground:setTopBottom( 0, 0, -4, 28 ) --[[ @ 0]]
				f25_arg0.AnnouncementImageBackground:setAlpha( 0 ) --[[ @ 0]]
				f25_arg0.AnnouncementImageBackground:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.AnnouncementImageBackground:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.AnnouncementImageBackground:completeAnimation() --[[ @ 0]]
			f25_arg0.AnnouncementImageBackground:setTopBottom( 0, 0, 20, 52 ) --[[ @ 0]]
			f25_arg0.AnnouncementImageBackground:setAlpha( 1 ) --[[ @ 0]]
			f25_local0( f25_arg0.AnnouncementImageBackground ) --[[ @ 0]]
			local f25_local1 = function ( f27_arg0 )
				f25_arg0.AnnouncementImageHighlightRight:beginAnimation( 300, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f25_arg0.AnnouncementImageHighlightRight:setTopBottom( 0, 0, -1, 27 ) --[[ @ 0]]
				f25_arg0.AnnouncementImageHighlightRight:setAlpha( 0 ) --[[ @ 0]]
				f25_arg0.AnnouncementImageHighlightRight:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.AnnouncementImageHighlightRight:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.AnnouncementImageHighlightRight:completeAnimation() --[[ @ 0]]
			f25_arg0.AnnouncementImageHighlightRight:setTopBottom( 0, 0, 23, 51 ) --[[ @ 0]]
			f25_arg0.AnnouncementImageHighlightRight:setAlpha( 1 ) --[[ @ 0]]
			f25_local1( f25_arg0.AnnouncementImageHighlightRight ) --[[ @ 0]]
			local f25_local2 = function ( f28_arg0 )
				f25_arg0.AnnouncementFeedText:beginAnimation( 300, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f25_arg0.AnnouncementFeedText:setTopBottom( 0, 0, 5, 20 ) --[[ @ 0]]
				f25_arg0.AnnouncementFeedText:setAlpha( 0 ) --[[ @ 0]]
				f25_arg0.AnnouncementFeedText:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.AnnouncementFeedText:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.AnnouncementFeedText:completeAnimation() --[[ @ 0]]
			f25_arg0.AnnouncementFeedText:setTopBottom( 0, 0, 30, 45 ) --[[ @ 0]]
			f25_arg0.AnnouncementFeedText:setAlpha( 1 ) --[[ @ 0]]
			f25_local2( f25_arg0.AnnouncementFeedText ) --[[ @ 0]]
		end
	},
	HiddenDueToDS = {
		DefaultClip = function ( f29_arg0, f29_arg1 )
			f29_arg0:__resetProperties() --[[ @ 0]]
			f29_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f29_arg0.AnnouncementImageBackground:completeAnimation() --[[ @ 0]]
			f29_arg0.AnnouncementImageBackground:setAlpha( 0 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.AnnouncementImageBackground ) --[[ @ 0]]
			f29_arg0.AnnouncementImageHighlightLeft:completeAnimation() --[[ @ 0]]
			f29_arg0.AnnouncementImageHighlightLeft:setAlpha( 0 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.AnnouncementImageHighlightLeft ) --[[ @ 0]]
			f29_arg0.AnnouncementImageHighlightRight:completeAnimation() --[[ @ 0]]
			f29_arg0.AnnouncementImageHighlightRight:setAlpha( 0 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.AnnouncementImageHighlightRight ) --[[ @ 0]]
			f29_arg0.AnnouncementFeedText:completeAnimation() --[[ @ 0]]
			f29_arg0.AnnouncementFeedText:setAlpha( 0 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.AnnouncementFeedText ) --[[ @ 0]]
		end
	},
	HiddenDueToDS2 = {
		DefaultClip = function ( f30_arg0, f30_arg1 )
			f30_arg0:__resetProperties() --[[ @ 0]]
			f30_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f30_arg0.AnnouncementImageBackground:completeAnimation() --[[ @ 0]]
			f30_arg0.AnnouncementImageBackground:setAlpha( 0 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.AnnouncementImageBackground ) --[[ @ 0]]
			f30_arg0.AnnouncementImageHighlightLeft:completeAnimation() --[[ @ 0]]
			f30_arg0.AnnouncementImageHighlightLeft:setAlpha( 0 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.AnnouncementImageHighlightLeft ) --[[ @ 0]]
			f30_arg0.AnnouncementImageHighlightRight:completeAnimation() --[[ @ 0]]
			f30_arg0.AnnouncementImageHighlightRight:setAlpha( 0 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.AnnouncementImageHighlightRight ) --[[ @ 0]]
		end
	},
	HiddenDueToQS = {
		DefaultClip = function ( f31_arg0, f31_arg1 )
			f31_arg0:__resetProperties() --[[ @ 0]]
			f31_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f31_arg0.AnnouncementImageBackground:completeAnimation() --[[ @ 0]]
			f31_arg0.AnnouncementImageBackground:setAlpha( 0 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.AnnouncementImageBackground ) --[[ @ 0]]
			f31_arg0.AnnouncementImageHighlightLeft:completeAnimation() --[[ @ 0]]
			f31_arg0.AnnouncementImageHighlightLeft:setAlpha( 0 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.AnnouncementImageHighlightLeft ) --[[ @ 0]]
			f31_arg0.AnnouncementImageHighlightRight:completeAnimation() --[[ @ 0]]
			f31_arg0.AnnouncementImageHighlightRight:setAlpha( 0 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.AnnouncementImageHighlightRight ) --[[ @ 0]]
		end
	},
	HiddenDueToScoreboard = {
		DefaultClip = function ( f32_arg0, f32_arg1 )
			f32_arg0:__resetProperties() --[[ @ 0]]
			f32_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f32_arg0.AnnouncementImageBackground:completeAnimation() --[[ @ 0]]
			f32_arg0.AnnouncementImageBackground:setAlpha( 0 ) --[[ @ 0]]
			f32_arg0.clipFinished( f32_arg0.AnnouncementImageBackground ) --[[ @ 0]]
			f32_arg0.AnnouncementImageHighlightLeft:completeAnimation() --[[ @ 0]]
			f32_arg0.AnnouncementImageHighlightLeft:setAlpha( 0 ) --[[ @ 0]]
			f32_arg0.clipFinished( f32_arg0.AnnouncementImageHighlightLeft ) --[[ @ 0]]
			f32_arg0.AnnouncementImageHighlightRight:completeAnimation() --[[ @ 0]]
			f32_arg0.AnnouncementImageHighlightRight:setAlpha( 0 ) --[[ @ 0]]
			f32_arg0.clipFinished( f32_arg0.AnnouncementImageHighlightRight ) --[[ @ 0]]
		end
	},
	NoRoundAndLives = {
		DefaultClip = function ( f33_arg0, f33_arg1 )
			f33_arg0:__resetProperties() --[[ @ 0]]
			f33_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f33_arg0.AnnouncementImageBackground:completeAnimation() --[[ @ 0]]
			f33_arg0.AnnouncementImageBackground:setTopBottom( 0, 0, -5, 27 ) --[[ @ 0]]
			f33_arg0.AnnouncementImageBackground:setAlpha( 0 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.AnnouncementImageBackground ) --[[ @ 0]]
			f33_arg0.AnnouncementImageHighlightLeft:completeAnimation() --[[ @ 0]]
			f33_arg0.AnnouncementImageHighlightLeft:setTopBottom( 0, 0, -2, 26 ) --[[ @ 0]]
			f33_arg0.AnnouncementImageHighlightLeft:setAlpha( 0 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.AnnouncementImageHighlightLeft ) --[[ @ 0]]
			f33_arg0.AnnouncementImageHighlightRight:completeAnimation() --[[ @ 0]]
			f33_arg0.AnnouncementImageHighlightRight:setTopBottom( 0, 0, -2, 26 ) --[[ @ 0]]
			f33_arg0.AnnouncementImageHighlightRight:setAlpha( 0 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.AnnouncementImageHighlightRight ) --[[ @ 0]]
			f33_arg0.AnnouncementFeedText:completeAnimation() --[[ @ 0]]
			f33_arg0.AnnouncementFeedText:setTopBottom( 0, 0, 5, 20 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.AnnouncementFeedText ) --[[ @ 0]]
		end,
		OnTeam1 = function ( f34_arg0, f34_arg1 )
			f34_arg0:__resetProperties() --[[ @ 0]]
			f34_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f34_local0 = function ( f35_arg0 )
				f34_arg0.AnnouncementImageBackground:beginAnimation( 300, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f34_arg0.AnnouncementImageBackground:setTopBottom( 0, 0, -5, 27 ) --[[ @ 0]]
				f34_arg0.AnnouncementImageBackground:setAlpha( 1 ) --[[ @ 0]]
				f34_arg0.AnnouncementImageBackground:registerEventHandler( "interrupted_keyframe", f34_arg0.clipInterrupted ) --[[ @ 0]]
				f34_arg0.AnnouncementImageBackground:registerEventHandler( "transition_complete_keyframe", f34_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f34_arg0.AnnouncementImageBackground:completeAnimation() --[[ @ 0]]
			f34_arg0.AnnouncementImageBackground:setTopBottom( 0, 0, -29, 3 ) --[[ @ 0]]
			f34_arg0.AnnouncementImageBackground:setAlpha( 0 ) --[[ @ 0]]
			f34_local0( f34_arg0.AnnouncementImageBackground ) --[[ @ 0]]
			local f34_local1 = function ( f36_arg0 )
				f34_arg0.AnnouncementImageHighlightLeft:beginAnimation( 300, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f34_arg0.AnnouncementImageHighlightLeft:setTopBottom( 0, 0, -2, 26 ) --[[ @ 0]]
				f34_arg0.AnnouncementImageHighlightLeft:setAlpha( 1 ) --[[ @ 0]]
				f34_arg0.AnnouncementImageHighlightLeft:registerEventHandler( "interrupted_keyframe", f34_arg0.clipInterrupted ) --[[ @ 0]]
				f34_arg0.AnnouncementImageHighlightLeft:registerEventHandler( "transition_complete_keyframe", f34_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f34_arg0.AnnouncementImageHighlightLeft:completeAnimation() --[[ @ 0]]
			f34_arg0.AnnouncementImageHighlightLeft:setTopBottom( 0, 0, -26, 2 ) --[[ @ 0]]
			f34_arg0.AnnouncementImageHighlightLeft:setAlpha( 0 ) --[[ @ 0]]
			f34_local1( f34_arg0.AnnouncementImageHighlightLeft ) --[[ @ 0]]
			local f34_local2 = function ( f37_arg0 )
				f34_arg0.AnnouncementFeedText:beginAnimation( 300, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f34_arg0.AnnouncementFeedText:setTopBottom( 0, 0, 5, 20 ) --[[ @ 0]]
				f34_arg0.AnnouncementFeedText:setAlpha( 1 ) --[[ @ 0]]
				f34_arg0.AnnouncementFeedText:registerEventHandler( "interrupted_keyframe", f34_arg0.clipInterrupted ) --[[ @ 0]]
				f34_arg0.AnnouncementFeedText:registerEventHandler( "transition_complete_keyframe", f34_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f34_arg0.AnnouncementFeedText:completeAnimation() --[[ @ 0]]
			f34_arg0.AnnouncementFeedText:setTopBottom( 0, 0, -20, -5 ) --[[ @ 0]]
			f34_arg0.AnnouncementFeedText:setAlpha( 0 ) --[[ @ 0]]
			f34_local2( f34_arg0.AnnouncementFeedText ) --[[ @ 0]]
		end,
		OnTeam2 = function ( f38_arg0, f38_arg1 )
			f38_arg0:__resetProperties() --[[ @ 0]]
			f38_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f38_local0 = function ( f39_arg0 )
				f38_arg0.AnnouncementImageBackground:beginAnimation( 300, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f38_arg0.AnnouncementImageBackground:setTopBottom( 0, 0, -5, 27 ) --[[ @ 0]]
				f38_arg0.AnnouncementImageBackground:setAlpha( 1 ) --[[ @ 0]]
				f38_arg0.AnnouncementImageBackground:registerEventHandler( "interrupted_keyframe", f38_arg0.clipInterrupted ) --[[ @ 0]]
				f38_arg0.AnnouncementImageBackground:registerEventHandler( "transition_complete_keyframe", f38_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f38_arg0.AnnouncementImageBackground:completeAnimation() --[[ @ 0]]
			f38_arg0.AnnouncementImageBackground:setTopBottom( 0, 0, -30, 2 ) --[[ @ 0]]
			f38_arg0.AnnouncementImageBackground:setAlpha( 0 ) --[[ @ 0]]
			f38_local0( f38_arg0.AnnouncementImageBackground ) --[[ @ 0]]
			local f38_local1 = function ( f40_arg0 )
				f38_arg0.AnnouncementImageHighlightRight:beginAnimation( 300, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f38_arg0.AnnouncementImageHighlightRight:setTopBottom( 0, 0, -2, 26 ) --[[ @ 0]]
				f38_arg0.AnnouncementImageHighlightRight:setAlpha( 1 ) --[[ @ 0]]
				f38_arg0.AnnouncementImageHighlightRight:registerEventHandler( "interrupted_keyframe", f38_arg0.clipInterrupted ) --[[ @ 0]]
				f38_arg0.AnnouncementImageHighlightRight:registerEventHandler( "transition_complete_keyframe", f38_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f38_arg0.AnnouncementImageHighlightRight:completeAnimation() --[[ @ 0]]
			f38_arg0.AnnouncementImageHighlightRight:setTopBottom( 0, 0, -27, 1 ) --[[ @ 0]]
			f38_arg0.AnnouncementImageHighlightRight:setAlpha( 0 ) --[[ @ 0]]
			f38_local1( f38_arg0.AnnouncementImageHighlightRight ) --[[ @ 0]]
			local f38_local2 = function ( f41_arg0 )
				f38_arg0.AnnouncementFeedText:beginAnimation( 300, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f38_arg0.AnnouncementFeedText:setTopBottom( 0, 0, 5, 20 ) --[[ @ 0]]
				f38_arg0.AnnouncementFeedText:setAlpha( 1 ) --[[ @ 0]]
				f38_arg0.AnnouncementFeedText:registerEventHandler( "interrupted_keyframe", f38_arg0.clipInterrupted ) --[[ @ 0]]
				f38_arg0.AnnouncementFeedText:registerEventHandler( "transition_complete_keyframe", f38_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f38_arg0.AnnouncementFeedText:completeAnimation() --[[ @ 0]]
			f38_arg0.AnnouncementFeedText:setTopBottom( 0, 0, -20, -5 ) --[[ @ 0]]
			f38_arg0.AnnouncementFeedText:setAlpha( 0 ) --[[ @ 0]]
			f38_local2( f38_arg0.AnnouncementFeedText ) --[[ @ 0]]
		end,
		OffTeam1 = function ( f42_arg0, f42_arg1 )
			f42_arg0:__resetProperties() --[[ @ 0]]
			f42_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f42_local0 = function ( f43_arg0 )
				f42_arg0.AnnouncementImageBackground:beginAnimation( 300, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f42_arg0.AnnouncementImageBackground:setTopBottom( 0, 0, -29, 3 ) --[[ @ 0]]
				f42_arg0.AnnouncementImageBackground:setAlpha( 0 ) --[[ @ 0]]
				f42_arg0.AnnouncementImageBackground:registerEventHandler( "interrupted_keyframe", f42_arg0.clipInterrupted ) --[[ @ 0]]
				f42_arg0.AnnouncementImageBackground:registerEventHandler( "transition_complete_keyframe", f42_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f42_arg0.AnnouncementImageBackground:completeAnimation() --[[ @ 0]]
			f42_arg0.AnnouncementImageBackground:setTopBottom( 0, 0, -5, 27 ) --[[ @ 0]]
			f42_arg0.AnnouncementImageBackground:setAlpha( 1 ) --[[ @ 0]]
			f42_local0( f42_arg0.AnnouncementImageBackground ) --[[ @ 0]]
			local f42_local1 = function ( f44_arg0 )
				f42_arg0.AnnouncementImageHighlightLeft:beginAnimation( 300, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f42_arg0.AnnouncementImageHighlightLeft:setTopBottom( 0, 0, -26, 2 ) --[[ @ 0]]
				f42_arg0.AnnouncementImageHighlightLeft:setAlpha( 0 ) --[[ @ 0]]
				f42_arg0.AnnouncementImageHighlightLeft:registerEventHandler( "interrupted_keyframe", f42_arg0.clipInterrupted ) --[[ @ 0]]
				f42_arg0.AnnouncementImageHighlightLeft:registerEventHandler( "transition_complete_keyframe", f42_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f42_arg0.AnnouncementImageHighlightLeft:completeAnimation() --[[ @ 0]]
			f42_arg0.AnnouncementImageHighlightLeft:setTopBottom( 0, 0, -2, 26 ) --[[ @ 0]]
			f42_arg0.AnnouncementImageHighlightLeft:setAlpha( 1 ) --[[ @ 0]]
			f42_local1( f42_arg0.AnnouncementImageHighlightLeft ) --[[ @ 0]]
			local f42_local2 = function ( f45_arg0 )
				f42_arg0.AnnouncementFeedText:beginAnimation( 300, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f42_arg0.AnnouncementFeedText:setTopBottom( 0, 0, -20, -5 ) --[[ @ 0]]
				f42_arg0.AnnouncementFeedText:setAlpha( 0 ) --[[ @ 0]]
				f42_arg0.AnnouncementFeedText:registerEventHandler( "interrupted_keyframe", f42_arg0.clipInterrupted ) --[[ @ 0]]
				f42_arg0.AnnouncementFeedText:registerEventHandler( "transition_complete_keyframe", f42_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f42_arg0.AnnouncementFeedText:completeAnimation() --[[ @ 0]]
			f42_arg0.AnnouncementFeedText:setTopBottom( 0, 0, 5, 20 ) --[[ @ 0]]
			f42_arg0.AnnouncementFeedText:setAlpha( 1 ) --[[ @ 0]]
			f42_local2( f42_arg0.AnnouncementFeedText ) --[[ @ 0]]
		end,
		OffTeam2 = function ( f46_arg0, f46_arg1 )
			f46_arg0:__resetProperties() --[[ @ 0]]
			f46_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f46_local0 = function ( f47_arg0 )
				f46_arg0.AnnouncementImageBackground:beginAnimation( 300, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f46_arg0.AnnouncementImageBackground:setTopBottom( 0, 0, -30, 2 ) --[[ @ 0]]
				f46_arg0.AnnouncementImageBackground:setAlpha( 0 ) --[[ @ 0]]
				f46_arg0.AnnouncementImageBackground:registerEventHandler( "interrupted_keyframe", f46_arg0.clipInterrupted ) --[[ @ 0]]
				f46_arg0.AnnouncementImageBackground:registerEventHandler( "transition_complete_keyframe", f46_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f46_arg0.AnnouncementImageBackground:completeAnimation() --[[ @ 0]]
			f46_arg0.AnnouncementImageBackground:setTopBottom( 0, 0, -5, 27 ) --[[ @ 0]]
			f46_arg0.AnnouncementImageBackground:setAlpha( 1 ) --[[ @ 0]]
			f46_local0( f46_arg0.AnnouncementImageBackground ) --[[ @ 0]]
			local f46_local1 = function ( f48_arg0 )
				f46_arg0.AnnouncementImageHighlightRight:beginAnimation( 300, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f46_arg0.AnnouncementImageHighlightRight:setTopBottom( 0, 0, -27, 1 ) --[[ @ 0]]
				f46_arg0.AnnouncementImageHighlightRight:setAlpha( 0 ) --[[ @ 0]]
				f46_arg0.AnnouncementImageHighlightRight:registerEventHandler( "interrupted_keyframe", f46_arg0.clipInterrupted ) --[[ @ 0]]
				f46_arg0.AnnouncementImageHighlightRight:registerEventHandler( "transition_complete_keyframe", f46_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f46_arg0.AnnouncementImageHighlightRight:completeAnimation() --[[ @ 0]]
			f46_arg0.AnnouncementImageHighlightRight:setTopBottom( 0, 0, -2, 26 ) --[[ @ 0]]
			f46_arg0.AnnouncementImageHighlightRight:setAlpha( 1 ) --[[ @ 0]]
			f46_local1( f46_arg0.AnnouncementImageHighlightRight ) --[[ @ 0]]
			local f46_local2 = function ( f49_arg0 )
				f46_arg0.AnnouncementFeedText:beginAnimation( 300, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f46_arg0.AnnouncementFeedText:setTopBottom( 0, 0, -20, -5 ) --[[ @ 0]]
				f46_arg0.AnnouncementFeedText:setAlpha( 0 ) --[[ @ 0]]
				f46_arg0.AnnouncementFeedText:registerEventHandler( "interrupted_keyframe", f46_arg0.clipInterrupted ) --[[ @ 0]]
				f46_arg0.AnnouncementFeedText:registerEventHandler( "transition_complete_keyframe", f46_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f46_arg0.AnnouncementFeedText:completeAnimation() --[[ @ 0]]
			f46_arg0.AnnouncementFeedText:setTopBottom( 0, 0, 5, 20 ) --[[ @ 0]]
			f46_arg0.AnnouncementFeedText:setAlpha( 1 ) --[[ @ 0]]
			f46_local2( f46_arg0.AnnouncementFeedText ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f50_arg0, f50_arg1 )
			f50_arg0:__resetProperties() --[[ @ 0]]
			f50_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f50_arg0.AnnouncementImageBackground:completeAnimation() --[[ @ 0]]
			f50_arg0.AnnouncementImageBackground:setAlpha( 0 ) --[[ @ 0]]
			f50_arg0.clipFinished( f50_arg0.AnnouncementImageBackground ) --[[ @ 0]]
			f50_arg0.AnnouncementImageHighlightLeft:completeAnimation() --[[ @ 0]]
			f50_arg0.AnnouncementImageHighlightLeft:setAlpha( 0 ) --[[ @ 0]]
			f50_arg0.clipFinished( f50_arg0.AnnouncementImageHighlightLeft ) --[[ @ 0]]
			f50_arg0.AnnouncementImageHighlightRight:completeAnimation() --[[ @ 0]]
			f50_arg0.AnnouncementImageHighlightRight:setAlpha( 0 ) --[[ @ 0]]
			f50_arg0.clipFinished( f50_arg0.AnnouncementImageHighlightRight ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.CodCasterAnnouncementFeed.__onClose = function ( f51_arg0 )
	f51_arg0.__on_close_removeOverrides() --[[ @ 0]]
	f51_arg0.AnnouncementImageBackground:close() --[[ @ 0]]
	f51_arg0.AnnouncementImageHighlightLeft:close() --[[ @ 0]]
	f51_arg0.AnnouncementImageHighlightRight:close() --[[ @ 0]]
	f51_arg0.AnnouncementFeedText:close() --[[ @ 0]]
end
 --[[ @ 0]]
