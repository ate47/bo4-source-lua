-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "ui/uieditor/widgets/cac/cac_lock" ) --[[ @ 0]]
require( "ui/uieditor/widgets/callingcards/callingcards_framewidget" ) --[[ @ 0]]
require( "x64:1b046df181a7627c" ) --[[ @ 0]]
require( "ui/uieditor/widgets/startmenu/startmenu_identity_subtitle" ) --[[ @ 0]]
require( "x64:40c7e896ee4bc3f8" ) --[[ @ 0]]

CoD.ChallengesCallingCardProfilerGlobal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ChallengesCallingCardProfilerGlobal.__defaultWidth = 525 --[[ @ 0]]
CoD.ChallengesCallingCardProfilerGlobal.__defaultHeight = 732 --[[ @ 0]]
CoD.ChallengesCallingCardProfilerGlobal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ChallengesCallingCardProfilerGlobal ) --[[ @ 0]]
	self.id = "ChallengesCallingCardProfilerGlobal" --[[ @ 0]]
	self.soundSet = "FrontendMain" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local CardIconBorder = LUI.UIImage.new( 0.5, 0.5, -262.5, 262.5, 0, 0, 0, 129 ) --[[ @ 0]]
	CardIconBorder:setAlpha( 0.15 ) --[[ @ 0]]
	CardIconBorder:setImage( RegisterImage( @"uie_ui_menu_store_common_frame" ) ) --[[ @ 0]]
	CardIconBorder:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	CardIconBorder:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	CardIconBorder:setupNineSliceShader( 12, 12 ) --[[ @ 0]]
	self:addElement( CardIconBorder ) --[[ @ 0]]
	self.CardIconBorder = CardIconBorder --[[ @ 0]]
	
	local CardIcon = CoD.CallingCards_FrameWidget.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 0, 0, 131 ) --[[ @ 0]]
	CardIcon:linkToElementModel( self, nil, false, function ( model )
		CardIcon:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( CardIcon ) --[[ @ 0]]
	self.CardIcon = CardIcon --[[ @ 0]]
	
	local CardIconLockOverlay = LUI.UIImage.new( 0, 1, 0, 0, 0, 0, 0, 131 ) --[[ @ 0]]
	CardIconLockOverlay:setRGB( 0, 0, 0 ) --[[ @ 0]]
	CardIconLockOverlay:setAlpha( 0.8 ) --[[ @ 0]]
	self:addElement( CardIconLockOverlay ) --[[ @ 0]]
	self.CardIconLockOverlay = CardIconLockOverlay --[[ @ 0]]
	
	local Subtitle = CoD.StartMenu_Identity_SubTitle.new( f1_arg0, f1_arg1, 0.5, 0.5, -129, 129, 0, 0, 358, 388 ) --[[ @ 0]]
	Subtitle:setAlpha( 0 ) --[[ @ 0]]
	Subtitle:linkToElementModel( self, "tierStatus", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			Subtitle.SubtitleText:setText( f3_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Subtitle ) --[[ @ 0]]
	self.Subtitle = Subtitle --[[ @ 0]]
	
	local EmblemName = LUI.UIText.new( 0, 0, 16, 510, 0, 0, 152.5, 185.5 ) --[[ @ 0]]
	EmblemName:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	EmblemName:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	EmblemName:setLetterSpacing( 2 ) --[[ @ 0]]
	EmblemName:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	EmblemName:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	EmblemName:linkToElementModel( self, "title", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			EmblemName:setText( ConvertToUpperString( f4_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( EmblemName ) --[[ @ 0]]
	self.EmblemName = EmblemName --[[ @ 0]]
	
	local EmblemSubtitle = LUI.UIText.new( 0, 1, 18, -18, 0, 0, 299, 317 ) --[[ @ 0]]
	EmblemSubtitle:setRGB( ColorSet.T8__OFF__GRAY.r, ColorSet.T8__OFF__GRAY.g, ColorSet.T8__OFF__GRAY.b ) --[[ @ 0]]
	EmblemSubtitle:setTTF( "dinnext_regular" ) --[[ @ 0]]
	EmblemSubtitle:setLetterSpacing( 0.5 ) --[[ @ 0]]
	EmblemSubtitle:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	EmblemSubtitle:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	EmblemSubtitle:linkToElementModel( self, "description", true, function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			EmblemSubtitle:setText( f5_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( EmblemSubtitle ) --[[ @ 0]]
	self.EmblemSubtitle = EmblemSubtitle --[[ @ 0]]
	
	local WZBar = CoD.ChallengesGlobalProgressBar.new( f1_arg0, f1_arg1, 0, 0, 15, 510, 0, 0, 470, 492 ) --[[ @ 0]]
	WZBar:linkToElementModel( self, "wzProgress", false, function ( model )
		WZBar:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( WZBar ) --[[ @ 0]]
	self.WZBar = WZBar --[[ @ 0]]
	
	local ZMBar = CoD.ChallengesGlobalProgressBar.new( f1_arg0, f1_arg1, 0, 0, 15, 510, 0, 0, 428, 450 ) --[[ @ 0]]
	ZMBar:linkToElementModel( self, "zmProgress", false, function ( model )
		ZMBar:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ZMBar ) --[[ @ 0]]
	self.ZMBar = ZMBar --[[ @ 0]]
	
	local MPBar = CoD.ChallengesGlobalProgressBar.new( f1_arg0, f1_arg1, 0, 0, 15, 510, 0, 0, 388, 410 ) --[[ @ 0]]
	MPBar:linkToElementModel( self, "mpProgress", false, function ( model )
		MPBar:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( MPBar ) --[[ @ 0]]
	self.MPBar = MPBar --[[ @ 0]]
	
	local TotalProgressFracText = LUI.UIText.new( 0.5, 0.5, -19.5, 19.5, 0, 0, 207.5, 252.5 ) --[[ @ 0]]
	TotalProgressFracText:setTTF( "default" ) --[[ @ 0]]
	TotalProgressFracText:setLetterSpacing( 2 ) --[[ @ 0]]
	TotalProgressFracText:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	TotalProgressFracText:linkToElementModel( self, "statFractionText", true, function ( model )
		local f9_local0 = model:get() --[[ @ 0]]
		if f9_local0 ~= nil then
			TotalProgressFracText:setText( f9_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( TotalProgressFracText ) --[[ @ 0]]
	self.TotalProgressFracText = TotalProgressFracText --[[ @ 0]]
	
	local MasterBarBase = LUI.UIImage.new( 0.5, 0.5, -247.5, 247.5, 0, 0, 295, 318 ) --[[ @ 0]]
	MasterBarBase:setRGB( ColorSet.T8__OFF__GRAY.r, ColorSet.T8__OFF__GRAY.g, ColorSet.T8__OFF__GRAY.b ) --[[ @ 0]]
	MasterBarBase:setAlpha( 0.02 ) --[[ @ 0]]
	self:addElement( MasterBarBase ) --[[ @ 0]]
	self.MasterBarBase = MasterBarBase --[[ @ 0]]
	
	local MasterBarBorder = LUI.UIImage.new( 0.5, 0.5, -247.5, 247.5, 0, 0, 294, 317 ) --[[ @ 0]]
	MasterBarBorder:setAlpha( 0.1 ) --[[ @ 0]]
	MasterBarBorder:setImage( RegisterImage( @"uie_ui_menu_store_common_frame" ) ) --[[ @ 0]]
	MasterBarBorder:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	MasterBarBorder:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	MasterBarBorder:setupNineSliceShader( 12, 12 ) --[[ @ 0]]
	self:addElement( MasterBarBorder ) --[[ @ 0]]
	self.MasterBarBorder = MasterBarBorder --[[ @ 0]]
	
	local MasterBar = LUI.UIImage.new( 0.03, 0.97, 1, -1, 0, 0.03, 296, 294 ) --[[ @ 0]]
	MasterBar:setRGB( 1, 0.36, 0 ) --[[ @ 0]]
	MasterBar:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe" ) ) --[[ @ 0]]
	MasterBar:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	MasterBar:setShaderVector( 2, 1, 0, 0, 0 ) --[[ @ 0]]
	MasterBar:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	MasterBar:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	MasterBar:linkToElementModel( self, "percentComplete", true, function ( model )
		local f10_local0 = model:get() --[[ @ 0]]
		if f10_local0 ~= nil then
			MasterBar:setShaderVector( 0, CoD.GetVectorComponentFromString( f10_local0, 1 ), CoD.GetVectorComponentFromString( f10_local0, 2 ), CoD.GetVectorComponentFromString( f10_local0, 3 ), CoD.GetVectorComponentFromString( f10_local0, 4 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( MasterBar ) --[[ @ 0]]
	self.MasterBar = MasterBar --[[ @ 0]]
	
	local MasterFraction = LUI.UIText.new( 1, 1, -58, -19, 0, 0, 298, 316 ) --[[ @ 0]]
	MasterFraction:setTTF( "default" ) --[[ @ 0]]
	MasterFraction:setLetterSpacing( 2 ) --[[ @ 0]]
	MasterFraction:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
	MasterFraction:linkToElementModel( self, "statFractionText", true, function ( model )
		local f11_local0 = model:get() --[[ @ 0]]
		if f11_local0 ~= nil then
			MasterFraction:setText( f11_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( MasterFraction ) --[[ @ 0]]
	self.MasterFraction = MasterFraction --[[ @ 0]]
	
	local GameModeZM = LUI.UIText.new( 0, 0, 19, 471, 0, 0, 430, 450 ) --[[ @ 0]]
	GameModeZM:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	GameModeZM:setText( LocalizeToUpperString( @"menu/zombies" ) ) --[[ @ 0]]
	GameModeZM:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	GameModeZM:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	GameModeZM:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( GameModeZM ) --[[ @ 0]]
	self.GameModeZM = GameModeZM --[[ @ 0]]
	
	local GameModeWZ = LUI.UIText.new( 0, 0, 19, 471, 0, 0, 472, 492 ) --[[ @ 0]]
	GameModeWZ:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	GameModeWZ:setText( LocalizeToUpperString( @"menu/warzone" ) ) --[[ @ 0]]
	GameModeWZ:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	GameModeWZ:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	GameModeWZ:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( GameModeWZ ) --[[ @ 0]]
	self.GameModeWZ = GameModeWZ --[[ @ 0]]
	
	local GameModeMP = LUI.UIText.new( 0, 0, 17, 469, 0, 0, 390, 410 ) --[[ @ 0]]
	GameModeMP:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	GameModeMP:setText( LocalizeToUpperString( @"menu/multiplayer" ) ) --[[ @ 0]]
	GameModeMP:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	GameModeMP:setLetterSpacing( 1 ) --[[ @ 0]]
	GameModeMP:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	GameModeMP:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( GameModeMP ) --[[ @ 0]]
	self.GameModeMP = GameModeMP --[[ @ 0]]
	
	local TitleBg = LUI.UIImage.new( 0.5, 0.5, -22.5, 22.5, 0, 0, 42, 87 ) --[[ @ 0]]
	TitleBg:setRGB( 0, 0, 0 ) --[[ @ 0]]
	TitleBg:setAlpha( 0.85 ) --[[ @ 0]]
	TitleBg:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_feather_edges" ) ) --[[ @ 0]]
	TitleBg:setShaderVector( 0, 0.02, 0.02, 0.02, 0.02 ) --[[ @ 0]]
	self:addElement( TitleBg ) --[[ @ 0]]
	self.TitleBg = TitleBg --[[ @ 0]]
	
	local PixelGridTiledBacking = LUI.UIImage.new( 0.5, 0.5, -21.5, 21.5, 0, 0, 43, 86 ) --[[ @ 0]]
	PixelGridTiledBacking:setAlpha( 0.15 ) --[[ @ 0]]
	PixelGridTiledBacking:setImage( RegisterImage( @"uie_ui_hud_notifications_pixelpattern" ) ) --[[ @ 0]]
	PixelGridTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	PixelGridTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	PixelGridTiledBacking:setupNineSliceShader( 128, 128 ) --[[ @ 0]]
	self:addElement( PixelGridTiledBacking ) --[[ @ 0]]
	self.PixelGridTiledBacking = PixelGridTiledBacking --[[ @ 0]]
	
	local LockedIcon = CoD.cac_lock.new( f1_arg0, f1_arg1, 0.5, 0.5, -18, 18, 0, 0, 46.5, 82.5 ) --[[ @ 0]]
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
	
	self:mergeStateConditions( {
		{
			stateName = "LockedMasterCard",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueGreaterThan( f1_arg1, "hudItems.profilingMasterCallingCard", 0 ) and CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "isLocked" )
			end
		},
		{
			stateName = "Locked",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "isLocked" )
			end
		},
		{
			stateName = "UnlockedMasterCard",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueGreaterThan( f1_arg1, "hudItems.profilingMasterCallingCard", 0 )
			end
		}
	} ) --[[ @ 0]]
	local f1_local22 = self --[[ @ 0]]
	local f1_local23 = self.subscribeToModel --[[ @ 0]]
	local f1_local24 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local23( f1_local22, f1_local24["hudItems.profilingMasterCallingCard"], function ( f18_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f18_arg0:get(),
			modelName = "hudItems.profilingMasterCallingCard"
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
	CardIcon.id = "CardIcon" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ChallengesCallingCardProfilerGlobal.__resetProperties = function ( f20_arg0 )
	f20_arg0.MasterFraction:completeAnimation() --[[ @ 0]]
	f20_arg0.MasterBar:completeAnimation() --[[ @ 0]]
	f20_arg0.MasterBarBorder:completeAnimation() --[[ @ 0]]
	f20_arg0.MasterBarBase:completeAnimation() --[[ @ 0]]
	f20_arg0.CardIconLockOverlay:completeAnimation() --[[ @ 0]]
	f20_arg0.TitleBg:completeAnimation() --[[ @ 0]]
	f20_arg0.PixelGridTiledBacking:completeAnimation() --[[ @ 0]]
	f20_arg0.LockedIcon:completeAnimation() --[[ @ 0]]
	f20_arg0.TrialWidget:completeAnimation() --[[ @ 0]]
	f20_arg0.ZMBar:completeAnimation() --[[ @ 0]]
	f20_arg0.WZBar:completeAnimation() --[[ @ 0]]
	f20_arg0.TotalProgressFracText:completeAnimation() --[[ @ 0]]
	f20_arg0.EmblemSubtitle:completeAnimation() --[[ @ 0]]
	f20_arg0.MPBar:completeAnimation() --[[ @ 0]]
	f20_arg0.GameModeMP:completeAnimation() --[[ @ 0]]
	f20_arg0.GameModeWZ:completeAnimation() --[[ @ 0]]
	f20_arg0.GameModeZM:completeAnimation() --[[ @ 0]]
	f20_arg0.MasterFraction:setAlpha( 1 ) --[[ @ 0]]
	f20_arg0.MasterBar:setAlpha( 1 ) --[[ @ 0]]
	f20_arg0.MasterBarBorder:setAlpha( 0.1 ) --[[ @ 0]]
	f20_arg0.MasterBarBase:setAlpha( 0.02 ) --[[ @ 0]]
	f20_arg0.CardIconLockOverlay:setAlpha( 0.8 ) --[[ @ 0]]
	f20_arg0.TitleBg:setAlpha( 0.85 ) --[[ @ 0]]
	f20_arg0.PixelGridTiledBacking:setAlpha( 0.15 ) --[[ @ 0]]
	f20_arg0.LockedIcon:setAlpha( 1 ) --[[ @ 0]]
	f20_arg0.TrialWidget:setAlpha( 0 ) --[[ @ 0]]
	f20_arg0.TrialWidget.InfoText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_262486486346EC3F" ) ) --[[ @ 0]]
	f20_arg0.ZMBar:setAlpha( 1 ) --[[ @ 0]]
	f20_arg0.WZBar:setAlpha( 1 ) --[[ @ 0]]
	f20_arg0.TotalProgressFracText:setAlpha( 1 ) --[[ @ 0]]
	f20_arg0.EmblemSubtitle:setTopBottom( 0, 0, 299, 317 ) --[[ @ 0]]
	f20_arg0.MPBar:setAlpha( 1 ) --[[ @ 0]]
	f20_arg0.GameModeMP:setAlpha( 1 ) --[[ @ 0]]
	f20_arg0.GameModeWZ:setAlpha( 1 ) --[[ @ 0]]
	f20_arg0.GameModeZM:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ChallengesCallingCardProfilerGlobal.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 9 ) --[[ @ 0]]
			f21_arg0.CardIconLockOverlay:completeAnimation() --[[ @ 0]]
			f21_arg0.CardIconLockOverlay:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.CardIconLockOverlay ) --[[ @ 0]]
			f21_arg0.MasterBarBase:completeAnimation() --[[ @ 0]]
			f21_arg0.MasterBarBase:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.MasterBarBase ) --[[ @ 0]]
			f21_arg0.MasterBarBorder:completeAnimation() --[[ @ 0]]
			f21_arg0.MasterBarBorder:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.MasterBarBorder ) --[[ @ 0]]
			f21_arg0.MasterBar:completeAnimation() --[[ @ 0]]
			f21_arg0.MasterBar:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.MasterBar ) --[[ @ 0]]
			f21_arg0.MasterFraction:completeAnimation() --[[ @ 0]]
			f21_arg0.MasterFraction:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.MasterFraction ) --[[ @ 0]]
			f21_arg0.TitleBg:completeAnimation() --[[ @ 0]]
			f21_arg0.TitleBg:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.TitleBg ) --[[ @ 0]]
			f21_arg0.PixelGridTiledBacking:completeAnimation() --[[ @ 0]]
			f21_arg0.PixelGridTiledBacking:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.PixelGridTiledBacking ) --[[ @ 0]]
			f21_arg0.LockedIcon:completeAnimation() --[[ @ 0]]
			f21_arg0.LockedIcon:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.LockedIcon ) --[[ @ 0]]
			f21_arg0.TrialWidget:completeAnimation() --[[ @ 0]]
			f21_arg0.TrialWidget:setAlpha( 1 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.TrialWidget ) --[[ @ 0]]
		end
	},
	LockedMasterCard = {
		DefaultClip = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 10 ) --[[ @ 0]]
			f22_arg0.CardIconLockOverlay:completeAnimation() --[[ @ 0]]
			f22_arg0.CardIconLockOverlay:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.CardIconLockOverlay ) --[[ @ 0]]
			f22_arg0.EmblemSubtitle:completeAnimation() --[[ @ 0]]
			f22_arg0.EmblemSubtitle:setTopBottom( 0, 0, 206, 224 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.EmblemSubtitle ) --[[ @ 0]]
			f22_arg0.WZBar:completeAnimation() --[[ @ 0]]
			f22_arg0.WZBar:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.WZBar ) --[[ @ 0]]
			f22_arg0.ZMBar:completeAnimation() --[[ @ 0]]
			f22_arg0.ZMBar:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.ZMBar ) --[[ @ 0]]
			f22_arg0.MPBar:completeAnimation() --[[ @ 0]]
			f22_arg0.MPBar:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.MPBar ) --[[ @ 0]]
			f22_arg0.TotalProgressFracText:completeAnimation() --[[ @ 0]]
			f22_arg0.TotalProgressFracText:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.TotalProgressFracText ) --[[ @ 0]]
			f22_arg0.GameModeZM:completeAnimation() --[[ @ 0]]
			f22_arg0.GameModeZM:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.GameModeZM ) --[[ @ 0]]
			f22_arg0.GameModeWZ:completeAnimation() --[[ @ 0]]
			f22_arg0.GameModeWZ:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.GameModeWZ ) --[[ @ 0]]
			f22_arg0.GameModeMP:completeAnimation() --[[ @ 0]]
			f22_arg0.GameModeMP:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.GameModeMP ) --[[ @ 0]]
			f22_arg0.TrialWidget:completeAnimation() --[[ @ 0]]
			f22_arg0.TrialWidget.InfoText:completeAnimation() --[[ @ 0]]
			f22_arg0.TrialWidget:setAlpha( 1 ) --[[ @ 0]]
			f22_arg0.TrialWidget.InfoText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_3B98899150D5FB25" ) ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.TrialWidget ) --[[ @ 0]]
		end
	},
	Locked = {
		DefaultClip = function ( f23_arg0, f23_arg1 )
			f23_arg0:__resetProperties() --[[ @ 0]]
			f23_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			f23_arg0.CardIconLockOverlay:completeAnimation() --[[ @ 0]]
			f23_arg0.CardIconLockOverlay:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.CardIconLockOverlay ) --[[ @ 0]]
			f23_arg0.MasterBarBase:completeAnimation() --[[ @ 0]]
			f23_arg0.MasterBarBase:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.MasterBarBase ) --[[ @ 0]]
			f23_arg0.MasterBarBorder:completeAnimation() --[[ @ 0]]
			f23_arg0.MasterBarBorder:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.MasterBarBorder ) --[[ @ 0]]
			f23_arg0.MasterBar:completeAnimation() --[[ @ 0]]
			f23_arg0.MasterBar:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.MasterBar ) --[[ @ 0]]
			f23_arg0.MasterFraction:completeAnimation() --[[ @ 0]]
			f23_arg0.MasterFraction:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.MasterFraction ) --[[ @ 0]]
			f23_arg0.TrialWidget:completeAnimation() --[[ @ 0]]
			f23_arg0.TrialWidget.InfoText:completeAnimation() --[[ @ 0]]
			f23_arg0.TrialWidget:setAlpha( 1 ) --[[ @ 0]]
			f23_arg0.TrialWidget.InfoText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_3B98899150D5FB25" ) ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.TrialWidget ) --[[ @ 0]]
		end
	},
	UnlockedMasterCard = {
		DefaultClip = function ( f24_arg0, f24_arg1 )
			f24_arg0:__resetProperties() --[[ @ 0]]
			f24_arg0:setupElementClipCounter( 13 ) --[[ @ 0]]
			f24_arg0.CardIconLockOverlay:completeAnimation() --[[ @ 0]]
			f24_arg0.CardIconLockOverlay:setAlpha( 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.CardIconLockOverlay ) --[[ @ 0]]
			f24_arg0.EmblemSubtitle:completeAnimation() --[[ @ 0]]
			f24_arg0.EmblemSubtitle:setTopBottom( 0, 0, 206, 224 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.EmblemSubtitle ) --[[ @ 0]]
			f24_arg0.WZBar:completeAnimation() --[[ @ 0]]
			f24_arg0.WZBar:setAlpha( 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.WZBar ) --[[ @ 0]]
			f24_arg0.ZMBar:completeAnimation() --[[ @ 0]]
			f24_arg0.ZMBar:setAlpha( 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.ZMBar ) --[[ @ 0]]
			f24_arg0.MPBar:completeAnimation() --[[ @ 0]]
			f24_arg0.MPBar:setAlpha( 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.MPBar ) --[[ @ 0]]
			f24_arg0.TotalProgressFracText:completeAnimation() --[[ @ 0]]
			f24_arg0.TotalProgressFracText:setAlpha( 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.TotalProgressFracText ) --[[ @ 0]]
			f24_arg0.GameModeZM:completeAnimation() --[[ @ 0]]
			f24_arg0.GameModeZM:setAlpha( 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.GameModeZM ) --[[ @ 0]]
			f24_arg0.GameModeWZ:completeAnimation() --[[ @ 0]]
			f24_arg0.GameModeWZ:setAlpha( 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.GameModeWZ ) --[[ @ 0]]
			f24_arg0.GameModeMP:completeAnimation() --[[ @ 0]]
			f24_arg0.GameModeMP:setAlpha( 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.GameModeMP ) --[[ @ 0]]
			f24_arg0.TitleBg:completeAnimation() --[[ @ 0]]
			f24_arg0.TitleBg:setAlpha( 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.TitleBg ) --[[ @ 0]]
			f24_arg0.PixelGridTiledBacking:completeAnimation() --[[ @ 0]]
			f24_arg0.PixelGridTiledBacking:setAlpha( 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.PixelGridTiledBacking ) --[[ @ 0]]
			f24_arg0.LockedIcon:completeAnimation() --[[ @ 0]]
			f24_arg0.LockedIcon:setAlpha( 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.LockedIcon ) --[[ @ 0]]
			f24_arg0.TrialWidget:completeAnimation() --[[ @ 0]]
			f24_arg0.TrialWidget:setAlpha( 1 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.TrialWidget ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ChallengesCallingCardProfilerGlobal.__onClose = function ( f25_arg0 )
	f25_arg0.CardIcon:close() --[[ @ 0]]
	f25_arg0.Subtitle:close() --[[ @ 0]]
	f25_arg0.EmblemName:close() --[[ @ 0]]
	f25_arg0.EmblemSubtitle:close() --[[ @ 0]]
	f25_arg0.WZBar:close() --[[ @ 0]]
	f25_arg0.ZMBar:close() --[[ @ 0]]
	f25_arg0.MPBar:close() --[[ @ 0]]
	f25_arg0.TotalProgressFracText:close() --[[ @ 0]]
	f25_arg0.MasterBar:close() --[[ @ 0]]
	f25_arg0.MasterFraction:close() --[[ @ 0]]
	f25_arg0.LockedIcon:close() --[[ @ 0]]
	f25_arg0.TrialWidget:close() --[[ @ 0]]
end
 --[[ @ 0]]
