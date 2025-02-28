-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.LeaguePlayEndRankUpRank = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.LeaguePlayEndRankUpRank.__defaultWidth = 200 --[[ @ 0]]
CoD.LeaguePlayEndRankUpRank.__defaultHeight = 72 --[[ @ 0]]
CoD.LeaguePlayEndRankUpRank.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.LeaguePlayEndRankUpRank ) --[[ @ 0]]
	self.id = "LeaguePlayEndRankUpRank" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local CurrentRank = LUI.UIText.new( 0.5, 0.5, -100, 100, 1, 1, -72, 0 ) --[[ @ 0]]
	CurrentRank:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
	CurrentRank:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	CurrentRank:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_90D57B1E92D39D7" ) ) --[[ @ 0]]
	CurrentRank:setShaderVector( 0, 0.3, 0, 0, 0 ) --[[ @ 0]]
	CurrentRank:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	CurrentRank:setShaderVector( 2, 0.4, 0.3, 0, 0.6 ) --[[ @ 0]]
	CurrentRank:setLetterSpacing( 8 ) --[[ @ 0]]
	CurrentRank:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	CurrentRank:linkToElementModel( self, "leaguePlayRank", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			CurrentRank:setText( ToUpper( LocalizeStringWithParameter( @"hash_447AC0462E4B2132", f2_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( CurrentRank ) --[[ @ 0]]
	self.CurrentRank = CurrentRank --[[ @ 0]]
	
	self:linkToElementModel( self, "leaguePlayRank", true, function ( model )
		local f3_local0 = self --[[ @ 0]]
		PlayClip( self, "RankUp", f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.LeaguePlayEndRankUpRank.__resetProperties = function ( f4_arg0 )
	f4_arg0.CurrentRank:completeAnimation() --[[ @ 0]]
	f4_arg0.CurrentRank:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.LeaguePlayEndRankUpRank.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f5_local0 = function ( f6_arg0 )
				local f6_local0 = function ( f7_arg0 )
					f7_arg0:beginAnimation( 149, Enum[@"luitween"][@"luitween_ease_in"] ) --[[ @ 0]]
					f7_arg0:setAlpha( 1 ) --[[ @ 0]]
					f7_arg0:registerEventHandler( "transition_complete_keyframe", f5_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f5_arg0.CurrentRank:beginAnimation( 500 ) --[[ @ 0]]
				f5_arg0.CurrentRank:registerEventHandler( "interrupted_keyframe", f5_arg0.clipInterrupted ) --[[ @ 0]]
				f5_arg0.CurrentRank:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f5_arg0.CurrentRank:completeAnimation() --[[ @ 0]]
			f5_arg0.CurrentRank:setAlpha( 0 ) --[[ @ 0]]
			f5_local0( f5_arg0.CurrentRank ) --[[ @ 0]]
		end,
		RankUp = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f8_local0 = function ( f9_arg0 )
				local f9_local0 = function ( f10_arg0 )
					local f10_local0 = function ( f11_arg0 )
						f11_arg0:beginAnimation( 300, Enum[@"luitween"][@"luitween_ease_in"] ) --[[ @ 0]]
						f11_arg0:setAlpha( 1 ) --[[ @ 0]]
						f11_arg0:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f10_arg0:beginAnimation( 199 ) --[[ @ 0]]
					f10_arg0:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f8_arg0.CurrentRank:beginAnimation( 500 ) --[[ @ 0]]
				f8_arg0.CurrentRank:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.CurrentRank:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.CurrentRank:completeAnimation() --[[ @ 0]]
			f8_arg0.CurrentRank:setAlpha( 0 ) --[[ @ 0]]
			f8_local0( f8_arg0.CurrentRank ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.LeaguePlayEndRankUpRank.__onClose = function ( f12_arg0 )
	f12_arg0.CurrentRank:close() --[[ @ 0]]
end
 --[[ @ 0]]
