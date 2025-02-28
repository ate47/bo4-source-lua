-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "ui/uieditor/widgets/aar_t8/rewards/aarrewardstab" ) --[[ @ 0]]
require( "ui/uieditor/widgets/footer/footercontainer_frontend_right" ) --[[ @ 0]]
require( "x64:40c7e896ee4bc3f8" ) --[[ @ 0]]

CoD.AARRewardOverlay_WZ = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.AARRewardOverlay_WZ = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "AARRewardOverlay_WZ", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	SetControllerModelValue( f1_arg0, "AAR.activeTab", CoD.AARUtility.AARTabs.AAR_REWARDS ) --[[ @ 0]]
	self:setClass( CoD.AARRewardOverlay_WZ ) --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_local1:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Blur = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Blur:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	Blur:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Blur ) --[[ @ 0]]
	self.Blur = Blur --[[ @ 0]]
	
	local BackgroundImage = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BackgroundImage:setAlpha( 0.85 ) --[[ @ 0]]
	BackgroundImage:setImage( RegisterImage( @"uie_fe_cp_background" ) ) --[[ @ 0]]
	self:addElement( BackgroundImage ) --[[ @ 0]]
	self.BackgroundImage = BackgroundImage --[[ @ 0]]
	
	local BGEnhancement = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BGEnhancement:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BGEnhancement:setAlpha( 0.2 ) --[[ @ 0]]
	self:addElement( BGEnhancement ) --[[ @ 0]]
	self.BGEnhancement = BGEnhancement --[[ @ 0]]
	
	local NoiseTiledBacking = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setAlpha( 0 ) --[[ @ 0]]
	NoiseTiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	NoiseTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBacking ) --[[ @ 0]]
	self.NoiseTiledBacking = NoiseTiledBacking --[[ @ 0]]
	
	local TiledPlusGrid = LUI.UIImage.new( 0, 0, -135, 1920, 0, 0, 0, 1080 ) --[[ @ 0]]
	TiledPlusGrid:setAlpha( 0.05 ) --[[ @ 0]]
	TiledPlusGrid:setImage( RegisterImage( @"uie_ui_hud_vehicle_hellstorm_repeat_plusgrid" ) ) --[[ @ 0]]
	TiledPlusGrid:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	TiledPlusGrid:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	TiledPlusGrid:setupNineSliceShader( 220, 220 ) --[[ @ 0]]
	self:addElement( TiledPlusGrid ) --[[ @ 0]]
	self.TiledPlusGrid = TiledPlusGrid --[[ @ 0]]
	
	local FooterContainerFrontendRight = CoD.FooterContainer_Frontend_Right.new( f1_local1, f1_arg0, 0, 1, 0, 0, 1, 1, -48, 0 ) --[[ @ 0]]
	FooterContainerFrontendRight:registerEventHandler( "menu_loaded", function ( element, event )
		local f2_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f2_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f2_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		SizeToSafeArea( element, f1_arg0 ) --[[ @ 0]]
		if not f2_local0 then
			f2_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f2_local0
	end ) --[[ @ 0]]
	self:addElement( FooterContainerFrontendRight ) --[[ @ 0]]
	self.FooterContainerFrontendRight = FooterContainerFrontendRight --[[ @ 0]]
	
	local RewardsTab = CoD.AARRewardsTab.new( f1_local1, f1_arg0, 0.5, 0.5, -960, 960, 0.5, 0.5, -450, 450 ) --[[ @ 0]]
	RewardsTab:mergeStateConditions( {
		{
			stateName = "ZM",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return AlwaysTrue()
			end
		}
	} ) --[[ @ 0]]
	RewardsTab.AarMpBacking.Blur:setAlpha( 0 ) --[[ @ 0]]
	RewardsTab.AarMpBacking.Backer:setAlpha( 0 ) --[[ @ 0]]
	RewardsTab.AarMpBacking.TiledBacking:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( RewardsTab ) --[[ @ 0]]
	self.RewardsTab = RewardsTab --[[ @ 0]]
	
	local RewardsTitle = LUI.UIText.new( 0.5, 0.5, -960, 960, 0, 0, 26, 77 ) --[[ @ 0]]
	RewardsTitle:setRGB( ColorSet.T8_FactionTier_InProgress.r, ColorSet.T8_FactionTier_InProgress.g, ColorSet.T8_FactionTier_InProgress.b ) --[[ @ 0]]
	RewardsTitle:setText( LocalizeToUpperString( @"aar/challenges" ) ) --[[ @ 0]]
	RewardsTitle:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	RewardsTitle:setLetterSpacing( 14 ) --[[ @ 0]]
	RewardsTitle:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	RewardsTitle:setAlignment( Enum[@"luialignment"][@"lui_alignment_bottom"] ) --[[ @ 0]]
	self:addElement( RewardsTitle ) --[[ @ 0]]
	self.RewardsTitle = RewardsTitle --[[ @ 0]]
	
	local TrialInfoBannerWidget = CoD.TrialInfoBannerWidget.new( f1_local1, f1_arg0, 0, 0, 574.5, 1345.5, 0, 0, 927, 962 ) --[[ @ 0]]
	TrialInfoBannerWidget:mergeStateConditions( {
		{
			stateName = "Shown",
			condition = function ( menu, element, event )
				return IsGameTrial() and AlwaysFalse()
			end
		},
		{
			stateName = "ShownLarge",
			condition = function ( menu, element, event )
				return IsGameTrial() and AlwaysTrue()
			end
		}
	} ) --[[ @ 0]]
	TrialInfoBannerWidget.InfoText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_6C0FFDDCA009994B" ) ) --[[ @ 0]]
	self:addElement( TrialInfoBannerWidget ) --[[ @ 0]]
	self.TrialInfoBannerWidget = TrialInfoBannerWidget --[[ @ 0]]
	
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		CoD.AARUtility.InitRewardsPaging( controller ) --[[ @ 0]]
		GoBack( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/continue", nil, "ui_confirm" ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_none"], "ESCAPE", function ( element, menu, controller, model )
		if IsPC() then
			CoD.AARUtility.InitRewardsPaging( controller ) --[[ @ 0]]
			GoBack( self, controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsPC() then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_none"], @"hash_0", nil, "ESCAPE" ) --[[ @ 0]]
			return false
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], nil, function ( element, menu, controller, model )
		if IsPC() then
			CoD.AARUtility.InitRewardsPaging( controller ) --[[ @ 0]]
			GoBack( self, controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsPC() then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], @"menu/back", nil, nil ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self.__on_menuOpened_self = function ( f13_arg0, f13_arg1, f13_arg2, f13_arg3 )
		local f13_local0 = self --[[ @ 0]]
		if IsPC() then
			CoD.PCUtility.SetupDismissTimerRewardsAAR( f13_local0, f13_arg1, f13_arg2 ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	f1_local1:addMenuOpenedCallback( self.__on_menuOpened_self ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "close", function ( element )
		SetControllerModelValue( f1_arg0, "AAR.activeTab", CoD.AARUtility.AARTabs.AAR_SUMMARY ) --[[ @ 0]]
	end ) --[[ @ 0]]
	FooterContainerFrontendRight:setModel( self.buttonModel, f1_arg0 ) --[[ @ 0]]
	if CoD.isPC then
		FooterContainerFrontendRight.id = "FooterContainerFrontendRight" --[[ @ 0]]
	end
	RewardsTab.id = "RewardsTab" --[[ @ 0]]
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	self.__defaultFocus = RewardsTab --[[ @ 0]]
	if CoD.isPC and (IsKeyboard( f1_arg0 ) or self.ignoreCursor) then
		self:restoreState( f1_arg0 ) --[[ @ 0]]
	end
	self.__on_close_removeOverrides = function ()
		f1_local1:removeMenuOpenedCallback( self.__on_menuOpened_self ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local11 = self --[[ @ 0]]
	PlaySoundAlias( "uin_wz_aar_challenge_complete" ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.AARRewardOverlay_WZ.__resetProperties = function ( f16_arg0 )
	f16_arg0.RewardsTitle:completeAnimation() --[[ @ 0]]
	f16_arg0.RewardsTab:completeAnimation() --[[ @ 0]]
	f16_arg0.RewardsTitle:setAlpha( 1 ) --[[ @ 0]]
	f16_arg0.RewardsTab:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.AARRewardOverlay_WZ.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f17_local0 = function ( f18_arg0 )
				local f18_local0 = function ( f19_arg0 )
					f19_arg0:beginAnimation( 149, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
					f19_arg0:setAlpha( 1 ) --[[ @ 0]]
					f19_arg0:registerEventHandler( "transition_complete_keyframe", f17_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f17_arg0.RewardsTab:beginAnimation( 200 ) --[[ @ 0]]
				f17_arg0.RewardsTab:registerEventHandler( "interrupted_keyframe", f17_arg0.clipInterrupted ) --[[ @ 0]]
				f17_arg0.RewardsTab:registerEventHandler( "transition_complete_keyframe", f18_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f17_arg0.RewardsTab:completeAnimation() --[[ @ 0]]
			f17_arg0.RewardsTab:setAlpha( 0 ) --[[ @ 0]]
			f17_local0( f17_arg0.RewardsTab ) --[[ @ 0]]
			local f17_local1 = function ( f20_arg0 )
				f17_arg0.RewardsTitle:beginAnimation( 150, Enum[@"luitween"][@"luitween_ease_in"] ) --[[ @ 0]]
				f17_arg0.RewardsTitle:setAlpha( 1 ) --[[ @ 0]]
				f17_arg0.RewardsTitle:registerEventHandler( "interrupted_keyframe", f17_arg0.clipInterrupted ) --[[ @ 0]]
				f17_arg0.RewardsTitle:registerEventHandler( "transition_complete_keyframe", f17_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f17_arg0.RewardsTitle:completeAnimation() --[[ @ 0]]
			f17_arg0.RewardsTitle:setAlpha( 0 ) --[[ @ 0]]
			f17_local1( f17_arg0.RewardsTitle ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.AARRewardOverlay_WZ.__onClose = function ( f21_arg0 )
	f21_arg0.__on_close_removeOverrides() --[[ @ 0]]
	f21_arg0.FooterContainerFrontendRight:close() --[[ @ 0]]
	f21_arg0.RewardsTab:close() --[[ @ 0]]
	f21_arg0.TrialInfoBannerWidget:close() --[[ @ 0]]
end
 --[[ @ 0]]
