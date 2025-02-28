-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "x64:3bee1e79985488c9" ) --[[ @ 0]]
require( "x64:27fb57c6366fb4cf" ) --[[ @ 0]]

CoD.FeaturedPopup = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.FeaturedPopup = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "FeaturedPopup", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	self:setClass( CoD.FeaturedPopup ) --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local BlurBG = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BlurBG:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	BlurBG:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( BlurBG ) --[[ @ 0]]
	self.BlurBG = BlurBG --[[ @ 0]]
	
	local MotdBG = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	MotdBG:setRGB( 0, 0, 0 ) --[[ @ 0]]
	MotdBG:setAlpha( 0.8 ) --[[ @ 0]]
	self:addElement( MotdBG ) --[[ @ 0]]
	self.MotdBG = MotdBG --[[ @ 0]]
	
	local TiledBacking = LUI.UIImage.new( 0, 1, 0, 0, 0.5, 0.5, -540, 540 ) --[[ @ 0]]
	TiledBacking:setAlpha( 0.5 ) --[[ @ 0]]
	TiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	TiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	TiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	TiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( TiledBacking ) --[[ @ 0]]
	self.TiledBacking = TiledBacking --[[ @ 0]]
	
	local TiledBacking2 = LUI.UIImage.new( 0, 1, 0, 0, 0.5, 0.5, -440, 440 ) --[[ @ 0]]
	TiledBacking2:setAlpha( 0.5 ) --[[ @ 0]]
	TiledBacking2:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	TiledBacking2:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	TiledBacking2:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	TiledBacking2:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( TiledBacking2 ) --[[ @ 0]]
	self.TiledBacking2 = TiledBacking2 --[[ @ 0]]
	
	local Image = LUI.UIImage.new( 0.5, 0.5, -693.5, 698.5, 0.5, 0.5, -330, 350 ) --[[ @ 0]]
	Image:linkToElementModel( self, "popup_image", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			Image:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Image ) --[[ @ 0]]
	self.Image = Image --[[ @ 0]]
	
	local MOTDFeaturedButtonContainer = CoD.MOTD_FeaturedButtonContainer.new( f1_local1, f1_arg0, 0.5, 0.5, 298.5, 698.5, 0.5, 0.5, 350, 398 ) --[[ @ 0]]
	MOTDFeaturedButtonContainer:registerEventHandler( "input_source_changed", function ( element, event )
		local f3_local0 = nil --[[ @ 0]]
		if not f3_local0 then
			f3_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f3_local0
	end ) --[[ @ 0]]
	MOTDFeaturedButtonContainer:subscribeToGlobalModel( f1_arg0, "PerController", "LastInput", function ( model )
		local f4_local0 = MOTDFeaturedButtonContainer --[[ @ 0]]
		if not IsMouseOrKeyboard( f1_arg0 ) then
			ShowWidget( f4_local0 ) --[[ @ 0]]
		elseif IsMouseOrKeyboard( f1_arg0 ) then
			HideWidget( f4_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( MOTDFeaturedButtonContainer ) --[[ @ 0]]
	self.MOTDFeaturedButtonContainer = MOTDFeaturedButtonContainer --[[ @ 0]]
	
	local TitleLbl = LUI.UIText.new( 0.5, 0.5, -673.5, 15.5, 0.5, 0.5, -312.5, -267.5 ) --[[ @ 0]]
	TitleLbl:setRGB( 0.86, 0.74, 0.25 ) --[[ @ 0]]
	TitleLbl:setAlpha( 0.1 ) --[[ @ 0]]
	TitleLbl:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	TitleLbl:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_90D57B1E92D39D7" ) ) --[[ @ 0]]
	TitleLbl:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	TitleLbl:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	TitleLbl:setShaderVector( 2, 1, 1, 1, 0 ) --[[ @ 0]]
	TitleLbl:setLetterSpacing( 10 ) --[[ @ 0]]
	TitleLbl:setAlignment( Engine[@"hash_67F8853DC3581AA4"]( Enum[@"luialignment"][@"lui_alignment_left"] ) ) --[[ @ 0]]
	TitleLbl:linkToElementModel( self, "name", true, function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			TitleLbl:setText( ConvertToUpperString( f5_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( TitleLbl ) --[[ @ 0]]
	self.TitleLbl = TitleLbl --[[ @ 0]]
	
	local TitleLbl0 = LUI.UIText.new( 0.5, 0.5, -673.5, 15.5, 0.5, 0.5, -312.5, -267.5 ) --[[ @ 0]]
	TitleLbl0:setRGB( 0.86, 0.74, 0.25 ) --[[ @ 0]]
	TitleLbl0:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	TitleLbl0:setLetterSpacing( 10 ) --[[ @ 0]]
	TitleLbl0:setAlignment( Engine[@"hash_67F8853DC3581AA4"]( Enum[@"luialignment"][@"lui_alignment_left"] ) ) --[[ @ 0]]
	TitleLbl0:linkToElementModel( self, "name", true, function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			TitleLbl0:setText( ConvertToUpperString( f6_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( TitleLbl0 ) --[[ @ 0]]
	self.TitleLbl0 = TitleLbl0 --[[ @ 0]]
	
	local spacer = LUI.UIImage.new( 0.5, 0.5, -693.5, -630.5, 0.5, 0.5, -266, -263 ) --[[ @ 0]]
	spacer:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( spacer ) --[[ @ 0]]
	self.spacer = spacer --[[ @ 0]]
	
	local txtDescription = LUI.UIText.new( 0.5, 0.5, -673.5, -2.5, 0.5, 0.5, -250.5, -229.5 ) --[[ @ 0]]
	txtDescription:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	txtDescription:setTTF( "dinnext_regular" ) --[[ @ 0]]
	txtDescription:setLetterSpacing( 1 ) --[[ @ 0]]
	txtDescription:setLineSpacing( 2 ) --[[ @ 0]]
	txtDescription:setAlignment( Engine[@"hash_67F8853DC3581AA4"]( Enum[@"luialignment"][@"lui_alignment_left"] ) ) --[[ @ 0]]
	txtDescription:setAlignment( Engine[@"hash_67F8853DC3581AA4"]( Enum[@"luialignment"][@"lui_alignment_top"] ) ) --[[ @ 0]]
	self:addElement( txtDescription ) --[[ @ 0]]
	self.txtDescription = txtDescription --[[ @ 0]]
	
	local DividerSolidBot = LUI.UIImage.new( 0.5, 0.5, -960, 960, 0.5, 0.5, 441, 445 ) --[[ @ 0]]
	DividerSolidBot:setAlpha( 0.5 ) --[[ @ 0]]
	DividerSolidBot:setImage( RegisterImage( @"hash_484B43D5B04D263A" ) ) --[[ @ 0]]
	DividerSolidBot:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	DividerSolidBot:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	DividerSolidBot:setupNineSliceShader( 8, 4 ) --[[ @ 0]]
	self:addElement( DividerSolidBot ) --[[ @ 0]]
	self.DividerSolidBot = DividerSolidBot --[[ @ 0]]
	
	local BoundaryBot = LUI.UIImage.new( 0.5, 0.5, -962, 962, 0.5, 0.5, 426, 442 ) --[[ @ 0]]
	BoundaryBot:setAlpha( 0.15 ) --[[ @ 0]]
	BoundaryBot:setImage( RegisterImage( @"uie_ui_hud_tak5_player_layout_bracket" ) ) --[[ @ 0]]
	BoundaryBot:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	BoundaryBot:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	BoundaryBot:setupNineSliceShader( 66, 8 ) --[[ @ 0]]
	self:addElement( BoundaryBot ) --[[ @ 0]]
	self.BoundaryBot = BoundaryBot --[[ @ 0]]
	
	local BoundaryTop = LUI.UIImage.new( 0.5, 0.5, -962, 962, 0.5, 0.5, -442, -426 ) --[[ @ 0]]
	BoundaryTop:setAlpha( 0.15 ) --[[ @ 0]]
	BoundaryTop:setZRot( 180 ) --[[ @ 0]]
	BoundaryTop:setImage( RegisterImage( @"uie_ui_hud_tak5_player_layout_bracket" ) ) --[[ @ 0]]
	BoundaryTop:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	BoundaryTop:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	BoundaryTop:setupNineSliceShader( 66, 8 ) --[[ @ 0]]
	self:addElement( BoundaryTop ) --[[ @ 0]]
	self.BoundaryTop = BoundaryTop --[[ @ 0]]
	
	local DividerSolidTop = LUI.UIImage.new( 0.5, 0.5, -960, 960, 0.5, 0.5, -444, -440 ) --[[ @ 0]]
	DividerSolidTop:setAlpha( 0.5 ) --[[ @ 0]]
	DividerSolidTop:setImage( RegisterImage( @"hash_484B43D5B04D263A" ) ) --[[ @ 0]]
	DividerSolidTop:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	DividerSolidTop:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	DividerSolidTop:setupNineSliceShader( 8, 4 ) --[[ @ 0]]
	self:addElement( DividerSolidTop ) --[[ @ 0]]
	self.DividerSolidTop = DividerSolidTop --[[ @ 0]]
	
	local MOTDFeaturedButtonContainerPC = CoD.MOTD_FeaturedButtonContainer_PC.new( f1_local1, f1_arg0, 0.5, 0.5, 342, 699, 0.5, 0.5, 366, 426 ) --[[ @ 0]]
	MOTDFeaturedButtonContainerPC.continueButtonPC.featureOverlayButtonContainer.Title:setText( LocalizeToUpperString( @"menu/continue" ) ) --[[ @ 0]]
	MOTDFeaturedButtonContainerPC.backButtonPC.featureOverlayButtonContainer.Title:setText( LocalizeToUpperString( @"hash_778D439E1B360368" ) ) --[[ @ 0]]
	self:addElement( MOTDFeaturedButtonContainerPC ) --[[ @ 0]]
	self.MOTDFeaturedButtonContainerPC = MOTDFeaturedButtonContainerPC --[[ @ 0]]
	
	self.txtDescription:linkToElementModel( self, "content_long", true, function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			txtDescription:setText( f7_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "popupActionString", true, function ( model, f8_arg1 )
		CoD.Menu.UpdateButtonShownState( f8_arg1, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xbx_pssquare"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"], nil, function ( element, menu, controller, model )
		GoBack( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/continue", nil, nil ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], nil, function ( element, menu, controller, model )
		GoBack( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], @"mp/back", nil, nil ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_xbx_pssquare"], nil, function ( element, menu, controller, model )
		if not CoD.ModelUtility.IsSelfModelPathNil( element, controller, "popupActionString" ) and not CoD.ModelUtility.IsSelfModelValueNil( element, controller, "popupActionString" ) then
			CoD.MOTDUtility.FeatureCard_HandlePopupAction( self, controller, element, menu ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not CoD.ModelUtility.IsSelfModelPathNil( element, controller, "popupActionString" ) and not CoD.ModelUtility.IsSelfModelValueNil( element, controller, "popupActionString" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbx_pssquare"], @"menu/select", nil, nil ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self.__on_menuOpened_self = function ( f15_arg0, f15_arg1, f15_arg2, f15_arg3 )
		local f15_local0 = self --[[ @ 0]]
		CoD.BaseUtility.SetModelFromUserData( f15_arg1, self, f1_arg1._model ) --[[ @ 0]]
		CoD.MOTDUtility.FeatureCard_SetPopupActionButtonName( self, f15_arg1, f15_local0, f15_arg2 ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	f1_local1:addMenuOpenedCallback( self.__on_menuOpened_self ) --[[ @ 0]]
	MOTDFeaturedButtonContainer:setModel( self.buttonModel, f1_arg0 ) --[[ @ 0]]
	if CoD.isPC then
		MOTDFeaturedButtonContainer.id = "MOTDFeaturedButtonContainer" --[[ @ 0]]
	end
	if CoD.isPC then
		MOTDFeaturedButtonContainerPC.id = "MOTDFeaturedButtonContainerPC" --[[ @ 0]]
	end
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	self.__on_close_removeOverrides = function ()
		f1_local1:removeMenuOpenedCallback( self.__on_menuOpened_self ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.FeaturedPopup.__onClose = function ( f17_arg0 )
	f17_arg0.__on_close_removeOverrides() --[[ @ 0]]
	f17_arg0.Image:close() --[[ @ 0]]
	f17_arg0.MOTDFeaturedButtonContainer:close() --[[ @ 0]]
	f17_arg0.TitleLbl:close() --[[ @ 0]]
	f17_arg0.TitleLbl0:close() --[[ @ 0]]
	f17_arg0.txtDescription:close() --[[ @ 0]]
	f17_arg0.MOTDFeaturedButtonContainerPC:close() --[[ @ 0]]
end
 --[[ @ 0]]
