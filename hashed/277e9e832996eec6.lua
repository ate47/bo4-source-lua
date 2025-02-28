-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "x64:6bc6e2379d2241fb" ) --[[ @ 0]]
require( "x64:31dce6c59697e8d3" ) --[[ @ 0]]
require( "ui/uieditor/widgets/systemoverlays/featureoverlay_button_container" ) --[[ @ 0]]

CoD.CoDPoints_Container = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CoDPoints_Container.__defaultWidth = 800 --[[ @ 0]]
CoD.CoDPoints_Container.__defaultHeight = 1080 --[[ @ 0]]
CoD.CoDPoints_Container.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CoDPoints_Container ) --[[ @ 0]]
	self.id = "CoDPoints_Container" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local backing = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	backing:setRGB( 0.19, 0.19, 0.19 ) --[[ @ 0]]
	self:addElement( backing ) --[[ @ 0]]
	self.backing = backing --[[ @ 0]]
	
	local NoiseTiledBacking = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setAlpha( 0.65 ) --[[ @ 0]]
	NoiseTiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	NoiseTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBacking ) --[[ @ 0]]
	self.NoiseTiledBacking = NoiseTiledBacking --[[ @ 0]]
	
	local bar2 = LUI.UIImage.new( 0, 0, 5, 16, 0, 1, 0, 0 ) --[[ @ 0]]
	bar2:setRGB( 0, 0, 0 ) --[[ @ 0]]
	self:addElement( bar2 ) --[[ @ 0]]
	self.bar2 = bar2 --[[ @ 0]]
	
	local bar = LUI.UIImage.new( 0, 0, 0, 6, 0, 1, 0, 0 ) --[[ @ 0]]
	bar:setRGB( 0.66, 0.63, 0.52 ) --[[ @ 0]]
	self:addElement( bar ) --[[ @ 0]]
	self.bar = bar --[[ @ 0]]
	
	local glow = LUI.UIImage.new( 0, 0, -544.5, 542.5, 0, 0, 529, 546 ) --[[ @ 0]]
	glow:setRGB( 0.42, 0.4, 0.31 ) --[[ @ 0]]
	glow:setAlpha( 0.5 ) --[[ @ 0]]
	glow:setZRot( 90 ) --[[ @ 0]]
	glow:setImage( RegisterImage( @"hash_5333C8E36E45B362" ) ) --[[ @ 0]]
	glow:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( glow ) --[[ @ 0]]
	self.glow = glow --[[ @ 0]]
	
	local bar4 = nil --[[ @ 0]]
	
	bar4 = LUI.UIImage.new( 1, 1, -16, -5, 0, 1, 0, 0 ) --[[ @ 0]]
	bar4:setRGB( 0, 0, 0 ) --[[ @ 0]]
	self:addElement( bar4 ) --[[ @ 0]]
	self.bar4 = bar4 --[[ @ 0]]
	
	local bar3 = nil --[[ @ 0]]
	
	bar3 = LUI.UIImage.new( 1, 1, -6, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	bar3:setRGB( 0.66, 0.63, 0.52 ) --[[ @ 0]]
	self:addElement( bar3 ) --[[ @ 0]]
	self.bar3 = bar3 --[[ @ 0]]
	
	local glow2 = nil --[[ @ 0]]
	
	glow2 = LUI.UIImage.new( 1, 1, -544, 543, 0, 0, 529, 546 ) --[[ @ 0]]
	glow2:setRGB( 0.42, 0.4, 0.31 ) --[[ @ 0]]
	glow2:setAlpha( 0.5 ) --[[ @ 0]]
	glow2:setZRot( 90 ) --[[ @ 0]]
	glow2:setImage( RegisterImage( @"hash_5333C8E36E45B362" ) ) --[[ @ 0]]
	glow2:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( glow2 ) --[[ @ 0]]
	self.glow2 = glow2 --[[ @ 0]]
	
	local PurchaseCPText = LUI.UIText.new( 0.5, 0.5, -327, 359, 0, 0, 190, 235 ) --[[ @ 0]]
	PurchaseCPText:setRGB( ColorSet.T8__BEIGE__HEADER.r, ColorSet.T8__BEIGE__HEADER.g, ColorSet.T8__BEIGE__HEADER.b ) --[[ @ 0]]
	PurchaseCPText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_263D5409DEC36DFA" ) ) --[[ @ 0]]
	PurchaseCPText:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	PurchaseCPText:setLetterSpacing( 6 ) --[[ @ 0]]
	PurchaseCPText:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	PurchaseCPText:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( PurchaseCPText ) --[[ @ 0]]
	self.PurchaseCPText = PurchaseCPText --[[ @ 0]]
	
	local NeedCPText = LUI.UIText.new( 0.5, 0.5, -327, 359, 0, 0, 167.5, 212.5 ) --[[ @ 0]]
	NeedCPText:setRGB( ColorSet.T8__BEIGE__HEADER.r, ColorSet.T8__BEIGE__HEADER.g, ColorSet.T8__BEIGE__HEADER.b ) --[[ @ 0]]
	NeedCPText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_6D010971235E8E91" ) ) --[[ @ 0]]
	NeedCPText:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	NeedCPText:setLetterSpacing( 6 ) --[[ @ 0]]
	NeedCPText:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	NeedCPText:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( NeedCPText ) --[[ @ 0]]
	self.NeedCPText = NeedCPText --[[ @ 0]]
	
	local DescTextBox = LUI.UIText.new( 0.5, 0.5, -327, 323, 0, 0, 215.5, 237.5 ) --[[ @ 0]]
	DescTextBox:setTTF( "dinnext_regular" ) --[[ @ 0]]
	DescTextBox:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	DescTextBox:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	DescTextBox.__String_Reference = function ( f2_arg0 )
		local f2_local0 = f2_arg0:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			DescTextBox:setText( UpdateCoDPointPurchaseDesc( f1_arg0, self:getModel(), f1_arg1, f2_local0 ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	DescTextBox:linkToElementModel( self, "price", true, DescTextBox.__String_Reference ) --[[ @ 0]]
	DescTextBox.__String_Reference_FullPath = function ()
		local f3_local0 = self:getModel() --[[ @ 0]]
		if f3_local0 then
			f3_local0 = self:getModel() --[[ @ 0]]
			f3_local0 = f3_local0.price --[[ @ 0]]
		end
		if f3_local0 then
			DescTextBox.__String_Reference( f3_local0 ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	self:addElement( DescTextBox ) --[[ @ 0]]
	self.DescTextBox = DescTextBox --[[ @ 0]]
	
	local List = LUI.UIList.new( f1_arg0, f1_arg1, 20, 0, nil, false, false, false, false ) --[[ @ 0]]
	List:setLeftRight( 0, 0, 75, 725 ) --[[ @ 0]]
	List:setTopBottom( 0, 0, 261, 841 ) --[[ @ 0]]
	List:setWidgetType( CoD.CoDPoints_ListButton ) --[[ @ 0]]
	List:setVerticalCount( 6 ) --[[ @ 0]]
	List:setSpacing( 20 ) --[[ @ 0]]
	List:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	List:setDataSource( "CoDPointStoreList" ) --[[ @ 0]]
	List:registerEventHandler( "gain_list_focus", function ( element, event )
		local f4_local0 = nil --[[ @ 0]]
		if not IsPC() then
			HighlightCodPointPackage( f1_arg1, self, self.List ) --[[ @ 0]]
		end
		return f4_local0
	end ) --[[ @ 0]]
	List:registerEventHandler( "gain_focus", function ( element, event )
		local f5_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f5_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f5_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f5_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( List, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], nil, function ( element, menu, controller, model )
		if not MenuPropertyIsTrue( menu, "dontCloseOnStoreOpen" ) and not IsPC() then
			PlaySoundAlias( "uin_points_purchase" ) --[[ @ 0]]
			PurchaseProduct( self, menu, element, controller ) --[[ @ 0]]
			HidePsStoreIcon( controller ) --[[ @ 0]]
			GoBack( self, controller ) --[[ @ 0]]
			return true
		elseif MenuPropertyIsTrue( menu, "dontCloseOnStoreOpen" ) then
			PlaySoundAlias( "uin_points_purchase" ) --[[ @ 0]]
			PurchaseProduct( self, menu, element, controller ) --[[ @ 0]]
			return true
		elseif not MenuPropertyIsTrue( menu, "dontCloseOnStoreOpen" ) and IsPC() then
			PurchaseProduct( self, menu, element, controller ) --[[ @ 0]]
			HidePsStoreIcon( controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not MenuPropertyIsTrue( menu, "dontCloseOnStoreOpen" ) and not IsPC() then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, nil ) --[[ @ 0]]
			return true
		elseif MenuPropertyIsTrue( menu, "dontCloseOnStoreOpen" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, nil ) --[[ @ 0]]
			return true
		elseif not MenuPropertyIsTrue( menu, "dontCloseOnStoreOpen" ) and IsPC() then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, nil ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self.__on_menuOpened_List = function ( f8_arg0, f8_arg1, f8_arg2, f8_arg3 )
		local f8_local0 = List --[[ @ 0]]
		if not HasStoreItems( f8_arg1 ) and CoD.ModelUtility.IsModelValueEqualTo( f8_arg1, "StoreRoot.ready", 1 ) and not IsPC() then
			DelayGoBack( f8_arg2, f8_arg1, 0 ) --[[ @ 0]]
			DisplayEmptyStoreSystemDialog( f8_arg1 ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	f1_arg0:addMenuOpenedCallback( self.__on_menuOpened_List ) --[[ @ 0]]
	List:subscribeToGlobalModel( f1_arg1, "PerController", "StoreRoot.ready", function ( model )
		local f9_local0 = List --[[ @ 0]]
		if CoD.ModelUtility.IsModelValueEqualTo( f1_arg1, "StoreRoot.ready", 1 ) and HasStoreItems( f1_arg1 ) then
			UpdateDataSource( self, f9_local0, f1_arg1 ) --[[ @ 0]]
		elseif CoD.ModelUtility.IsModelValueEqualTo( f1_arg1, "StoreRoot.ready", 1 ) and not HasStoreItems( f1_arg1 ) and not IsPC() then
			DelayGoBack( f1_arg0, f1_arg1, 0 ) --[[ @ 0]]
			DisplayEmptyStoreSystemDialog( f1_arg1 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( List ) --[[ @ 0]]
	self.List = List --[[ @ 0]]
	
	local Linker = LUI.UIImage.new( 0, 0, 397, 401, 0, 0, -85, 573 ) --[[ @ 0]]
	Linker:setRGB( ColorSet.T8__BEIGE__HEADER.r, ColorSet.T8__BEIGE__HEADER.g, ColorSet.T8__BEIGE__HEADER.b ) --[[ @ 0]]
	Linker:setAlpha( 0.5 ) --[[ @ 0]]
	Linker:setZRot( 90 ) --[[ @ 0]]
	Linker:setImage( RegisterImage( @"hash_C49B0C8991A541F" ) ) --[[ @ 0]]
	Linker:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	Linker:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	Linker:setupNineSliceShader( 4, 8 ) --[[ @ 0]]
	self:addElement( Linker ) --[[ @ 0]]
	self.Linker = Linker --[[ @ 0]]
	
	local Linker2 = LUI.UIImage.new( 0, 0, 397, 401, 0, 0, 540, 1198 ) --[[ @ 0]]
	Linker2:setRGB( ColorSet.T8__BEIGE__HEADER.r, ColorSet.T8__BEIGE__HEADER.g, ColorSet.T8__BEIGE__HEADER.b ) --[[ @ 0]]
	Linker2:setAlpha( 0.5 ) --[[ @ 0]]
	Linker2:setZRot( 90 ) --[[ @ 0]]
	Linker2:setImage( RegisterImage( @"hash_C49B0C8991A541F" ) ) --[[ @ 0]]
	Linker2:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	Linker2:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	Linker2:setupNineSliceShader( 4, 8 ) --[[ @ 0]]
	self:addElement( Linker2 ) --[[ @ 0]]
	self.Linker2 = Linker2 --[[ @ 0]]
	
	local featureOverlayButtonContainer = CoD.featureOverlay_Button_Container.new( f1_arg0, f1_arg1, 0, 0, 82, 262, 1, 1, -83, -23 ) --[[ @ 0]]
	featureOverlayButtonContainer:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return not IsMouseOrKeyboard( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	featureOverlayButtonContainer:appendEventHandler( "input_source_changed", function ( f11_arg0, f11_arg1 )
		f11_arg1.menu = f11_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( featureOverlayButtonContainer, f11_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local CommonIdentityWidgetStreamlined = featureOverlayButtonContainer --[[ @ 0]]
	local Backer = featureOverlayButtonContainer.subscribeToModel --[[ @ 0]]
	local TiledwhiteNoiseBacking = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	Backer( CommonIdentityWidgetStreamlined, TiledwhiteNoiseBacking.LastInput, function ( f12_arg0 )
		f1_arg0:updateElementState( featureOverlayButtonContainer, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f12_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	featureOverlayButtonContainer.Title:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/back" ) ) --[[ @ 0]]
	featureOverlayButtonContainer:registerEventHandler( "gain_focus", function ( element, event )
		local f13_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f13_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f13_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f13_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( featureOverlayButtonContainer, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], nil, function ( element, menu, controller, model )
		GoBack( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_0", nil, nil ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	self:addElement( featureOverlayButtonContainer ) --[[ @ 0]]
	self.featureOverlayButtonContainer = featureOverlayButtonContainer --[[ @ 0]]
	
	Backer = LUI.UIImage.new( 0, 0, 82, 502, 0, 0, 85, 127 ) --[[ @ 0]]
	Backer:setRGB( 0, 0, 0 ) --[[ @ 0]]
	Backer:setAlpha( 0.99 ) --[[ @ 0]]
	self:addElement( Backer ) --[[ @ 0]]
	self.Backer = Backer --[[ @ 0]]
	
	CommonIdentityWidgetStreamlined = CoD.CommonIdentityWidgetStreamlined.new( f1_arg0, f1_arg1, 0.5, 0.5, -204.5, 325.5, 0, 0, 87, 127 ) --[[ @ 0]]
	CommonIdentityWidgetStreamlined:mergeStateConditions( {
		{
			stateName = "PCCODPointsPopup",
			condition = function ( menu, element, event )
				return IsPC()
			end
		}
	} ) --[[ @ 0]]
	CommonIdentityWidgetStreamlined:subscribeToGlobalModel( f1_arg1, "PerController", "identityBadge", function ( model )
		CommonIdentityWidgetStreamlined:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( CommonIdentityWidgetStreamlined ) --[[ @ 0]]
	self.CommonIdentityWidgetStreamlined = CommonIdentityWidgetStreamlined --[[ @ 0]]
	
	TiledwhiteNoiseBacking = LUI.UIImage.new( 0, 0, 74, 82, 0, 0, 85, 127 ) --[[ @ 0]]
	TiledwhiteNoiseBacking:setAlpha( 0.02 ) --[[ @ 0]]
	TiledwhiteNoiseBacking:setImage( RegisterImage( @"uie_ui_menu_aar_repeat_white_bg" ) ) --[[ @ 0]]
	TiledwhiteNoiseBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	TiledwhiteNoiseBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	TiledwhiteNoiseBacking:setupNineSliceShader( 64, 64 ) --[[ @ 0]]
	self:addElement( TiledwhiteNoiseBacking ) --[[ @ 0]]
	self.TiledwhiteNoiseBacking = TiledwhiteNoiseBacking --[[ @ 0]]
	
	local f1_local19 = DescTextBox --[[ @ 0]]
	local f1_local20 = DescTextBox.subscribeToModel --[[ @ 0]]
	local f1_local21 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local20( f1_local19, f1_local21["LootStreamProgress.codPoints"], DescTextBox.__String_Reference_FullPath ) --[[ @ 0]]
	self:mergeStateConditions( {
		{
			stateName = "NeedMoreCP",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelNil( element, f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, nil, false, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model and model:get(),
			modelName = nil
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, nil, true, function ( model )
		UpdateSelfElementState( f1_arg0, self, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	List.id = "List" --[[ @ 0]]
	featureOverlayButtonContainer.id = "featureOverlayButtonContainer" --[[ @ 0]]
	self.__defaultFocus = List --[[ @ 0]]
	self.__on_close_removeOverrides = function ()
		f1_arg0:removeMenuOpenedCallback( self.__on_menuOpened_List ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local20 = self --[[ @ 0]]
	f1_local20 = DescTextBox --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.CoDPoints_Container.__resetProperties = function ( f22_arg0 )
	f22_arg0.NeedCPText:completeAnimation() --[[ @ 0]]
	f22_arg0.PurchaseCPText:completeAnimation() --[[ @ 0]]
	f22_arg0.NeedCPText:setAlpha( 1 ) --[[ @ 0]]
	f22_arg0.PurchaseCPText:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CoDPoints_Container.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f23_arg0, f23_arg1 )
			f23_arg0:__resetProperties() --[[ @ 0]]
			f23_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f23_arg0.PurchaseCPText:completeAnimation() --[[ @ 0]]
			f23_arg0.PurchaseCPText:setAlpha( 1 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.PurchaseCPText ) --[[ @ 0]]
			f23_arg0.NeedCPText:completeAnimation() --[[ @ 0]]
			f23_arg0.NeedCPText:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.NeedCPText ) --[[ @ 0]]
		end
	},
	NeedMoreCP = {
		DefaultClip = function ( f24_arg0, f24_arg1 )
			f24_arg0:__resetProperties() --[[ @ 0]]
			f24_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f24_arg0.PurchaseCPText:completeAnimation() --[[ @ 0]]
			f24_arg0.PurchaseCPText:setAlpha( 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.PurchaseCPText ) --[[ @ 0]]
			f24_arg0.NeedCPText:completeAnimation() --[[ @ 0]]
			f24_arg0.NeedCPText:setAlpha( 1 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.NeedCPText ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.CoDPoints_Container.__onClose = function ( f25_arg0 )
	f25_arg0.__on_close_removeOverrides() --[[ @ 0]]
	f25_arg0.DescTextBox:close() --[[ @ 0]]
	f25_arg0.List:close() --[[ @ 0]]
	f25_arg0.featureOverlayButtonContainer:close() --[[ @ 0]]
	f25_arg0.CommonIdentityWidgetStreamlined:close() --[[ @ 0]]
end
 --[[ @ 0]]
