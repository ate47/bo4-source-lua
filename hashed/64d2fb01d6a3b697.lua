-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:6fe1159ce8fa444b" ) --[[ @ 0]]
require( "ui/uieditor/widgets/lobby/common/layoutelements/commonsearchingbar" ) --[[ @ 0]]
require( "x64:5564ca313abeb19a" ) --[[ @ 0]]

CoD.LeaguePlay_AAR_PointPanel = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.LeaguePlay_AAR_PointPanel.__defaultWidth = 400 --[[ @ 0]]
CoD.LeaguePlay_AAR_PointPanel.__defaultHeight = 500 --[[ @ 0]]
CoD.LeaguePlay_AAR_PointPanel.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.LeaguePlay_AAR_PointPanel ) --[[ @ 0]]
	self.id = "LeaguePlay_AAR_PointPanel" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local blurBg = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	blurBg:setAlpha( 0 ) --[[ @ 0]]
	blurBg:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	blurBg:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( blurBg ) --[[ @ 0]]
	self.blurBg = blurBg --[[ @ 0]]
	
	local DailyBonusArrow = LUI.UIImage.new( 0, 0, 196.5, 204.5, 0, 0, 481, 497 ) --[[ @ 0]]
	DailyBonusArrow:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	DailyBonusArrow:setAlpha( 0.1 ) --[[ @ 0]]
	DailyBonusArrow:setZRot( 90 ) --[[ @ 0]]
	DailyBonusArrow:setScale( 2, 2 ) --[[ @ 0]]
	DailyBonusArrow:setImage( RegisterImage( @"uie_ui_hud_common_triangle" ) ) --[[ @ 0]]
	self:addElement( DailyBonusArrow ) --[[ @ 0]]
	self.DailyBonusArrow = DailyBonusArrow --[[ @ 0]]
	
	local RightArrowL = CoD.TabletConnectionArrow.new( f1_arg0, f1_arg1, 0, 0, -6, 59, 0, 0, 235.5, 266.5 ) --[[ @ 0]]
	RightArrowL:setAlpha( 0.3 ) --[[ @ 0]]
	RightArrowL:setZRot( 180 ) --[[ @ 0]]
	RightArrowL:setScale( 0.6, 0.6 ) --[[ @ 0]]
	self:addElement( RightArrowL ) --[[ @ 0]]
	self.RightArrowL = RightArrowL --[[ @ 0]]
	
	local RightArrowR = CoD.TabletConnectionArrow.new( f1_arg0, f1_arg1, 0, 0, 339.5, 404.5, 0, 0, 235.5, 266.5 ) --[[ @ 0]]
	RightArrowR:setAlpha( 0.3 ) --[[ @ 0]]
	RightArrowR:setScale( 0.6, 0.6 ) --[[ @ 0]]
	self:addElement( RightArrowR ) --[[ @ 0]]
	self.RightArrowR = RightArrowR --[[ @ 0]]
	
	local TiledShaderImage = LUI.UIImage.new( 0, 1, 0, 0, 0.02, 1, 0, 0 ) --[[ @ 0]]
	TiledShaderImage:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	TiledShaderImage:setAlpha( 0.02 ) --[[ @ 0]]
	TiledShaderImage:setImage( RegisterImage( @"uie_ui_hud_vehicle_lightstrike_grid" ) ) --[[ @ 0]]
	TiledShaderImage:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	TiledShaderImage:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	TiledShaderImage:setupNineSliceShader( 33, 33 ) --[[ @ 0]]
	self:addElement( TiledShaderImage ) --[[ @ 0]]
	self.TiledShaderImage = TiledShaderImage --[[ @ 0]]
	
	local PerformBg = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	PerformBg:setAlpha( 0.8 ) --[[ @ 0]]
	PerformBg:setImage( RegisterImage( @"uie_ui_menu_aar_perform_repeat_bg" ) ) --[[ @ 0]]
	PerformBg:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	PerformBg:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	PerformBg:setupNineSliceShader( 344, 136 ) --[[ @ 0]]
	self:addElement( PerformBg ) --[[ @ 0]]
	self.PerformBg = PerformBg --[[ @ 0]]
	
	local PerformBracketBlur = LUI.UIImage.new( 0, 1, -3.5, 4.5, 1, 1, -14, 6 ) --[[ @ 0]]
	PerformBracketBlur:setAlpha( 0.3 ) --[[ @ 0]]
	PerformBracketBlur:setImage( RegisterImage( @"uie_ui_menu_aar_perform_botline_blur" ) ) --[[ @ 0]]
	PerformBracketBlur:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_normal" ) ) --[[ @ 0]]
	PerformBracketBlur:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	PerformBracketBlur:setupNineSliceShader( 174, 10 ) --[[ @ 0]]
	self:addElement( PerformBracketBlur ) --[[ @ 0]]
	self.PerformBracketBlur = PerformBracketBlur --[[ @ 0]]
	
	local infoBracketBot = LUI.UIImage.new( 0, 1, -1, 1, 1, 1, -7, 1 ) --[[ @ 0]]
	infoBracketBot:setAlpha( 0.5 ) --[[ @ 0]]
	infoBracketBot:setImage( RegisterImage( @"hash_4C325BED3F226657" ) ) --[[ @ 0]]
	infoBracketBot:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	infoBracketBot:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	infoBracketBot:setupNineSliceShader( 16, 4 ) --[[ @ 0]]
	self:addElement( infoBracketBot ) --[[ @ 0]]
	self.infoBracketBot = infoBracketBot --[[ @ 0]]
	
	local PlacementBonusPoints = CoD.AARLadderPoints.new( f1_arg0, f1_arg1, 0, 0, 0, 400, 0, 0, 308, 458 ) --[[ @ 0]]
	PlacementBonusPoints:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueLessThan( element, f1_arg1, "bonus", 0 )
			end
		}
	} ) --[[ @ 0]]
	PlacementBonusPoints:linkToElementModel( PlacementBonusPoints, "bonus", true, function ( model )
		f1_arg0:updateElementState( PlacementBonusPoints, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "bonus"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	PlacementBonusPoints:linkToElementModel( self, nil, false, function ( model )
		PlacementBonusPoints:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	PlacementBonusPoints:linkToElementModel( self, "bonus", true, function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			PlacementBonusPoints.PointsTxt:setText( Engine[@"hash_4F9F1239CFD921FE"]( CoD.ArenaLeaguePlayUtility.AARLadderBonusText( f1_arg1, f5_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	PlacementBonusPoints:linkToElementModel( self, "bonus", true, function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			PlacementBonusPoints.Points:setText( f6_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( PlacementBonusPoints ) --[[ @ 0]]
	self.PlacementBonusPoints = PlacementBonusPoints --[[ @ 0]]
	
	local MatchAndBonusPoints = CoD.AARLadderPoints.new( f1_arg0, f1_arg1, 0, 0, 0, 400, 0, 0, 44, 194 ) --[[ @ 0]]
	MatchAndBonusPoints.PlusMinus:setRGB( 1, 1, 1 ) --[[ @ 0]]
	MatchAndBonusPoints.Points:setRGB( 1, 1, 1 ) --[[ @ 0]]
	MatchAndBonusPoints.PointsAdd:setRGB( 1, 1, 1 ) --[[ @ 0]]
	MatchAndBonusPoints:linkToElementModel( self, "points", true, function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			MatchAndBonusPoints.Points:setText( CoD.BaseUtility.AlreadyLocalized( NumAbs( f7_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	MatchAndBonusPoints:linkToElementModel( self, "points", true, function ( model )
		local f8_local0 = model:get() --[[ @ 0]]
		if f8_local0 ~= nil then
			MatchAndBonusPoints.PointsAdd:setText( CoD.BaseUtility.AlreadyLocalized( NumAbs( f8_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( MatchAndBonusPoints ) --[[ @ 0]]
	self.MatchAndBonusPoints = MatchAndBonusPoints --[[ @ 0]]
	
	local CommonSearchingBar = CoD.CommonSearchingBar.new( f1_arg0, f1_arg1, 0, 0, 270, 392, 0, 0, 13, 35 ) --[[ @ 0]]
	CommonSearchingBar:setAlpha( 0.2 ) --[[ @ 0]]
	self:addElement( CommonSearchingBar ) --[[ @ 0]]
	self.CommonSearchingBar = CommonSearchingBar --[[ @ 0]]
	
	local TopBar = LUI.UIImage.new( 0, 0, 0, 400, 0, 0, 0, 9 ) --[[ @ 0]]
	TopBar:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	TopBar:setAlpha( 0.01 ) --[[ @ 0]]
	self:addElement( TopBar ) --[[ @ 0]]
	self.TopBar = TopBar --[[ @ 0]]
	
	local Sound = LUI.UIElement.new( 0, 0, -155.5, -123.5, 0, 0, 470, 502 ) --[[ @ 0]]
	Sound:setPlaySoundDirect( true ) --[[ @ 0]]
	self:addElement( Sound ) --[[ @ 0]]
	self.Sound = Sound --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Defeated",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalDataSourceModelValueEqualTo( f1_arg1, "AARSummaryStats", "lastMatchOutcome", @"loss" )
			end
		}
	} ) --[[ @ 0]]
	local f1_local14 = self --[[ @ 0]]
	local f1_local15 = self.subscribeToModel --[[ @ 0]]
	local f1_local16 = DataSources.AARSummaryStats.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local15( f1_local14, f1_local16.lastMatchOutcome, function ( f10_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f10_arg0:get(),
			modelName = "lastMatchOutcome"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.LeaguePlay_AAR_PointPanel.__resetProperties = function ( f11_arg0 )
	f11_arg0.CommonSearchingBar:completeAnimation() --[[ @ 0]]
	f11_arg0.DailyBonusArrow:completeAnimation() --[[ @ 0]]
	f11_arg0.RightArrowL:completeAnimation() --[[ @ 0]]
	f11_arg0.RightArrowR:completeAnimation() --[[ @ 0]]
	f11_arg0.PlacementBonusPoints:completeAnimation() --[[ @ 0]]
	f11_arg0.MatchAndBonusPoints:completeAnimation() --[[ @ 0]]
	f11_arg0.Sound:completeAnimation() --[[ @ 0]]
	f11_arg0.CommonSearchingBar:setAlpha( 0.2 ) --[[ @ 0]]
	f11_arg0.DailyBonusArrow:setAlpha( 0.1 ) --[[ @ 0]]
	f11_arg0.RightArrowL:setLeftRight( 0, 0, -6, 59 ) --[[ @ 0]]
	f11_arg0.RightArrowL:setAlpha( 0.3 ) --[[ @ 0]]
	f11_arg0.RightArrowR:setLeftRight( 0, 0, 339.5, 404.5 ) --[[ @ 0]]
	f11_arg0.RightArrowR:setAlpha( 0.3 ) --[[ @ 0]]
	f11_arg0.PlacementBonusPoints:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.PlacementBonusPoints.Flare:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
	f11_arg0.MatchAndBonusPoints:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.MatchAndBonusPoints.Flare:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
	f11_arg0.MatchAndBonusPoints.PlusMinus:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f11_arg0.MatchAndBonusPoints.PlusMinus:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"mp/plus" ) ) --[[ @ 0]]
	f11_arg0.MatchAndBonusPoints.PointsTxt:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_6436CFB031FD2F44" ) ) --[[ @ 0]]
	f11_arg0.MatchAndBonusPoints.Points:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f11_arg0.MatchAndBonusPoints.PointsAdd:setRGB( 1, 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.LeaguePlay_AAR_PointPanel.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 7 ) --[[ @ 0]]
			local f12_local0 = function ( f13_arg0 )
				local f13_local0 = function ( f14_arg0 )
					f14_arg0:beginAnimation( 149 ) --[[ @ 0]]
					f14_arg0:setAlpha( 0.1 ) --[[ @ 0]]
					f14_arg0:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f12_arg0.DailyBonusArrow:beginAnimation( 300 ) --[[ @ 0]]
				f12_arg0.DailyBonusArrow:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.DailyBonusArrow:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.DailyBonusArrow:completeAnimation() --[[ @ 0]]
			f12_arg0.DailyBonusArrow:setAlpha( 0 ) --[[ @ 0]]
			f12_local0( f12_arg0.DailyBonusArrow ) --[[ @ 0]]
			local f12_local1 = function ( f15_arg0 )
				local f15_local0 = function ( f16_arg0 )
					f16_arg0:beginAnimation( 99, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
					f16_arg0:setLeftRight( 0, 0, -6, 59 ) --[[ @ 0]]
					f16_arg0:setAlpha( 0.4 ) --[[ @ 0]]
					f16_arg0:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f12_arg0.RightArrowL:beginAnimation( 350 ) --[[ @ 0]]
				f12_arg0.RightArrowL:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.RightArrowL:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.RightArrowL:completeAnimation() --[[ @ 0]]
			f12_arg0.RightArrowL:setLeftRight( 0, 0, -206, -141 ) --[[ @ 0]]
			f12_arg0.RightArrowL:setAlpha( 0 ) --[[ @ 0]]
			f12_local1( f12_arg0.RightArrowL ) --[[ @ 0]]
			local f12_local2 = function ( f17_arg0 )
				local f17_local0 = function ( f18_arg0 )
					f18_arg0:beginAnimation( 99, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
					f18_arg0:setLeftRight( 0, 0, 339.5, 404.5 ) --[[ @ 0]]
					f18_arg0:setAlpha( 0.4 ) --[[ @ 0]]
					f18_arg0:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f12_arg0.RightArrowR:beginAnimation( 350 ) --[[ @ 0]]
				f12_arg0.RightArrowR:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.RightArrowR:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.RightArrowR:completeAnimation() --[[ @ 0]]
			f12_arg0.RightArrowR:setLeftRight( 0, 0, 539.5, 604.5 ) --[[ @ 0]]
			f12_arg0.RightArrowR:setAlpha( 0 ) --[[ @ 0]]
			f12_local2( f12_arg0.RightArrowR ) --[[ @ 0]]
			local f12_local3 = function ( f19_arg0 )
				local f19_local0 = function ( f20_arg0 )
					f20_arg0:beginAnimation( 149, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
					f20_arg0:setAlpha( 1 ) --[[ @ 0]]
					f20_arg0:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f12_arg0.PlacementBonusPoints:beginAnimation( 500 ) --[[ @ 0]]
				f12_arg0.PlacementBonusPoints:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.PlacementBonusPoints:registerEventHandler( "transition_complete_keyframe", f19_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.PlacementBonusPoints:completeAnimation() --[[ @ 0]]
			f12_arg0.PlacementBonusPoints.Flare:completeAnimation() --[[ @ 0]]
			f12_arg0.PlacementBonusPoints:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.PlacementBonusPoints.Flare:setRGB( 0.75, 0.92, 0.53 ) --[[ @ 0]]
			f12_local3( f12_arg0.PlacementBonusPoints ) --[[ @ 0]]
			local f12_local4 = function ( f21_arg0 )
				local f21_local0 = function ( f22_arg0 )
					f22_arg0:beginAnimation( 150, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
					f22_arg0:setAlpha( 1 ) --[[ @ 0]]
					f22_arg0:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f12_arg0.MatchAndBonusPoints:beginAnimation( 50 ) --[[ @ 0]]
				f12_arg0.MatchAndBonusPoints:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.MatchAndBonusPoints:registerEventHandler( "transition_complete_keyframe", f21_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.MatchAndBonusPoints:completeAnimation() --[[ @ 0]]
			f12_arg0.MatchAndBonusPoints:setAlpha( 0 ) --[[ @ 0]]
			f12_local4( f12_arg0.MatchAndBonusPoints ) --[[ @ 0]]
			local f12_local5 = function ( f23_arg0 )
				local f23_local0 = function ( f24_arg0 )
					f24_arg0:beginAnimation( 149 ) --[[ @ 0]]
					f24_arg0:setAlpha( 0.2 ) --[[ @ 0]]
					f24_arg0:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f12_arg0.CommonSearchingBar:beginAnimation( 300 ) --[[ @ 0]]
				f12_arg0.CommonSearchingBar:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.CommonSearchingBar:registerEventHandler( "transition_complete_keyframe", f23_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.CommonSearchingBar:completeAnimation() --[[ @ 0]]
			f12_arg0.CommonSearchingBar:setAlpha( 0 ) --[[ @ 0]]
			f12_local5( f12_arg0.CommonSearchingBar ) --[[ @ 0]]
			local f12_local6 = function ( f25_arg0 )
				f12_arg0.Sound:playSound( "uin_wlh_victory", f12_arg1 ) --[[ @ 0]]
				f12_arg0.Sound:beginAnimation( 500 ) --[[ @ 0]]
				f12_arg0.Sound:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.Sound:registerEventHandler( "transition_complete_keyframe", function ( element, event )
					element:playSound( "uin_wlh_placement_bonus", f12_arg1 ) --[[ @ 0]]
					f12_arg0.clipFinished( element, event ) --[[ @ 0]]
				end ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.Sound:completeAnimation() --[[ @ 0]]
			f12_local6( f12_arg0.Sound ) --[[ @ 0]]
		end
	},
	Defeated = {
		DefaultClip = function ( f27_arg0, f27_arg1 )
			f27_arg0:__resetProperties() --[[ @ 0]]
			f27_arg0:setupElementClipCounter( 7 ) --[[ @ 0]]
			local f27_local0 = function ( f28_arg0 )
				local f28_local0 = function ( f29_arg0 )
					f29_arg0:beginAnimation( 149 ) --[[ @ 0]]
					f29_arg0:setAlpha( 0.1 ) --[[ @ 0]]
					f29_arg0:registerEventHandler( "transition_complete_keyframe", f27_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f27_arg0.DailyBonusArrow:beginAnimation( 300 ) --[[ @ 0]]
				f27_arg0.DailyBonusArrow:registerEventHandler( "interrupted_keyframe", f27_arg0.clipInterrupted ) --[[ @ 0]]
				f27_arg0.DailyBonusArrow:registerEventHandler( "transition_complete_keyframe", f28_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f27_arg0.DailyBonusArrow:completeAnimation() --[[ @ 0]]
			f27_arg0.DailyBonusArrow:setAlpha( 0 ) --[[ @ 0]]
			f27_local0( f27_arg0.DailyBonusArrow ) --[[ @ 0]]
			local f27_local1 = function ( f30_arg0 )
				local f30_local0 = function ( f31_arg0 )
					f31_arg0:beginAnimation( 99 ) --[[ @ 0]]
					f31_arg0:setLeftRight( 0, 0, -6, 59 ) --[[ @ 0]]
					f31_arg0:setAlpha( 0.4 ) --[[ @ 0]]
					f31_arg0:registerEventHandler( "transition_complete_keyframe", f27_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f27_arg0.RightArrowL:beginAnimation( 350 ) --[[ @ 0]]
				f27_arg0.RightArrowL:registerEventHandler( "interrupted_keyframe", f27_arg0.clipInterrupted ) --[[ @ 0]]
				f27_arg0.RightArrowL:registerEventHandler( "transition_complete_keyframe", f30_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f27_arg0.RightArrowL:completeAnimation() --[[ @ 0]]
			f27_arg0.RightArrowL:setLeftRight( 0, 0, -206, -141 ) --[[ @ 0]]
			f27_arg0.RightArrowL:setAlpha( 0 ) --[[ @ 0]]
			f27_local1( f27_arg0.RightArrowL ) --[[ @ 0]]
			local f27_local2 = function ( f32_arg0 )
				local f32_local0 = function ( f33_arg0 )
					f33_arg0:beginAnimation( 99 ) --[[ @ 0]]
					f33_arg0:setLeftRight( 0, 0, 339.5, 404.5 ) --[[ @ 0]]
					f33_arg0:setAlpha( 0.4 ) --[[ @ 0]]
					f33_arg0:registerEventHandler( "transition_complete_keyframe", f27_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f27_arg0.RightArrowR:beginAnimation( 350 ) --[[ @ 0]]
				f27_arg0.RightArrowR:registerEventHandler( "interrupted_keyframe", f27_arg0.clipInterrupted ) --[[ @ 0]]
				f27_arg0.RightArrowR:registerEventHandler( "transition_complete_keyframe", f32_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f27_arg0.RightArrowR:completeAnimation() --[[ @ 0]]
			f27_arg0.RightArrowR:setLeftRight( 0, 0, 539.5, 604.5 ) --[[ @ 0]]
			f27_arg0.RightArrowR:setAlpha( 0 ) --[[ @ 0]]
			f27_local2( f27_arg0.RightArrowR ) --[[ @ 0]]
			local f27_local3 = function ( f34_arg0 )
				local f34_local0 = function ( f35_arg0 )
					f35_arg0:beginAnimation( 149 ) --[[ @ 0]]
					f35_arg0:setAlpha( 1 ) --[[ @ 0]]
					f35_arg0:registerEventHandler( "transition_complete_keyframe", f27_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f27_arg0.PlacementBonusPoints:beginAnimation( 500 ) --[[ @ 0]]
				f27_arg0.PlacementBonusPoints:registerEventHandler( "interrupted_keyframe", f27_arg0.clipInterrupted ) --[[ @ 0]]
				f27_arg0.PlacementBonusPoints:registerEventHandler( "transition_complete_keyframe", f34_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f27_arg0.PlacementBonusPoints:completeAnimation() --[[ @ 0]]
			f27_arg0.PlacementBonusPoints.Flare:completeAnimation() --[[ @ 0]]
			f27_arg0.PlacementBonusPoints:setAlpha( 0 ) --[[ @ 0]]
			f27_arg0.PlacementBonusPoints.Flare:setRGB( 0.75, 0.92, 0.53 ) --[[ @ 0]]
			f27_local3( f27_arg0.PlacementBonusPoints ) --[[ @ 0]]
			local f27_local4 = function ( f36_arg0 )
				local f36_local0 = function ( f37_arg0 )
					f37_arg0:beginAnimation( 150 ) --[[ @ 0]]
					f37_arg0:setAlpha( 1 ) --[[ @ 0]]
					f37_arg0:registerEventHandler( "transition_complete_keyframe", f27_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f27_arg0.MatchAndBonusPoints:beginAnimation( 50 ) --[[ @ 0]]
				f27_arg0.MatchAndBonusPoints:registerEventHandler( "interrupted_keyframe", f27_arg0.clipInterrupted ) --[[ @ 0]]
				f27_arg0.MatchAndBonusPoints:registerEventHandler( "transition_complete_keyframe", f36_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f27_arg0.MatchAndBonusPoints:completeAnimation() --[[ @ 0]]
			f27_arg0.MatchAndBonusPoints.Flare:completeAnimation() --[[ @ 0]]
			f27_arg0.MatchAndBonusPoints.PlusMinus:completeAnimation() --[[ @ 0]]
			f27_arg0.MatchAndBonusPoints.PointsTxt:completeAnimation() --[[ @ 0]]
			f27_arg0.MatchAndBonusPoints.Points:completeAnimation() --[[ @ 0]]
			f27_arg0.MatchAndBonusPoints.PointsAdd:completeAnimation() --[[ @ 0]]
			f27_arg0.MatchAndBonusPoints:setAlpha( 0 ) --[[ @ 0]]
			f27_arg0.MatchAndBonusPoints.Flare:setRGB( ColorSet.ResistanceLow.r, ColorSet.ResistanceLow.g, ColorSet.ResistanceLow.b ) --[[ @ 0]]
			f27_arg0.MatchAndBonusPoints.PlusMinus:setRGB( 0.55, 0, 0 ) --[[ @ 0]]
			f27_arg0.MatchAndBonusPoints.PlusMinus:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"mp/minus" ) ) --[[ @ 0]]
			f27_arg0.MatchAndBonusPoints.PointsTxt:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_4E875FF3C976BA98" ) ) --[[ @ 0]]
			f27_arg0.MatchAndBonusPoints.Points:setRGB( 0.55, 0, 0 ) --[[ @ 0]]
			f27_arg0.MatchAndBonusPoints.PointsAdd:setRGB( 0.55, 0, 0 ) --[[ @ 0]]
			f27_local4( f27_arg0.MatchAndBonusPoints ) --[[ @ 0]]
			local f27_local5 = function ( f38_arg0 )
				local f38_local0 = function ( f39_arg0 )
					f39_arg0:beginAnimation( 149 ) --[[ @ 0]]
					f39_arg0:setAlpha( 0.1 ) --[[ @ 0]]
					f39_arg0:registerEventHandler( "transition_complete_keyframe", f27_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f27_arg0.CommonSearchingBar:beginAnimation( 300 ) --[[ @ 0]]
				f27_arg0.CommonSearchingBar:registerEventHandler( "interrupted_keyframe", f27_arg0.clipInterrupted ) --[[ @ 0]]
				f27_arg0.CommonSearchingBar:registerEventHandler( "transition_complete_keyframe", f38_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f27_arg0.CommonSearchingBar:completeAnimation() --[[ @ 0]]
			f27_arg0.CommonSearchingBar:setAlpha( 0 ) --[[ @ 0]]
			f27_local5( f27_arg0.CommonSearchingBar ) --[[ @ 0]]
			f27_arg0.Sound:completeAnimation() --[[ @ 0]]
			f27_arg0.Sound:playSound( "uin_wlh_defeat", f27_arg1 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.Sound ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.LeaguePlay_AAR_PointPanel.__onClose = function ( f40_arg0 )
	f40_arg0.RightArrowL:close() --[[ @ 0]]
	f40_arg0.RightArrowR:close() --[[ @ 0]]
	f40_arg0.PlacementBonusPoints:close() --[[ @ 0]]
	f40_arg0.MatchAndBonusPoints:close() --[[ @ 0]]
	f40_arg0.CommonSearchingBar:close() --[[ @ 0]]
end
 --[[ @ 0]]
