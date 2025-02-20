-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
require( "ui/uieditor/widgets/common/commoncornerpips01" ) --[[ @ 0]]
require( "x64:2410513393f3b18c" ) --[[ @ 0]]
require( "x64:3f027dcc6409e42c" ) --[[ @ 0]]

CoD.BOPassPopup = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.BOPassPopup = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "BOPassPopup", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	MenuHidesFreeCursor( f1_local1, f1_arg0 ) --[[ @ 0]]
	self:setClass( CoD.BOPassPopup ) --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_local1:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local backing = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	backing:setRGB( 0, 0, 0 ) --[[ @ 0]]
	backing:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	backing:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( backing ) --[[ @ 0]]
	self.backing = backing --[[ @ 0]]
	
	local BackgroundImage = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BackgroundImage:setAlpha( 0.85 ) --[[ @ 0]]
	BackgroundImage:setImage( RegisterImage( @"uie_fe_cp_background" ) ) --[[ @ 0]]
	self:addElement( BackgroundImage ) --[[ @ 0]]
	self.BackgroundImage = BackgroundImage --[[ @ 0]]
	
	local f1_local4 = nil --[[ @ 0]]
	f1_local4 = LUI.UIElement.createFake() --[[ @ 0]]
	self.FooterContainerFrontendRight = f1_local4 --[[ @ 0]]
	
	local Title = LUI.UIText.new( 0.5, 0.5, -571, 561, 0.5, 0.5, -426, -351 ) --[[ @ 0]]
	Title:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
	Title:setText( LocalizeToUpperString( @"hash_1DADF4DAD3B581AC" ) ) --[[ @ 0]]
	Title:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Title:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	Title:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( Title ) --[[ @ 0]]
	self.Title = Title --[[ @ 0]]
	
	local BoundaryBot2 = LUI.UIImage.new( 0.5, 0.5, -1000.5, -240.5, 0.5, 0.5, -55, -39 ) --[[ @ 0]]
	BoundaryBot2:setAlpha( 0.15 ) --[[ @ 0]]
	BoundaryBot2:setZRot( -90 ) --[[ @ 0]]
	BoundaryBot2:setImage( RegisterImage( @"uie_ui_hud_tak5_player_layout_bracket" ) ) --[[ @ 0]]
	BoundaryBot2:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	BoundaryBot2:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	BoundaryBot2:setupNineSliceShader( 66, 8 ) --[[ @ 0]]
	self:addElement( BoundaryBot2 ) --[[ @ 0]]
	self.BoundaryBot2 = BoundaryBot2 --[[ @ 0]]
	
	local BoundaryBot = LUI.UIImage.new( 0.5, 0.5, 240.5, 1000.5, 0.5, 0.5, -63, -47 ) --[[ @ 0]]
	BoundaryBot:setAlpha( 0.15 ) --[[ @ 0]]
	BoundaryBot:setZRot( 90 ) --[[ @ 0]]
	BoundaryBot:setImage( RegisterImage( @"uie_ui_hud_tak5_player_layout_bracket" ) ) --[[ @ 0]]
	BoundaryBot:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	BoundaryBot:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	BoundaryBot:setupNineSliceShader( 66, 8 ) --[[ @ 0]]
	self:addElement( BoundaryBot ) --[[ @ 0]]
	self.BoundaryBot = BoundaryBot --[[ @ 0]]
	
	local Backing = LUI.UIImage.new( 0.5, 0.5, 52.5, 461.5, 0.5, 0.5, -226.5, 142.5 ) --[[ @ 0]]
	Backing:setAlpha( 0.01 ) --[[ @ 0]]
	self:addElement( Backing ) --[[ @ 0]]
	self.Backing = Backing --[[ @ 0]]
	
	local NoiseTiledBacking = LUI.UIImage.new( 0.5, 0.5, 45, 469, 0.5, 0.5, -234, 150 ) --[[ @ 0]]
	NoiseTiledBacking:setAlpha( 0.4 ) --[[ @ 0]]
	NoiseTiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	NoiseTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBacking ) --[[ @ 0]]
	self.NoiseTiledBacking = NoiseTiledBacking --[[ @ 0]]
	
	local NoiseTiledBackingAdd = LUI.UIImage.new( 0.5, 0.5, 52.5, 461.5, 0.5, 0.5, -226.5, 142.5 ) --[[ @ 0]]
	NoiseTiledBackingAdd:setAlpha( 0.35 ) --[[ @ 0]]
	NoiseTiledBackingAdd:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBackingAdd:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	NoiseTiledBackingAdd:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBackingAdd:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBackingAdd ) --[[ @ 0]]
	self.NoiseTiledBackingAdd = NoiseTiledBackingAdd --[[ @ 0]]
	
	local NoiseTiledBackingAdd2 = LUI.UIImage.new( 0.5, 0.5, 57, 457, 0.5, 0.5, 34.5, 138.5 ) --[[ @ 0]]
	NoiseTiledBackingAdd2:setAlpha( 0.35 ) --[[ @ 0]]
	NoiseTiledBackingAdd2:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBackingAdd2:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	NoiseTiledBackingAdd2:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBackingAdd2:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBackingAdd2 ) --[[ @ 0]]
	self.NoiseTiledBackingAdd2 = NoiseTiledBackingAdd2 --[[ @ 0]]
	
	local CommonCornerPips = CoD.CommonCornerPips01.new( f1_local1, f1_arg0, 0.5, 0.5, 52.5, 461.5, 0.5, 0.5, -226.5, 142.5 ) --[[ @ 0]]
	self:addElement( CommonCornerPips ) --[[ @ 0]]
	self.CommonCornerPips = CommonCornerPips --[[ @ 0]]
	
	local Backing2 = LUI.UIImage.new( 0.5, 0.5, -464.5, -55.5, 0.5, 0.5, -226.5, 142.5 ) --[[ @ 0]]
	Backing2:setAlpha( 0.01 ) --[[ @ 0]]
	self:addElement( Backing2 ) --[[ @ 0]]
	self.Backing2 = Backing2 --[[ @ 0]]
	
	local NoiseTiledBacking2 = LUI.UIImage.new( 0.5, 0.5, -472, -48, 0.5, 0.5, -234, 150 ) --[[ @ 0]]
	NoiseTiledBacking2:setAlpha( 0.4 ) --[[ @ 0]]
	NoiseTiledBacking2:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBacking2:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	NoiseTiledBacking2:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking2:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBacking2 ) --[[ @ 0]]
	self.NoiseTiledBacking2 = NoiseTiledBacking2 --[[ @ 0]]
	
	local NoiseTiledBackingAdd3 = LUI.UIImage.new( 0.5, 0.5, -464.5, -55.5, 0.5, 0.5, -226.5, 142.5 ) --[[ @ 0]]
	NoiseTiledBackingAdd3:setAlpha( 0.35 ) --[[ @ 0]]
	NoiseTiledBackingAdd3:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBackingAdd3:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	NoiseTiledBackingAdd3:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBackingAdd3:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBackingAdd3 ) --[[ @ 0]]
	self.NoiseTiledBackingAdd3 = NoiseTiledBackingAdd3 --[[ @ 0]]
	
	local NoiseTiledBackingAdd4 = LUI.UIImage.new( 0.5, 0.5, -460, -60, 0.5, 0.5, 34.5, 138.5 ) --[[ @ 0]]
	NoiseTiledBackingAdd4:setAlpha( 0.35 ) --[[ @ 0]]
	NoiseTiledBackingAdd4:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBackingAdd4:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	NoiseTiledBackingAdd4:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBackingAdd4:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBackingAdd4 ) --[[ @ 0]]
	self.NoiseTiledBackingAdd4 = NoiseTiledBackingAdd4 --[[ @ 0]]
	
	local CommonCornerPips2 = CoD.CommonCornerPips01.new( f1_local1, f1_arg0, 0.5, 0.5, -464.5, -55.5, 0.5, 0.5, -226.5, 142.5 ) --[[ @ 0]]
	self:addElement( CommonCornerPips2 ) --[[ @ 0]]
	self.CommonCornerPips2 = CommonCornerPips2 --[[ @ 0]]
	
	local cpcoins1000 = LUI.UIImage.new( 0.5, 0.5, -472, -48, 0.5, 0.5, -234, 150 ) --[[ @ 0]]
	cpcoins1000:setImage( RegisterImage( @"uie_ui_menu_popups_blackopspass_cpcoins" ) ) --[[ @ 0]]
	self:addElement( cpcoins1000 ) --[[ @ 0]]
	self.cpcoins1000 = cpcoins1000 --[[ @ 0]]
	
	local plasmaicon = LUI.UIImage.new( 0.5, 0.5, 45, 469, 0.5, 0.5, -234, 150 ) --[[ @ 0]]
	plasmaicon:setImage( RegisterImage( @"uie_ui_menu_popups_blackopspass_nebulium" ) ) --[[ @ 0]]
	self:addElement( plasmaicon ) --[[ @ 0]]
	self.plasmaicon = plasmaicon --[[ @ 0]]
	
	local item1desc = LUI.UIText.new( 0.5, 0.5, -460, -60, 0.5, 0.5, 95, 131 ) --[[ @ 0]]
	item1desc:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	item1desc:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_6FD3412692341CF1" ) ) --[[ @ 0]]
	item1desc:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	item1desc:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	self:addElement( item1desc ) --[[ @ 0]]
	self.item1desc = item1desc --[[ @ 0]]
	
	local item1price = LUI.UIText.new( 0.5, 0.5, -460, -60, 0.5, 0.5, 40, 103 ) --[[ @ 0]]
	item1price:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	item1price:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_4845B392792028A6" ) ) --[[ @ 0]]
	item1price:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	item1price:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	self:addElement( item1price ) --[[ @ 0]]
	self.item1price = item1price --[[ @ 0]]
	
	local item2desc = LUI.UIText.new( 0.5, 0.5, 57, 457, 0.5, 0.5, 95, 131 ) --[[ @ 0]]
	item2desc:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	item2desc:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_6FC243269225AD24" ) ) --[[ @ 0]]
	item2desc:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	item2desc:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	self:addElement( item2desc ) --[[ @ 0]]
	self.item2desc = item2desc --[[ @ 0]]
	
	local item2price = LUI.UIText.new( 0.5, 0.5, 57, 457, 0.5, 0.5, 40, 103 ) --[[ @ 0]]
	item2price:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	item2price:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_21F2937EBE39E92D" ) ) --[[ @ 0]]
	item2price:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	item2price:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	self:addElement( item2price ) --[[ @ 0]]
	self.item2price = item2price --[[ @ 0]]
	
	local RedeemButtonPC = nil --[[ @ 0]]
	
	RedeemButtonPC = CoD.PC_MOTD_Buttons.new( f1_local1, f1_arg0, 0.5, 0.5, 324.5, 564.5, 0.5, 0.5, 342, 422 ) --[[ @ 0]]
	RedeemButtonPC.OptionText:setText( LocalizeToUpperString( @"hash_1867BE59364DD53B" ) ) --[[ @ 0]]
	RedeemButtonPC:linkToElementModel( self, "image", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			RedeemButtonPC.Icon:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	RedeemButtonPC:registerEventHandler( "gain_focus", function ( element, event )
		local f3_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f3_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f3_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_local1, f1_arg0, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		return f3_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( RedeemButtonPC, f1_arg0, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], nil, function ( element, menu, controller, model )
		if CoD.EntitlementUtility.HasSeasonPassToken( controller ) then
			CoD.EntitlementUtility.OpenRedeemBOPassPopup( menu, controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if CoD.EntitlementUtility.HasSeasonPassToken( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_1867BE59364DD53B", nil, nil ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( RedeemButtonPC ) --[[ @ 0]]
	self.RedeemButtonPC = RedeemButtonPC --[[ @ 0]]
	
	local BOPassRewardsandDisclaimers = CoD.BOPassRewardsandDisclaimers.new( f1_local1, f1_arg0, 0.5, 0.5, -549, 51, 0.5, 0.5, 173, 273 ) --[[ @ 0]]
	BOPassRewardsandDisclaimers:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	self:addElement( BOPassRewardsandDisclaimers ) --[[ @ 0]]
	self.BOPassRewardsandDisclaimers = BOPassRewardsandDisclaimers --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "PC",
			condition = function ( menu, element, event )
				return IsPC()
			end
		}
	} ) --[[ @ 0]]
	self:registerEventHandler( "occlusion_change", function ( self, event )
		local f7_local0 = nil --[[ @ 0]]
		if self.OcclusionChange then
			f7_local0 = self:OcclusionChange( event ) --[[ @ 0]]
		elseif self.super.OcclusionChange then
			f7_local0 = self.super:OcclusionChange( event ) --[[ @ 0]]
		end
		UpdateButtonPromptState( f1_local1, self, f1_arg0, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		if not f7_local0 then
			f7_local0 = self:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f7_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], nil, function ( element, menu, controller, model )
		if CoD.EntitlementUtility.HasSeasonPassToken( controller ) then
			CoD.EntitlementUtility.OpenRedeemBOPassPopup( menu, controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if CoD.EntitlementUtility.HasSeasonPassToken( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_1867BE59364DD53B", nil, nil ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"LUIButton"][@"hash_1805EFA15E9E7E5A"], "ESCAPE", function ( element, menu, controller, model )
		CoD.EntitlementUtility.GoBackAndOpenEntitlementPopups( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_1805EFA15E9E7E5A"], @"hash_66C253CF816B40B5", nil, "ESCAPE" ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	f1_local4:setModel( self.buttonModel, f1_arg0 ) --[[ @ 0]]
	if CoD.isPC then
		RedeemButtonPC.id = "RedeemButtonPC" --[[ @ 0]]
	end
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	local f1_local26 = self --[[ @ 0]]
	if IsPC() then
		CoD.PCUtility.LockUIShortcutInput( f1_local1, f1_arg0 ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.BOPassPopup.__resetProperties = function ( f12_arg0 )
	f12_arg0.BOPassRewardsandDisclaimers:completeAnimation() --[[ @ 0]]
	f12_arg0.item2price:completeAnimation() --[[ @ 0]]
	f12_arg0.item2desc:completeAnimation() --[[ @ 0]]
	f12_arg0.item1price:completeAnimation() --[[ @ 0]]
	f12_arg0.item1desc:completeAnimation() --[[ @ 0]]
	f12_arg0.plasmaicon:completeAnimation() --[[ @ 0]]
	f12_arg0.cpcoins1000:completeAnimation() --[[ @ 0]]
	f12_arg0.CommonCornerPips2:completeAnimation() --[[ @ 0]]
	f12_arg0.NoiseTiledBackingAdd4:completeAnimation() --[[ @ 0]]
	f12_arg0.NoiseTiledBackingAdd3:completeAnimation() --[[ @ 0]]
	f12_arg0.NoiseTiledBacking2:completeAnimation() --[[ @ 0]]
	f12_arg0.Backing2:completeAnimation() --[[ @ 0]]
	f12_arg0.CommonCornerPips:completeAnimation() --[[ @ 0]]
	f12_arg0.NoiseTiledBackingAdd2:completeAnimation() --[[ @ 0]]
	f12_arg0.NoiseTiledBackingAdd:completeAnimation() --[[ @ 0]]
	f12_arg0.NoiseTiledBacking:completeAnimation() --[[ @ 0]]
	f12_arg0.Backing:completeAnimation() --[[ @ 0]]
	f12_arg0.BOPassRewardsandDisclaimers:setTopBottom( 0.5, 0.5, 173, 273 ) --[[ @ 0]]
	f12_arg0.item2price:setTopBottom( 0.5, 0.5, 40, 103 ) --[[ @ 0]]
	f12_arg0.item2desc:setTopBottom( 0.5, 0.5, 95, 131 ) --[[ @ 0]]
	f12_arg0.item1price:setTopBottom( 0.5, 0.5, 40, 103 ) --[[ @ 0]]
	f12_arg0.item1desc:setTopBottom( 0.5, 0.5, 95, 131 ) --[[ @ 0]]
	f12_arg0.plasmaicon:setTopBottom( 0.5, 0.5, -234, 150 ) --[[ @ 0]]
	f12_arg0.cpcoins1000:setTopBottom( 0.5, 0.5, -234, 150 ) --[[ @ 0]]
	f12_arg0.CommonCornerPips2:setTopBottom( 0.5, 0.5, -226.5, 142.5 ) --[[ @ 0]]
	f12_arg0.NoiseTiledBackingAdd4:setTopBottom( 0.5, 0.5, 34.5, 138.5 ) --[[ @ 0]]
	f12_arg0.NoiseTiledBackingAdd3:setTopBottom( 0.5, 0.5, -226.5, 142.5 ) --[[ @ 0]]
	f12_arg0.NoiseTiledBacking2:setTopBottom( 0.5, 0.5, -234, 150 ) --[[ @ 0]]
	f12_arg0.Backing2:setTopBottom( 0.5, 0.5, -226.5, 142.5 ) --[[ @ 0]]
	f12_arg0.CommonCornerPips:setTopBottom( 0.5, 0.5, -226.5, 142.5 ) --[[ @ 0]]
	f12_arg0.NoiseTiledBackingAdd2:setTopBottom( 0.5, 0.5, 34.5, 138.5 ) --[[ @ 0]]
	f12_arg0.NoiseTiledBackingAdd:setTopBottom( 0.5, 0.5, -226.5, 142.5 ) --[[ @ 0]]
	f12_arg0.NoiseTiledBacking:setTopBottom( 0.5, 0.5, -234, 150 ) --[[ @ 0]]
	f12_arg0.Backing:setTopBottom( 0.5, 0.5, -226.5, 142.5 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.BOPassPopup.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	PC = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 17 ) --[[ @ 0]]
			f14_arg0.Backing:completeAnimation() --[[ @ 0]]
			f14_arg0.Backing:setTopBottom( 0.5, 0.5, -261.5, 107.5 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.Backing ) --[[ @ 0]]
			f14_arg0.NoiseTiledBacking:completeAnimation() --[[ @ 0]]
			f14_arg0.NoiseTiledBacking:setTopBottom( 0.5, 0.5, -269, 115 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.NoiseTiledBacking ) --[[ @ 0]]
			f14_arg0.NoiseTiledBackingAdd:completeAnimation() --[[ @ 0]]
			f14_arg0.NoiseTiledBackingAdd:setTopBottom( 0.5, 0.5, -261.5, 107.5 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.NoiseTiledBackingAdd ) --[[ @ 0]]
			f14_arg0.NoiseTiledBackingAdd2:completeAnimation() --[[ @ 0]]
			f14_arg0.NoiseTiledBackingAdd2:setTopBottom( 0.5, 0.5, -0.5, 103.5 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.NoiseTiledBackingAdd2 ) --[[ @ 0]]
			f14_arg0.CommonCornerPips:completeAnimation() --[[ @ 0]]
			f14_arg0.CommonCornerPips:setTopBottom( 0.5, 0.5, -261.5, 107.5 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.CommonCornerPips ) --[[ @ 0]]
			f14_arg0.Backing2:completeAnimation() --[[ @ 0]]
			f14_arg0.Backing2:setTopBottom( 0.5, 0.5, -261.5, 107.5 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.Backing2 ) --[[ @ 0]]
			f14_arg0.NoiseTiledBacking2:completeAnimation() --[[ @ 0]]
			f14_arg0.NoiseTiledBacking2:setTopBottom( 0.5, 0.5, -269, 115 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.NoiseTiledBacking2 ) --[[ @ 0]]
			f14_arg0.NoiseTiledBackingAdd3:completeAnimation() --[[ @ 0]]
			f14_arg0.NoiseTiledBackingAdd3:setTopBottom( 0.5, 0.5, -261.5, 107.5 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.NoiseTiledBackingAdd3 ) --[[ @ 0]]
			f14_arg0.NoiseTiledBackingAdd4:completeAnimation() --[[ @ 0]]
			f14_arg0.NoiseTiledBackingAdd4:setTopBottom( 0.5, 0.5, -0.5, 103.5 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.NoiseTiledBackingAdd4 ) --[[ @ 0]]
			f14_arg0.CommonCornerPips2:completeAnimation() --[[ @ 0]]
			f14_arg0.CommonCornerPips2:setTopBottom( 0.5, 0.5, -261.5, 107.5 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.CommonCornerPips2 ) --[[ @ 0]]
			f14_arg0.cpcoins1000:completeAnimation() --[[ @ 0]]
			f14_arg0.cpcoins1000:setTopBottom( 0.5, 0.5, -269, 115 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.cpcoins1000 ) --[[ @ 0]]
			f14_arg0.plasmaicon:completeAnimation() --[[ @ 0]]
			f14_arg0.plasmaicon:setTopBottom( 0.5, 0.5, -269, 115 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.plasmaicon ) --[[ @ 0]]
			f14_arg0.item1desc:completeAnimation() --[[ @ 0]]
			f14_arg0.item1desc:setTopBottom( 0.5, 0.5, 60, 96 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.item1desc ) --[[ @ 0]]
			f14_arg0.item1price:completeAnimation() --[[ @ 0]]
			f14_arg0.item1price:setTopBottom( 0.5, 0.5, 5, 68 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.item1price ) --[[ @ 0]]
			f14_arg0.item2desc:completeAnimation() --[[ @ 0]]
			f14_arg0.item2desc:setTopBottom( 0.5, 0.5, 60, 96 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.item2desc ) --[[ @ 0]]
			f14_arg0.item2price:completeAnimation() --[[ @ 0]]
			f14_arg0.item2price:setTopBottom( 0.5, 0.5, 5, 68 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.item2price ) --[[ @ 0]]
			f14_arg0.BOPassRewardsandDisclaimers:completeAnimation() --[[ @ 0]]
			f14_arg0.BOPassRewardsandDisclaimers:setTopBottom( 0.5, 0.5, 151, 251 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.BOPassRewardsandDisclaimers ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.BOPassPopup.__onClose = function ( f15_arg0 )
	f15_arg0.FooterContainerFrontendRight:close() --[[ @ 0]]
	f15_arg0.CommonCornerPips:close() --[[ @ 0]]
	f15_arg0.CommonCornerPips2:close() --[[ @ 0]]
	f15_arg0.RedeemButtonPC:close() --[[ @ 0]]
	f15_arg0.BOPassRewardsandDisclaimers:close() --[[ @ 0]]
end
 --[[ @ 0]]
