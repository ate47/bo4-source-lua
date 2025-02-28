-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:2266118fa96f77c8" ) --[[ @ 0]]
require( "x64:73c21aa1a96202c9" ) --[[ @ 0]]
require( "x64:368036bda8abbe94" ) --[[ @ 0]]
require( "x64:67935bd4c2250126" ) --[[ @ 0]]
require( "x64:43e58edf544a2163" ) --[[ @ 0]]

CoD.SupplyChainStreamInternal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.SupplyChainStreamInternal.__defaultWidth = 349 --[[ @ 0]]
CoD.SupplyChainStreamInternal.__defaultHeight = 158 --[[ @ 0]]
CoD.SupplyChainStreamInternal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.SupplyChainStreamInternal ) --[[ @ 0]]
	self.id = "SupplyChainStreamInternal" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Background = LUI.UIImage.new( 0, 1, 1, -1, 0, 1, 1, -1 ) --[[ @ 0]]
	Background:setRGB( 0.11, 0.18, 0.24 ) --[[ @ 0]]
	Background:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_normal" ) ) --[[ @ 0]]
	Background:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	Background:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	Background:setShaderVector( 2, 1, 0, 0, 0 ) --[[ @ 0]]
	Background:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	Background:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Background ) --[[ @ 0]]
	self.Background = Background --[[ @ 0]]
	
	local Gradient = LUI.UIImage.new( 0, 0, 1, 348, 0, 0, 1, 72 ) --[[ @ 0]]
	Gradient:setRGB( 0.08, 0.21, 0.31 ) --[[ @ 0]]
	Gradient:setAlpha( 0.94 ) --[[ @ 0]]
	Gradient:setImage( RegisterImage( @"uie_ui_menu_common_gradient" ) ) --[[ @ 0]]
	Gradient:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Gradient ) --[[ @ 0]]
	self.Gradient = Gradient --[[ @ 0]]
	
	local NineSliceShaderImage = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	NineSliceShaderImage:setRGB( 0.25, 0.36, 0.4 ) --[[ @ 0]]
	NineSliceShaderImage:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_3E7BDCB879A5176D" ) ) --[[ @ 0]]
	NineSliceShaderImage:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NineSliceShaderImage:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	NineSliceShaderImage:setupNineSliceShader( 1, 1 ) --[[ @ 0]]
	self:addElement( NineSliceShaderImage ) --[[ @ 0]]
	self.NineSliceShaderImage = NineSliceShaderImage --[[ @ 0]]
	
	local TiledShaderImage = LUI.UIImage.new( 0, 1, 1, -1, 0, 1, 1.5, -0.5 ) --[[ @ 0]]
	TiledShaderImage:setRGB( 0, 0, 0 ) --[[ @ 0]]
	TiledShaderImage:setImage( RegisterImage( @"uie_ui_menu_store_repeat_dot_pattern" ) ) --[[ @ 0]]
	TiledShaderImage:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	TiledShaderImage:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	TiledShaderImage:setupNineSliceShader( 24, 24 ) --[[ @ 0]]
	self:addElement( TiledShaderImage ) --[[ @ 0]]
	self.TiledShaderImage = TiledShaderImage --[[ @ 0]]
	
	local GridTiled = LUI.UIImage.new( 0.2, 0.2, -67, 280, 0.19, 0.19, 87.5, 127.5 ) --[[ @ 0]]
	GridTiled:setRGB( 0.6, 0.89, 1 ) --[[ @ 0]]
	GridTiled:setAlpha( 0.06 ) --[[ @ 0]]
	GridTiled:setScale( 1.01, 1.01 ) --[[ @ 0]]
	GridTiled:setImage( RegisterImage( @"uie_hud_common_corner_pip" ) ) --[[ @ 0]]
	GridTiled:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	GridTiled:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	GridTiled:setupNineSliceShader( 8, 8 ) --[[ @ 0]]
	self:addElement( GridTiled ) --[[ @ 0]]
	self.GridTiled = GridTiled --[[ @ 0]]
	
	local FocusGlow = LUI.UIImage.new( 0, 1, -145, 145, 0.01, 0.99, -46, 46 ) --[[ @ 0]]
	FocusGlow:setAlpha( 0 ) --[[ @ 0]]
	FocusGlow:setImage( RegisterImage( @"uie_ui_menu_common_focus_glow_large" ) ) --[[ @ 0]]
	FocusGlow:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_6DAB59B2CAE01851" ) ) --[[ @ 0]]
	FocusGlow:setShaderVector( 0, 0, 0, 0.25, 0.25 ) --[[ @ 0]]
	FocusGlow:setShaderVector( 1, 1.2, 0, 0, 0 ) --[[ @ 0]]
	FocusGlow:setupNineSliceShader( 300, 300 ) --[[ @ 0]]
	self:addElement( FocusGlow ) --[[ @ 0]]
	self.FocusGlow = FocusGlow --[[ @ 0]]
	
	local StreamImage = LUI.UIImage.new( 0, 0, 1, 348, 0, 0, 0, 158 ) --[[ @ 0]]
	StreamImage:linkToElementModel( self, "streamImage", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			StreamImage:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( StreamImage ) --[[ @ 0]]
	self.StreamImage = StreamImage --[[ @ 0]]
	
	local EventTimeRemaining = LUI.UIText.new( 0, 0, 14, 334, 0, 0, 111, 125 ) --[[ @ 0]]
	EventTimeRemaining:setRGB( ColorSet.T8__OCHRE.r, ColorSet.T8__OCHRE.g, ColorSet.T8__OCHRE.b ) --[[ @ 0]]
	EventTimeRemaining:setAlpha( 0 ) --[[ @ 0]]
	EventTimeRemaining:setTTF( "dinnext_regular" ) --[[ @ 0]]
	EventTimeRemaining:setLetterSpacing( 1 ) --[[ @ 0]]
	EventTimeRemaining:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	EventTimeRemaining:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	EventTimeRemaining:subscribeToGlobalModel( f1_arg1, "AutoEvents", "loot_event_stream_timer", function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			EventTimeRemaining:setText( LocalizeIntoStringIfNotEmpty( @"hash_1C0CE2452CF87DB1", f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( EventTimeRemaining ) --[[ @ 0]]
	self.EventTimeRemaining = EventTimeRemaining --[[ @ 0]]
	
	local SeasonTimeRemaining = LUI.UIText.new( 0, 0, 14, 343, 0, 0, 134, 148 ) --[[ @ 0]]
	SeasonTimeRemaining:setRGB( ColorSet.T8__OCHRE.r, ColorSet.T8__OCHRE.g, ColorSet.T8__OCHRE.b ) --[[ @ 0]]
	SeasonTimeRemaining:setAlpha( 0 ) --[[ @ 0]]
	SeasonTimeRemaining:setTTF( "dinnext_regular" ) --[[ @ 0]]
	SeasonTimeRemaining:setLetterSpacing( 1 ) --[[ @ 0]]
	SeasonTimeRemaining:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	SeasonTimeRemaining:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	SeasonTimeRemaining.__String_Reference = function ( f4_arg0 )
		local f4_local0 = f4_arg0:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			SeasonTimeRemaining:setText( CoD.BlackMarketUtility.GetSeasonTimerString( f1_arg1, f4_local0 ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	SeasonTimeRemaining:subscribeToGlobalModel( f1_arg1, "AutoEvents", "loot_season_stream_timer", SeasonTimeRemaining.__String_Reference ) --[[ @ 0]]
	SeasonTimeRemaining.__String_Reference_FullPath = function ()
		local f5_local0 = DataSources.AutoEvents.getModel( f1_arg1 ) --[[ @ 0]]
		f5_local0 = f5_local0.loot_season_stream_timer --[[ @ 0]]
		if f5_local0 then
			SeasonTimeRemaining.__String_Reference( f5_local0 ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	self:addElement( SeasonTimeRemaining ) --[[ @ 0]]
	self.SeasonTimeRemaining = SeasonTimeRemaining --[[ @ 0]]
	
	local ContractTimeRemaining = LUI.UIText.new( 0, 0, 14, 334, 0, 0, 134, 148 ) --[[ @ 0]]
	ContractTimeRemaining:setRGB( ColorSet.T8__OCHRE.r, ColorSet.T8__OCHRE.g, ColorSet.T8__OCHRE.b ) --[[ @ 0]]
	ContractTimeRemaining:setAlpha( 0 ) --[[ @ 0]]
	ContractTimeRemaining:setTTF( "dinnext_regular" ) --[[ @ 0]]
	ContractTimeRemaining:setLetterSpacing( 1 ) --[[ @ 0]]
	ContractTimeRemaining:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	ContractTimeRemaining:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	ContractTimeRemaining:subscribeToGlobalModel( f1_arg1, "ItemshopRotation", "loot_itemshop_slot3_timer", function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			ContractTimeRemaining:setText( LocalizeIntoStringIfNotEmpty( @"hash_890CD07DDE9B131", f6_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ContractTimeRemaining ) --[[ @ 0]]
	self.ContractTimeRemaining = ContractTimeRemaining --[[ @ 0]]
	
	local NextContractTimeRemaining = LUI.UIText.new( 0, 0, 14, 334, 0, 0, 134, 148 ) --[[ @ 0]]
	NextContractTimeRemaining:setRGB( ColorSet.T8__OCHRE.r, ColorSet.T8__OCHRE.g, ColorSet.T8__OCHRE.b ) --[[ @ 0]]
	NextContractTimeRemaining:setAlpha( 0 ) --[[ @ 0]]
	NextContractTimeRemaining:setTTF( "dinnext_regular" ) --[[ @ 0]]
	NextContractTimeRemaining:setLetterSpacing( 1 ) --[[ @ 0]]
	NextContractTimeRemaining:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	NextContractTimeRemaining:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	NextContractTimeRemaining:subscribeToGlobalModel( f1_arg1, "ItemshopRotation", "loot_itemshop_slot3_timer", function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			NextContractTimeRemaining:setText( LocalizeIntoStringIfNotEmpty( @"hash_5AAA70C5480C51D2", f7_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( NextContractTimeRemaining ) --[[ @ 0]]
	self.NextContractTimeRemaining = NextContractTimeRemaining --[[ @ 0]]
	
	local Price = LUI.UIText.new( 0, 0, 14, 238, 0, 0, 108, 129 ) --[[ @ 0]]
	Price:setRGB( ColorSet.CodPointsNumber.r, ColorSet.CodPointsNumber.g, ColorSet.CodPointsNumber.b ) --[[ @ 0]]
	Price:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_393F12745A24670F" ) ) --[[ @ 0]]
	Price:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	Price:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Price:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( Price ) --[[ @ 0]]
	self.Price = Price --[[ @ 0]]
	
	local StreamSubtitle = LUI.UIText.new( 0, 0, 14, 334, 0, 0, 96, 114 ) --[[ @ 0]]
	StreamSubtitle:setRGB( 1, 0.36, 0 ) --[[ @ 0]]
	StreamSubtitle:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	StreamSubtitle:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_90D57B1E92D39D7" ) ) --[[ @ 0]]
	StreamSubtitle:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	StreamSubtitle:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	StreamSubtitle:setShaderVector( 2, 0, 0, 0, 1 ) --[[ @ 0]]
	StreamSubtitle:setLetterSpacing( 3 ) --[[ @ 0]]
	StreamSubtitle:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	StreamSubtitle:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	StreamSubtitle:linkToElementModel( self, "streamSubtitle", true, function ( model )
		local f8_local0 = model:get() --[[ @ 0]]
		if f8_local0 ~= nil then
			StreamSubtitle:setText( LocalizeToUpperString( f8_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( StreamSubtitle ) --[[ @ 0]]
	self.StreamSubtitle = StreamSubtitle --[[ @ 0]]
	
	local StreamName = LUI.UIText.new( 0, 0, 14, 247, 0, 0, 48, 72 ) --[[ @ 0]]
	StreamName:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	StreamName:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_90D57B1E92D39D7" ) ) --[[ @ 0]]
	StreamName:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	StreamName:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	StreamName:setShaderVector( 2, 0, 0, 0, 0.6 ) --[[ @ 0]]
	StreamName:setLetterSpacing( 3 ) --[[ @ 0]]
	StreamName:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	StreamName:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	StreamName:linkToElementModel( self, "streamName", true, function ( model )
		local f9_local0 = model:get() --[[ @ 0]]
		if f9_local0 ~= nil then
			StreamName:setText( LocalizeToUpperString( f9_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( StreamName ) --[[ @ 0]]
	self.StreamName = StreamName --[[ @ 0]]
	
	local ProgressBarBacking = CoD.ContractProgressBar.new( f1_arg0, f1_arg1, 0, 0, 7, 351, 0, 0, 130, 148 ) --[[ @ 0]]
	ProgressBarBacking:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "isContractComplete" )
			end
		}
	} ) --[[ @ 0]]
	ProgressBarBacking:linkToElementModel( ProgressBarBacking, "isContractComplete", true, function ( model )
		f1_arg0:updateElementState( ProgressBarBacking, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "isContractComplete"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ProgressBarBacking:setScale( 0.96, 0.96 ) --[[ @ 0]]
	ProgressBarBacking:linkToElementModel( self, nil, false, function ( model )
		ProgressBarBacking:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ProgressBarBacking ) --[[ @ 0]]
	self.ProgressBarBacking = ProgressBarBacking --[[ @ 0]]
	
	local ActiveBanner = CoD.ContractActiveBanner.new( f1_arg0, f1_arg1, 0, 0, 22, 172, 0, 0, 100, 125 ) --[[ @ 0]]
	ActiveBanner:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "isContractComplete" )
			end
		}
	} ) --[[ @ 0]]
	ActiveBanner:linkToElementModel( ActiveBanner, "isContractComplete", true, function ( model )
		f1_arg0:updateElementState( ActiveBanner, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "isContractComplete"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ActiveBanner:linkToElementModel( self, nil, false, function ( model )
		ActiveBanner:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ActiveBanner ) --[[ @ 0]]
	self.ActiveBanner = ActiveBanner --[[ @ 0]]
	
	local CompleteBanner = CoD.ContractCompleteBanner.new( f1_arg0, f1_arg1, 0, 0, 22, 172, 0, 0, 128.5, 153.5 ) --[[ @ 0]]
	CompleteBanner:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "isContractComplete" )
			end
		}
	} ) --[[ @ 0]]
	CompleteBanner:linkToElementModel( CompleteBanner, "isContractComplete", true, function ( model )
		f1_arg0:updateElementState( CompleteBanner, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "isContractComplete"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	CompleteBanner:linkToElementModel( self, nil, false, function ( model )
		CompleteBanner:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( CompleteBanner ) --[[ @ 0]]
	self.CompleteBanner = CompleteBanner --[[ @ 0]]
	
	local Box = LUI.UIImage.new( 0, 0, 1, 348, 0, 0, 7, 28 ) --[[ @ 0]]
	Box:setRGB( 0, 0.04, 0.07 ) --[[ @ 0]]
	Box:setAlpha( 0.7 ) --[[ @ 0]]
	self:addElement( Box ) --[[ @ 0]]
	self.Box = Box --[[ @ 0]]
	
	local FeatureTitle = LUI.UIText.new( 0, 0, 14, 320, 0, 0, 9, 26 ) --[[ @ 0]]
	FeatureTitle:setRGB( 0.76, 0.93, 1 ) --[[ @ 0]]
	FeatureTitle:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	FeatureTitle:setLetterSpacing( 4 ) --[[ @ 0]]
	FeatureTitle:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	FeatureTitle:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	FeatureTitle:linkToElementModel( self, "featureTitle", true, function ( model )
		local f19_local0 = model:get() --[[ @ 0]]
		if f19_local0 ~= nil then
			FeatureTitle:setText( LocalizeToUpperString( f19_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( FeatureTitle ) --[[ @ 0]]
	self.FeatureTitle = FeatureTitle --[[ @ 0]]
	
	local ContractRarityHeaderBackground = LUI.UIImage.new( 0, 0, 1, 348, 0, 0, 6.5, 27.5 ) --[[ @ 0]]
	ContractRarityHeaderBackground:setAlpha( 0.94 ) --[[ @ 0]]
	ContractRarityHeaderBackground:linkToElementModel( self, "rarity", true, function ( model )
		local f20_local0 = model:get() --[[ @ 0]]
		if f20_local0 ~= nil then
			ContractRarityHeaderBackground:setRGB( CoD.BlackMarketUtility.LootRarityToColorDark( f20_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ContractRarityHeaderBackground ) --[[ @ 0]]
	self.ContractRarityHeaderBackground = ContractRarityHeaderBackground --[[ @ 0]]
	
	local ContractRarityHeaderTile = CoD.ContractRarityHeaderTile.new( f1_arg0, f1_arg1, 0, 0, 16, 216, 0, 0, 8.5, 34.5 ) --[[ @ 0]]
	ContractRarityHeaderTile.Contract:setText( LocalizeToUpperString( @"hash_0" ) ) --[[ @ 0]]
	ContractRarityHeaderTile:linkToElementModel( self, nil, false, function ( model )
		ContractRarityHeaderTile:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ContractRarityHeaderTile ) --[[ @ 0]]
	self.ContractRarityHeaderTile = ContractRarityHeaderTile --[[ @ 0]]
	
	local RaritySideImage = LUI.UIImage.new( 0, 0, 0, 3, 0, 0, 0, 158 ) --[[ @ 0]]
	RaritySideImage:setAlpha( 0 ) --[[ @ 0]]
	RaritySideImage:linkToElementModel( self, "rarity", true, function ( model )
		local f22_local0 = model:get() --[[ @ 0]]
		if f22_local0 ~= nil then
			RaritySideImage:setRGB( CoD.BlackMarketUtility.LootRarityToColor( f22_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( RaritySideImage ) --[[ @ 0]]
	self.RaritySideImage = RaritySideImage --[[ @ 0]]
	
	local FocusBorder = LUI.UIImage.new( 0, 1, -3, 3, 0, 1, -3, 3 ) --[[ @ 0]]
	FocusBorder:setRGB( 0.96, 0.94, 0.78 ) --[[ @ 0]]
	FocusBorder:setAlpha( 0 ) --[[ @ 0]]
	FocusBorder:setImage( RegisterImage( @"uie_ui_menu_store_focus_frame" ) ) --[[ @ 0]]
	FocusBorder:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FocusBorder:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FocusBorder:setupNineSliceShader( 10, 10 ) --[[ @ 0]]
	self:addElement( FocusBorder ) --[[ @ 0]]
	self.FocusBorder = FocusBorder --[[ @ 0]]
	
	local SeasonalOverlay = CoD.ContractSeasonalOverlay_SupplyChain.new( f1_arg0, f1_arg1, 0, 0, 0, 349, 0, 0, 0, 158 ) --[[ @ 0]]
	SeasonalOverlay:mergeStateConditions( {
		{
			stateName = "Show",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( self, f1_arg1, "seasonal" )
			end
		}
	} ) --[[ @ 0]]
	SeasonalOverlay:linkToElementModel( SeasonalOverlay, "seasonal", true, function ( model )
		f1_arg0:updateElementState( SeasonalOverlay, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "seasonal"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	SeasonalOverlay:linkToElementModel( self, nil, false, function ( model )
		SeasonalOverlay:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( SeasonalOverlay ) --[[ @ 0]]
	self.SeasonalOverlay = SeasonalOverlay --[[ @ 0]]
	
	local f1_local25 = SeasonTimeRemaining --[[ @ 0]]
	local f1_local26 = SeasonTimeRemaining.subscribeToModel --[[ @ 0]]
	local f1_local27 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local26( f1_local25, f1_local27.LootStreamProgress, SeasonTimeRemaining.__String_Reference_FullPath ) --[[ @ 0]]
	self:mergeStateConditions( {
		{
			stateName = "ContractsComplete",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "isSpecialEvent" ) and CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "isUpsell" )
			end
		},
		{
			stateName = "Upsell",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "isUpsell" )
			end
		},
		{
			stateName = "SpecialEvent",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "isSpecialEvent" )
			end
		},
		{
			stateName = "ActiveContract",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "isContract" )
			end
		},
		{
			stateName = "ContrabandStream",
			condition = function ( menu, element, event )
				return AlwaysTrue()
			end
		},
		{
			stateName = "Locked",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "unlocked", false )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "isSpecialEvent", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "isSpecialEvent"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "isUpsell", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "isUpsell"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "isContract", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "isContract"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "unlocked", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "unlocked"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.SupplyChainStreamInternal.__resetProperties = function ( f36_arg0 )
	f36_arg0.Price:completeAnimation() --[[ @ 0]]
	f36_arg0.ActiveBanner:completeAnimation() --[[ @ 0]]
	f36_arg0.CompleteBanner:completeAnimation() --[[ @ 0]]
	f36_arg0.ProgressBarBacking:completeAnimation() --[[ @ 0]]
	f36_arg0.FeatureTitle:completeAnimation() --[[ @ 0]]
	f36_arg0.ContractRarityHeaderBackground:completeAnimation() --[[ @ 0]]
	f36_arg0.ContractRarityHeaderTile:completeAnimation() --[[ @ 0]]
	f36_arg0.Box:completeAnimation() --[[ @ 0]]
	f36_arg0.RaritySideImage:completeAnimation() --[[ @ 0]]
	f36_arg0.ContractTimeRemaining:completeAnimation() --[[ @ 0]]
	f36_arg0.NextContractTimeRemaining:completeAnimation() --[[ @ 0]]
	f36_arg0.StreamName:completeAnimation() --[[ @ 0]]
	f36_arg0.StreamSubtitle:completeAnimation() --[[ @ 0]]
	f36_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
	f36_arg0.FocusBorder:completeAnimation() --[[ @ 0]]
	f36_arg0.NineSliceShaderImage:completeAnimation() --[[ @ 0]]
	f36_arg0.SeasonTimeRemaining:completeAnimation() --[[ @ 0]]
	f36_arg0.EventTimeRemaining:completeAnimation() --[[ @ 0]]
	f36_arg0.Background:completeAnimation() --[[ @ 0]]
	f36_arg0.Gradient:completeAnimation() --[[ @ 0]]
	f36_arg0.GridTiled:completeAnimation() --[[ @ 0]]
	f36_arg0.Price:setAlpha( 1 ) --[[ @ 0]]
	f36_arg0.ActiveBanner:setAlpha( 1 ) --[[ @ 0]]
	f36_arg0.CompleteBanner:setLeftRight( 0, 0, 22, 172 ) --[[ @ 0]]
	f36_arg0.CompleteBanner:setTopBottom( 0, 0, 128.5, 153.5 ) --[[ @ 0]]
	f36_arg0.CompleteBanner:setAlpha( 1 ) --[[ @ 0]]
	f36_arg0.ProgressBarBacking:setAlpha( 1 ) --[[ @ 0]]
	f36_arg0.FeatureTitle:setAlpha( 1 ) --[[ @ 0]]
	f36_arg0.ContractRarityHeaderBackground:setAlpha( 0.94 ) --[[ @ 0]]
	f36_arg0.ContractRarityHeaderTile:setAlpha( 1 ) --[[ @ 0]]
	f36_arg0.Box:setAlpha( 0.7 ) --[[ @ 0]]
	f36_arg0.RaritySideImage:setAlpha( 0 ) --[[ @ 0]]
	f36_arg0.ContractTimeRemaining:setAlpha( 0 ) --[[ @ 0]]
	f36_arg0.NextContractTimeRemaining:setAlpha( 0 ) --[[ @ 0]]
	f36_arg0.StreamName:setAlpha( 1 ) --[[ @ 0]]
	f36_arg0.StreamSubtitle:setAlpha( 1 ) --[[ @ 0]]
	f36_arg0.FocusGlow:setAlpha( 0 ) --[[ @ 0]]
	f36_arg0.FocusBorder:setAlpha( 0 ) --[[ @ 0]]
	f36_arg0.NineSliceShaderImage:setRGB( 0.25, 0.36, 0.4 ) --[[ @ 0]]
	f36_arg0.SeasonTimeRemaining:setAlpha( 0 ) --[[ @ 0]]
	f36_arg0.EventTimeRemaining:setTopBottom( 0, 0, 111, 125 ) --[[ @ 0]]
	f36_arg0.EventTimeRemaining:setAlpha( 0 ) --[[ @ 0]]
	f36_arg0.Background:setRGB( 0.11, 0.18, 0.24 ) --[[ @ 0]]
	f36_arg0.Gradient:setAlpha( 0.94 ) --[[ @ 0]]
	f36_arg0.GridTiled:setAlpha( 0.06 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.SupplyChainStreamInternal.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f37_arg0, f37_arg1 )
			f37_arg0:__resetProperties() --[[ @ 0]]
			f37_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f37_arg0.Price:completeAnimation() --[[ @ 0]]
			f37_arg0.Price:setAlpha( 0 ) --[[ @ 0]]
			f37_arg0.clipFinished( f37_arg0.Price ) --[[ @ 0]]
			f37_arg0.ActiveBanner:completeAnimation() --[[ @ 0]]
			f37_arg0.ActiveBanner:setAlpha( 0 ) --[[ @ 0]]
			f37_arg0.clipFinished( f37_arg0.ActiveBanner ) --[[ @ 0]]
			f37_arg0.CompleteBanner:completeAnimation() --[[ @ 0]]
			f37_arg0.CompleteBanner:setAlpha( 0 ) --[[ @ 0]]
			f37_arg0.clipFinished( f37_arg0.CompleteBanner ) --[[ @ 0]]
		end
	},
	ContractsComplete = {
		DefaultClip = function ( f38_arg0, f38_arg1 )
			f38_arg0:__resetProperties() --[[ @ 0]]
			f38_arg0:setupElementClipCounter( 13 ) --[[ @ 0]]
			f38_arg0.ContractTimeRemaining:completeAnimation() --[[ @ 0]]
			f38_arg0.ContractTimeRemaining:setAlpha( 0 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.ContractTimeRemaining ) --[[ @ 0]]
			f38_arg0.NextContractTimeRemaining:completeAnimation() --[[ @ 0]]
			f38_arg0.NextContractTimeRemaining:setAlpha( 1 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.NextContractTimeRemaining ) --[[ @ 0]]
			f38_arg0.Price:completeAnimation() --[[ @ 0]]
			f38_arg0.Price:setAlpha( 0 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.Price ) --[[ @ 0]]
			f38_arg0.StreamSubtitle:completeAnimation() --[[ @ 0]]
			f38_arg0.StreamSubtitle:setAlpha( 0 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.StreamSubtitle ) --[[ @ 0]]
			f38_arg0.StreamName:completeAnimation() --[[ @ 0]]
			f38_arg0.StreamName:setAlpha( 0 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.StreamName ) --[[ @ 0]]
			f38_arg0.ProgressBarBacking:completeAnimation() --[[ @ 0]]
			f38_arg0.ProgressBarBacking:setAlpha( 0 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.ProgressBarBacking ) --[[ @ 0]]
			f38_arg0.ActiveBanner:completeAnimation() --[[ @ 0]]
			f38_arg0.ActiveBanner:setAlpha( 0 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.ActiveBanner ) --[[ @ 0]]
			f38_arg0.CompleteBanner:completeAnimation() --[[ @ 0]]
			f38_arg0.CompleteBanner:setAlpha( 0 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.CompleteBanner ) --[[ @ 0]]
			f38_arg0.Box:completeAnimation() --[[ @ 0]]
			f38_arg0.Box:setAlpha( 0 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.Box ) --[[ @ 0]]
			f38_arg0.FeatureTitle:completeAnimation() --[[ @ 0]]
			f38_arg0.FeatureTitle:setAlpha( 0 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.FeatureTitle ) --[[ @ 0]]
			f38_arg0.ContractRarityHeaderBackground:completeAnimation() --[[ @ 0]]
			f38_arg0.ContractRarityHeaderBackground:setAlpha( 0 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.ContractRarityHeaderBackground ) --[[ @ 0]]
			f38_arg0.ContractRarityHeaderTile:completeAnimation() --[[ @ 0]]
			f38_arg0.ContractRarityHeaderTile:setAlpha( 0 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.ContractRarityHeaderTile ) --[[ @ 0]]
			f38_arg0.RaritySideImage:completeAnimation() --[[ @ 0]]
			f38_arg0.RaritySideImage:setAlpha( 0 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.RaritySideImage ) --[[ @ 0]]
		end
	},
	Upsell = {
		DefaultClip = function ( f39_arg0, f39_arg1 )
			f39_arg0:__resetProperties() --[[ @ 0]]
			f39_arg0:setupElementClipCounter( 10 ) --[[ @ 0]]
			f39_arg0.ContractTimeRemaining:completeAnimation() --[[ @ 0]]
			f39_arg0.ContractTimeRemaining:setAlpha( 1 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.ContractTimeRemaining ) --[[ @ 0]]
			f39_arg0.Price:completeAnimation() --[[ @ 0]]
			f39_arg0.Price:setAlpha( 1 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.Price ) --[[ @ 0]]
			f39_arg0.ProgressBarBacking:completeAnimation() --[[ @ 0]]
			f39_arg0.ProgressBarBacking:setAlpha( 0 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.ProgressBarBacking ) --[[ @ 0]]
			f39_arg0.ActiveBanner:completeAnimation() --[[ @ 0]]
			f39_arg0.ActiveBanner:setAlpha( 0 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.ActiveBanner ) --[[ @ 0]]
			f39_arg0.CompleteBanner:completeAnimation() --[[ @ 0]]
			f39_arg0.CompleteBanner:setAlpha( 0 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.CompleteBanner ) --[[ @ 0]]
			f39_arg0.Box:completeAnimation() --[[ @ 0]]
			f39_arg0.Box:setAlpha( 0 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.Box ) --[[ @ 0]]
			f39_arg0.FeatureTitle:completeAnimation() --[[ @ 0]]
			f39_arg0.FeatureTitle:setAlpha( 0 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.FeatureTitle ) --[[ @ 0]]
			f39_arg0.ContractRarityHeaderBackground:completeAnimation() --[[ @ 0]]
			f39_arg0.ContractRarityHeaderBackground:setAlpha( 0.94 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.ContractRarityHeaderBackground ) --[[ @ 0]]
			f39_arg0.ContractRarityHeaderTile:completeAnimation() --[[ @ 0]]
			f39_arg0.ContractRarityHeaderTile:setAlpha( 1 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.ContractRarityHeaderTile ) --[[ @ 0]]
			f39_arg0.RaritySideImage:completeAnimation() --[[ @ 0]]
			f39_arg0.RaritySideImage:setAlpha( 1 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.RaritySideImage ) --[[ @ 0]]
		end,
		Focus = function ( f40_arg0, f40_arg1 )
			f40_arg0:__resetProperties() --[[ @ 0]]
			f40_arg0:setupElementClipCounter( 13 ) --[[ @ 0]]
			f40_arg0.NineSliceShaderImage:completeAnimation() --[[ @ 0]]
			f40_arg0.NineSliceShaderImage:setRGB( 0.2, 0.22, 0.24 ) --[[ @ 0]]
			f40_arg0.clipFinished( f40_arg0.NineSliceShaderImage ) --[[ @ 0]]
			f40_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f40_arg0.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
			f40_arg0.clipFinished( f40_arg0.FocusGlow ) --[[ @ 0]]
			f40_arg0.ContractTimeRemaining:completeAnimation() --[[ @ 0]]
			f40_arg0.ContractTimeRemaining:setAlpha( 1 ) --[[ @ 0]]
			f40_arg0.clipFinished( f40_arg0.ContractTimeRemaining ) --[[ @ 0]]
			f40_arg0.Price:completeAnimation() --[[ @ 0]]
			f40_arg0.Price:setAlpha( 1 ) --[[ @ 0]]
			f40_arg0.clipFinished( f40_arg0.Price ) --[[ @ 0]]
			f40_arg0.ProgressBarBacking:completeAnimation() --[[ @ 0]]
			f40_arg0.ProgressBarBacking:setAlpha( 0 ) --[[ @ 0]]
			f40_arg0.clipFinished( f40_arg0.ProgressBarBacking ) --[[ @ 0]]
			f40_arg0.ActiveBanner:completeAnimation() --[[ @ 0]]
			f40_arg0.ActiveBanner:setAlpha( 0 ) --[[ @ 0]]
			f40_arg0.clipFinished( f40_arg0.ActiveBanner ) --[[ @ 0]]
			f40_arg0.CompleteBanner:completeAnimation() --[[ @ 0]]
			f40_arg0.CompleteBanner:setAlpha( 0 ) --[[ @ 0]]
			f40_arg0.clipFinished( f40_arg0.CompleteBanner ) --[[ @ 0]]
			f40_arg0.Box:completeAnimation() --[[ @ 0]]
			f40_arg0.Box:setAlpha( 0 ) --[[ @ 0]]
			f40_arg0.clipFinished( f40_arg0.Box ) --[[ @ 0]]
			f40_arg0.FeatureTitle:completeAnimation() --[[ @ 0]]
			f40_arg0.FeatureTitle:setAlpha( 0 ) --[[ @ 0]]
			f40_arg0.clipFinished( f40_arg0.FeatureTitle ) --[[ @ 0]]
			f40_arg0.ContractRarityHeaderBackground:completeAnimation() --[[ @ 0]]
			f40_arg0.ContractRarityHeaderBackground:setAlpha( 0.94 ) --[[ @ 0]]
			f40_arg0.clipFinished( f40_arg0.ContractRarityHeaderBackground ) --[[ @ 0]]
			f40_arg0.ContractRarityHeaderTile:completeAnimation() --[[ @ 0]]
			f40_arg0.ContractRarityHeaderTile:setAlpha( 1 ) --[[ @ 0]]
			f40_arg0.clipFinished( f40_arg0.ContractRarityHeaderTile ) --[[ @ 0]]
			f40_arg0.RaritySideImage:completeAnimation() --[[ @ 0]]
			f40_arg0.RaritySideImage:setAlpha( 1 ) --[[ @ 0]]
			f40_arg0.clipFinished( f40_arg0.RaritySideImage ) --[[ @ 0]]
			f40_arg0.FocusBorder:completeAnimation() --[[ @ 0]]
			f40_arg0.FocusBorder:setAlpha( 1 ) --[[ @ 0]]
			f40_arg0.clipFinished( f40_arg0.FocusBorder ) --[[ @ 0]]
		end
	},
	SpecialEvent = {
		DefaultClip = function ( f41_arg0, f41_arg1 )
			f41_arg0:__resetProperties() --[[ @ 0]]
			f41_arg0:setupElementClipCounter( 9 ) --[[ @ 0]]
			f41_arg0.EventTimeRemaining:completeAnimation() --[[ @ 0]]
			f41_arg0.EventTimeRemaining:setTopBottom( 0, 0, 106, 120 ) --[[ @ 0]]
			f41_arg0.EventTimeRemaining:setAlpha( 1 ) --[[ @ 0]]
			f41_arg0.clipFinished( f41_arg0.EventTimeRemaining ) --[[ @ 0]]
			f41_arg0.SeasonTimeRemaining:completeAnimation() --[[ @ 0]]
			f41_arg0.SeasonTimeRemaining:setAlpha( 0 ) --[[ @ 0]]
			f41_arg0.clipFinished( f41_arg0.SeasonTimeRemaining ) --[[ @ 0]]
			f41_arg0.ContractTimeRemaining:completeAnimation() --[[ @ 0]]
			f41_arg0.ContractTimeRemaining:setAlpha( 0 ) --[[ @ 0]]
			f41_arg0.clipFinished( f41_arg0.ContractTimeRemaining ) --[[ @ 0]]
			f41_arg0.Price:completeAnimation() --[[ @ 0]]
			f41_arg0.Price:setAlpha( 0 ) --[[ @ 0]]
			f41_arg0.clipFinished( f41_arg0.Price ) --[[ @ 0]]
			f41_arg0.ProgressBarBacking:completeAnimation() --[[ @ 0]]
			f41_arg0.ProgressBarBacking:setAlpha( 1 ) --[[ @ 0]]
			f41_arg0.clipFinished( f41_arg0.ProgressBarBacking ) --[[ @ 0]]
			f41_arg0.ActiveBanner:completeAnimation() --[[ @ 0]]
			f41_arg0.ActiveBanner:setAlpha( 0 ) --[[ @ 0]]
			f41_arg0.clipFinished( f41_arg0.ActiveBanner ) --[[ @ 0]]
			f41_arg0.Box:completeAnimation() --[[ @ 0]]
			f41_arg0.Box:setAlpha( 0.7 ) --[[ @ 0]]
			f41_arg0.clipFinished( f41_arg0.Box ) --[[ @ 0]]
			f41_arg0.ContractRarityHeaderBackground:completeAnimation() --[[ @ 0]]
			f41_arg0.ContractRarityHeaderBackground:setAlpha( 0 ) --[[ @ 0]]
			f41_arg0.clipFinished( f41_arg0.ContractRarityHeaderBackground ) --[[ @ 0]]
			f41_arg0.ContractRarityHeaderTile:completeAnimation() --[[ @ 0]]
			f41_arg0.ContractRarityHeaderTile:setAlpha( 0 ) --[[ @ 0]]
			f41_arg0.clipFinished( f41_arg0.ContractRarityHeaderTile ) --[[ @ 0]]
		end
	},
	ActiveContract = {
		DefaultClip = function ( f42_arg0, f42_arg1 )
			f42_arg0:__resetProperties() --[[ @ 0]]
			f42_arg0:setupElementClipCounter( 8 ) --[[ @ 0]]
			f42_arg0.Price:completeAnimation() --[[ @ 0]]
			f42_arg0.Price:setAlpha( 0 ) --[[ @ 0]]
			f42_arg0.clipFinished( f42_arg0.Price ) --[[ @ 0]]
			f42_arg0.ProgressBarBacking:completeAnimation() --[[ @ 0]]
			f42_arg0.ProgressBarBacking:setAlpha( 1 ) --[[ @ 0]]
			f42_arg0.clipFinished( f42_arg0.ProgressBarBacking ) --[[ @ 0]]
			f42_arg0.CompleteBanner:completeAnimation() --[[ @ 0]]
			f42_arg0.CompleteBanner:setLeftRight( 0, 0, 22, 172 ) --[[ @ 0]]
			f42_arg0.CompleteBanner:setTopBottom( 0, 0, 128.5, 153.5 ) --[[ @ 0]]
			f42_arg0.clipFinished( f42_arg0.CompleteBanner ) --[[ @ 0]]
			f42_arg0.Box:completeAnimation() --[[ @ 0]]
			f42_arg0.Box:setAlpha( 0 ) --[[ @ 0]]
			f42_arg0.clipFinished( f42_arg0.Box ) --[[ @ 0]]
			f42_arg0.FeatureTitle:completeAnimation() --[[ @ 0]]
			f42_arg0.FeatureTitle:setAlpha( 0 ) --[[ @ 0]]
			f42_arg0.clipFinished( f42_arg0.FeatureTitle ) --[[ @ 0]]
			f42_arg0.ContractRarityHeaderBackground:completeAnimation() --[[ @ 0]]
			f42_arg0.ContractRarityHeaderBackground:setAlpha( 0.94 ) --[[ @ 0]]
			f42_arg0.clipFinished( f42_arg0.ContractRarityHeaderBackground ) --[[ @ 0]]
			f42_arg0.ContractRarityHeaderTile:completeAnimation() --[[ @ 0]]
			f42_arg0.ContractRarityHeaderTile:setAlpha( 1 ) --[[ @ 0]]
			f42_arg0.clipFinished( f42_arg0.ContractRarityHeaderTile ) --[[ @ 0]]
			f42_arg0.RaritySideImage:completeAnimation() --[[ @ 0]]
			f42_arg0.RaritySideImage:setAlpha( 1 ) --[[ @ 0]]
			f42_arg0.clipFinished( f42_arg0.RaritySideImage ) --[[ @ 0]]
		end
	},
	ContrabandStream = {
		DefaultClip = function ( f43_arg0, f43_arg1 )
			f43_arg0:__resetProperties() --[[ @ 0]]
			f43_arg0:setupElementClipCounter( 8 ) --[[ @ 0]]
			f43_arg0.SeasonTimeRemaining:completeAnimation() --[[ @ 0]]
			f43_arg0.SeasonTimeRemaining:setAlpha( 1 ) --[[ @ 0]]
			f43_arg0.clipFinished( f43_arg0.SeasonTimeRemaining ) --[[ @ 0]]
			f43_arg0.Price:completeAnimation() --[[ @ 0]]
			f43_arg0.Price:setAlpha( 0 ) --[[ @ 0]]
			f43_arg0.clipFinished( f43_arg0.Price ) --[[ @ 0]]
			f43_arg0.ProgressBarBacking:completeAnimation() --[[ @ 0]]
			f43_arg0.ProgressBarBacking:setAlpha( 0 ) --[[ @ 0]]
			f43_arg0.clipFinished( f43_arg0.ProgressBarBacking ) --[[ @ 0]]
			f43_arg0.ActiveBanner:completeAnimation() --[[ @ 0]]
			f43_arg0.ActiveBanner:setAlpha( 0 ) --[[ @ 0]]
			f43_arg0.clipFinished( f43_arg0.ActiveBanner ) --[[ @ 0]]
			f43_arg0.CompleteBanner:completeAnimation() --[[ @ 0]]
			f43_arg0.CompleteBanner:setTopBottom( 0, 0, 100, 125 ) --[[ @ 0]]
			f43_arg0.CompleteBanner:setAlpha( 1 ) --[[ @ 0]]
			f43_arg0.clipFinished( f43_arg0.CompleteBanner ) --[[ @ 0]]
			f43_arg0.Box:completeAnimation() --[[ @ 0]]
			f43_arg0.Box:setAlpha( 0.7 ) --[[ @ 0]]
			f43_arg0.clipFinished( f43_arg0.Box ) --[[ @ 0]]
			f43_arg0.ContractRarityHeaderBackground:completeAnimation() --[[ @ 0]]
			f43_arg0.ContractRarityHeaderBackground:setAlpha( 0 ) --[[ @ 0]]
			f43_arg0.clipFinished( f43_arg0.ContractRarityHeaderBackground ) --[[ @ 0]]
			f43_arg0.ContractRarityHeaderTile:completeAnimation() --[[ @ 0]]
			f43_arg0.ContractRarityHeaderTile:setAlpha( 0 ) --[[ @ 0]]
			f43_arg0.clipFinished( f43_arg0.ContractRarityHeaderTile ) --[[ @ 0]]
		end
	},
	Locked = {
		DefaultClip = function ( f44_arg0, f44_arg1 )
			f44_arg0:__resetProperties() --[[ @ 0]]
			f44_arg0:setupElementClipCounter( 7 ) --[[ @ 0]]
			f44_arg0.Background:completeAnimation() --[[ @ 0]]
			f44_arg0.Background:setRGB( 0.09, 0.11, 0.15 ) --[[ @ 0]]
			f44_arg0.clipFinished( f44_arg0.Background ) --[[ @ 0]]
			f44_arg0.Gradient:completeAnimation() --[[ @ 0]]
			f44_arg0.Gradient:setAlpha( 0.3 ) --[[ @ 0]]
			f44_arg0.clipFinished( f44_arg0.Gradient ) --[[ @ 0]]
			f44_arg0.NineSliceShaderImage:completeAnimation() --[[ @ 0]]
			f44_arg0.NineSliceShaderImage:setRGB( 0.2, 0.22, 0.24 ) --[[ @ 0]]
			f44_arg0.clipFinished( f44_arg0.NineSliceShaderImage ) --[[ @ 0]]
			f44_arg0.GridTiled:completeAnimation() --[[ @ 0]]
			f44_arg0.GridTiled:setAlpha( 0.03 ) --[[ @ 0]]
			f44_arg0.clipFinished( f44_arg0.GridTiled ) --[[ @ 0]]
			f44_arg0.Price:completeAnimation() --[[ @ 0]]
			f44_arg0.Price:setAlpha( 1 ) --[[ @ 0]]
			f44_arg0.clipFinished( f44_arg0.Price ) --[[ @ 0]]
			f44_arg0.ActiveBanner:completeAnimation() --[[ @ 0]]
			f44_arg0.ActiveBanner:setAlpha( 0 ) --[[ @ 0]]
			f44_arg0.clipFinished( f44_arg0.ActiveBanner ) --[[ @ 0]]
			f44_arg0.CompleteBanner:completeAnimation() --[[ @ 0]]
			f44_arg0.CompleteBanner:setAlpha( 0 ) --[[ @ 0]]
			f44_arg0.clipFinished( f44_arg0.CompleteBanner ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.SupplyChainStreamInternal.__onClose = function ( f45_arg0 )
	f45_arg0.StreamImage:close() --[[ @ 0]]
	f45_arg0.EventTimeRemaining:close() --[[ @ 0]]
	f45_arg0.SeasonTimeRemaining:close() --[[ @ 0]]
	f45_arg0.ContractTimeRemaining:close() --[[ @ 0]]
	f45_arg0.NextContractTimeRemaining:close() --[[ @ 0]]
	f45_arg0.StreamSubtitle:close() --[[ @ 0]]
	f45_arg0.StreamName:close() --[[ @ 0]]
	f45_arg0.ProgressBarBacking:close() --[[ @ 0]]
	f45_arg0.ActiveBanner:close() --[[ @ 0]]
	f45_arg0.CompleteBanner:close() --[[ @ 0]]
	f45_arg0.FeatureTitle:close() --[[ @ 0]]
	f45_arg0.ContractRarityHeaderBackground:close() --[[ @ 0]]
	f45_arg0.ContractRarityHeaderTile:close() --[[ @ 0]]
	f45_arg0.RaritySideImage:close() --[[ @ 0]]
	f45_arg0.SeasonalOverlay:close() --[[ @ 0]]
end
 --[[ @ 0]]
