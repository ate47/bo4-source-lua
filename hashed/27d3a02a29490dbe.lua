-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "x64:2c8f0a033b64cc47" ) --[[ @ 0]]

CoD.LeaguePlayEndRankUpRankIcon = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.LeaguePlayEndRankUpRankIcon.__defaultWidth = 450 --[[ @ 0]]
CoD.LeaguePlayEndRankUpRankIcon.__defaultHeight = 543 --[[ @ 0]]
CoD.LeaguePlayEndRankUpRankIcon.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.LeaguePlayEndRankUpRankIcon ) --[[ @ 0]]
	self.id = "LeaguePlayEndRankUpRankIcon" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Flare = LUI.UIImage.new( 0.5, 0.5, -400, 400, 0.5, 0.5, -140, 60 ) --[[ @ 0]]
	Flare:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
	Flare:setAlpha( 0 ) --[[ @ 0]]
	Flare:setZRot( 90 ) --[[ @ 0]]
	Flare:setScale( 0, 0 ) --[[ @ 0]]
	Flare:setImage( RegisterImage( @"uie_ui_menu_aar_levelup_flare" ) ) --[[ @ 0]]
	Flare:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	Flare:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Flare ) --[[ @ 0]]
	self.Flare = Flare --[[ @ 0]]
	
	local FireStreakIcon = LUI.UIImage.new( 0, 0, -31, 481, 0, 0, -31, 481 ) --[[ @ 0]]
	FireStreakIcon:setScale( 1.5, 1.5 ) --[[ @ 0]]
	FireStreakIcon:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_flipbook_add" ) ) --[[ @ 0]]
	FireStreakIcon:setShaderVector( 0, 4, 4, 0, 0 ) --[[ @ 0]]
	FireStreakIcon:setShaderVector( 1, 8, 0, 0, 0 ) --[[ @ 0]]
	FireStreakIcon:linkToElementModel( self, "leaguePlayFirestreakIcon", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			FireStreakIcon:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( FireStreakIcon ) --[[ @ 0]]
	self.FireStreakIcon = FireStreakIcon --[[ @ 0]]
	
	local RankIcon = LUI.UIImage.new( 0.5, 0.5, -225, 225, 0, 0, 0, 450 ) --[[ @ 0]]
	RankIcon:linkToElementModel( self, "leaguePlayIconLarge", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			RankIcon:setImage( RegisterImage( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( RankIcon ) --[[ @ 0]]
	self.RankIcon = RankIcon --[[ @ 0]]
	
	local CurrentRank = CoD.LeaguePlayEndRankUpRank.new( f1_arg0, f1_arg1, 0, 0, 125, 325, 0, 0, 472, 544 ) --[[ @ 0]]
	CurrentRank:linkToElementModel( self, nil, false, function ( model )
		CurrentRank:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( CurrentRank ) --[[ @ 0]]
	self.CurrentRank = CurrentRank --[[ @ 0]]
	
	self:linkToElementModel( self, "leaguePlayIconLarge", true, function ( model )
		local f5_local0 = self --[[ @ 0]]
		PlayClip( self, "RankUp", f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.LeaguePlayEndRankUpRankIcon.__resetProperties = function ( f6_arg0 )
	f6_arg0.FireStreakIcon:completeAnimation() --[[ @ 0]]
	f6_arg0.RankIcon:completeAnimation() --[[ @ 0]]
	f6_arg0.Flare:completeAnimation() --[[ @ 0]]
	f6_arg0.FireStreakIcon:setAlpha( 1 ) --[[ @ 0]]
	f6_arg0.FireStreakIcon:setScale( 1.5, 1.5 ) --[[ @ 0]]
	f6_arg0.RankIcon:setAlpha( 1 ) --[[ @ 0]]
	f6_arg0.RankIcon:setScale( 1, 1 ) --[[ @ 0]]
	f6_arg0.Flare:setAlpha( 0 ) --[[ @ 0]]
	f6_arg0.Flare:setScale( 0, 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.LeaguePlayEndRankUpRankIcon.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f7_local0 = function ( f8_arg0 )
				local f8_local0 = function ( f9_arg0 )
					f9_arg0:beginAnimation( 320, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
					f9_arg0:setAlpha( 1 ) --[[ @ 0]]
					f9_arg0:setScale( 1.6, 1.6 ) --[[ @ 0]]
					f9_arg0:registerEventHandler( "transition_complete_keyframe", f7_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f8_arg0:beginAnimation( 180 ) --[[ @ 0]]
				f8_arg0:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f7_arg0.FireStreakIcon:beginAnimation( 500 ) --[[ @ 0]]
			f7_arg0.FireStreakIcon:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.FireStreakIcon:setScale( 1, 1 ) --[[ @ 0]]
			f7_arg0.FireStreakIcon:registerEventHandler( "interrupted_keyframe", f7_arg0.clipInterrupted ) --[[ @ 0]]
			f7_arg0.FireStreakIcon:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
			local f7_local1 = function ( f10_arg0 )
				f10_arg0:beginAnimation( 199, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
				f10_arg0:registerEventHandler( "transition_complete_keyframe", f7_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f7_arg0.RankIcon:beginAnimation( 500 ) --[[ @ 0]]
			f7_arg0.RankIcon:setAlpha( 1 ) --[[ @ 0]]
			f7_arg0.RankIcon:setScale( 1, 1 ) --[[ @ 0]]
			f7_arg0.RankIcon:registerEventHandler( "interrupted_keyframe", f7_arg0.clipInterrupted ) --[[ @ 0]]
			f7_arg0.RankIcon:registerEventHandler( "transition_complete_keyframe", f7_local1 ) --[[ @ 0]]
		end,
		RankUp = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f11_local0 = function ( f12_arg0 )
				local f12_local0 = function ( f13_arg0 )
					f13_arg0:beginAnimation( 50 ) --[[ @ 0]]
					f13_arg0:setAlpha( 0 ) --[[ @ 0]]
					f13_arg0:setScale( 0, 0 ) --[[ @ 0]]
					f13_arg0:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f12_arg0:beginAnimation( 30 ) --[[ @ 0]]
				f12_arg0:setAlpha( 1 ) --[[ @ 0]]
				f12_arg0:setScale( 2, 1 ) --[[ @ 0]]
				f12_arg0:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.Flare:beginAnimation( 770 ) --[[ @ 0]]
			f11_arg0.Flare:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.Flare:setScale( 0, 0 ) --[[ @ 0]]
			f11_arg0.Flare:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
			f11_arg0.Flare:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
			local f11_local1 = function ( f14_arg0 )
				local f14_local0 = function ( f15_arg0 )
					f15_arg0:beginAnimation( 400, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
					f15_arg0:setAlpha( 1 ) --[[ @ 0]]
					f15_arg0:setScale( 1.6, 1.6 ) --[[ @ 0]]
					f15_arg0:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f11_arg0.FireStreakIcon:beginAnimation( 800 ) --[[ @ 0]]
				f11_arg0.FireStreakIcon:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.FireStreakIcon:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.FireStreakIcon:completeAnimation() --[[ @ 0]]
			f11_arg0.FireStreakIcon:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.FireStreakIcon:setScale( 1, 1 ) --[[ @ 0]]
			f11_local1( f11_arg0.FireStreakIcon ) --[[ @ 0]]
			local f11_local2 = function ( f16_arg0 )
				local f16_local0 = function ( f17_arg0 )
					local f17_local0 = function ( f18_arg0 )
						local f18_local0 = function ( f19_arg0 )
							f19_arg0:beginAnimation( 20 ) --[[ @ 0]]
							f19_arg0:setScale( 1, 1 ) --[[ @ 0]]
							f19_arg0:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f18_arg0:beginAnimation( 29 ) --[[ @ 0]]
						f18_arg0:setAlpha( 1 ) --[[ @ 0]]
						f18_arg0:setScale( 1.02, 1.02 ) --[[ @ 0]]
						f18_arg0:registerEventHandler( "transition_complete_keyframe", f18_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f17_arg0:beginAnimation( 199 ) --[[ @ 0]]
					f17_arg0:setAlpha( 0.87 ) --[[ @ 0]]
					f17_arg0:setScale( 0.96, 0.96 ) --[[ @ 0]]
					f17_arg0:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f11_arg0.RankIcon:beginAnimation( 600 ) --[[ @ 0]]
				f11_arg0.RankIcon:setScale( 4, 4 ) --[[ @ 0]]
				f11_arg0.RankIcon:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.RankIcon:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.RankIcon:completeAnimation() --[[ @ 0]]
			f11_arg0.RankIcon:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.RankIcon:setScale( 1, 1 ) --[[ @ 0]]
			f11_local2( f11_arg0.RankIcon ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.LeaguePlayEndRankUpRankIcon.__onClose = function ( f20_arg0 )
	f20_arg0.FireStreakIcon:close() --[[ @ 0]]
	f20_arg0.RankIcon:close() --[[ @ 0]]
	f20_arg0.CurrentRank:close() --[[ @ 0]]
end
 --[[ @ 0]]
