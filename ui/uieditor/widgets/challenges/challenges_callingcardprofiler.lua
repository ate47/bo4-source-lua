-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/blackmarket/bm_goldbarmed" ) --[[ @ 0]]
require( "x64:34f4ebc58e721a19" ) --[[ @ 0]]
require( "ui/uieditor/widgets/callingcards/callingcards_framewidget" ) --[[ @ 0]]
require( "x64:724ff42701198ce" ) --[[ @ 0]]
require( "x64:4c792f6ab57549c1" ) --[[ @ 0]]
require( "ui/uieditor/widgets/startmenu/startmenu_identity_subtitle" ) --[[ @ 0]]
require( "ui/uieditor/widgets/store/storecommontextbacking" ) --[[ @ 0]]
require( "x64:40c7e896ee4bc3f8" ) --[[ @ 0]]

CoD.Challenges_CallingCardProfiler = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Challenges_CallingCardProfiler.__defaultWidth = 525 --[[ @ 0]]
CoD.Challenges_CallingCardProfiler.__defaultHeight = 732 --[[ @ 0]]
CoD.Challenges_CallingCardProfiler.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	CoD.BaseUtility.InitControllerModelIfNotSet( f1_arg1, "hudItems.callingCardProfilingType", "default" ) --[[ @ 0]]
	CoD.BaseUtility.InitControllerModelIfNotSet( f1_arg1, "hudItems.profilingMasterCallingCard", 0 ) --[[ @ 0]]
	self:setClass( CoD.Challenges_CallingCardProfiler ) --[[ @ 0]]
	self.id = "Challenges_CallingCardProfiler" --[[ @ 0]]
	self.soundSet = "FrontendMain" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local CardIcon = CoD.CallingCards_FrameWidget.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 0, 0, 131 ) --[[ @ 0]]
	CardIcon:linkToElementModel( self, nil, false, function ( model )
		CardIcon:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( CardIcon ) --[[ @ 0]]
	self.CardIcon = CardIcon --[[ @ 0]]
	
	local CTClassifiedOverlay = LUI.UIImage.new( 0, 1, -1, 1, 0, 0, 0, 131 ) --[[ @ 0]]
	CTClassifiedOverlay:setRGB( 0, 0, 0 ) --[[ @ 0]]
	CTClassifiedOverlay:setAlpha( 0 ) --[[ @ 0]]
	CTClassifiedOverlay:setImage( RegisterImage( @"uie_t7_icons_challenges_classified_placeholder" ) ) --[[ @ 0]]
	self:addElement( CTClassifiedOverlay ) --[[ @ 0]]
	self.CTClassifiedOverlay = CTClassifiedOverlay --[[ @ 0]]
	
	local TierStatus = CoD.StartMenu_Identity_SubTitle.new( f1_arg0, f1_arg1, 0.5, 0.5, -129, 129, 0, 0, 358, 388 ) --[[ @ 0]]
	TierStatus:setAlpha( 0 ) --[[ @ 0]]
	TierStatus:linkToElementModel( self, "tierStatus", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			TierStatus.SubtitleText:setText( f3_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( TierStatus ) --[[ @ 0]]
	self.TierStatus = TierStatus --[[ @ 0]]
	
	local BMGoldBarMed = CoD.BM_GoldBarMed.new( f1_arg0, f1_arg1, 0, 0, 4, 522, 0, 0, 49, 94 ) --[[ @ 0]]
	BMGoldBarMed:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( BMGoldBarMed ) --[[ @ 0]]
	self.BMGoldBarMed = BMGoldBarMed --[[ @ 0]]
	
	local blackMarketBrandIcon = LUI.UIImage.new( 0.5, 0.5, -54, 49, 0, 0, 18, 121 ) --[[ @ 0]]
	blackMarketBrandIcon:setAlpha( 0 ) --[[ @ 0]]
	blackMarketBrandIcon:setImage( RegisterImage( @"uie_t7_icon_blackmarket_encryptedicon_large" ) ) --[[ @ 0]]
	self:addElement( blackMarketBrandIcon ) --[[ @ 0]]
	self.blackMarketBrandIcon = blackMarketBrandIcon --[[ @ 0]]
	
	local DotTiledBacking = CoD.StoreCommonTextBacking.new( f1_arg0, f1_arg1, 0.03, 0.97, 1, -1, 0, 0.03, 296, 294 ) --[[ @ 0]]
	DotTiledBacking:setAlpha( 0.15 ) --[[ @ 0]]
	self:addElement( DotTiledBacking ) --[[ @ 0]]
	self.DotTiledBacking = DotTiledBacking --[[ @ 0]]
	
	local ProgressBarBase = LUI.UIImage.new( 0.5, 0.5, -247.5, 247.5, 0, 0, 295, 318 ) --[[ @ 0]]
	ProgressBarBase:setRGB( ColorSet.T8__OFF__GRAY.r, ColorSet.T8__OFF__GRAY.g, ColorSet.T8__OFF__GRAY.b ) --[[ @ 0]]
	ProgressBarBase:setAlpha( 0.02 ) --[[ @ 0]]
	self:addElement( ProgressBarBase ) --[[ @ 0]]
	self.ProgressBarBase = ProgressBarBase --[[ @ 0]]
	
	local ProgressBarBoarder = LUI.UIImage.new( 0.5, 0.5, -247.5, 247.5, 0, 0, 294, 317 ) --[[ @ 0]]
	ProgressBarBoarder:setAlpha( 0.1 ) --[[ @ 0]]
	ProgressBarBoarder:setImage( RegisterImage( @"uie_ui_menu_store_common_frame" ) ) --[[ @ 0]]
	ProgressBarBoarder:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	ProgressBarBoarder:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	ProgressBarBoarder:setupNineSliceShader( 12, 12 ) --[[ @ 0]]
	self:addElement( ProgressBarBoarder ) --[[ @ 0]]
	self.ProgressBarBoarder = ProgressBarBoarder --[[ @ 0]]
	
	local ProgressBar = LUI.UIImage.new( 0.03, 0.97, 1, -1, 0, 0.03, 296, 294 ) --[[ @ 0]]
	ProgressBar:setRGB( 1, 0.36, 0 ) --[[ @ 0]]
	ProgressBar:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe" ) ) --[[ @ 0]]
	ProgressBar:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	ProgressBar:setShaderVector( 2, 1, 0, 0, 0 ) --[[ @ 0]]
	ProgressBar:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	ProgressBar:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	ProgressBar:linkToElementModel( self, "percentComplete", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			ProgressBar:setShaderVector( 0, CoD.GetVectorComponentFromString( f4_local0, 1 ), CoD.GetVectorComponentFromString( f4_local0, 2 ), CoD.GetVectorComponentFromString( f4_local0, 3 ), CoD.GetVectorComponentFromString( f4_local0, 4 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ProgressBar ) --[[ @ 0]]
	self.ProgressBar = ProgressBar --[[ @ 0]]
	
	local ProgressFraction = LUI.UIText.new( 1, 1, -58, -19, 0, 0, 298, 316 ) --[[ @ 0]]
	ProgressFraction:setTTF( "default" ) --[[ @ 0]]
	ProgressFraction:setLetterSpacing( 2 ) --[[ @ 0]]
	ProgressFraction:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
	ProgressFraction:linkToElementModel( self, "statFractionText", true, function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			ProgressFraction:setText( f5_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ProgressFraction ) --[[ @ 0]]
	self.ProgressFraction = ProgressFraction --[[ @ 0]]
	
	local TierList = LUI.GridLayout.new( f1_arg0, f1_arg1, false, 0, 0, 0, 0, nil, nil, false, false, false, false ) --[[ @ 0]]
	TierList:setLeftRight( 0.5, 0.5, -135, 135 ) --[[ @ 0]]
	TierList:setTopBottom( 0, 0, 474, 588 ) --[[ @ 0]]
	TierList:setWidgetType( CoD.Challenges_TierIcon ) --[[ @ 0]]
	TierList:setHorizontalCount( 5 ) --[[ @ 0]]
	TierList:setSpacing( 0 ) --[[ @ 0]]
	TierList:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	TierList:setDataSource( "TierIconList" ) --[[ @ 0]]
	self:addElement( TierList ) --[[ @ 0]]
	self.TierList = TierList --[[ @ 0]]
	
	local TierNumber = LUI.UIText.new( 0.5, 0.5, -129, 129, 0, 0, 442, 466 ) --[[ @ 0]]
	TierNumber:setRGB( ColorSet.T8__OFF__GRAY.r, ColorSet.T8__OFF__GRAY.g, ColorSet.T8__OFF__GRAY.b ) --[[ @ 0]]
	TierNumber:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	TierNumber:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	TierNumber:linkToElementModel( self, "tierStatus", true, function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			TierNumber:setText( ConvertToUpperString( f6_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( TierNumber ) --[[ @ 0]]
	self.TierNumber = TierNumber --[[ @ 0]]
	
	local FrameBorder = LUI.UIImage.new( 0.5, 0.5, -114.5, 115.5, 0, 0, 474, 528 ) --[[ @ 0]]
	FrameBorder:setAlpha( 0.15 ) --[[ @ 0]]
	FrameBorder:setImage( RegisterImage( @"uie_ui_menu_store_common_frame" ) ) --[[ @ 0]]
	FrameBorder:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FrameBorder:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FrameBorder:setupNineSliceShader( 12, 12 ) --[[ @ 0]]
	self:addElement( FrameBorder ) --[[ @ 0]]
	self.FrameBorder = FrameBorder --[[ @ 0]]
	
	local ChallengeName = LUI.UIText.new( 0, 0, 15, 510, 0, 0, 152.5, 185.5 ) --[[ @ 0]]
	ChallengeName:setRGB( ColorSet.T8__OCHRE.r, ColorSet.T8__OCHRE.g, ColorSet.T8__OCHRE.b ) --[[ @ 0]]
	ChallengeName:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	ChallengeName:setLetterSpacing( 2 ) --[[ @ 0]]
	ChallengeName:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	ChallengeName:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	ChallengeName:linkToElementModel( self, "title", true, function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			ChallengeName:setText( ConvertToUpperString( f7_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ChallengeName ) --[[ @ 0]]
	self.ChallengeName = ChallengeName --[[ @ 0]]
	
	local ChallengeDescription = LUI.UIText.new( 0, 1, 18, -18, 0, 0, 206, 224 ) --[[ @ 0]]
	ChallengeDescription:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	ChallengeDescription:setTTF( "dinnext_regular" ) --[[ @ 0]]
	ChallengeDescription:setLetterSpacing( 0.5 ) --[[ @ 0]]
	ChallengeDescription:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	ChallengeDescription:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	ChallengeDescription:linkToElementModel( self, "description", true, function ( model )
		local f8_local0 = model:get() --[[ @ 0]]
		if f8_local0 ~= nil then
			ChallengeDescription:setText( f8_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ChallengeDescription ) --[[ @ 0]]
	self.ChallengeDescription = ChallengeDescription --[[ @ 0]]
	
	local LockedIcon = CoD.Challenges_ProfilerLock.new( f1_arg0, f1_arg1, 0.5, 0.5, -117.5, 117.5, 0, 0, 42, 87 ) --[[ @ 0]]
	LockedIcon:linkToElementModel( self, nil, false, function ( model )
		LockedIcon:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( LockedIcon ) --[[ @ 0]]
	self.LockedIcon = LockedIcon --[[ @ 0]]
	
	local TrialWidget = CoD.TrialInfoBannerWidget.new( f1_arg0, f1_arg1, 0.5, 0.5, -257.5, 257.5, 1, 1, -40, -5 ) --[[ @ 0]]
	TrialWidget:mergeStateConditions( {
		{
			stateName = "Shown",
			condition = function ( menu, element, event )
				return IsGameTrial() and CoD.ModelUtility.IsSelfModelValueNilOrTrue( element, f1_arg1, "trialLocked" )
			end
		}
	} ) --[[ @ 0]]
	TrialWidget:linkToElementModel( TrialWidget, "trialLocked", true, function ( model )
		f1_arg0:updateElementState( TrialWidget, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "trialLocked"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	TrialWidget:setAlpha( 0 ) --[[ @ 0]]
	TrialWidget:linkToElementModel( self, nil, false, function ( model )
		TrialWidget:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( TrialWidget ) --[[ @ 0]]
	self.TrialWidget = TrialWidget --[[ @ 0]]
	
	local XP = CoD.CallingCardProfilerXP.new( f1_arg0, f1_arg1, 0, 0, 183.5, 341.5, 0, 0, 473, 527 ) --[[ @ 0]]
	XP:setAlpha( 0 ) --[[ @ 0]]
	XP:linkToElementModel( self, nil, false, function ( model )
		XP:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( XP ) --[[ @ 0]]
	self.XP = XP --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "CTClassified",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueEqualTo( f1_arg1, "hudItems.callingCardProfilingType", "ct" ) and CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "isLocked" )
			end
		},
		{
			stateName = "BMClassfied",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "isBMClassified" )
			end
		},
		{
			stateName = "LockedPrestige",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "isLocked" ) and CoD.ModelUtility.IsModelValueEqualTo( f1_arg1, "hudItems.callingCardProfilingType", "prestige" )
			end
		},
		{
			stateName = "Locked",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "isLocked" ) and CoD.ModelUtility.IsSelfModelValueGreaterThan( element, f1_arg1, "maxTier", 0 )
			end
		},
		{
			stateName = "LockedOneTierNoXP",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "isLocked" ) and CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "xp", 0 )
			end
		},
		{
			stateName = "LockedOneTier",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "isLocked" )
			end
		}
	} ) --[[ @ 0]]
	local f1_local19 = self --[[ @ 0]]
	local f1_local20 = self.subscribeToModel --[[ @ 0]]
	local f1_local21 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local20( f1_local19, f1_local21["hudItems.callingCardProfilingType"], function ( f20_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f20_arg0:get(),
			modelName = "hudItems.callingCardProfilingType"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:linkToElementModel( self, "isLocked", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "isLocked"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "isBMClassified", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "isBMClassified"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "maxTier", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "maxTier"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "xp", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "xp"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "setModel", function ( element, controller )
		UpdateDataSource( self, self.TierList, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "close", function ( element )
		CoD.ChallengesUtility.ClearTierListDatasource( self ) --[[ @ 0]]
	end ) --[[ @ 0]]
	CardIcon.id = "CardIcon" --[[ @ 0]]
	TierList.id = "TierList" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local20 = self --[[ @ 0]]
	CoD.ChallengesUtility.SetupTierListDatasource( self ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.Challenges_CallingCardProfiler.__resetProperties = function ( f27_arg0 )
	f27_arg0.ProgressBar:completeAnimation() --[[ @ 0]]
	f27_arg0.TierList:completeAnimation() --[[ @ 0]]
	f27_arg0.TierStatus:completeAnimation() --[[ @ 0]]
	f27_arg0.ProgressFraction:completeAnimation() --[[ @ 0]]
	f27_arg0.ProgressBarBoarder:completeAnimation() --[[ @ 0]]
	f27_arg0.FrameBorder:completeAnimation() --[[ @ 0]]
	f27_arg0.TierNumber:completeAnimation() --[[ @ 0]]
	f27_arg0.ProgressBarBase:completeAnimation() --[[ @ 0]]
	f27_arg0.DotTiledBacking:completeAnimation() --[[ @ 0]]
	f27_arg0.LockedIcon:completeAnimation() --[[ @ 0]]
	f27_arg0.TrialWidget:completeAnimation() --[[ @ 0]]
	f27_arg0.CardIcon:completeAnimation() --[[ @ 0]]
	f27_arg0.CTClassifiedOverlay:completeAnimation() --[[ @ 0]]
	f27_arg0.blackMarketBrandIcon:completeAnimation() --[[ @ 0]]
	f27_arg0.BMGoldBarMed:completeAnimation() --[[ @ 0]]
	f27_arg0.XP:completeAnimation() --[[ @ 0]]
	f27_arg0.ProgressBar:setAlpha( 1 ) --[[ @ 0]]
	f27_arg0.TierList:setAlpha( 1 ) --[[ @ 0]]
	f27_arg0.TierStatus:setLeftRight( 0.5, 0.5, -129, 129 ) --[[ @ 0]]
	f27_arg0.TierStatus:setTopBottom( 0, 0, 358, 388 ) --[[ @ 0]]
	f27_arg0.TierStatus:setAlpha( 0 ) --[[ @ 0]]
	f27_arg0.ProgressFraction:setAlpha( 1 ) --[[ @ 0]]
	f27_arg0.ProgressBarBoarder:setAlpha( 0.1 ) --[[ @ 0]]
	f27_arg0.FrameBorder:setAlpha( 0.15 ) --[[ @ 0]]
	f27_arg0.TierNumber:setAlpha( 1 ) --[[ @ 0]]
	f27_arg0.ProgressBarBase:setAlpha( 0.02 ) --[[ @ 0]]
	f27_arg0.DotTiledBacking:setAlpha( 0.15 ) --[[ @ 0]]
	f27_arg0.LockedIcon:setAlpha( 1 ) --[[ @ 0]]
	f27_arg0.TrialWidget:setAlpha( 0 ) --[[ @ 0]]
	f27_arg0.TrialWidget.InfoText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_262486486346EC3F" ) ) --[[ @ 0]]
	f27_arg0.CardIcon:setAlpha( 1 ) --[[ @ 0]]
	f27_arg0.CTClassifiedOverlay:setRGB( 0, 0, 0 ) --[[ @ 0]]
	f27_arg0.CTClassifiedOverlay:setAlpha( 0 ) --[[ @ 0]]
	f27_arg0.blackMarketBrandIcon:setLeftRight( 0.5, 0.5, -54, 49 ) --[[ @ 0]]
	f27_arg0.blackMarketBrandIcon:setTopBottom( 0, 0, 18, 121 ) --[[ @ 0]]
	f27_arg0.blackMarketBrandIcon:setAlpha( 0 ) --[[ @ 0]]
	f27_arg0.BMGoldBarMed:setLeftRight( 0, 0, 4, 522 ) --[[ @ 0]]
	f27_arg0.BMGoldBarMed:setTopBottom( 0, 0, 49, 94 ) --[[ @ 0]]
	f27_arg0.BMGoldBarMed:setAlpha( 0 ) --[[ @ 0]]
	f27_arg0.XP:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.Challenges_CallingCardProfiler.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f28_arg0, f28_arg1 )
			f28_arg0:__resetProperties() --[[ @ 0]]
			f28_arg0:setupElementClipCounter( 11 ) --[[ @ 0]]
			f28_arg0.TierStatus:completeAnimation() --[[ @ 0]]
			f28_arg0.TierStatus:setAlpha( 0 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.TierStatus ) --[[ @ 0]]
			f28_arg0.DotTiledBacking:completeAnimation() --[[ @ 0]]
			f28_arg0.DotTiledBacking:setAlpha( 0 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.DotTiledBacking ) --[[ @ 0]]
			f28_arg0.ProgressBarBase:completeAnimation() --[[ @ 0]]
			f28_arg0.ProgressBarBase:setAlpha( 0 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.ProgressBarBase ) --[[ @ 0]]
			f28_arg0.ProgressBarBoarder:completeAnimation() --[[ @ 0]]
			f28_arg0.ProgressBarBoarder:setAlpha( 0 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.ProgressBarBoarder ) --[[ @ 0]]
			f28_arg0.ProgressBar:completeAnimation() --[[ @ 0]]
			f28_arg0.ProgressBar:setAlpha( 0 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.ProgressBar ) --[[ @ 0]]
			f28_arg0.ProgressFraction:completeAnimation() --[[ @ 0]]
			f28_arg0.ProgressFraction:setAlpha( 0 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.ProgressFraction ) --[[ @ 0]]
			f28_arg0.TierList:completeAnimation() --[[ @ 0]]
			f28_arg0.TierList:setAlpha( 0 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.TierList ) --[[ @ 0]]
			f28_arg0.TierNumber:completeAnimation() --[[ @ 0]]
			f28_arg0.TierNumber:setAlpha( 0 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.TierNumber ) --[[ @ 0]]
			f28_arg0.FrameBorder:completeAnimation() --[[ @ 0]]
			f28_arg0.FrameBorder:setAlpha( 0 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.FrameBorder ) --[[ @ 0]]
			f28_arg0.LockedIcon:completeAnimation() --[[ @ 0]]
			f28_arg0.LockedIcon:setAlpha( 0 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.LockedIcon ) --[[ @ 0]]
			f28_arg0.TrialWidget:completeAnimation() --[[ @ 0]]
			f28_arg0.TrialWidget:setAlpha( 1 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.TrialWidget ) --[[ @ 0]]
		end
	},
	CTClassified = {
		DefaultClip = function ( f29_arg0, f29_arg1 )
			f29_arg0:__resetProperties() --[[ @ 0]]
			f29_arg0:setupElementClipCounter( 8 ) --[[ @ 0]]
			f29_arg0.CardIcon:completeAnimation() --[[ @ 0]]
			f29_arg0.CardIcon:setAlpha( 0 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.CardIcon ) --[[ @ 0]]
			f29_arg0.CTClassifiedOverlay:completeAnimation() --[[ @ 0]]
			f29_arg0.CTClassifiedOverlay:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f29_arg0.CTClassifiedOverlay:setAlpha( 1 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.CTClassifiedOverlay ) --[[ @ 0]]
			f29_arg0.TierStatus:completeAnimation() --[[ @ 0]]
			f29_arg0.TierStatus:setLeftRight( 0.5, 0.5, 24, 201 ) --[[ @ 0]]
			f29_arg0.TierStatus:setTopBottom( 0, 0, 338, 377 ) --[[ @ 0]]
			f29_arg0.TierStatus:setAlpha( 0 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.TierStatus ) --[[ @ 0]]
			f29_arg0.TierList:completeAnimation() --[[ @ 0]]
			f29_arg0.TierList:setAlpha( 0 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.TierList ) --[[ @ 0]]
			f29_arg0.TierNumber:completeAnimation() --[[ @ 0]]
			f29_arg0.TierNumber:setAlpha( 0 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.TierNumber ) --[[ @ 0]]
			f29_arg0.FrameBorder:completeAnimation() --[[ @ 0]]
			f29_arg0.FrameBorder:setAlpha( 0 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.FrameBorder ) --[[ @ 0]]
			f29_arg0.LockedIcon:completeAnimation() --[[ @ 0]]
			f29_arg0.LockedIcon:setAlpha( 0 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.LockedIcon ) --[[ @ 0]]
			f29_arg0.TrialWidget:completeAnimation() --[[ @ 0]]
			f29_arg0.TrialWidget.InfoText:completeAnimation() --[[ @ 0]]
			f29_arg0.TrialWidget:setAlpha( 1 ) --[[ @ 0]]
			f29_arg0.TrialWidget.InfoText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_3B98899150D5FB25" ) ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.TrialWidget ) --[[ @ 0]]
		end
	},
	BMClassfied = {
		DefaultClip = function ( f30_arg0, f30_arg1 )
			f30_arg0:__resetProperties() --[[ @ 0]]
			f30_arg0:setupElementClipCounter( 11 ) --[[ @ 0]]
			f30_arg0.CardIcon:completeAnimation() --[[ @ 0]]
			f30_arg0.CardIcon:setAlpha( 0 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.CardIcon ) --[[ @ 0]]
			f30_arg0.TierStatus:completeAnimation() --[[ @ 0]]
			f30_arg0.TierStatus:setAlpha( 0 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.TierStatus ) --[[ @ 0]]
			f30_arg0.BMGoldBarMed:completeAnimation() --[[ @ 0]]
			f30_arg0.BMGoldBarMed:setLeftRight( 0, 0, 23.5, 500.5 ) --[[ @ 0]]
			f30_arg0.BMGoldBarMed:setTopBottom( 0, 0, 48, 93 ) --[[ @ 0]]
			f30_arg0.BMGoldBarMed:setAlpha( 1 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.BMGoldBarMed ) --[[ @ 0]]
			f30_arg0.blackMarketBrandIcon:completeAnimation() --[[ @ 0]]
			f30_arg0.blackMarketBrandIcon:setLeftRight( 0.5, 0.5, -43, 54 ) --[[ @ 0]]
			f30_arg0.blackMarketBrandIcon:setTopBottom( 0, 0, 21, 118 ) --[[ @ 0]]
			f30_arg0.blackMarketBrandIcon:setAlpha( 1 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.blackMarketBrandIcon ) --[[ @ 0]]
			f30_arg0.ProgressBar:completeAnimation() --[[ @ 0]]
			f30_arg0.ProgressBar:setAlpha( 0 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.ProgressBar ) --[[ @ 0]]
			f30_arg0.ProgressFraction:completeAnimation() --[[ @ 0]]
			f30_arg0.ProgressFraction:setAlpha( 0 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.ProgressFraction ) --[[ @ 0]]
			f30_arg0.TierList:completeAnimation() --[[ @ 0]]
			f30_arg0.TierList:setAlpha( 0 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.TierList ) --[[ @ 0]]
			f30_arg0.TierNumber:completeAnimation() --[[ @ 0]]
			f30_arg0.TierNumber:setAlpha( 0 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.TierNumber ) --[[ @ 0]]
			f30_arg0.FrameBorder:completeAnimation() --[[ @ 0]]
			f30_arg0.FrameBorder:setAlpha( 0 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.FrameBorder ) --[[ @ 0]]
			f30_arg0.LockedIcon:completeAnimation() --[[ @ 0]]
			f30_arg0.LockedIcon:setAlpha( 0 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.LockedIcon ) --[[ @ 0]]
			f30_arg0.TrialWidget:completeAnimation() --[[ @ 0]]
			f30_arg0.TrialWidget.InfoText:completeAnimation() --[[ @ 0]]
			f30_arg0.TrialWidget:setAlpha( 1 ) --[[ @ 0]]
			f30_arg0.TrialWidget.InfoText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_3B98899150D5FB25" ) ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.TrialWidget ) --[[ @ 0]]
		end
	},
	LockedPrestige = {
		DefaultClip = function ( f31_arg0, f31_arg1 )
			f31_arg0:__resetProperties() --[[ @ 0]]
			f31_arg0:setupElementClipCounter( 10 ) --[[ @ 0]]
			f31_arg0.TierStatus:completeAnimation() --[[ @ 0]]
			f31_arg0.TierStatus:setLeftRight( 0.5, 0.5, 24, 201 ) --[[ @ 0]]
			f31_arg0.TierStatus:setTopBottom( 0, 0, 338, 377 ) --[[ @ 0]]
			f31_arg0.TierStatus:setAlpha( 0 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.TierStatus ) --[[ @ 0]]
			f31_arg0.DotTiledBacking:completeAnimation() --[[ @ 0]]
			f31_arg0.DotTiledBacking:setAlpha( 0 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.DotTiledBacking ) --[[ @ 0]]
			f31_arg0.ProgressBarBase:completeAnimation() --[[ @ 0]]
			f31_arg0.ProgressBarBase:setAlpha( 0 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.ProgressBarBase ) --[[ @ 0]]
			f31_arg0.ProgressBarBoarder:completeAnimation() --[[ @ 0]]
			f31_arg0.ProgressBarBoarder:setAlpha( 0 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.ProgressBarBoarder ) --[[ @ 0]]
			f31_arg0.ProgressBar:completeAnimation() --[[ @ 0]]
			f31_arg0.ProgressBar:setAlpha( 0 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.ProgressBar ) --[[ @ 0]]
			f31_arg0.ProgressFraction:completeAnimation() --[[ @ 0]]
			f31_arg0.ProgressFraction:setAlpha( 0 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.ProgressFraction ) --[[ @ 0]]
			f31_arg0.TierList:completeAnimation() --[[ @ 0]]
			f31_arg0.TierList:setAlpha( 0 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.TierList ) --[[ @ 0]]
			f31_arg0.TierNumber:completeAnimation() --[[ @ 0]]
			f31_arg0.TierNumber:setAlpha( 0 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.TierNumber ) --[[ @ 0]]
			f31_arg0.FrameBorder:completeAnimation() --[[ @ 0]]
			f31_arg0.FrameBorder:setAlpha( 0 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.FrameBorder ) --[[ @ 0]]
			f31_arg0.TrialWidget:completeAnimation() --[[ @ 0]]
			f31_arg0.TrialWidget.InfoText:completeAnimation() --[[ @ 0]]
			f31_arg0.TrialWidget:setAlpha( 1 ) --[[ @ 0]]
			f31_arg0.TrialWidget.InfoText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_3B98899150D5FB25" ) ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.TrialWidget ) --[[ @ 0]]
		end
	},
	Locked = {
		DefaultClip = function ( f32_arg0, f32_arg1 )
			f32_arg0:__resetProperties() --[[ @ 0]]
			f32_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f32_arg0.FrameBorder:completeAnimation() --[[ @ 0]]
			f32_arg0.FrameBorder:setAlpha( 0 ) --[[ @ 0]]
			f32_arg0.clipFinished( f32_arg0.FrameBorder ) --[[ @ 0]]
			f32_arg0.TrialWidget:completeAnimation() --[[ @ 0]]
			f32_arg0.TrialWidget.InfoText:completeAnimation() --[[ @ 0]]
			f32_arg0.TrialWidget:setAlpha( 1 ) --[[ @ 0]]
			f32_arg0.TrialWidget.InfoText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_3B98899150D5FB25" ) ) --[[ @ 0]]
			f32_arg0.clipFinished( f32_arg0.TrialWidget ) --[[ @ 0]]
		end
	},
	LockedOneTierNoXP = {
		DefaultClip = function ( f33_arg0, f33_arg1 )
			f33_arg0:__resetProperties() --[[ @ 0]]
			f33_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f33_arg0.TierStatus:completeAnimation() --[[ @ 0]]
			f33_arg0.TierStatus:setLeftRight( 0.5, 0.5, 24, 201 ) --[[ @ 0]]
			f33_arg0.TierStatus:setTopBottom( 0, 0, 338, 377 ) --[[ @ 0]]
			f33_arg0.TierStatus:setAlpha( 0 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.TierStatus ) --[[ @ 0]]
			f33_arg0.TierList:completeAnimation() --[[ @ 0]]
			f33_arg0.TierList:setAlpha( 0 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.TierList ) --[[ @ 0]]
			f33_arg0.FrameBorder:completeAnimation() --[[ @ 0]]
			f33_arg0.FrameBorder:setAlpha( 0 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.FrameBorder ) --[[ @ 0]]
			f33_arg0.TrialWidget:completeAnimation() --[[ @ 0]]
			f33_arg0.TrialWidget.InfoText:completeAnimation() --[[ @ 0]]
			f33_arg0.TrialWidget:setAlpha( 1 ) --[[ @ 0]]
			f33_arg0.TrialWidget.InfoText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_3B98899150D5FB25" ) ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.TrialWidget ) --[[ @ 0]]
			f33_arg0.XP:completeAnimation() --[[ @ 0]]
			f33_arg0.XP:setAlpha( 0 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.XP ) --[[ @ 0]]
		end
	},
	LockedOneTier = {
		DefaultClip = function ( f34_arg0, f34_arg1 )
			f34_arg0:__resetProperties() --[[ @ 0]]
			f34_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f34_arg0.TierStatus:completeAnimation() --[[ @ 0]]
			f34_arg0.TierStatus:setLeftRight( 0.5, 0.5, 24, 201 ) --[[ @ 0]]
			f34_arg0.TierStatus:setTopBottom( 0, 0, 338, 377 ) --[[ @ 0]]
			f34_arg0.TierStatus:setAlpha( 0 ) --[[ @ 0]]
			f34_arg0.clipFinished( f34_arg0.TierStatus ) --[[ @ 0]]
			f34_arg0.TierList:completeAnimation() --[[ @ 0]]
			f34_arg0.TierList:setAlpha( 0 ) --[[ @ 0]]
			f34_arg0.clipFinished( f34_arg0.TierList ) --[[ @ 0]]
			f34_arg0.TrialWidget:completeAnimation() --[[ @ 0]]
			f34_arg0.TrialWidget.InfoText:completeAnimation() --[[ @ 0]]
			f34_arg0.TrialWidget:setAlpha( 1 ) --[[ @ 0]]
			f34_arg0.TrialWidget.InfoText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_3B98899150D5FB25" ) ) --[[ @ 0]]
			f34_arg0.clipFinished( f34_arg0.TrialWidget ) --[[ @ 0]]
			f34_arg0.XP:completeAnimation() --[[ @ 0]]
			f34_arg0.XP:setAlpha( 1 ) --[[ @ 0]]
			f34_arg0.clipFinished( f34_arg0.XP ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.Challenges_CallingCardProfiler.__onClose = function ( f35_arg0 )
	f35_arg0.CardIcon:close() --[[ @ 0]]
	f35_arg0.TierStatus:close() --[[ @ 0]]
	f35_arg0.BMGoldBarMed:close() --[[ @ 0]]
	f35_arg0.DotTiledBacking:close() --[[ @ 0]]
	f35_arg0.ProgressBar:close() --[[ @ 0]]
	f35_arg0.ProgressFraction:close() --[[ @ 0]]
	f35_arg0.TierList:close() --[[ @ 0]]
	f35_arg0.TierNumber:close() --[[ @ 0]]
	f35_arg0.ChallengeName:close() --[[ @ 0]]
	f35_arg0.ChallengeDescription:close() --[[ @ 0]]
	f35_arg0.LockedIcon:close() --[[ @ 0]]
	f35_arg0.TrialWidget:close() --[[ @ 0]]
	f35_arg0.XP:close() --[[ @ 0]]
end
 --[[ @ 0]]
