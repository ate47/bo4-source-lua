-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "ui/uieditor/widgets/footer/fe_footerrighslidein" ) --[[ @ 0]]
require( "x64:68669756704846e" ) --[[ @ 0]]
require( "x64:6156d841adc02c80" ) --[[ @ 0]]
require( "ui/uieditor/widgets/pc/pc_smallclosebutton" ) --[[ @ 0]]

CoD.PurchaseCodPoints = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.PurchaseCodPoints = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "PurchaseCodPoints", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	self:setClass( CoD.PurchaseCodPoints ) --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_local1:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Blackfade = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Blackfade:setRGB( 0, 0, 0 ) --[[ @ 0]]
	Blackfade:setAlpha( 0.35 ) --[[ @ 0]]
	self:addElement( Blackfade ) --[[ @ 0]]
	self.Blackfade = Blackfade --[[ @ 0]]
	
	local CoDPointsContainer = CoD.CoDPoints_Container.new( f1_local1, f1_arg0, 0.5, 0.5, -400, 400, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( CoDPointsContainer ) --[[ @ 0]]
	self.CoDPointsContainer = CoDPointsContainer --[[ @ 0]]
	
	local fefooterRighSlideIn = CoD.fe_footerRighSlideIn.new( f1_local1, f1_arg0, 1, 1, -670, -22, 1, 1, -48, 0 ) --[[ @ 0]]
	fefooterRighSlideIn:registerEventHandler( "menu_loaded", function ( element, event )
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
	self:addElement( fefooterRighSlideIn ) --[[ @ 0]]
	self.fefooterRighSlideIn = fefooterRighSlideIn --[[ @ 0]]
	
	local TiledwhiteNoiseBacking = nil --[[ @ 0]]
	
	TiledwhiteNoiseBacking = LUI.UIImage.new( 0.5, 0.5, 103, 325, 0, 0, 85, 127 ) --[[ @ 0]]
	TiledwhiteNoiseBacking:setAlpha( 0.02 ) --[[ @ 0]]
	TiledwhiteNoiseBacking:setImage( RegisterImage( @"uie_ui_menu_aar_repeat_white_bg" ) ) --[[ @ 0]]
	TiledwhiteNoiseBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	TiledwhiteNoiseBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	TiledwhiteNoiseBacking:setupNineSliceShader( 64, 64 ) --[[ @ 0]]
	self:addElement( TiledwhiteNoiseBacking ) --[[ @ 0]]
	self.TiledwhiteNoiseBacking = TiledwhiteNoiseBacking --[[ @ 0]]
	
	local SpinnerLoadingAnimation = CoD.SpinnerLoadingAnimation.new( f1_local1, f1_arg0, 0, 0, 912, 1008, 0, 0, 492, 588 ) --[[ @ 0]]
	SpinnerLoadingAnimation:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( SpinnerLoadingAnimation ) --[[ @ 0]]
	self.SpinnerLoadingAnimation = SpinnerLoadingAnimation --[[ @ 0]]
	
	local PCSmallCloseButton = nil --[[ @ 0]]
	
	PCSmallCloseButton = CoD.PC_SmallCloseButton.new( f1_local1, f1_arg0, 0.5, 0.5, 342, 376, 0.5, 0.5, -531.5, -497.5 ) --[[ @ 0]]
	PCSmallCloseButton:registerEventHandler( "gain_focus", function ( element, event )
		local f3_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f3_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f3_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_none"] ) --[[ @ 0]]
		return f3_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( PCSmallCloseButton, f1_arg0, Enum[@"luibutton"][@"lui_key_none"], "MOUSE1", function ( element, menu, controller, model )
		HidePsStoreIcon( controller ) --[[ @ 0]]
		PlayClip( self, "Close", controller ) --[[ @ 0]]
		DelayGoBack( menu, controller, 300 ) --[[ @ 0]]
		PlaySoundAlias( "uin_party_ease_slide_back" ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_none"], @"hash_0", nil, "MOUSE1" ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( PCSmallCloseButton, f1_arg0, Enum[@"luibutton"][@"lui_key_none"], "ui_confirm", function ( element, menu, controller, model )
		HidePsStoreIcon( controller ) --[[ @ 0]]
		PlayClip( self, "Close", controller ) --[[ @ 0]]
		DelayGoBack( menu, controller, 300 ) --[[ @ 0]]
		PlaySoundAlias( "uin_party_ease_slide_back" ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_none"], @"hash_0", nil, "ui_confirm" ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	self:addElement( PCSmallCloseButton ) --[[ @ 0]]
	self.PCSmallCloseButton = PCSmallCloseButton --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Working",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueEqualTo( f1_arg0, "StoreRoot.ready", 0 ) and not IsPC()
			end
		},
		{
			stateName = "WorkingPC",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueEqualTo( f1_arg0, "StoreRoot.ready", 0 ) and IsPC()
			end
		},
		{
			stateName = "DefaultStatePC",
			condition = function ( menu, element, event )
				return IsPC()
			end
		}
	} ) --[[ @ 0]]
	local f1_local8 = self --[[ @ 0]]
	local f1_local9 = self.subscribeToModel --[[ @ 0]]
	local f1_local10 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	f1_local9( f1_local8, f1_local10["StoreRoot.ready"], function ( f11_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f11_arg0:get(),
			modelName = "StoreRoot.ready"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], nil, function ( element, menu, controller, model )
		HidePsStoreIcon( controller ) --[[ @ 0]]
		PlayClip( self, "Close", controller ) --[[ @ 0]]
		DelayGoBack( menu, controller, 300 ) --[[ @ 0]]
		PlaySoundAlias( "uin_party_ease_slide_back" ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], @"menu/back", nil, nil ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "close", function ( element )
		ClearMenuSavedState( f1_local1 ) --[[ @ 0]]
		HidePsStoreIcon( f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self.__on_menuOpened_self = function ( f15_arg0, f15_arg1, f15_arg2, f15_arg3 )
		local f15_local0 = self --[[ @ 0]]
		ShowPsStoreIcon( f15_arg1, Enum[@"hash_6784DC8CE13E1E13"][@"right"] ) --[[ @ 0]]
		PlaySoundAlias( "uin_party_ease_slide" ) --[[ @ 0]]
		MenuHidesFreeCursor( f15_arg2, f15_arg1 ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	f1_local1:addMenuOpenedCallback( self.__on_menuOpened_self ) --[[ @ 0]]
	self:subscribeToGlobalModel( f1_arg0, "PerController", "CoDPointStoreList", function ( model )
		local f16_local0 = self --[[ @ 0]]
		AutoSelectCodPointCategory( self, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:subscribeToGlobalModel( f1_arg0, "PerController", "StoreRoot.storeError", function ( model )
		local f17_local0 = self --[[ @ 0]]
		if CoD.ModelUtility.IsModelValueEqualTo( f1_arg0, "StoreRoot.storeError", 2 ) and IsPC() then
			CoD.PCUtility.ShowBattleNetReconciliationError( f1_local1, f1_arg0 ) --[[ @ 0]]
			GoBack( self, f1_arg0 ) --[[ @ 0]]
		elseif CoD.ModelUtility.IsModelValueEqualTo( f1_arg0, "StoreRoot.storeError", 1 ) then
			CoD.PCUtility.ShowBattleNetCatalogError( f1_local1, f1_arg0 ) --[[ @ 0]]
			GoBack( self, f1_arg0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	CoDPointsContainer.id = "CoDPointsContainer" --[[ @ 0]]
	fefooterRighSlideIn.buttons:setModel( self.buttonModel, f1_arg0 ) --[[ @ 0]]
	if CoD.isPC then
		fefooterRighSlideIn.id = "fefooterRighSlideIn" --[[ @ 0]]
	end
	if CoD.isPC then
		PCSmallCloseButton.id = "PCSmallCloseButton" --[[ @ 0]]
	end
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	self.__defaultFocus = CoDPointsContainer --[[ @ 0]]
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
	
	f1_local9 = self --[[ @ 0]]
	CoD.BaseUtility.SetModelFromUserData( f1_arg0, self.CoDPointsContainer, f1_arg1 ) --[[ @ 0]]
	AutoSelectCodPointCategory( self, f1_arg0 ) --[[ @ 0]]
	SetControllerModelValue( f1_arg0, "StoreRoot.storeError", 0 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.PurchaseCodPoints.__resetProperties = function ( f19_arg0 )
	f19_arg0.CoDPointsContainer:completeAnimation() --[[ @ 0]]
	f19_arg0.fefooterRighSlideIn:completeAnimation() --[[ @ 0]]
	f19_arg0.SpinnerLoadingAnimation:completeAnimation() --[[ @ 0]]
	f19_arg0.Blackfade:completeAnimation() --[[ @ 0]]
	f19_arg0.TiledwhiteNoiseBacking:completeAnimation() --[[ @ 0]]
	f19_arg0.CoDPointsContainer:setLeftRight( 0.5, 0.5, -400, 400 ) --[[ @ 0]]
	f19_arg0.CoDPointsContainer:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	f19_arg0.CoDPointsContainer:setAlpha( 1 ) --[[ @ 0]]
	f19_arg0.fefooterRighSlideIn:setLeftRight( 1, 1, -670, -22 ) --[[ @ 0]]
	f19_arg0.fefooterRighSlideIn:setTopBottom( 1, 1, -48, 0 ) --[[ @ 0]]
	f19_arg0.fefooterRighSlideIn:setAlpha( 1 ) --[[ @ 0]]
	f19_arg0.SpinnerLoadingAnimation:setAlpha( 0 ) --[[ @ 0]]
	f19_arg0.Blackfade:setAlpha( 0.35 ) --[[ @ 0]]
	f19_arg0.TiledwhiteNoiseBacking:setAlpha( 0.02 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.PurchaseCodPoints.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f20_arg0, f20_arg1 )
			f20_arg0:__resetProperties() --[[ @ 0]]
			f20_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f20_arg0.CoDPointsContainer:completeAnimation() --[[ @ 0]]
			f20_arg0.CoDPointsContainer:setLeftRight( 0, 0, 1120, 1920 ) --[[ @ 0]]
			f20_arg0.CoDPointsContainer:setTopBottom( 0, 0, 0, 1080 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.CoDPointsContainer ) --[[ @ 0]]
			f20_arg0.fefooterRighSlideIn:completeAnimation() --[[ @ 0]]
			f20_arg0.fefooterRighSlideIn:setLeftRight( 1, 1, -670, -22 ) --[[ @ 0]]
			f20_arg0.fefooterRighSlideIn:setTopBottom( 1, 1, -48, 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.fefooterRighSlideIn ) --[[ @ 0]]
			f20_arg0.SpinnerLoadingAnimation:completeAnimation() --[[ @ 0]]
			f20_arg0.SpinnerLoadingAnimation:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.SpinnerLoadingAnimation ) --[[ @ 0]]
		end,
		Intro = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f21_local0 = function ( f22_arg0 )
				f21_arg0.Blackfade:beginAnimation( 300 ) --[[ @ 0]]
				f21_arg0.Blackfade:setAlpha( 0.35 ) --[[ @ 0]]
				f21_arg0.Blackfade:registerEventHandler( "interrupted_keyframe", f21_arg0.clipInterrupted ) --[[ @ 0]]
				f21_arg0.Blackfade:registerEventHandler( "transition_complete_keyframe", f21_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f21_arg0.Blackfade:completeAnimation() --[[ @ 0]]
			f21_arg0.Blackfade:setAlpha( 0 ) --[[ @ 0]]
			f21_local0( f21_arg0.Blackfade ) --[[ @ 0]]
			local f21_local1 = function ( f23_arg0 )
				f21_arg0.CoDPointsContainer:beginAnimation( 300 ) --[[ @ 0]]
				f21_arg0.CoDPointsContainer:setLeftRight( 0, 0, 1120, 1920 ) --[[ @ 0]]
				f21_arg0.CoDPointsContainer:registerEventHandler( "interrupted_keyframe", f21_arg0.clipInterrupted ) --[[ @ 0]]
				f21_arg0.CoDPointsContainer:registerEventHandler( "transition_complete_keyframe", f21_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f21_arg0.CoDPointsContainer:completeAnimation() --[[ @ 0]]
			f21_arg0.CoDPointsContainer:setLeftRight( 0, 0, 1920, 2720 ) --[[ @ 0]]
			f21_arg0.CoDPointsContainer:setTopBottom( 0, 0, 0, 1080 ) --[[ @ 0]]
			f21_local1( f21_arg0.CoDPointsContainer ) --[[ @ 0]]
			local f21_local2 = function ( f24_arg0 )
				f21_arg0.fefooterRighSlideIn:beginAnimation( 300 ) --[[ @ 0]]
				f21_arg0.fefooterRighSlideIn:setLeftRight( 1, 1, -670, -22 ) --[[ @ 0]]
				f21_arg0.fefooterRighSlideIn:registerEventHandler( "interrupted_keyframe", f21_arg0.clipInterrupted ) --[[ @ 0]]
				f21_arg0.fefooterRighSlideIn:registerEventHandler( "transition_complete_keyframe", f21_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f21_arg0.fefooterRighSlideIn:completeAnimation() --[[ @ 0]]
			f21_arg0.fefooterRighSlideIn:setLeftRight( 1, 1, 130, 778 ) --[[ @ 0]]
			f21_local2( f21_arg0.fefooterRighSlideIn ) --[[ @ 0]]
		end,
		Close = function ( f25_arg0, f25_arg1 )
			f25_arg0:__resetProperties() --[[ @ 0]]
			f25_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f25_local0 = function ( f26_arg0 )
				f25_arg0.Blackfade:beginAnimation( 300 ) --[[ @ 0]]
				f25_arg0.Blackfade:setAlpha( 0 ) --[[ @ 0]]
				f25_arg0.Blackfade:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.Blackfade:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.Blackfade:completeAnimation() --[[ @ 0]]
			f25_arg0.Blackfade:setAlpha( 0.35 ) --[[ @ 0]]
			f25_local0( f25_arg0.Blackfade ) --[[ @ 0]]
			local f25_local1 = function ( f27_arg0 )
				f25_arg0.CoDPointsContainer:beginAnimation( 300 ) --[[ @ 0]]
				f25_arg0.CoDPointsContainer:setLeftRight( 0, 0, 1920, 2720 ) --[[ @ 0]]
				f25_arg0.CoDPointsContainer:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.CoDPointsContainer:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.CoDPointsContainer:completeAnimation() --[[ @ 0]]
			f25_arg0.CoDPointsContainer:setLeftRight( 0, 0, 1120, 1920 ) --[[ @ 0]]
			f25_arg0.CoDPointsContainer:setTopBottom( 0, 0, 0, 1080 ) --[[ @ 0]]
			f25_local1( f25_arg0.CoDPointsContainer ) --[[ @ 0]]
			local f25_local2 = function ( f28_arg0 )
				f25_arg0.fefooterRighSlideIn:beginAnimation( 300 ) --[[ @ 0]]
				f25_arg0.fefooterRighSlideIn:setLeftRight( 1, 1, 130, 778 ) --[[ @ 0]]
				f25_arg0.fefooterRighSlideIn:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.fefooterRighSlideIn:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.fefooterRighSlideIn:completeAnimation() --[[ @ 0]]
			f25_arg0.fefooterRighSlideIn:setLeftRight( 1, 1, -670, -22 ) --[[ @ 0]]
			f25_local2( f25_arg0.fefooterRighSlideIn ) --[[ @ 0]]
		end
	},
	Working = {
		DefaultClip = function ( f29_arg0, f29_arg1 )
			f29_arg0:__resetProperties() --[[ @ 0]]
			f29_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f29_arg0.CoDPointsContainer:completeAnimation() --[[ @ 0]]
			f29_arg0.CoDPointsContainer:setLeftRight( 0.5, 0.5, 973, 1773 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.CoDPointsContainer ) --[[ @ 0]]
			f29_arg0.SpinnerLoadingAnimation:completeAnimation() --[[ @ 0]]
			f29_arg0.SpinnerLoadingAnimation:setAlpha( 1 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.SpinnerLoadingAnimation ) --[[ @ 0]]
		end,
		DefaultState = function ( f30_arg0, f30_arg1 )
			f30_arg0:__resetProperties() --[[ @ 0]]
			f30_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f30_local0 = function ( f31_arg0 )
				f30_arg0.CoDPointsContainer:beginAnimation( 300 ) --[[ @ 0]]
				f30_arg0.CoDPointsContainer:setLeftRight( 0.5, 0.5, 1120, 1920 ) --[[ @ 0]]
				f30_arg0.CoDPointsContainer:registerEventHandler( "interrupted_keyframe", f30_arg0.clipInterrupted ) --[[ @ 0]]
				f30_arg0.CoDPointsContainer:registerEventHandler( "transition_complete_keyframe", f30_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f30_arg0.CoDPointsContainer:completeAnimation() --[[ @ 0]]
			f30_arg0.CoDPointsContainer:setLeftRight( 0, 0, 1920, 2720 ) --[[ @ 0]]
			f30_arg0.CoDPointsContainer:setTopBottom( 0, 0, 0, 1080 ) --[[ @ 0]]
			f30_local0( f30_arg0.CoDPointsContainer ) --[[ @ 0]]
			f30_arg0.fefooterRighSlideIn:completeAnimation() --[[ @ 0]]
			f30_arg0.fefooterRighSlideIn:setLeftRight( 1, 1, -670, -22 ) --[[ @ 0]]
			f30_arg0.fefooterRighSlideIn:setTopBottom( 1, 1, -48, 0 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.fefooterRighSlideIn ) --[[ @ 0]]
		end
	},
	WorkingPC = {
		DefaultClip = function ( f32_arg0, f32_arg1 )
			f32_arg0:__resetProperties() --[[ @ 0]]
			f32_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f32_arg0.CoDPointsContainer:completeAnimation() --[[ @ 0]]
			f32_arg0.CoDPointsContainer:setAlpha( 0 ) --[[ @ 0]]
			f32_arg0.clipFinished( f32_arg0.CoDPointsContainer ) --[[ @ 0]]
			f32_arg0.fefooterRighSlideIn:completeAnimation() --[[ @ 0]]
			f32_arg0.fefooterRighSlideIn:setLeftRight( 0.5, 0.5, -508, 140 ) --[[ @ 0]]
			f32_arg0.fefooterRighSlideIn:setTopBottom( 1, 1, -48, 0 ) --[[ @ 0]]
			f32_arg0.fefooterRighSlideIn:setAlpha( 0 ) --[[ @ 0]]
			f32_arg0.clipFinished( f32_arg0.fefooterRighSlideIn ) --[[ @ 0]]
			f32_arg0.TiledwhiteNoiseBacking:completeAnimation() --[[ @ 0]]
			f32_arg0.TiledwhiteNoiseBacking:setAlpha( 0 ) --[[ @ 0]]
			f32_arg0.clipFinished( f32_arg0.TiledwhiteNoiseBacking ) --[[ @ 0]]
			f32_arg0.SpinnerLoadingAnimation:completeAnimation() --[[ @ 0]]
			f32_arg0.SpinnerLoadingAnimation:setAlpha( 1 ) --[[ @ 0]]
			f32_arg0.clipFinished( f32_arg0.SpinnerLoadingAnimation ) --[[ @ 0]]
		end,
		DefaultState = function ( f33_arg0, f33_arg1 )
			f33_arg0:__resetProperties() --[[ @ 0]]
			f33_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f33_local0 = function ( f34_arg0 )
				f34_arg0:beginAnimation( 239, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f34_arg0:setAlpha( 1 ) --[[ @ 0]]
				f34_arg0:registerEventHandler( "transition_complete_keyframe", f33_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f33_arg0.CoDPointsContainer:beginAnimation( 180 ) --[[ @ 0]]
			f33_arg0.CoDPointsContainer:setLeftRight( 0.5, 0.5, -400, 400 ) --[[ @ 0]]
			f33_arg0.CoDPointsContainer:setTopBottom( 0, 0, 0, 1080 ) --[[ @ 0]]
			f33_arg0.CoDPointsContainer:setAlpha( 0 ) --[[ @ 0]]
			f33_arg0.CoDPointsContainer:registerEventHandler( "interrupted_keyframe", f33_arg0.clipInterrupted ) --[[ @ 0]]
			f33_arg0.CoDPointsContainer:registerEventHandler( "transition_complete_keyframe", f33_local0 ) --[[ @ 0]]
			local f33_local1 = function ( f35_arg0 )
				local f35_local0 = function ( f36_arg0 )
					f36_arg0:beginAnimation( 239, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
					f36_arg0:setAlpha( 1 ) --[[ @ 0]]
					f36_arg0:registerEventHandler( "transition_complete_keyframe", f33_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f33_arg0.fefooterRighSlideIn:beginAnimation( 180 ) --[[ @ 0]]
				f33_arg0.fefooterRighSlideIn:registerEventHandler( "interrupted_keyframe", f33_arg0.clipInterrupted ) --[[ @ 0]]
				f33_arg0.fefooterRighSlideIn:registerEventHandler( "transition_complete_keyframe", f35_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f33_arg0.fefooterRighSlideIn:completeAnimation() --[[ @ 0]]
			f33_arg0.fefooterRighSlideIn:setLeftRight( 0.5, 0.5, -508, 140 ) --[[ @ 0]]
			f33_arg0.fefooterRighSlideIn:setTopBottom( 1, 1, -48, 0 ) --[[ @ 0]]
			f33_arg0.fefooterRighSlideIn:setAlpha( 0 ) --[[ @ 0]]
			f33_local1( f33_arg0.fefooterRighSlideIn ) --[[ @ 0]]
		end
	},
	DefaultStatePC = {
		DefaultClip = function ( f37_arg0, f37_arg1 )
			f37_arg0:__resetProperties() --[[ @ 0]]
			f37_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f37_arg0.CoDPointsContainer:completeAnimation() --[[ @ 0]]
			f37_arg0.CoDPointsContainer:setLeftRight( 0.5, 0.5, -400, 400 ) --[[ @ 0]]
			f37_arg0.CoDPointsContainer:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
			f37_arg0.clipFinished( f37_arg0.CoDPointsContainer ) --[[ @ 0]]
			f37_arg0.fefooterRighSlideIn:completeAnimation() --[[ @ 0]]
			f37_arg0.fefooterRighSlideIn:setLeftRight( 0.5, 0.5, -508, 140 ) --[[ @ 0]]
			f37_arg0.fefooterRighSlideIn:setTopBottom( 1, 1, -48, 0 ) --[[ @ 0]]
			f37_arg0.clipFinished( f37_arg0.fefooterRighSlideIn ) --[[ @ 0]]
			f37_arg0.SpinnerLoadingAnimation:completeAnimation() --[[ @ 0]]
			f37_arg0.SpinnerLoadingAnimation:setAlpha( 0 ) --[[ @ 0]]
			f37_arg0.clipFinished( f37_arg0.SpinnerLoadingAnimation ) --[[ @ 0]]
		end,
		Intro = function ( f38_arg0, f38_arg1 )
			f38_arg0:__resetProperties() --[[ @ 0]]
			f38_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			local f38_local0 = function ( f39_arg0 )
				f38_arg0.Blackfade:beginAnimation( 300 ) --[[ @ 0]]
				f38_arg0.Blackfade:setAlpha( 0.35 ) --[[ @ 0]]
				f38_arg0.Blackfade:registerEventHandler( "interrupted_keyframe", f38_arg0.clipInterrupted ) --[[ @ 0]]
				f38_arg0.Blackfade:registerEventHandler( "transition_complete_keyframe", f38_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f38_arg0.Blackfade:completeAnimation() --[[ @ 0]]
			f38_arg0.Blackfade:setAlpha( 0 ) --[[ @ 0]]
			f38_local0( f38_arg0.Blackfade ) --[[ @ 0]]
			local f38_local1 = function ( f40_arg0 )
				f38_arg0.CoDPointsContainer:beginAnimation( 300, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f38_arg0.CoDPointsContainer:setAlpha( 1 ) --[[ @ 0]]
				f38_arg0.CoDPointsContainer:registerEventHandler( "interrupted_keyframe", f38_arg0.clipInterrupted ) --[[ @ 0]]
				f38_arg0.CoDPointsContainer:registerEventHandler( "transition_complete_keyframe", f38_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f38_arg0.CoDPointsContainer:completeAnimation() --[[ @ 0]]
			f38_arg0.CoDPointsContainer:setLeftRight( 0.5, 0.5, -400, 400 ) --[[ @ 0]]
			f38_arg0.CoDPointsContainer:setAlpha( 0 ) --[[ @ 0]]
			f38_local1( f38_arg0.CoDPointsContainer ) --[[ @ 0]]
			local f38_local2 = function ( f41_arg0 )
				f38_arg0.fefooterRighSlideIn:beginAnimation( 300, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f38_arg0.fefooterRighSlideIn:setAlpha( 1 ) --[[ @ 0]]
				f38_arg0.fefooterRighSlideIn:registerEventHandler( "interrupted_keyframe", f38_arg0.clipInterrupted ) --[[ @ 0]]
				f38_arg0.fefooterRighSlideIn:registerEventHandler( "transition_complete_keyframe", f38_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f38_arg0.fefooterRighSlideIn:completeAnimation() --[[ @ 0]]
			f38_arg0.fefooterRighSlideIn:setLeftRight( 0.5, 0.5, -508, 140 ) --[[ @ 0]]
			f38_arg0.fefooterRighSlideIn:setTopBottom( 1, 1, -48, 0 ) --[[ @ 0]]
			f38_arg0.fefooterRighSlideIn:setAlpha( 0 ) --[[ @ 0]]
			f38_local2( f38_arg0.fefooterRighSlideIn ) --[[ @ 0]]
			local f38_local3 = function ( f42_arg0 )
				f42_arg0:beginAnimation( 150 ) --[[ @ 0]]
				f42_arg0:setAlpha( 0.02 ) --[[ @ 0]]
				f42_arg0:registerEventHandler( "transition_complete_keyframe", f38_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f38_arg0.TiledwhiteNoiseBacking:beginAnimation( 80 ) --[[ @ 0]]
			f38_arg0.TiledwhiteNoiseBacking:setAlpha( 0 ) --[[ @ 0]]
			f38_arg0.TiledwhiteNoiseBacking:registerEventHandler( "interrupted_keyframe", f38_arg0.clipInterrupted ) --[[ @ 0]]
			f38_arg0.TiledwhiteNoiseBacking:registerEventHandler( "transition_complete_keyframe", f38_local3 ) --[[ @ 0]]
		end,
		Close = function ( f43_arg0, f43_arg1 )
			f43_arg0:__resetProperties() --[[ @ 0]]
			f43_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			local f43_local0 = function ( f44_arg0 )
				f43_arg0.Blackfade:beginAnimation( 250 ) --[[ @ 0]]
				f43_arg0.Blackfade:setAlpha( 0 ) --[[ @ 0]]
				f43_arg0.Blackfade:registerEventHandler( "interrupted_keyframe", f43_arg0.clipInterrupted ) --[[ @ 0]]
				f43_arg0.Blackfade:registerEventHandler( "transition_complete_keyframe", f43_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f43_arg0.Blackfade:completeAnimation() --[[ @ 0]]
			f43_arg0.Blackfade:setAlpha( 0.35 ) --[[ @ 0]]
			f43_local0( f43_arg0.Blackfade ) --[[ @ 0]]
			local f43_local1 = function ( f45_arg0 )
				f43_arg0.CoDPointsContainer:beginAnimation( 150 ) --[[ @ 0]]
				f43_arg0.CoDPointsContainer:setAlpha( 0 ) --[[ @ 0]]
				f43_arg0.CoDPointsContainer:registerEventHandler( "interrupted_keyframe", f43_arg0.clipInterrupted ) --[[ @ 0]]
				f43_arg0.CoDPointsContainer:registerEventHandler( "transition_complete_keyframe", f43_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f43_arg0.CoDPointsContainer:completeAnimation() --[[ @ 0]]
			f43_arg0.CoDPointsContainer:setLeftRight( 0.5, 0.5, -400, 400 ) --[[ @ 0]]
			f43_arg0.CoDPointsContainer:setTopBottom( 0, 0, 0, 1080 ) --[[ @ 0]]
			f43_arg0.CoDPointsContainer:setAlpha( 1 ) --[[ @ 0]]
			f43_local1( f43_arg0.CoDPointsContainer ) --[[ @ 0]]
			local f43_local2 = function ( f46_arg0 )
				f43_arg0.fefooterRighSlideIn:beginAnimation( 150 ) --[[ @ 0]]
				f43_arg0.fefooterRighSlideIn:setAlpha( 0 ) --[[ @ 0]]
				f43_arg0.fefooterRighSlideIn:registerEventHandler( "interrupted_keyframe", f43_arg0.clipInterrupted ) --[[ @ 0]]
				f43_arg0.fefooterRighSlideIn:registerEventHandler( "transition_complete_keyframe", f43_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f43_arg0.fefooterRighSlideIn:completeAnimation() --[[ @ 0]]
			f43_arg0.fefooterRighSlideIn:setLeftRight( 0.5, 0.5, -508, 140 ) --[[ @ 0]]
			f43_arg0.fefooterRighSlideIn:setTopBottom( 1, 1, -48, 0 ) --[[ @ 0]]
			f43_arg0.fefooterRighSlideIn:setAlpha( 1 ) --[[ @ 0]]
			f43_local2( f43_arg0.fefooterRighSlideIn ) --[[ @ 0]]
			local f43_local3 = function ( f47_arg0 )
				f43_arg0.TiledwhiteNoiseBacking:beginAnimation( 150 ) --[[ @ 0]]
				f43_arg0.TiledwhiteNoiseBacking:setAlpha( 0 ) --[[ @ 0]]
				f43_arg0.TiledwhiteNoiseBacking:registerEventHandler( "interrupted_keyframe", f43_arg0.clipInterrupted ) --[[ @ 0]]
				f43_arg0.TiledwhiteNoiseBacking:registerEventHandler( "transition_complete_keyframe", f43_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f43_arg0.TiledwhiteNoiseBacking:completeAnimation() --[[ @ 0]]
			f43_arg0.TiledwhiteNoiseBacking:setAlpha( 0.02 ) --[[ @ 0]]
			f43_local3( f43_arg0.TiledwhiteNoiseBacking ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.PurchaseCodPoints.__onClose = function ( f48_arg0 )
	f48_arg0.__on_close_removeOverrides() --[[ @ 0]]
	f48_arg0.CoDPointsContainer:close() --[[ @ 0]]
	f48_arg0.fefooterRighSlideIn:close() --[[ @ 0]]
	f48_arg0.SpinnerLoadingAnimation:close() --[[ @ 0]]
	f48_arg0.PCSmallCloseButton:close() --[[ @ 0]]
end
 --[[ @ 0]]
