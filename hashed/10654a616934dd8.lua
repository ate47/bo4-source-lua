-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "ui/uieditor/widgets/footer/fe_leftcontainer_notlobby" ) --[[ @ 0]]
require( "x64:2b64d9dfa5911bd2" ) --[[ @ 0]]
require( "ui/uieditor/widgets/systemoverlays/featureoverlay_button_mouseonly" ) --[[ @ 0]]

CoD.DirectorDiaDeLosMuertosPopup = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.DirectorDiaDeLosMuertosPopup = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "DirectorDiaDeLosMuertosPopup", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	CoD.BaseUtility.SetPropertiesFromUserData( self, f1_arg1 ) --[[ @ 0]]
	MenuHidesFreeCursor( f1_local1, f1_arg0 ) --[[ @ 0]]
	self:setClass( CoD.DirectorDiaDeLosMuertosPopup ) --[[ @ 0]]
	self.soundSet = "MultiplayerMain" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local BlackfadeBlurF = LUI.UIImage.new( 0, 1, -5, 5, 0, 1, -5, 5 ) --[[ @ 0]]
	BlackfadeBlurF:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BlackfadeBlurF:setAlpha( 0.6 ) --[[ @ 0]]
	self:addElement( BlackfadeBlurF ) --[[ @ 0]]
	self.BlackfadeBlurF = BlackfadeBlurF --[[ @ 0]]
	
	local BlackfadeBlurB = LUI.UIImage.new( 0, 1, -5, 5, 0, 1, -5, 5 ) --[[ @ 0]]
	BlackfadeBlurB:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BlackfadeBlurB:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	BlackfadeBlurB:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( BlackfadeBlurB ) --[[ @ 0]]
	self.BlackfadeBlurB = BlackfadeBlurB --[[ @ 0]]
	
	local CenterBackground = LUI.UIImage.new( 0.5, 0.5, -641, 655, 0.5, 0.5, -378, 363 ) --[[ @ 0]]
	CenterBackground:setRGB( 0.09, 0.09, 0.09 ) --[[ @ 0]]
	CenterBackground:setAlpha( 0.9 ) --[[ @ 0]]
	self:addElement( CenterBackground ) --[[ @ 0]]
	self.CenterBackground = CenterBackground --[[ @ 0]]
	
	local CenterTiledBacking = LUI.UIImage.new( 0.5, 0.5, -641, 655, 0.5, 0.5, -378, 363 ) --[[ @ 0]]
	CenterTiledBacking:setAlpha( 0.25 ) --[[ @ 0]]
	CenterTiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	CenterTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	CenterTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	CenterTiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( CenterTiledBacking ) --[[ @ 0]]
	self.CenterTiledBacking = CenterTiledBacking --[[ @ 0]]
	
	local buttons = CoD.fe_LeftContainer_NOTLobby.new( f1_local1, f1_arg0, 0.5, 0.5, -588, 60, 0.5, 0.5, 300, 348 ) --[[ @ 0]]
	self:addElement( buttons ) --[[ @ 0]]
	self.buttons = buttons --[[ @ 0]]
	
	local featureOverlayButtonMouseOnly = nil --[[ @ 0]]
	
	featureOverlayButtonMouseOnly = CoD.featureOverlay_Button_MouseOnly.new( f1_local1, f1_arg0, 0.5, 0.5, -609, -449, 0.5, 0.5, 285, 345 ) --[[ @ 0]]
	featureOverlayButtonMouseOnly.featureOverlayButtonContainer.Title:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_778D439E1B360368" ) ) --[[ @ 0]]
	featureOverlayButtonMouseOnly:registerEventHandler( "gain_focus", function ( element, event )
		local f2_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f2_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f2_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f2_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( featureOverlayButtonMouseOnly, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		CoD.EntitlementUtility.GoBackAndOpenEntitlementPopups( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_0", nil, "ui_confirm" ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	self:addElement( featureOverlayButtonMouseOnly ) --[[ @ 0]]
	self.featureOverlayButtonMouseOnly = featureOverlayButtonMouseOnly --[[ @ 0]]
	
	local HeaderStripe = LUI.UIImage.new( 0.5, 0.5, -641, 655, 0.5, 0.5, -378, -364 ) --[[ @ 0]]
	HeaderStripe:setAlpha( 0.7 ) --[[ @ 0]]
	HeaderStripe:setImage( RegisterImage( @"hash_2C7A051F5EFC70E5" ) ) --[[ @ 0]]
	HeaderStripe:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	HeaderStripe:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	HeaderStripe:setupNineSliceShader( 100, 15 ) --[[ @ 0]]
	self:addElement( HeaderStripe ) --[[ @ 0]]
	self.HeaderStripe = HeaderStripe --[[ @ 0]]
	
	local TitleBackgroundBar = LUI.UIImage.new( 0.5, 0.5, -601.5, 222.5, 0.5, 0.5, -332, -304 ) --[[ @ 0]]
	TitleBackgroundBar:setRGB( 0.25, 0.24, 0.22 ) --[[ @ 0]]
	TitleBackgroundBar:setAlpha( 0.88 ) --[[ @ 0]]
	self:addElement( TitleBackgroundBar ) --[[ @ 0]]
	self.TitleBackgroundBar = TitleBackgroundBar --[[ @ 0]]
	
	local TitleTiledBacking = LUI.UIImage.new( 0.5, 0.5, -601.5, 222.5, 0.5, 0.5, -332, -304 ) --[[ @ 0]]
	TitleTiledBacking:setAlpha( 0.5 ) --[[ @ 0]]
	TitleTiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	TitleTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	TitleTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	TitleTiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( TitleTiledBacking ) --[[ @ 0]]
	self.TitleTiledBacking = TitleTiledBacking --[[ @ 0]]
	
	local HeaderBackground = LUI.UIImage.new( 0.5, 0.5, -601, 223, 0.5, 0.5, -270.5, -170.5 ) --[[ @ 0]]
	HeaderBackground:setRGB( 0.23, 0.23, 0.23 ) --[[ @ 0]]
	HeaderBackground:setAlpha( 0.25 ) --[[ @ 0]]
	self:addElement( HeaderBackground ) --[[ @ 0]]
	self.HeaderBackground = HeaderBackground --[[ @ 0]]
	
	local HeaderTopBar = LUI.UIImage.new( 0.5, 0.5, -190, -186, 0.5, 0.5, -700, 140 ) --[[ @ 0]]
	HeaderTopBar:setAlpha( 0.09 ) --[[ @ 0]]
	HeaderTopBar:setZRot( 90 ) --[[ @ 0]]
	HeaderTopBar:setImage( RegisterImage( @"hash_C49B0C8991A541F" ) ) --[[ @ 0]]
	HeaderTopBar:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	HeaderTopBar:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	HeaderTopBar:setupNineSliceShader( 4, 8 ) --[[ @ 0]]
	self:addElement( HeaderTopBar ) --[[ @ 0]]
	self.HeaderTopBar = HeaderTopBar --[[ @ 0]]
	
	local HeaderBottomBar = LUI.UIImage.new( 0.5, 0.5, -190, -186, 0.5, 0.5, -581, 259 ) --[[ @ 0]]
	HeaderBottomBar:setAlpha( 0.09 ) --[[ @ 0]]
	HeaderBottomBar:setZRot( 90 ) --[[ @ 0]]
	HeaderBottomBar:setImage( RegisterImage( @"hash_C49B0C8991A541F" ) ) --[[ @ 0]]
	HeaderBottomBar:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	HeaderBottomBar:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	HeaderBottomBar:setupNineSliceShader( 4, 8 ) --[[ @ 0]]
	self:addElement( HeaderBottomBar ) --[[ @ 0]]
	self.HeaderBottomBar = HeaderBottomBar --[[ @ 0]]
	
	local PreviewImage = LUI.UIImage.new( 0.5, 0.5, 271, 655, 0.5, 0.5, -359, 361 ) --[[ @ 0]]
	self:addElement( PreviewImage ) --[[ @ 0]]
	self.PreviewImage = PreviewImage --[[ @ 0]]
	
	local Characters = LUI.UIList.new( f1_local1, f1_arg0, 2, 0, nil, false, false, false, false ) --[[ @ 0]]
	Characters:mergeStateConditions( {
		{
			stateName = "ViewSelectedPlayer_Searching",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "Selected",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "Disabled",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "Unavailable",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "UnavailablePC",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	Characters:linkToElementModel( Characters, "isBMLocked", true, function ( model )
		f1_local1:updateElementState( Characters, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = model:get(),
			modelName = "isBMLocked"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	Characters:setLeftRight( 0.5, 0.5, -611, 237 ) --[[ @ 0]]
	Characters:setTopBottom( 0.5, 0.5, -121, 191 ) --[[ @ 0]]
	Characters:setWidgetType( CoD.PositionDraft_Character ) --[[ @ 0]]
	Characters:setHorizontalCount( 5 ) --[[ @ 0]]
	Characters:setVerticalCount( 2 ) --[[ @ 0]]
	Characters:setBalanceGridRows( true ) --[[ @ 0]]
	Characters:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Characters:setDataSource( "PositionDraftCharactersMPPromo" ) --[[ @ 0]]
	Characters:registerEventHandler( "gain_focus", function ( element, event )
		local f11_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f11_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f11_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f11_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( Characters, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		PlaySoundAlias( "uin_start_char_select" ) --[[ @ 0]]
		CoD.EntitlementUtility.SelectSpecialistForEntitlement( menu, controller, element, Enum[@"emodes"][@"mode_multiplayer"], @"hash_6C94ED95E25D8246" ) --[[ @ 0]]
		GoBack( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	self:addElement( Characters ) --[[ @ 0]]
	self.Characters = Characters --[[ @ 0]]
	
	local OptionDesc = LUI.UIText.new( 0.5, 0.5, -510, 139, 0.5, 0.5, -238, -213 ) --[[ @ 0]]
	OptionDesc:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	OptionDesc:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_45A4A2C20AFB2BC" ) ) --[[ @ 0]]
	OptionDesc:setTTF( "dinnext_regular" ) --[[ @ 0]]
	OptionDesc:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	OptionDesc:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( OptionDesc ) --[[ @ 0]]
	self.OptionDesc = OptionDesc --[[ @ 0]]
	
	local BoundaryBot = LUI.UIImage.new( 0.5, 0.5, -643, 657, 0.5, 0.5, 348, 364 ) --[[ @ 0]]
	BoundaryBot:setRGB( ColorSet.FriendlyFlagBg.r, ColorSet.FriendlyFlagBg.g, ColorSet.FriendlyFlagBg.b ) --[[ @ 0]]
	BoundaryBot:setAlpha( 0.15 ) --[[ @ 0]]
	BoundaryBot:setImage( RegisterImage( @"uie_ui_hud_tak5_player_layout_bracket" ) ) --[[ @ 0]]
	BoundaryBot:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	BoundaryBot:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	BoundaryBot:setupNineSliceShader( 66, 8 ) --[[ @ 0]]
	self:addElement( BoundaryBot ) --[[ @ 0]]
	self.BoundaryBot = BoundaryBot --[[ @ 0]]
	
	local BoundaryBot2 = LUI.UIImage.new( 0.5, 0.5, -643, 657, 0.5, 0.5, -381, -365 ) --[[ @ 0]]
	BoundaryBot2:setRGB( ColorSet.FriendlyFlagBg.r, ColorSet.FriendlyFlagBg.g, ColorSet.FriendlyFlagBg.b ) --[[ @ 0]]
	BoundaryBot2:setAlpha( 0.15 ) --[[ @ 0]]
	BoundaryBot2:setZRot( 180 ) --[[ @ 0]]
	BoundaryBot2:setImage( RegisterImage( @"uie_ui_hud_tak5_player_layout_bracket" ) ) --[[ @ 0]]
	BoundaryBot2:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	BoundaryBot2:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	BoundaryBot2:setupNineSliceShader( 66, 8 ) --[[ @ 0]]
	self:addElement( BoundaryBot2 ) --[[ @ 0]]
	self.BoundaryBot2 = BoundaryBot2 --[[ @ 0]]
	
	local TitleText = LUI.UIText.new( 0.5, 0.5, -465, 94, 0.5, 0.5, -328, -304 ) --[[ @ 0]]
	TitleText:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
	TitleText:setAlpha( 0.6 ) --[[ @ 0]]
	TitleText:setText( LocalizeToUpperString( @"hash_77FAADD86E118FEB" ) ) --[[ @ 0]]
	TitleText:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	TitleText:setLetterSpacing( 4 ) --[[ @ 0]]
	TitleText:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	TitleText:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( TitleText ) --[[ @ 0]]
	self.TitleText = TitleText --[[ @ 0]]
	
	local TitleLayoutElementR = LUI.UIImage.new( 0.5, 0.5, 123, 139, 0.5, 0.5, -323, -307 ) --[[ @ 0]]
	TitleLayoutElementR:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
	TitleLayoutElementR:setImage( RegisterImage( @"hash_634B575F15CDD376" ) ) --[[ @ 0]]
	TitleLayoutElementR:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_F755127C95CF5B6" ) ) --[[ @ 0]]
	TitleLayoutElementR:setShaderVector( 0, 3, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( TitleLayoutElementR ) --[[ @ 0]]
	self.TitleLayoutElementR = TitleLayoutElementR --[[ @ 0]]
	
	local TitleLayoutElementL = LUI.UIImage.new( 0.5, 0.5, -521, -505, 0.5, 0.5, -324, -308 ) --[[ @ 0]]
	TitleLayoutElementL:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
	TitleLayoutElementL:setZRot( 90 ) --[[ @ 0]]
	TitleLayoutElementL:setImage( RegisterImage( @"hash_634B575F15CDD376" ) ) --[[ @ 0]]
	TitleLayoutElementL:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_F755127C95CF5B6" ) ) --[[ @ 0]]
	TitleLayoutElementL:setShaderVector( 0, 3, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( TitleLayoutElementL ) --[[ @ 0]]
	self.TitleLayoutElementL = TitleLayoutElementL --[[ @ 0]]
	
	PreviewImage:linkToElementModel( Characters, "assetName", true, function ( model )
		local f14_local0 = model:get() --[[ @ 0]]
		if f14_local0 ~= nil then
			PreviewImage:setImage( RegisterImage( CoD.EntitlementUtility.GetDOTDImageFull( f14_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], nil, function ( element, menu, controller, model )
		CoD.EntitlementUtility.GoBackAndOpenEntitlementPopups( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], @"menu/back", nil, nil ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	buttons:setModel( self.buttonModel, f1_arg0 ) --[[ @ 0]]
	if CoD.isPC then
		buttons.id = "buttons" --[[ @ 0]]
	end
	if CoD.isPC then
		featureOverlayButtonMouseOnly.id = "featureOverlayButtonMouseOnly" --[[ @ 0]]
	end
	Characters.id = "Characters" --[[ @ 0]]
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	self.__defaultFocus = Characters --[[ @ 0]]
	if CoD.isPC and (IsKeyboard( f1_arg0 ) or self.ignoreCursor) then
		self:restoreState( f1_arg0 ) --[[ @ 0]]
	end
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.DirectorDiaDeLosMuertosPopup.__onClose = function ( f17_arg0 )
	f17_arg0.PreviewImage:close() --[[ @ 0]]
	f17_arg0.buttons:close() --[[ @ 0]]
	f17_arg0.featureOverlayButtonMouseOnly:close() --[[ @ 0]]
	f17_arg0.Characters:close() --[[ @ 0]]
end
 --[[ @ 0]]
