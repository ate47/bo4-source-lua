-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/menus/lobby/common/popups/vodviewer" ) --[[ @ 0]]
require( "x64:b8e2ca68acca1fd" ) --[[ @ 0]]
require( "x64:61f253af5b383fa8" ) --[[ @ 0]]
require( "ui/uieditor/widgets/lobby/common/layoutelements/commonsearchingbar" ) --[[ @ 0]]

CoD.ContractDetailsPanelInfo = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ContractDetailsPanelInfo.__defaultWidth = 804 --[[ @ 0]]
CoD.ContractDetailsPanelInfo.__defaultHeight = 409 --[[ @ 0]]
CoD.ContractDetailsPanelInfo.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ContractDetailsPanelInfo ) --[[ @ 0]]
	self.id = "ContractDetailsPanelInfo" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local TiledwhiteNoiseBacking = LUI.UIImage.new( 0, 0, 0, 760, 0, 0, 9, 398 ) --[[ @ 0]]
	TiledwhiteNoiseBacking:setRGB( 0, 0, 0 ) --[[ @ 0]]
	TiledwhiteNoiseBacking:setAlpha( 0.25 ) --[[ @ 0]]
	TiledwhiteNoiseBacking:setImage( RegisterImage( @"uie_ui_menu_aar_repeat_white_bg" ) ) --[[ @ 0]]
	TiledwhiteNoiseBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	TiledwhiteNoiseBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	TiledwhiteNoiseBacking:setupNineSliceShader( 64, 64 ) --[[ @ 0]]
	self:addElement( TiledwhiteNoiseBacking ) --[[ @ 0]]
	self.TiledwhiteNoiseBacking = TiledwhiteNoiseBacking --[[ @ 0]]
	
	local ContractDescription = LUI.UIText.new( 0, 0, 279, 727, 0, 0, 72, 89 ) --[[ @ 0]]
	ContractDescription:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	ContractDescription:setTTF( "dinnext_regular" ) --[[ @ 0]]
	ContractDescription:setLetterSpacing( 1 ) --[[ @ 0]]
	ContractDescription:setLineSpacing( 1 ) --[[ @ 0]]
	ContractDescription:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	ContractDescription:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	ContractDescription:linkToElementModel( self, "contentsDetailedDesc", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			ContractDescription:setText( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ContractDescription ) --[[ @ 0]]
	self.ContractDescription = ContractDescription --[[ @ 0]]
	
	local PreviewLabel = LUI.UIText.new( 0, 0, 23, 758, 0, 0, 422, 438 ) --[[ @ 0]]
	PreviewLabel:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	PreviewLabel:setText( LocalizeToUpperString( @"hash_5BF1E7A46978C32" ) ) --[[ @ 0]]
	PreviewLabel:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	PreviewLabel:setLetterSpacing( 4 ) --[[ @ 0]]
	PreviewLabel:setLineSpacing( 1 ) --[[ @ 0]]
	PreviewLabel:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	PreviewLabel:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( PreviewLabel ) --[[ @ 0]]
	self.PreviewLabel = PreviewLabel --[[ @ 0]]
	
	local ContractTitle = LUI.UIText.new( 0, 0, 278, 728, 0, 0, 28, 66 ) --[[ @ 0]]
	ContractTitle:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	ContractTitle:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	ContractTitle:setLetterSpacing( 4 ) --[[ @ 0]]
	ContractTitle:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	ContractTitle:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	ContractTitle:linkToElementModel( self, "name", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			ContractTitle:setText( LocalizeToUpperString( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ContractTitle ) --[[ @ 0]]
	self.ContractTitle = ContractTitle --[[ @ 0]]
	
	local Linker = LUI.UIImage.new( 0, 0, 758, 762, 0, 0, 5, 399 ) --[[ @ 0]]
	Linker:setAlpha( 0.08 ) --[[ @ 0]]
	Linker:setImage( RegisterImage( @"hash_C49B0C8991A541F" ) ) --[[ @ 0]]
	Linker:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	Linker:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	Linker:setupNineSliceShader( 4, 8 ) --[[ @ 0]]
	self:addElement( Linker ) --[[ @ 0]]
	self.Linker = Linker --[[ @ 0]]
	
	local CommonSearchingBar = CoD.CommonSearchingBar.new( f1_arg0, f1_arg1, 0, 0, 681.5, 803.5, 0, 0, 57.5, 79.5 ) --[[ @ 0]]
	CommonSearchingBar:setZRot( -90 ) --[[ @ 0]]
	self:addElement( CommonSearchingBar ) --[[ @ 0]]
	self.CommonSearchingBar = CommonSearchingBar --[[ @ 0]]
	
	local FuiBox02Right = LUI.UIImage.new( 0, 0, 727.5, 761.5, 0, 0, 34, 0 ) --[[ @ 0]]
	FuiBox02Right:setScale( 0.3, 0.3 ) --[[ @ 0]]
	FuiBox02Right:setImage( RegisterImage( @"uie_ui_hud_vehicle_ac130_fui_box01" ) ) --[[ @ 0]]
	FuiBox02Right:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	FuiBox02Right:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( FuiBox02Right ) --[[ @ 0]]
	self.FuiBox02Right = FuiBox02Right --[[ @ 0]]
	
	local PreviewButton = CoD.ContractPreviewButton.new( f1_arg0, f1_arg1, 0, 0, 23, 249, 0, 0, 33, 342 ) --[[ @ 0]]
	PreviewButton.Button.Text:setText( LocalizeToUpperString( @"menu/preview" ) ) --[[ @ 0]]
	PreviewButton:linkToElementModel( self, nil, false, function ( model )
		PreviewButton:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	PreviewButton:linkToElementModel( PreviewButton, "allowFrozenMoment", true, function ( model, f5_arg1 )
		CoD.Menu.UpdateButtonShownState( f5_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	PreviewButton:appendEventHandler( "input_source_changed", function ( f6_arg0, f6_arg1 )
		f6_arg1.menu = f6_arg1.menu or f1_arg0 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f6_arg0, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local9 = PreviewButton --[[ @ 0]]
	local f1_local10 = PreviewButton.subscribeToModel --[[ @ 0]]
	local f1_local11 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local10( f1_local9, f1_local11.LastInput, function ( f7_arg0, f7_arg1 )
		CoD.Menu.UpdateButtonShownState( f7_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	PreviewButton:linkToElementModel( PreviewButton, "movieName", true, function ( model, f8_arg1 )
		CoD.Menu.UpdateButtonShownState( f8_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	PreviewButton:registerEventHandler( "gain_focus", function ( element, event )
		local f9_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f9_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f9_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f9_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( PreviewButton, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], nil, function ( element, menu, controller, model )
		if CoD.ModelUtility.IsSelfModelValueEqualTo( element, controller, "allowFrozenMoment", true ) and IsGamepad( controller ) then
			OpenOverlay( self, "MPSpecialistHUBPreviewMoment", controller ) --[[ @ 0]]
			return true
		elseif CoD.ModelUtility.IsSelfModelValueNonEmptyString( element, controller, "movieName" ) and IsGamepad( controller ) then
			SetControllerModelValue( controller, "LootStreamProgress.playAnimation", false ) --[[ @ 0]]
			CoD.VideoStreamingUtility.SetupVoDMovie( controller, element, "" ) --[[ @ 0]]
			DelayOpenOverlay( menu, "VoDViewer", controller, {
				fullscreen = true
			} ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if CoD.ModelUtility.IsSelfModelValueEqualTo( element, controller, "allowFrozenMoment", true ) and IsGamepad( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/preview", nil, nil ) --[[ @ 0]]
			return true
		elseif CoD.ModelUtility.IsSelfModelValueNonEmptyString( element, controller, "movieName" ) and IsGamepad( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/preview", nil, nil ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( PreviewButton ) --[[ @ 0]]
	self.PreviewButton = PreviewButton --[[ @ 0]]
	
	PreviewButton.id = "PreviewButton" --[[ @ 0]]
	self.__defaultFocus = PreviewButton --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ContractDetailsPanelInfo.__onClose = function ( f12_arg0 )
	f12_arg0.ContractDescription:close() --[[ @ 0]]
	f12_arg0.ContractTitle:close() --[[ @ 0]]
	f12_arg0.CommonSearchingBar:close() --[[ @ 0]]
	f12_arg0.PreviewButton:close() --[[ @ 0]]
end
 --[[ @ 0]]
