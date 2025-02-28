-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/common/commoncheckbox" ) --[[ @ 0]]
require( "ui/uieditor/widgets/emptyfocusable" ) --[[ @ 0]]
require( "x64:17961759e01b9074" ) --[[ @ 0]]
require( "ui/uieditor/widgets/pc/pc_smallclosebutton" ) --[[ @ 0]]
require( "ui/uieditor/widgets/systemoverlays/featureoverlay_button_container" ) --[[ @ 0]]
require( "ui/uieditor/widgets/systemoverlays/systemoverlay_alertstatusbar" ) --[[ @ 0]]

CoD.PC_Store_Refund_Korea = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.PC_Store_Refund_Korea = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "PC_Store_Refund_Korea", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	CoD.BaseUtility.CreateGlobalModel( "PCStoreKoreaAccepts" ) --[[ @ 0]]
	self:setClass( CoD.PC_Store_Refund_Korea ) --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_local1:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Background = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Background:setRGB( 0, 0, 0 ) --[[ @ 0]]
	Background:setAlpha( 0.9 ) --[[ @ 0]]
	self:addElement( Background ) --[[ @ 0]]
	self.Background = Background --[[ @ 0]]
	
	local backing = LUI.UIImage.new( 0, 1, 0, 0, 0.5, 0.5, -229.5, 243.5 ) --[[ @ 0]]
	backing:setRGB( 0.19, 0.19, 0.19 ) --[[ @ 0]]
	backing:setAlpha( 0.7 ) --[[ @ 0]]
	self:addElement( backing ) --[[ @ 0]]
	self.backing = backing --[[ @ 0]]
	
	local NoiseTiledBacking = LUI.UIImage.new( 0, 1, 0, 0, 0.5, 0.5, -228, 242 ) --[[ @ 0]]
	NoiseTiledBacking:setAlpha( 0.65 ) --[[ @ 0]]
	NoiseTiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	NoiseTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBacking ) --[[ @ 0]]
	self.NoiseTiledBacking = NoiseTiledBacking --[[ @ 0]]
	
	local ButtonList = LUI.UIList.new( f1_local1, f1_arg0, 28, 0, nil, false, false, false, false ) --[[ @ 0]]
	ButtonList:mergeStateConditions( {
		{
			stateName = "Disabled",
			condition = function ( menu, element, event )
				return IsDisabled( element, f1_arg0 )
			end
		},
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg0, "hidden" )
			end
		}
	} ) --[[ @ 0]]
	ButtonList:linkToElementModel( ButtonList, "disabled", true, function ( model )
		f1_local1:updateElementState( ButtonList, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = model:get(),
			modelName = "disabled"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ButtonList:linkToElementModel( ButtonList, "hidden", true, function ( model )
		f1_local1:updateElementState( ButtonList, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = model:get(),
			modelName = "hidden"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ButtonList:setLeftRight( 0.5, 0.5, -273, 739 ) --[[ @ 0]]
	ButtonList:setTopBottom( 0.5, 0.5, 122, 182 ) --[[ @ 0]]
	ButtonList:setWidgetType( CoD.featureOverlay_Button_Container ) --[[ @ 0]]
	ButtonList:setHorizontalCount( 5 ) --[[ @ 0]]
	ButtonList:setSpacing( 28 ) --[[ @ 0]]
	ButtonList:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	ButtonList:setDataSource( "PCKoreaRefundButtons" ) --[[ @ 0]]
	ButtonList:registerEventHandler( "gain_focus", function ( element, event )
		local f6_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f6_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f6_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f6_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( ButtonList, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		ProcessListAction( self, element, controller, menu ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_0", nil, "ui_confirm" ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	self:addElement( ButtonList ) --[[ @ 0]]
	self.ButtonList = ButtonList --[[ @ 0]]
	
	local ValidityPeriod = LUI.UIText.new( 0.5, 0.5, -271, 879, 0.5, 0.5, -58.5, -37.5 ) --[[ @ 0]]
	ValidityPeriod:setRGB( ColorSet.T8_PC_CHAT_GAME_EVENT.r, ColorSet.T8_PC_CHAT_GAME_EVENT.g, ColorSet.T8_PC_CHAT_GAME_EVENT.b ) --[[ @ 0]]
	ValidityPeriod:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	ValidityPeriod:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	ValidityPeriod:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	ValidityPeriod:linkToElementModel( self, "ValidityPeriod", true, function ( model )
		local f9_local0 = model:get() --[[ @ 0]]
		if f9_local0 ~= nil then
			ValidityPeriod:setText( f9_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ValidityPeriod ) --[[ @ 0]]
	self.ValidityPeriod = ValidityPeriod --[[ @ 0]]
	
	local emptyFocusableCheck = CoD.emptyFocusable.new( f1_local1, f1_arg0, 0.5, 0.5, -270, -230, 0.5, 0.5, 18, 58 ) --[[ @ 0]]
	self:addElement( emptyFocusableCheck ) --[[ @ 0]]
	self.emptyFocusableCheck = emptyFocusableCheck --[[ @ 0]]
	
	local RefundOrNotText = LUI.UIText.new( 0.5, 0.5, -208, 942, 0.5, 0.5, 29, 47 ) --[[ @ 0]]
	RefundOrNotText:setRGB( 0.39, 0.39, 0.39 ) --[[ @ 0]]
	RefundOrNotText:setTTF( "notosans_regular" ) --[[ @ 0]]
	RefundOrNotText:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	RefundOrNotText:setAlignment( Enum[@"luialignment"][@"lui_alignment_middle"] ) --[[ @ 0]]
	RefundOrNotText:linkToElementModel( self, "LegalText", true, function ( model )
		local f10_local0 = model:get() --[[ @ 0]]
		if f10_local0 ~= nil then
			RefundOrNotText:setText( f10_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( RefundOrNotText ) --[[ @ 0]]
	self.RefundOrNotText = RefundOrNotText --[[ @ 0]]
	
	local CommonCheckbox = CoD.CommonCheckbox.new( f1_local1, f1_arg0, 0.5, 0.5, -270, -230, 0.5, 0.5, 18, 58 ) --[[ @ 0]]
	CommonCheckbox:mergeStateConditions( {
		{
			stateName = "Checked",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalModelValueTrue( "PCStoreKoreaAccepts" )
			end
		}
	} ) --[[ @ 0]]
	local Title = CommonCheckbox --[[ @ 0]]
	local blur = CommonCheckbox.subscribeToModel --[[ @ 0]]
	local Description = Engine[@"getglobalmodel"]() --[[ @ 0]]
	blur( Title, Description.PCStoreKoreaAccepts, function ( f12_arg0 )
		f1_local1:updateElementState( CommonCheckbox, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f12_arg0:get(),
			modelName = "PCStoreKoreaAccepts"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	CommonCheckbox:registerEventHandler( "gain_focus", function ( element, event )
		local f13_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f13_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f13_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f13_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( CommonCheckbox, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		ToggleGlobalModelValueBoolean( "PCStoreKoreaAccepts" ) --[[ @ 0]]
		UpdateElementState( self, "ButtonList", controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_0", nil, "ui_confirm" ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	self:addElement( CommonCheckbox ) --[[ @ 0]]
	self.CommonCheckbox = CommonCheckbox --[[ @ 0]]
	
	blur = LUI.UIImage.new( 0, 1, 0, 0, 0.5, 0.5, -229, 245 ) --[[ @ 0]]
	blur:setAlpha( 0 ) --[[ @ 0]]
	blur:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	blur:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( blur ) --[[ @ 0]]
	self.blur = blur --[[ @ 0]]
	
	Title = LUI.UIText.new( 0.5, 0.5, -272, 771, 0.5, 0.5, -187.5, -142.5 ) --[[ @ 0]]
	Title:setRGB( ColorSet.T8__BEIGE__HEADER.r, ColorSet.T8__BEIGE__HEADER.g, ColorSet.T8__BEIGE__HEADER.b ) --[[ @ 0]]
	Title:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	Title:setLetterSpacing( 6 ) --[[ @ 0]]
	Title:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Title:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	Title:linkToElementModel( self, "Title", true, function ( model )
		local f16_local0 = model:get() --[[ @ 0]]
		if f16_local0 ~= nil then
			Title:setText( f16_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Title ) --[[ @ 0]]
	self.Title = Title --[[ @ 0]]
	
	Description = LUI.UIText.new( 0.5, 0.5, -271, 541, 0.5, 0.5, -119, -97 ) --[[ @ 0]]
	Description:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	Description:setTTF( "dinnext_regular" ) --[[ @ 0]]
	Description:setLetterSpacing( 1 ) --[[ @ 0]]
	Description:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Description:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	Description:linkToElementModel( self, "Description", true, function ( model )
		local f17_local0 = model:get() --[[ @ 0]]
		if f17_local0 ~= nil then
			Description:setText( f17_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Description ) --[[ @ 0]]
	self.Description = Description --[[ @ 0]]
	
	local BlackBarBGTop = LUI.UIImage.new( 0, 1, 0, 0, 0.5, 0.5, -230, -214 ) --[[ @ 0]]
	BlackBarBGTop:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BlackBarBGTop:setAlpha( 0.85 ) --[[ @ 0]]
	self:addElement( BlackBarBGTop ) --[[ @ 0]]
	self.BlackBarBGTop = BlackBarBGTop --[[ @ 0]]
	
	local BlackBarBGBtm = LUI.UIImage.new( 0, 1, 0, 0, 0.5, 0.5, 230, 246 ) --[[ @ 0]]
	BlackBarBGBtm:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BlackBarBGBtm:setAlpha( 0.85 ) --[[ @ 0]]
	self:addElement( BlackBarBGBtm ) --[[ @ 0]]
	self.BlackBarBGBtm = BlackBarBGBtm --[[ @ 0]]
	
	local alertStatusBar = CoD.systemOverlay_alertStatusBar.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0.5, 0.5, -229, -223 ) --[[ @ 0]]
	alertStatusBar:linkToElementModel( self, nil, false, function ( model )
		alertStatusBar:setModel( model, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( alertStatusBar ) --[[ @ 0]]
	self.alertStatusBar = alertStatusBar --[[ @ 0]]
	
	local alertStatusBar2 = CoD.systemOverlay_alertStatusBar.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0.5, 0.5, 239, 245 ) --[[ @ 0]]
	alertStatusBar2:linkToElementModel( self, nil, false, function ( model )
		alertStatusBar2:setModel( model, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( alertStatusBar2 ) --[[ @ 0]]
	self.alertStatusBar2 = alertStatusBar2 --[[ @ 0]]
	
	local codpoints = LUI.UIImage.new( 0.5, 0.5, -695, -661, 0.5, 0.5, 156, 190 ) --[[ @ 0]]
	codpoints:setAlpha( 0 ) --[[ @ 0]]
	codpoints:setImage( RegisterImage( @"uie_ui_codpoints_symbol_32x32" ) ) --[[ @ 0]]
	self:addElement( codpoints ) --[[ @ 0]]
	self.codpoints = codpoints --[[ @ 0]]
	
	local vial = LUI.UIImage.new( 0.5, 0.5, -698, -660, 0.5, 0.5, 153, 191 ) --[[ @ 0]]
	vial:setAlpha( 0 ) --[[ @ 0]]
	vial:setImage( RegisterImage( @"uie_t7_hud_zm_vial_aar_256" ) ) --[[ @ 0]]
	self:addElement( vial ) --[[ @ 0]]
	self.vial = vial --[[ @ 0]]
	
	local CostWithText = LUI.UIText.new( 0.5, 0.5, -708, -576, 0.5, 0.5, 157, 186 ) --[[ @ 0]]
	CostWithText:setRGB( ColorSet.T8__OCHRE.r, ColorSet.T8__OCHRE.g, ColorSet.T8__OCHRE.b ) --[[ @ 0]]
	CostWithText:setAlpha( 0 ) --[[ @ 0]]
	CostWithText:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	CostWithText:setLetterSpacing( 1 ) --[[ @ 0]]
	CostWithText:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	CostWithText:linkToElementModel( self, "CostString", true, function ( model )
		local f20_local0 = model:get() --[[ @ 0]]
		if f20_local0 ~= nil then
			CostWithText:setText( f20_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( CostWithText ) --[[ @ 0]]
	self.CostWithText = CostWithText --[[ @ 0]]
	
	local Cost = LUI.UIText.new( 0.5, 0.5, -651, -560, 0.5, 0.5, 157, 186 ) --[[ @ 0]]
	Cost:setRGB( ColorSet.T8__OCHRE.r, ColorSet.T8__OCHRE.g, ColorSet.T8__OCHRE.b ) --[[ @ 0]]
	Cost:setAlpha( 0 ) --[[ @ 0]]
	Cost:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	Cost:setLetterSpacing( 1 ) --[[ @ 0]]
	Cost:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Cost:linkToElementModel( self, "Cost", true, function ( model )
		local f21_local0 = model:get() --[[ @ 0]]
		if f21_local0 ~= nil then
			Cost:setText( f21_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Cost ) --[[ @ 0]]
	self.Cost = Cost --[[ @ 0]]
	
	local QuitBtn = CoD.PC_SmallCloseButton.new( f1_local1, f1_arg0, 0.5, 0.5, 864, 898, 0.5, 0.5, -192, -158 ) --[[ @ 0]]
	QuitBtn:registerEventHandler( "gain_focus", function ( element, event )
		local f22_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f22_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f22_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f22_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( QuitBtn, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		CoD.PCKoreaUtility.DeclineRefundPopup( menu, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_0", nil, "ui_confirm" ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	self:addElement( QuitBtn ) --[[ @ 0]]
	self.QuitBtn = QuitBtn --[[ @ 0]]
	
	local StartMenuSmallTierLevel = CoD.PC_Store_Refund_Korea_Product_Image.new( f1_local1, f1_arg0, 0.5, 0.5, -815.5, -466.5, 0.5, 0.5, -124, 78 ) --[[ @ 0]]
	StartMenuSmallTierLevel:linkToElementModel( self, nil, false, function ( model )
		StartMenuSmallTierLevel:setModel( model, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	StartMenuSmallTierLevel:linkToElementModel( self, "TierRef", true, function ( model )
		local f26_local0 = model:get() --[[ @ 0]]
		if f26_local0 ~= nil then
			StartMenuSmallTierLevel.Tiers:setText( Engine[@"hash_4F9F1239CFD921FE"]( f26_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( StartMenuSmallTierLevel ) --[[ @ 0]]
	self.StartMenuSmallTierLevel = StartMenuSmallTierLevel --[[ @ 0]]
	
	local LargeProductImage = LUI.UIImage.new( 0.5, 0.5, -960, -324, 0.5, 0.5, -214, 230 ) --[[ @ 0]]
	LargeProductImage:linkToElementModel( self, "LargeProductImage", true, function ( model )
		local f27_local0 = model:get() --[[ @ 0]]
		if f27_local0 ~= nil then
			LargeProductImage:setImage( RegisterImage( f27_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( LargeProductImage ) --[[ @ 0]]
	self.LargeProductImage = LargeProductImage --[[ @ 0]]
	
	local Linker = LUI.UIImage.new( 0.5, 0.5, -330, -326, 0.5, 0.5, -193, 204 ) --[[ @ 0]]
	Linker:setRGB( ColorSet.T8__BEIGE__HEADER.r, ColorSet.T8__BEIGE__HEADER.g, ColorSet.T8__BEIGE__HEADER.b ) --[[ @ 0]]
	Linker:setAlpha( 0.35 ) --[[ @ 0]]
	Linker:setImage( RegisterImage( @"hash_C49B0C8991A541F" ) ) --[[ @ 0]]
	Linker:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	Linker:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	Linker:setupNineSliceShader( 4, 8 ) --[[ @ 0]]
	self:addElement( Linker ) --[[ @ 0]]
	self.Linker = Linker --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "IsPriceString",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueNonEmptyString( self, f1_arg0, "CostString" )
			end
		},
		{
			stateName = "IsPriceCoDPoints",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualToHashString( f1_arg0, element, "Currency", @"cod_points" )
			end
		},
		{
			stateName = "IsPriceVials",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualToHashString( f1_arg0, element, "Currency", @"nebulium_plasma" )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "CostString", true, function ( model )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = model:get(),
			modelName = "CostString"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "Currency", true, function ( model )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = model:get(),
			modelName = "Currency"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], "ESCAPE", function ( element, menu, controller, model )
		SetGlobalModelValueFalse( "PCStoreKoreaAccepts" ) --[[ @ 0]]
		CoD.PCKoreaUtility.DeclineRefundPopup( menu, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], @"hash_0", nil, "ESCAPE" ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	ButtonList.id = "ButtonList" --[[ @ 0]]
	emptyFocusableCheck.id = "emptyFocusableCheck" --[[ @ 0]]
	if CoD.isPC then
		CommonCheckbox.id = "CommonCheckbox" --[[ @ 0]]
	end
	QuitBtn.id = "QuitBtn" --[[ @ 0]]
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.PC_Store_Refund_Korea.__resetProperties = function ( f35_arg0 )
	f35_arg0.CostWithText:completeAnimation() --[[ @ 0]]
	f35_arg0.codpoints:completeAnimation() --[[ @ 0]]
	f35_arg0.Cost:completeAnimation() --[[ @ 0]]
	f35_arg0.vial:completeAnimation() --[[ @ 0]]
	f35_arg0.CostWithText:setAlpha( 0 ) --[[ @ 0]]
	f35_arg0.codpoints:setAlpha( 0 ) --[[ @ 0]]
	f35_arg0.Cost:setAlpha( 0 ) --[[ @ 0]]
	f35_arg0.vial:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.PC_Store_Refund_Korea.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f36_arg0, f36_arg1 )
			f36_arg0:__resetProperties() --[[ @ 0]]
			f36_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	IsPriceString = {
		DefaultClip = function ( f37_arg0, f37_arg1 )
			f37_arg0:__resetProperties() --[[ @ 0]]
			f37_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f37_arg0.CostWithText:completeAnimation() --[[ @ 0]]
			f37_arg0.CostWithText:setAlpha( 1 ) --[[ @ 0]]
			f37_arg0.clipFinished( f37_arg0.CostWithText ) --[[ @ 0]]
		end
	},
	IsPriceCoDPoints = {
		DefaultClip = function ( f38_arg0, f38_arg1 )
			f38_arg0:__resetProperties() --[[ @ 0]]
			f38_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f38_arg0.codpoints:completeAnimation() --[[ @ 0]]
			f38_arg0.codpoints:setAlpha( 1 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.codpoints ) --[[ @ 0]]
			f38_arg0.Cost:completeAnimation() --[[ @ 0]]
			f38_arg0.Cost:setAlpha( 1 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.Cost ) --[[ @ 0]]
		end
	},
	IsPriceVials = {
		DefaultClip = function ( f39_arg0, f39_arg1 )
			f39_arg0:__resetProperties() --[[ @ 0]]
			f39_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f39_arg0.vial:completeAnimation() --[[ @ 0]]
			f39_arg0.vial:setAlpha( 1 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.vial ) --[[ @ 0]]
			f39_arg0.Cost:completeAnimation() --[[ @ 0]]
			f39_arg0.Cost:setAlpha( 1 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.Cost ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.PC_Store_Refund_Korea.__onClose = function ( f40_arg0 )
	f40_arg0.ButtonList:close() --[[ @ 0]]
	f40_arg0.ValidityPeriod:close() --[[ @ 0]]
	f40_arg0.emptyFocusableCheck:close() --[[ @ 0]]
	f40_arg0.RefundOrNotText:close() --[[ @ 0]]
	f40_arg0.CommonCheckbox:close() --[[ @ 0]]
	f40_arg0.Title:close() --[[ @ 0]]
	f40_arg0.Description:close() --[[ @ 0]]
	f40_arg0.alertStatusBar:close() --[[ @ 0]]
	f40_arg0.alertStatusBar2:close() --[[ @ 0]]
	f40_arg0.CostWithText:close() --[[ @ 0]]
	f40_arg0.Cost:close() --[[ @ 0]]
	f40_arg0.QuitBtn:close() --[[ @ 0]]
	f40_arg0.StartMenuSmallTierLevel:close() --[[ @ 0]]
	f40_arg0.LargeProductImage:close() --[[ @ 0]]
end
 --[[ @ 0]]
