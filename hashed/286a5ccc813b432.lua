-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "x64:562adff09117f331" ) --[[ @ 0]]

CoD.CompetitiveOverviewRankBanner = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CompetitiveOverviewRankBanner.__defaultWidth = 200 --[[ @ 0]]
CoD.CompetitiveOverviewRankBanner.__defaultHeight = 500 --[[ @ 0]]
CoD.CompetitiveOverviewRankBanner.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CompetitiveOverviewRankBanner ) --[[ @ 0]]
	self.id = "CompetitiveOverviewRankBanner" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local banner = LUI.UIImage.new( 0, 0, 0, 200, 0, 0, 0, 500 ) --[[ @ 0]]
	banner:subscribeToGlobalModel( f1_arg1, "LeaguePlay", "leaguePlayBanner", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			banner:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( banner ) --[[ @ 0]]
	self.banner = banner --[[ @ 0]]
	
	local color = LUI.UIText.new( 0.5, 0.5, -76, 76, 0, 0, 291, 316 ) --[[ @ 0]]
	color:setAlpha( 0 ) --[[ @ 0]]
	color:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	color:setLetterSpacing( 2 ) --[[ @ 0]]
	color:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	color:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	color:subscribeToGlobalModel( f1_arg1, "LeaguePlay", "leaguePlayBannerName", function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			color:setText( LocalizeToUpperString( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( color ) --[[ @ 0]]
	self.color = color --[[ @ 0]]
	
	local rank = LUI.UIText.new( 0.5, 0.5, -84, 84, 0, 0, 291, 316 ) --[[ @ 0]]
	rank:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	rank:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_171E049B161CD00A" ) ) --[[ @ 0]]
	rank:setLetterSpacing( 2 ) --[[ @ 0]]
	rank:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	rank:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	rank:subscribeToGlobalModel( f1_arg1, "LeaguePlay", "leaguePlayRank", function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			rank:setText( ToUpper( LocalizeStringWithParameter( @"hash_447AC0462E4B2132", f4_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( rank ) --[[ @ 0]]
	self.rank = rank --[[ @ 0]]
	
	local firestreakflipbook = LUI.UIImage.new( 0.5, 0.5, -170, 170, 0.5, 0.5, -274, 66 ) --[[ @ 0]]
	firestreakflipbook:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_flipbook_add" ) ) --[[ @ 0]]
	firestreakflipbook:setShaderVector( 0, 4, 4, 0, 0 ) --[[ @ 0]]
	firestreakflipbook:setShaderVector( 1, 8, 0, 0, 0 ) --[[ @ 0]]
	firestreakflipbook:subscribeToGlobalModel( f1_arg1, "LeaguePlay", "leaguePlayFirestreakIcon", function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			firestreakflipbook:setImage( RegisterImage( f5_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( firestreakflipbook ) --[[ @ 0]]
	self.firestreakflipbook = firestreakflipbook --[[ @ 0]]
	
	local badge = LUI.UIImage.new( 0.5, 0.5, -100, 100, 0.5, 0.5, -204, -4 ) --[[ @ 0]]
	badge:subscribeToGlobalModel( f1_arg1, "LeaguePlay", "leaguePlayIconLarge", function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			badge:setImage( RegisterImage( f6_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( badge ) --[[ @ 0]]
	self.badge = badge --[[ @ 0]]
	
	local rubies = CoD.ArenaRubies.new( f1_arg0, f1_arg1, 0, 0, 30, 170, 0, 0, 319.5, 393.5 ) --[[ @ 0]]
	rubies:setScale( 0.85, 0.85 ) --[[ @ 0]]
	self:addElement( rubies ) --[[ @ 0]]
	self.rubies = rubies --[[ @ 0]]
	
	local DivisionSkillIcon = LUI.UIImage.new( 0.5, 0.5, -97.5, 97.5, 0, 0, 170.5, 365.5 ) --[[ @ 0]]
	DivisionSkillIcon:subscribeToGlobalModel( f1_arg1, "LeaguePlay", "leaguePlaySkillDivisionBannerLarge", function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			DivisionSkillIcon:setImage( RegisterImage( f7_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( DivisionSkillIcon ) --[[ @ 0]]
	self.DivisionSkillIcon = DivisionSkillIcon --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "HiddenCopy",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "Lobby",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CompetitiveOverviewRankBanner.__resetProperties = function ( f11_arg0 )
	f11_arg0.rubies:completeAnimation() --[[ @ 0]]
	f11_arg0.badge:completeAnimation() --[[ @ 0]]
	f11_arg0.rank:completeAnimation() --[[ @ 0]]
	f11_arg0.color:completeAnimation() --[[ @ 0]]
	f11_arg0.banner:completeAnimation() --[[ @ 0]]
	f11_arg0.firestreakflipbook:completeAnimation() --[[ @ 0]]
	f11_arg0.DivisionSkillIcon:completeAnimation() --[[ @ 0]]
	f11_arg0.rubies:setTopBottom( 0, 0, 319.5, 393.5 ) --[[ @ 0]]
	f11_arg0.rubies:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.badge:setTopBottom( 0.5, 0.5, -204, -4 ) --[[ @ 0]]
	f11_arg0.badge:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.rank:setTopBottom( 0, 0, 291, 316 ) --[[ @ 0]]
	f11_arg0.rank:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.color:setTopBottom( 0, 0, 291, 316 ) --[[ @ 0]]
	f11_arg0.color:setAlpha( 0 ) --[[ @ 0]]
	f11_arg0.banner:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.firestreakflipbook:setTopBottom( 0.5, 0.5, -274, 66 ) --[[ @ 0]]
	f11_arg0.firestreakflipbook:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.DivisionSkillIcon:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CompetitiveOverviewRankBanner.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 7 ) --[[ @ 0]]
			f13_arg0.banner:completeAnimation() --[[ @ 0]]
			f13_arg0.banner:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.banner ) --[[ @ 0]]
			f13_arg0.color:completeAnimation() --[[ @ 0]]
			f13_arg0.color:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.color ) --[[ @ 0]]
			f13_arg0.rank:completeAnimation() --[[ @ 0]]
			f13_arg0.rank:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.rank ) --[[ @ 0]]
			f13_arg0.firestreakflipbook:completeAnimation() --[[ @ 0]]
			f13_arg0.firestreakflipbook:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.firestreakflipbook ) --[[ @ 0]]
			f13_arg0.badge:completeAnimation() --[[ @ 0]]
			f13_arg0.badge:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.badge ) --[[ @ 0]]
			f13_arg0.rubies:completeAnimation() --[[ @ 0]]
			f13_arg0.rubies:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.rubies ) --[[ @ 0]]
			f13_arg0.DivisionSkillIcon:completeAnimation() --[[ @ 0]]
			f13_arg0.DivisionSkillIcon:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.DivisionSkillIcon ) --[[ @ 0]]
		end
	},
	HiddenCopy = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 7 ) --[[ @ 0]]
			f14_arg0.banner:completeAnimation() --[[ @ 0]]
			f14_arg0.banner:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.banner ) --[[ @ 0]]
			f14_arg0.color:completeAnimation() --[[ @ 0]]
			f14_arg0.color:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.color ) --[[ @ 0]]
			f14_arg0.rank:completeAnimation() --[[ @ 0]]
			f14_arg0.rank:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.rank ) --[[ @ 0]]
			f14_arg0.firestreakflipbook:completeAnimation() --[[ @ 0]]
			f14_arg0.firestreakflipbook:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.firestreakflipbook ) --[[ @ 0]]
			f14_arg0.badge:completeAnimation() --[[ @ 0]]
			f14_arg0.badge:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.badge ) --[[ @ 0]]
			f14_arg0.rubies:completeAnimation() --[[ @ 0]]
			f14_arg0.rubies:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.rubies ) --[[ @ 0]]
			f14_arg0.DivisionSkillIcon:completeAnimation() --[[ @ 0]]
			f14_arg0.DivisionSkillIcon:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.DivisionSkillIcon ) --[[ @ 0]]
		end
	},
	Lobby = {
		DefaultClip = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f15_arg0.color:completeAnimation() --[[ @ 0]]
			f15_arg0.color:setTopBottom( 0, 0, 372, 397 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.color ) --[[ @ 0]]
			f15_arg0.rank:completeAnimation() --[[ @ 0]]
			f15_arg0.rank:setTopBottom( 0, 0, 379.5, 400.5 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.rank ) --[[ @ 0]]
			f15_arg0.firestreakflipbook:completeAnimation() --[[ @ 0]]
			f15_arg0.firestreakflipbook:setTopBottom( 0.5, 0.5, -156, 184 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.firestreakflipbook ) --[[ @ 0]]
			f15_arg0.badge:completeAnimation() --[[ @ 0]]
			f15_arg0.badge:setTopBottom( 0.5, 0.5, -80, 120 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.badge ) --[[ @ 0]]
			f15_arg0.rubies:completeAnimation() --[[ @ 0]]
			f15_arg0.rubies:setTopBottom( 0, 0, 402, 442 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.rubies ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.CompetitiveOverviewRankBanner.__onClose = function ( f16_arg0 )
	f16_arg0.banner:close() --[[ @ 0]]
	f16_arg0.color:close() --[[ @ 0]]
	f16_arg0.rank:close() --[[ @ 0]]
	f16_arg0.firestreakflipbook:close() --[[ @ 0]]
	f16_arg0.badge:close() --[[ @ 0]]
	f16_arg0.rubies:close() --[[ @ 0]]
	f16_arg0.DivisionSkillIcon:close() --[[ @ 0]]
end
 --[[ @ 0]]
