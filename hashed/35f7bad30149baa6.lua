-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "ui/uieditor/widgets/footer/fe_leftcontainer_notlobby" ) --[[ @ 0]]
require( "x64:62cf4ad39ea2c548" ) --[[ @ 0]]
require( "ui/uieditor/widgets/pc/pc_smallclosebutton" ) --[[ @ 0]]
require( "ui/uieditor/widgets/systemoverlays/featureoverlay_button_mouseonly" ) --[[ @ 0]]

CoD.LeaguePlayRulesPopup = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.LeaguePlayRulesPopup.__defaultWidth = 1920 --[[ @ 0]]
CoD.LeaguePlayRulesPopup.__defaultHeight = 1080 --[[ @ 0]]
CoD.LeaguePlayRulesPopup.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.LeaguePlayRulesPopup ) --[[ @ 0]]
	self.id = "LeaguePlayRulesPopup" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local ItemShopBackgroundBlur = CoD.ItemShopBackgroundBlur.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( ItemShopBackgroundBlur ) --[[ @ 0]]
	self.ItemShopBackgroundBlur = ItemShopBackgroundBlur --[[ @ 0]]
	
	local BlackfadeBlurB = LUI.UIImage.new( 0, 1, -5, 5, 0, 1, -5, 5 ) --[[ @ 0]]
	BlackfadeBlurB:setAlpha( 0 ) --[[ @ 0]]
	BlackfadeBlurB:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	BlackfadeBlurB:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( BlackfadeBlurB ) --[[ @ 0]]
	self.BlackfadeBlurB = BlackfadeBlurB --[[ @ 0]]
	
	local BlackfadeBlurF = LUI.UIImage.new( 0, 1, -5, 5, 0, 1, -5, 5 ) --[[ @ 0]]
	BlackfadeBlurF:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BlackfadeBlurF:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( BlackfadeBlurF ) --[[ @ 0]]
	self.BlackfadeBlurF = BlackfadeBlurF --[[ @ 0]]
	
	local FuiBox02Right = LUI.UIImage.new( 0.5, 0.5, 458, 492, 0.5, 0.5, -388, -422 ) --[[ @ 0]]
	FuiBox02Right:setImage( RegisterImage( @"uie_ui_hud_vehicle_ac130_fui_box01" ) ) --[[ @ 0]]
	FuiBox02Right:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	FuiBox02Right:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( FuiBox02Right ) --[[ @ 0]]
	self.FuiBox02Right = FuiBox02Right --[[ @ 0]]
	
	local FuiBox02Left = LUI.UIImage.new( 0.5, 0.5, -458, -492, 0.5, 0.5, -388, -422 ) --[[ @ 0]]
	FuiBox02Left:setImage( RegisterImage( @"uie_ui_hud_vehicle_ac130_fui_box01" ) ) --[[ @ 0]]
	FuiBox02Left:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	FuiBox02Left:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( FuiBox02Left ) --[[ @ 0]]
	self.FuiBox02Left = FuiBox02Left --[[ @ 0]]
	
	local CenterBackground = LUI.UIImage.new( 0.5, 0.5, -500, 500, 0.5, 0.5, -430, 430 ) --[[ @ 0]]
	CenterBackground:setRGB( 0.09, 0.09, 0.09 ) --[[ @ 0]]
	CenterBackground:setAlpha( 0.9 ) --[[ @ 0]]
	self:addElement( CenterBackground ) --[[ @ 0]]
	self.CenterBackground = CenterBackground --[[ @ 0]]
	
	local CenterTiledBacking = LUI.UIImage.new( 0.5, 0.5, -500, 500, 0.5, 0.5, -430, 430 ) --[[ @ 0]]
	CenterTiledBacking:setAlpha( 0.25 ) --[[ @ 0]]
	CenterTiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	CenterTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	CenterTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	CenterTiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( CenterTiledBacking ) --[[ @ 0]]
	self.CenterTiledBacking = CenterTiledBacking --[[ @ 0]]
	
	local CenterOutline = LUI.UIImage.new( 0.5, 0.5, -500, 500, 0.5, 0.5, -430, 430 ) --[[ @ 0]]
	CenterOutline:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	CenterOutline:setAlpha( 0.1 ) --[[ @ 0]]
	CenterOutline:setImage( RegisterImage( @"uie_ui_menu_store_common_frame" ) ) --[[ @ 0]]
	CenterOutline:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	CenterOutline:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	CenterOutline:setupNineSliceShader( 12, 12 ) --[[ @ 0]]
	self:addElement( CenterOutline ) --[[ @ 0]]
	self.CenterOutline = CenterOutline --[[ @ 0]]
	
	local buttons = CoD.fe_LeftContainer_NOTLobby.new( f1_arg0, f1_arg1, 0.5, 0.5, 290, 938, 0.5, 0.5, 376, 424 ) --[[ @ 0]]
	self:addElement( buttons ) --[[ @ 0]]
	self.buttons = buttons --[[ @ 0]]
	
	local BTNQuit = nil --[[ @ 0]]
	
	BTNQuit = CoD.PC_SmallCloseButton.new( f1_arg0, f1_arg1, 0.5, 0.5, 462, 496, 0.5, 0.5, -471, -437 ) --[[ @ 0]]
	BTNQuit:setScale( 0.8, 0.8 ) --[[ @ 0]]
	BTNQuit:registerEventHandler( "gain_focus", function ( element, event )
		local f2_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f2_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f2_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		return f2_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( BTNQuit, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], "ui_confirm", function ( element, menu, controller, model )
		GoBack( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_0", nil, "ui_confirm" ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	self:addElement( BTNQuit ) --[[ @ 0]]
	self.BTNQuit = BTNQuit --[[ @ 0]]
	
	local featureOverlayButtonMouseOnly = nil --[[ @ 0]]
	
	featureOverlayButtonMouseOnly = CoD.featureOverlay_Button_MouseOnly.new( f1_arg0, f1_arg1, 0.5, 0.5, 292, 478, 0.5, 0.5, 400, 460 ) --[[ @ 0]]
	featureOverlayButtonMouseOnly.featureOverlayButtonContainer.Title:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_778D439E1B360368" ) ) --[[ @ 0]]
	featureOverlayButtonMouseOnly:registerEventHandler( "gain_focus", function ( element, event )
		local f5_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f5_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f5_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		return f5_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( featureOverlayButtonMouseOnly, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], "ui_confirm", function ( element, menu, controller, model )
		GoBack( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_0", nil, "ui_confirm" ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	self:addElement( featureOverlayButtonMouseOnly ) --[[ @ 0]]
	self.featureOverlayButtonMouseOnly = featureOverlayButtonMouseOnly --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "DefaultStatePC",
			condition = function ( menu, element, event )
				return IsPC()
			end
		},
		{
			stateName = "LeaguePlayRankRulesPC",
			condition = function ( menu, element, event )
				return IsPC()
			end
		},
		{
			stateName = "LeaguePlayRankRules",
			condition = function ( menu, element, event )
				return true
			end
		}
	} ) --[[ @ 0]]
	if CoD.isPC then
		buttons.id = "buttons" --[[ @ 0]]
	end
	if CoD.isPC then
		BTNQuit.id = "BTNQuit" --[[ @ 0]]
	end
	if CoD.isPC then
		featureOverlayButtonMouseOnly.id = "featureOverlayButtonMouseOnly" --[[ @ 0]]
	end
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.LeaguePlayRulesPopup.__resetProperties = function ( f11_arg0 )
	f11_arg0.CenterTiledBacking:completeAnimation() --[[ @ 0]]
	f11_arg0.FuiBox02Right:completeAnimation() --[[ @ 0]]
	f11_arg0.FuiBox02Left:completeAnimation() --[[ @ 0]]
	f11_arg0.CenterBackground:completeAnimation() --[[ @ 0]]
	f11_arg0.buttons:completeAnimation() --[[ @ 0]]
	f11_arg0.BTNQuit:completeAnimation() --[[ @ 0]]
	f11_arg0.featureOverlayButtonMouseOnly:completeAnimation() --[[ @ 0]]
	f11_arg0.CenterOutline:completeAnimation() --[[ @ 0]]
	f11_arg0.CenterTiledBacking:setTopBottom( 0.5, 0.5, -430, 430 ) --[[ @ 0]]
	f11_arg0.FuiBox02Right:setLeftRight( 0.5, 0.5, 458, 492 ) --[[ @ 0]]
	f11_arg0.FuiBox02Right:setTopBottom( 0.5, 0.5, -388, -422 ) --[[ @ 0]]
	f11_arg0.FuiBox02Left:setLeftRight( 0.5, 0.5, -458, -492 ) --[[ @ 0]]
	f11_arg0.FuiBox02Left:setTopBottom( 0.5, 0.5, -388, -422 ) --[[ @ 0]]
	f11_arg0.CenterBackground:setTopBottom( 0.5, 0.5, -430, 430 ) --[[ @ 0]]
	f11_arg0.buttons:setLeftRight( 0.5, 0.5, 290, 938 ) --[[ @ 0]]
	f11_arg0.buttons:setTopBottom( 0.5, 0.5, 376, 424 ) --[[ @ 0]]
	f11_arg0.BTNQuit:setLeftRight( 0.5, 0.5, 462, 496 ) --[[ @ 0]]
	f11_arg0.BTNQuit:setTopBottom( 0.5, 0.5, -471, -437 ) --[[ @ 0]]
	f11_arg0.featureOverlayButtonMouseOnly:setLeftRight( 0.5, 0.5, 292, 478 ) --[[ @ 0]]
	f11_arg0.featureOverlayButtonMouseOnly:setTopBottom( 0.5, 0.5, 400, 460 ) --[[ @ 0]]
	f11_arg0.CenterOutline:setTopBottom( 0.5, 0.5, -430, 430 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.LeaguePlayRulesPopup.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	DefaultStatePC = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 8 ) --[[ @ 0]]
			f13_arg0.FuiBox02Right:completeAnimation() --[[ @ 0]]
			f13_arg0.FuiBox02Right:setLeftRight( 0.5, 0.5, 458, 492 ) --[[ @ 0]]
			f13_arg0.FuiBox02Right:setTopBottom( 0.5, 0.5, -408, -442 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.FuiBox02Right ) --[[ @ 0]]
			f13_arg0.FuiBox02Left:completeAnimation() --[[ @ 0]]
			f13_arg0.FuiBox02Left:setTopBottom( 0.5, 0.5, -408, -442 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.FuiBox02Left ) --[[ @ 0]]
			f13_arg0.CenterBackground:completeAnimation() --[[ @ 0]]
			f13_arg0.CenterBackground:setTopBottom( 0.5, 0.5, -455, 455 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.CenterBackground ) --[[ @ 0]]
			f13_arg0.CenterTiledBacking:completeAnimation() --[[ @ 0]]
			f13_arg0.CenterTiledBacking:setTopBottom( 0.5, 0.5, -455, 455 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.CenterTiledBacking ) --[[ @ 0]]
			f13_arg0.CenterOutline:completeAnimation() --[[ @ 0]]
			f13_arg0.CenterOutline:setTopBottom( 0.5, 0.5, -455, 455 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.CenterOutline ) --[[ @ 0]]
			f13_arg0.buttons:completeAnimation() --[[ @ 0]]
			f13_arg0.buttons:setLeftRight( 0.5, 0.5, 161, 809 ) --[[ @ 0]]
			f13_arg0.buttons:setTopBottom( 0.5, 0.5, 376, 424 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.buttons ) --[[ @ 0]]
			f13_arg0.BTNQuit:completeAnimation() --[[ @ 0]]
			f13_arg0.BTNQuit:setTopBottom( 0.5, 0.5, -446, -412 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.BTNQuit ) --[[ @ 0]]
			f13_arg0.featureOverlayButtonMouseOnly:completeAnimation() --[[ @ 0]]
			f13_arg0.featureOverlayButtonMouseOnly:setTopBottom( 0.5, 0.5, 375, 435 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.featureOverlayButtonMouseOnly ) --[[ @ 0]]
		end
	},
	LeaguePlayRankRulesPC = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f14_arg0.FuiBox02Right:completeAnimation() --[[ @ 0]]
			f14_arg0.FuiBox02Right:setLeftRight( 0.5, 0.5, 576, 610 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.FuiBox02Right ) --[[ @ 0]]
			f14_arg0.FuiBox02Left:completeAnimation() --[[ @ 0]]
			f14_arg0.FuiBox02Left:setLeftRight( 0.5, 0.5, -574, -608 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.FuiBox02Left ) --[[ @ 0]]
			f14_arg0.buttons:completeAnimation() --[[ @ 0]]
			f14_arg0.buttons:setLeftRight( 0.5, 0.5, 285, 933 ) --[[ @ 0]]
			f14_arg0.buttons:setTopBottom( 0.5, 0.5, 389, 437 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.buttons ) --[[ @ 0]]
			f14_arg0.BTNQuit:completeAnimation() --[[ @ 0]]
			f14_arg0.BTNQuit:setLeftRight( 0.5, 0.5, 582, 616 ) --[[ @ 0]]
			f14_arg0.BTNQuit:setTopBottom( 0.5, 0.5, -456, -422 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.BTNQuit ) --[[ @ 0]]
			f14_arg0.featureOverlayButtonMouseOnly:completeAnimation() --[[ @ 0]]
			f14_arg0.featureOverlayButtonMouseOnly:setLeftRight( 0.5, 0.5, 397, 583 ) --[[ @ 0]]
			f14_arg0.featureOverlayButtonMouseOnly:setTopBottom( 0.5, 0.5, 365, 425 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.featureOverlayButtonMouseOnly ) --[[ @ 0]]
		end
	},
	LeaguePlayRankRules = {
		DefaultClip = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f15_arg0.FuiBox02Right:completeAnimation() --[[ @ 0]]
			f15_arg0.FuiBox02Right:setLeftRight( 0.5, 0.5, 576, 610 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.FuiBox02Right ) --[[ @ 0]]
			f15_arg0.FuiBox02Left:completeAnimation() --[[ @ 0]]
			f15_arg0.FuiBox02Left:setLeftRight( 0.5, 0.5, -574, -608 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.FuiBox02Left ) --[[ @ 0]]
			f15_arg0.buttons:completeAnimation() --[[ @ 0]]
			f15_arg0.buttons:setLeftRight( 0.5, 0.5, 410, 1058 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.buttons ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.LeaguePlayRulesPopup.__onClose = function ( f16_arg0 )
	f16_arg0.ItemShopBackgroundBlur:close() --[[ @ 0]]
	f16_arg0.buttons:close() --[[ @ 0]]
	f16_arg0.BTNQuit:close() --[[ @ 0]]
	f16_arg0.featureOverlayButtonMouseOnly:close() --[[ @ 0]]
end
 --[[ @ 0]]
