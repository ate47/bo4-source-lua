-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:3bc87ac3fc76bb82" ) --[[ @ 0]]
require( "x64:5f791681246fe2b6" ) --[[ @ 0]]
require( "ui/uieditor/widgets/store/storecommontextbacking" ) --[[ @ 0]]
require( "ui/uieditor/widgets/keyprompt" ) --[[ @ 0]]

CoD.ContractSupplyChainDetails_InfoPanel = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ContractSupplyChainDetails_InfoPanel.__defaultWidth = 558 --[[ @ 0]]
CoD.ContractSupplyChainDetails_InfoPanel.__defaultHeight = 246 --[[ @ 0]]
CoD.ContractSupplyChainDetails_InfoPanel.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ContractSupplyChainDetails_InfoPanel ) --[[ @ 0]]
	self.id = "ContractSupplyChainDetails_InfoPanel" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local SceneBlur = LUI.UIImage.new( 0, 0, 6, 552, 0, 0, 6.5, 231.5 ) --[[ @ 0]]
	SceneBlur:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	SceneBlur:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( SceneBlur ) --[[ @ 0]]
	self.SceneBlur = SceneBlur --[[ @ 0]]
	
	local Box = LUI.UIImage.new( 0, 0, 6, 552, 0, 0, 6.5, 231.5 ) --[[ @ 0]]
	Box:setAlpha( 0.01 ) --[[ @ 0]]
	self:addElement( Box ) --[[ @ 0]]
	self.Box = Box --[[ @ 0]]
	
	local DotTiledBacking = CoD.StoreCommonTextBacking.new( f1_arg0, f1_arg1, 0, 0, 6, 552, 0, 0, 7, 232 ) --[[ @ 0]]
	DotTiledBacking:setAlpha( 0.15 ) --[[ @ 0]]
	self:addElement( DotTiledBacking ) --[[ @ 0]]
	self.DotTiledBacking = DotTiledBacking --[[ @ 0]]
	
	local Desc = LUI.UIText.new( 0, 0, 27, 527, 0, 0, 90, 108 ) --[[ @ 0]]
	Desc:setTTF( "dinnext_regular" ) --[[ @ 0]]
	Desc:setLetterSpacing( 1 ) --[[ @ 0]]
	Desc:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Desc:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	Desc:linkToElementModel( self, "contentsDesc", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			Desc:setText( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Desc ) --[[ @ 0]]
	self.Desc = Desc --[[ @ 0]]
	
	local SubExtraText = LUI.UIText.new( 0, 0, 27, 527, 0, 0, 198.5, 216.5 ) --[[ @ 0]]
	SubExtraText:setTTF( "dinnext_regular" ) --[[ @ 0]]
	SubExtraText:setLetterSpacing( 1 ) --[[ @ 0]]
	SubExtraText:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	SubExtraText:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	SubExtraText:linkToElementModel( self, "subExtraText", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			SubExtraText:setText( Engine[@"hash_4F9F1239CFD921FE"]( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( SubExtraText ) --[[ @ 0]]
	self.SubExtraText = SubExtraText --[[ @ 0]]
	
	local MainExtraText = LUI.UIText.new( 0, 0, 27, 527, 0, 0, 170.5, 190.5 ) --[[ @ 0]]
	MainExtraText:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	MainExtraText:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	MainExtraText:setLetterSpacing( 2 ) --[[ @ 0]]
	MainExtraText:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	MainExtraText:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	MainExtraText:linkToElementModel( self, "mainExtraText", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			MainExtraText:setText( ToUpper( f4_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( MainExtraText ) --[[ @ 0]]
	self.MainExtraText = MainExtraText --[[ @ 0]]
	
	local Name = LUI.UIText.new( 0, 0, 27, 527, 0, 0, 53, 83 ) --[[ @ 0]]
	Name:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
	Name:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	Name:setLetterSpacing( 4 ) --[[ @ 0]]
	Name:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Name:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	Name:linkToElementModel( self, "name", true, function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			Name:setText( LocalizeToUpperString( f5_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Name ) --[[ @ 0]]
	self.Name = Name --[[ @ 0]]
	
	local ButtonTopLine9Slice = LUI.UIImage.new( 0, 0, 0, 558, 0, 0, 0, 20 ) --[[ @ 0]]
	ButtonTopLine9Slice:setAlpha( 0.25 ) --[[ @ 0]]
	ButtonTopLine9Slice:setImage( RegisterImage( @"uie_ui_menu_cac_secondary_button_top_line" ) ) --[[ @ 0]]
	ButtonTopLine9Slice:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	ButtonTopLine9Slice:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	ButtonTopLine9Slice:setupNineSliceShader( 120, 10 ) --[[ @ 0]]
	self:addElement( ButtonTopLine9Slice ) --[[ @ 0]]
	self.ButtonTopLine9Slice = ButtonTopLine9Slice --[[ @ 0]]
	
	local ButtonBottomLine9Slice = LUI.UIImage.new( 0, 0, 0, 558, 0, 0, 223, 243 ) --[[ @ 0]]
	ButtonBottomLine9Slice:setAlpha( 0.25 ) --[[ @ 0]]
	ButtonBottomLine9Slice:setImage( RegisterImage( @"uie_ui_menu_cac_secondary_button_top_line" ) ) --[[ @ 0]]
	ButtonBottomLine9Slice:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	ButtonBottomLine9Slice:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	ButtonBottomLine9Slice:setupNineSliceShader( 120, 10 ) --[[ @ 0]]
	self:addElement( ButtonBottomLine9Slice ) --[[ @ 0]]
	self.ButtonBottomLine9Slice = ButtonBottomLine9Slice --[[ @ 0]]
	
	local HeaderGlow = LUI.UIImage.new( 0, 0, 2, 556, 0, 0, 12, 44 ) --[[ @ 0]]
	HeaderGlow:setAlpha( 0.1 ) --[[ @ 0]]
	HeaderGlow:setImage( RegisterImage( @"uie_ui_menu_common_box_glow" ) ) --[[ @ 0]]
	HeaderGlow:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	HeaderGlow:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	HeaderGlow:setupNineSliceShader( 12, 12 ) --[[ @ 0]]
	HeaderGlow:linkToElementModel( self, "rarity", true, function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			HeaderGlow:setRGB( CoD.BlackMarketUtility.LootRarityToColor( f6_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( HeaderGlow ) --[[ @ 0]]
	self.HeaderGlow = HeaderGlow --[[ @ 0]]
	
	local ContractRarityHeaderBackground = LUI.UIImage.new( 0.13, 0.13, -68.5, 477.5, 0, 0, 16, 40 ) --[[ @ 0]]
	ContractRarityHeaderBackground:linkToElementModel( self, "rarity", true, function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			ContractRarityHeaderBackground:setRGB( CoD.BlackMarketUtility.LootRarityToColorDark( f7_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ContractRarityHeaderBackground ) --[[ @ 0]]
	self.ContractRarityHeaderBackground = ContractRarityHeaderBackground --[[ @ 0]]
	
	local PixelGridTiledBacking = LUI.UIImage.new( 0, 0, 5.5, 551.5, 0, 0, 16, 40 ) --[[ @ 0]]
	PixelGridTiledBacking:setAlpha( 0.05 ) --[[ @ 0]]
	PixelGridTiledBacking:setImage( RegisterImage( @"uie_ui_hud_notifications_pixelpattern" ) ) --[[ @ 0]]
	PixelGridTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	PixelGridTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	PixelGridTiledBacking:setupNineSliceShader( 128, 128 ) --[[ @ 0]]
	self:addElement( PixelGridTiledBacking ) --[[ @ 0]]
	self.PixelGridTiledBacking = PixelGridTiledBacking --[[ @ 0]]
	
	local ContractRarityHeader = CoD.ContractRarityHeader.new( f1_arg0, f1_arg1, 0, 0, 28, 228, 0, 0, 17, 43 ) --[[ @ 0]]
	ContractRarityHeader:linkToElementModel( self, nil, false, function ( model )
		ContractRarityHeader:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ContractRarityHeader ) --[[ @ 0]]
	self.ContractRarityHeader = ContractRarityHeader --[[ @ 0]]
	
	local KeyPrompt = nil --[[ @ 0]]
	
	KeyPrompt = CoD.KeyPrompt.new( f1_arg0, f1_arg1, 0, 0, 2.5, 38.5, 0, 0, -38, -2 ) --[[ @ 0]]
	KeyPrompt:setAlpha( 0 ) --[[ @ 0]]
	KeyPrompt.keybind:setText( CoD.BaseUtility.AlreadyLocalized( "[{ui_contextual_1}]" ) ) --[[ @ 0]]
	self:addElement( KeyPrompt ) --[[ @ 0]]
	self.KeyPrompt = KeyPrompt --[[ @ 0]]
	
	local f1_local15 = nil --[[ @ 0]]
	self.togglePreviewButton = LUI.UIElement.createFake() --[[ @ 0]]
	
	local togglePreviewLabel = LUI.UIText.new( 0, 0, 69, 117, 0.5, 0.5, -149.5, -131.5 ) --[[ @ 0]]
	togglePreviewLabel:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	togglePreviewLabel:setAlpha( 0 ) --[[ @ 0]]
	togglePreviewLabel:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/toggle_preview" ) ) --[[ @ 0]]
	togglePreviewLabel:setTTF( "dinnext_regular" ) --[[ @ 0]]
	togglePreviewLabel:setLetterSpacing( 2 ) --[[ @ 0]]
	togglePreviewLabel:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( togglePreviewLabel ) --[[ @ 0]]
	self.togglePreviewLabel = togglePreviewLabel --[[ @ 0]]
	
	local Seasonal = CoD.ContractSeasonalOverlay_MetadataPanel.new( f1_arg0, f1_arg1, 0, 0, 6, 552, 0, 0, 16, 41 ) --[[ @ 0]]
	Seasonal:mergeStateConditions( {
		{
			stateName = "Show",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "seasonal" )
			end
		}
	} ) --[[ @ 0]]
	Seasonal:linkToElementModel( Seasonal, "seasonal", true, function ( model )
		f1_arg0:updateElementState( Seasonal, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "seasonal"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	Seasonal:linkToElementModel( self, nil, false, function ( model )
		Seasonal:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Seasonal ) --[[ @ 0]]
	self.Seasonal = Seasonal --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return true
			end
		},
		{
			stateName = "Weapon",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "itemCategory", @"signature_weapon" ) and not IsMouseOrKeyboard( f1_arg1 )
			end
		},
		{
			stateName = "WeaponKBM",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "itemCategory", @"signature_weapon" ) and IsMouseOrKeyboard( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "itemCategory", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "itemCategory"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:appendEventHandler( "input_source_changed", function ( f16_arg0, f16_arg1 )
		f16_arg1.menu = f16_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( self, f16_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local18 = self --[[ @ 0]]
	local f1_local19 = self.subscribeToModel --[[ @ 0]]
	local f1_local20 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local19( f1_local18, f1_local20.LastInput, function ( f17_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f17_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ContractSupplyChainDetails_InfoPanel.__resetProperties = function ( f18_arg0 )
	f18_arg0.togglePreviewLabel:completeAnimation() --[[ @ 0]]
	f18_arg0.togglePreviewButton:completeAnimation() --[[ @ 0]]
	f18_arg0.Seasonal:completeAnimation() --[[ @ 0]]
	f18_arg0.ContractRarityHeader:completeAnimation() --[[ @ 0]]
	f18_arg0.PixelGridTiledBacking:completeAnimation() --[[ @ 0]]
	f18_arg0.ContractRarityHeaderBackground:completeAnimation() --[[ @ 0]]
	f18_arg0.HeaderGlow:completeAnimation() --[[ @ 0]]
	f18_arg0.ButtonBottomLine9Slice:completeAnimation() --[[ @ 0]]
	f18_arg0.ButtonTopLine9Slice:completeAnimation() --[[ @ 0]]
	f18_arg0.Name:completeAnimation() --[[ @ 0]]
	f18_arg0.MainExtraText:completeAnimation() --[[ @ 0]]
	f18_arg0.SubExtraText:completeAnimation() --[[ @ 0]]
	f18_arg0.Desc:completeAnimation() --[[ @ 0]]
	f18_arg0.DotTiledBacking:completeAnimation() --[[ @ 0]]
	f18_arg0.Box:completeAnimation() --[[ @ 0]]
	f18_arg0.SceneBlur:completeAnimation() --[[ @ 0]]
	f18_arg0.KeyPrompt:completeAnimation() --[[ @ 0]]
	f18_arg0.togglePreviewLabel:setAlpha( 0 ) --[[ @ 0]]
	f18_arg0.togglePreviewButton:setAlpha( 0 ) --[[ @ 0]]
	f18_arg0.Seasonal:setAlpha( 1 ) --[[ @ 0]]
	f18_arg0.ContractRarityHeader:setAlpha( 1 ) --[[ @ 0]]
	f18_arg0.PixelGridTiledBacking:setAlpha( 0.05 ) --[[ @ 0]]
	f18_arg0.ContractRarityHeaderBackground:setAlpha( 1 ) --[[ @ 0]]
	f18_arg0.HeaderGlow:setAlpha( 0.1 ) --[[ @ 0]]
	f18_arg0.ButtonBottomLine9Slice:setAlpha( 0.25 ) --[[ @ 0]]
	f18_arg0.ButtonTopLine9Slice:setAlpha( 0.25 ) --[[ @ 0]]
	f18_arg0.Name:setAlpha( 1 ) --[[ @ 0]]
	f18_arg0.MainExtraText:setAlpha( 1 ) --[[ @ 0]]
	f18_arg0.SubExtraText:setAlpha( 1 ) --[[ @ 0]]
	f18_arg0.Desc:setAlpha( 1 ) --[[ @ 0]]
	f18_arg0.DotTiledBacking:setAlpha( 0.15 ) --[[ @ 0]]
	f18_arg0.Box:setAlpha( 0.01 ) --[[ @ 0]]
	f18_arg0.SceneBlur:setAlpha( 1 ) --[[ @ 0]]
	f18_arg0.KeyPrompt:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ContractSupplyChainDetails_InfoPanel.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f19_arg0.togglePreviewButton:completeAnimation() --[[ @ 0]]
			f19_arg0.togglePreviewButton:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.togglePreviewButton ) --[[ @ 0]]
			f19_arg0.togglePreviewLabel:completeAnimation() --[[ @ 0]]
			f19_arg0.togglePreviewLabel:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.togglePreviewLabel ) --[[ @ 0]]
			f19_arg0.Seasonal:completeAnimation() --[[ @ 0]]
			f19_arg0.Seasonal:setAlpha( 1 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.Seasonal ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f20_arg0, f20_arg1 )
			f20_arg0:__resetProperties() --[[ @ 0]]
			f20_arg0:setupElementClipCounter( 15 ) --[[ @ 0]]
			f20_arg0.SceneBlur:completeAnimation() --[[ @ 0]]
			f20_arg0.SceneBlur:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.SceneBlur ) --[[ @ 0]]
			f20_arg0.Box:completeAnimation() --[[ @ 0]]
			f20_arg0.Box:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.Box ) --[[ @ 0]]
			f20_arg0.DotTiledBacking:completeAnimation() --[[ @ 0]]
			f20_arg0.DotTiledBacking:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.DotTiledBacking ) --[[ @ 0]]
			f20_arg0.Desc:completeAnimation() --[[ @ 0]]
			f20_arg0.Desc:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.Desc ) --[[ @ 0]]
			f20_arg0.SubExtraText:completeAnimation() --[[ @ 0]]
			f20_arg0.SubExtraText:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.SubExtraText ) --[[ @ 0]]
			f20_arg0.MainExtraText:completeAnimation() --[[ @ 0]]
			f20_arg0.MainExtraText:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.MainExtraText ) --[[ @ 0]]
			f20_arg0.Name:completeAnimation() --[[ @ 0]]
			f20_arg0.Name:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.Name ) --[[ @ 0]]
			f20_arg0.ButtonTopLine9Slice:completeAnimation() --[[ @ 0]]
			f20_arg0.ButtonTopLine9Slice:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.ButtonTopLine9Slice ) --[[ @ 0]]
			f20_arg0.ButtonBottomLine9Slice:completeAnimation() --[[ @ 0]]
			f20_arg0.ButtonBottomLine9Slice:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.ButtonBottomLine9Slice ) --[[ @ 0]]
			f20_arg0.HeaderGlow:completeAnimation() --[[ @ 0]]
			f20_arg0.HeaderGlow:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.HeaderGlow ) --[[ @ 0]]
			f20_arg0.ContractRarityHeaderBackground:completeAnimation() --[[ @ 0]]
			f20_arg0.ContractRarityHeaderBackground:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.ContractRarityHeaderBackground ) --[[ @ 0]]
			f20_arg0.PixelGridTiledBacking:completeAnimation() --[[ @ 0]]
			f20_arg0.PixelGridTiledBacking:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.PixelGridTiledBacking ) --[[ @ 0]]
			f20_arg0.ContractRarityHeader:completeAnimation() --[[ @ 0]]
			f20_arg0.ContractRarityHeader:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.ContractRarityHeader ) --[[ @ 0]]
			f20_arg0.togglePreviewButton:completeAnimation() --[[ @ 0]]
			f20_arg0.togglePreviewButton:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.togglePreviewButton ) --[[ @ 0]]
			f20_arg0.togglePreviewLabel:completeAnimation() --[[ @ 0]]
			f20_arg0.togglePreviewLabel:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.togglePreviewLabel ) --[[ @ 0]]
			f20_arg0.Seasonal:completeAnimation() --[[ @ 0]]
			f20_arg0.Seasonal:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.Seasonal ) --[[ @ 0]]
		end
	},
	Weapon = {
		DefaultClip = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f21_arg0.togglePreviewButton:completeAnimation() --[[ @ 0]]
			f21_arg0.togglePreviewButton:setAlpha( 1 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.togglePreviewButton ) --[[ @ 0]]
			f21_arg0.togglePreviewLabel:completeAnimation() --[[ @ 0]]
			f21_arg0.togglePreviewLabel:setAlpha( 1 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.togglePreviewLabel ) --[[ @ 0]]
			f21_arg0.Seasonal:completeAnimation() --[[ @ 0]]
			f21_arg0.Seasonal:setAlpha( 1 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.Seasonal ) --[[ @ 0]]
		end
	},
	WeaponKBM = {
		DefaultClip = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f22_arg0.KeyPrompt:completeAnimation() --[[ @ 0]]
			f22_arg0.KeyPrompt:setAlpha( 1 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.KeyPrompt ) --[[ @ 0]]
			f22_arg0.togglePreviewLabel:completeAnimation() --[[ @ 0]]
			f22_arg0.togglePreviewLabel:setAlpha( 1 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.togglePreviewLabel ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ContractSupplyChainDetails_InfoPanel.__onClose = function ( f23_arg0 )
	f23_arg0.DotTiledBacking:close() --[[ @ 0]]
	f23_arg0.Desc:close() --[[ @ 0]]
	f23_arg0.SubExtraText:close() --[[ @ 0]]
	f23_arg0.MainExtraText:close() --[[ @ 0]]
	f23_arg0.Name:close() --[[ @ 0]]
	f23_arg0.HeaderGlow:close() --[[ @ 0]]
	f23_arg0.ContractRarityHeaderBackground:close() --[[ @ 0]]
	f23_arg0.ContractRarityHeader:close() --[[ @ 0]]
	f23_arg0.KeyPrompt:close() --[[ @ 0]]
	f23_arg0.togglePreviewButton:close() --[[ @ 0]]
	f23_arg0.Seasonal:close() --[[ @ 0]]
end
 --[[ @ 0]]
