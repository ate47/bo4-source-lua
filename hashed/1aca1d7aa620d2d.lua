-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "ui/uieditor/menus/lobby/common/popups/vodviewer" ) --[[ @ 0]]
require( "x64:b8e2ca68acca1fd" ) --[[ @ 0]]
require( "x64:3bc87ac3fc76bb82" ) --[[ @ 0]]
require( "x64:2b71c9857f66102f" ) --[[ @ 0]]
require( "x64:24b2433bccbe24eb" ) --[[ @ 0]]
require( "ui/uieditor/widgets/lobby/common/layoutelements/commonsearchingbar" ) --[[ @ 0]]
require( "ui/uieditor/widgets/social/joinbuttonprompt" ) --[[ @ 0]]

CoD.ItemShopInfo = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ItemShopInfo.__defaultWidth = 804 --[[ @ 0]]
CoD.ItemShopInfo.__defaultHeight = 409 --[[ @ 0]]
CoD.ItemShopInfo.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ItemShopInfo ) --[[ @ 0]]
	self.id = "ItemShopInfo" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local TiledwhiteNoiseBacking = LUI.UIImage.new( 0, 0, 0, 760, 0, 0, 33, 422 ) --[[ @ 0]]
	TiledwhiteNoiseBacking:setRGB( 0, 0, 0 ) --[[ @ 0]]
	TiledwhiteNoiseBacking:setAlpha( 0.25 ) --[[ @ 0]]
	TiledwhiteNoiseBacking:setImage( RegisterImage( @"uie_ui_menu_aar_repeat_white_bg" ) ) --[[ @ 0]]
	TiledwhiteNoiseBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	TiledwhiteNoiseBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	TiledwhiteNoiseBacking:setupNineSliceShader( 64, 64 ) --[[ @ 0]]
	self:addElement( TiledwhiteNoiseBacking ) --[[ @ 0]]
	self.TiledwhiteNoiseBacking = TiledwhiteNoiseBacking --[[ @ 0]]
	
	local ContractRarityHeaderBackground = LUI.UIImage.new( 0.13, 0.13, -107.5, 653.5, 0, 0, 3, 27 ) --[[ @ 0]]
	ContractRarityHeaderBackground:linkToElementModel( self, "rarity", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			ContractRarityHeaderBackground:setRGB( CoD.BlackMarketUtility.LootRarityToColorDark( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ContractRarityHeaderBackground ) --[[ @ 0]]
	self.ContractRarityHeaderBackground = ContractRarityHeaderBackground --[[ @ 0]]
	
	local ContractRarityHeader = CoD.ContractRarityHeader.new( f1_arg0, f1_arg1, 0, 0, 23, 223, 0, 0, 3, 30 ) --[[ @ 0]]
	ContractRarityHeader:linkToElementModel( self, nil, false, function ( model )
		ContractRarityHeader:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ContractRarityHeader ) --[[ @ 0]]
	self.ContractRarityHeader = ContractRarityHeader --[[ @ 0]]
	
	local TitleAndDesc = CoD.ItemShopTitleAndDesc.new( f1_arg0, f1_arg1, 0, 0, 277, 740, 0, 0, 25.5, 251.5 ) --[[ @ 0]]
	TitleAndDesc:linkToElementModel( self, nil, false, function ( model )
		TitleAndDesc:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( TitleAndDesc ) --[[ @ 0]]
	self.TitleAndDesc = TitleAndDesc --[[ @ 0]]
	
	local FuiBox02Right = LUI.UIImage.new( 0, 0, 731, 765, 0, 0, 61.5, 27.5 ) --[[ @ 0]]
	FuiBox02Right:setScale( 0.3, 0.3 ) --[[ @ 0]]
	FuiBox02Right:setImage( RegisterImage( @"uie_ui_hud_vehicle_ac130_fui_box01" ) ) --[[ @ 0]]
	FuiBox02Right:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	FuiBox02Right:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( FuiBox02Right ) --[[ @ 0]]
	self.FuiBox02Right = FuiBox02Right --[[ @ 0]]
	
	local Linker = LUI.UIImage.new( 0, 0, 758, 762, 0, 0, 29.5, 421.5 ) --[[ @ 0]]
	Linker:setAlpha( 0.08 ) --[[ @ 0]]
	Linker:setImage( RegisterImage( @"hash_C49B0C8991A541F" ) ) --[[ @ 0]]
	Linker:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	Linker:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	Linker:setupNineSliceShader( 4, 8 ) --[[ @ 0]]
	self:addElement( Linker ) --[[ @ 0]]
	self.Linker = Linker --[[ @ 0]]
	
	local Linker2 = LUI.UIImage.new( 0, 0, 758.5, 762.5, 0, 0, 0, 27 ) --[[ @ 0]]
	Linker2:setAlpha( 0.08 ) --[[ @ 0]]
	Linker2:setImage( RegisterImage( @"hash_C49B0C8991A541F" ) ) --[[ @ 0]]
	Linker2:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	Linker2:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	Linker2:setupNineSliceShader( 4, 8 ) --[[ @ 0]]
	self:addElement( Linker2 ) --[[ @ 0]]
	self.Linker2 = Linker2 --[[ @ 0]]
	
	local CommonSearchingBar = CoD.CommonSearchingBar.new( f1_arg0, f1_arg1, 0, 0, 685, 807, 0, 0, 88, 110 ) --[[ @ 0]]
	CommonSearchingBar:setZRot( -90 ) --[[ @ 0]]
	self:addElement( CommonSearchingBar ) --[[ @ 0]]
	self.CommonSearchingBar = CommonSearchingBar --[[ @ 0]]
	
	local togglePreviewLabel = LUI.UIText.new( 0, 0, 42, 90, 0.5, 0.5, -226, -208 ) --[[ @ 0]]
	togglePreviewLabel:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	togglePreviewLabel:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/preview_gesture" ) ) --[[ @ 0]]
	togglePreviewLabel:setTTF( "dinnext_regular" ) --[[ @ 0]]
	togglePreviewLabel:setLetterSpacing( 2 ) --[[ @ 0]]
	togglePreviewLabel:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( togglePreviewLabel ) --[[ @ 0]]
	self.togglePreviewLabel = togglePreviewLabel --[[ @ 0]]
	
	local previewGestureButton = CoD.JoinButtonPrompt.new( f1_arg0, f1_arg1, 0, 0, 0, 39, 0.5, 0.5, -236.5, -197.5 ) --[[ @ 0]]
	previewGestureButton:setScale( 0.8, 0.8 ) --[[ @ 0]]
	previewGestureButton.KMprompt:setText( CoD.BaseUtility.AlreadyLocalized( "P" ) ) --[[ @ 0]]
	previewGestureButton:subscribeToGlobalModel( f1_arg1, "Controller", "right_stick_button_image", function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			previewGestureButton.GpadButtonImage:setImage( RegisterImage( f5_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( previewGestureButton ) --[[ @ 0]]
	self.previewGestureButton = previewGestureButton --[[ @ 0]]
	
	local PreviewButton = CoD.ItemShopPreviewButton.new( f1_arg0, f1_arg1, 0, 0, 23, 249, 0, 0, 61.5, 370.5 ) --[[ @ 0]]
	PreviewButton.Button.Text:setText( LocalizeToUpperString( @"menu/preview" ) ) --[[ @ 0]]
	PreviewButton:linkToElementModel( self, nil, false, function ( model )
		PreviewButton:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	PreviewButton:linkToElementModel( PreviewButton, "allowFrozenMoment", true, function ( model, f7_arg1 )
		CoD.Menu.UpdateButtonShownState( f7_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
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
		if CoD.ModelUtility.IsSelfModelValueEqualTo( element, controller, "allowFrozenMoment", true ) then
			OpenOverlay( self, "MPSpecialistHUBPreviewMoment", controller ) --[[ @ 0]]
			return true
		elseif CoD.ModelUtility.IsSelfModelValueNonEmptyString( element, controller, "movieName" ) then
			SetControllerModelValue( controller, "LootStreamProgress.playAnimation", false ) --[[ @ 0]]
			CoD.VideoStreamingUtility.SetupVoDMovie( controller, element, "" ) --[[ @ 0]]
			DelayOpenOverlay( menu, "VoDViewer", controller, {
				fullscreen = true
			} ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if CoD.ModelUtility.IsSelfModelValueEqualTo( element, controller, "allowFrozenMoment", true ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/preview", nil, nil ) --[[ @ 0]]
			return true
		elseif CoD.ModelUtility.IsSelfModelValueNonEmptyString( element, controller, "movieName" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/preview", nil, nil ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( PreviewButton ) --[[ @ 0]]
	self.PreviewButton = PreviewButton --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Gesture",
			condition = function ( menu, element, event )
				local f12_local0 --[[ @ 0]]
				if not CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "gesture_index", -1 ) then
					f12_local0 = not IsMouseOrKeyboard( f1_arg1 ) --[[ @ 0]]
				else
					f12_local0 = false --[[ @ 0]]
				end
				return f12_local0
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "gesture_index", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "gesture_index"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:appendEventHandler( "input_source_changed", function ( f14_arg0, f14_arg1 )
		f14_arg1.menu = f14_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( self, f14_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local12 = self --[[ @ 0]]
	local f1_local13 = self.subscribeToModel --[[ @ 0]]
	local f1_local14 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local13( f1_local12, f1_local14.LastInput, function ( f15_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f15_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	PreviewButton.id = "PreviewButton" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ItemShopInfo.__resetProperties = function ( f16_arg0 )
	f16_arg0.togglePreviewLabel:completeAnimation() --[[ @ 0]]
	f16_arg0.previewGestureButton:completeAnimation() --[[ @ 0]]
	f16_arg0.togglePreviewLabel:setAlpha( 1 ) --[[ @ 0]]
	f16_arg0.previewGestureButton:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ItemShopInfo.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f17_arg0.togglePreviewLabel:completeAnimation() --[[ @ 0]]
			f17_arg0.togglePreviewLabel:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.togglePreviewLabel ) --[[ @ 0]]
			f17_arg0.previewGestureButton:completeAnimation() --[[ @ 0]]
			f17_arg0.previewGestureButton:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.previewGestureButton ) --[[ @ 0]]
		end
	},
	Gesture = {
		DefaultClip = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f18_arg0.togglePreviewLabel:completeAnimation() --[[ @ 0]]
			f18_arg0.togglePreviewLabel:setAlpha( 1 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.togglePreviewLabel ) --[[ @ 0]]
			f18_arg0.previewGestureButton:completeAnimation() --[[ @ 0]]
			f18_arg0.previewGestureButton:setAlpha( 1 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.previewGestureButton ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ItemShopInfo.__onClose = function ( f19_arg0 )
	f19_arg0.ContractRarityHeaderBackground:close() --[[ @ 0]]
	f19_arg0.ContractRarityHeader:close() --[[ @ 0]]
	f19_arg0.TitleAndDesc:close() --[[ @ 0]]
	f19_arg0.CommonSearchingBar:close() --[[ @ 0]]
	f19_arg0.previewGestureButton:close() --[[ @ 0]]
	f19_arg0.PreviewButton:close() --[[ @ 0]]
end
 --[[ @ 0]]
