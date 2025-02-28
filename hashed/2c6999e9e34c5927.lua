-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "ui/uieditor/widgets/backgroundframes/genericmenuframe" ) --[[ @ 0]]
require( "x64:32c1273189457a97" ) --[[ @ 0]]
require( "x64:471d2a0ed724628e" ) --[[ @ 0]]
require( "x64:185563fab2ddf96" ) --[[ @ 0]]
require( "ui/uieditor/widgets/pc/utility/xcammousecontrol" ) --[[ @ 0]]

CoD.WZPersonalizeCharacterInspect = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.WZPersonalizeCharacterInspect = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "WZPersonalizeCharacterInspect", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	CoD.PlayerRoleUtility[@"hash_12B307D12327547E"]( f1_arg0 ) --[[ @ 0]]
	CoD.BaseUtility.SetModelFromUserData( f1_arg0, f1_local1, f1_arg1.model ) --[[ @ 0]]
	CoD.BaseUtility.SetPropertiesFromUserData( self, f1_arg1.properties ) --[[ @ 0]]
	SendClientScriptMenuExpressionStateChangeNotify( f1_arg0, f1_local1, true, f1_arg1.model.characterIndex:get() ) --[[ @ 0]]
	self:setClass( CoD.WZPersonalizeCharacterInspect ) --[[ @ 0]]
	self.soundSet = "FrontendMain" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_local1:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	local XCamMouseControl = nil --[[ @ 0]]
	
	XCamMouseControl = CoD.XCamMouseControl.new( f1_local1, f1_arg0, 0.5, 0.5, -375, 375, 0.5, 0.5, -465, 235 ) --[[ @ 0]]
	self:addElement( XCamMouseControl ) --[[ @ 0]]
	self.XCamMouseControl = XCamMouseControl --[[ @ 0]]
	
	local BackingFrame = CoD.GenericMenuFrame.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BackingFrame.CommonHeader.BGSceneBlur:setAlpha( 1 ) --[[ @ 0]]
	BackingFrame.CommonHeader.subtitle.StageTitle:setText( LocalizeToUpperString( @"hash_72AA2EA68ACC2317" ) ) --[[ @ 0]]
	BackingFrame:subscribeToGlobalModel( f1_arg0, "LobbyRoot", "lobbyTitle", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			BackingFrame.CommonHeader.subtitle.subtitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( BackingFrame ) --[[ @ 0]]
	self.BackingFrame = BackingFrame --[[ @ 0]]
	
	local options = LUI.UIList.new( f1_local1, f1_arg0, 13, 0, nil, false, false, false, false ) --[[ @ 0]]
	options:setLeftRight( 0.5, 0.5, -813, -420 ) --[[ @ 0]]
	options:setTopBottom( 0, 0, 222.5, 947.5 ) --[[ @ 0]]
	options:setWidgetType( CoD.SpecialistPersonalizationButtonOption ) --[[ @ 0]]
	options:setVerticalCount( 9 ) --[[ @ 0]]
	options:setSpacing( 13 ) --[[ @ 0]]
	options:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	options:setDataSource( "MPSpecialistHUBOptions" ) --[[ @ 0]]
	options:registerEventHandler( "gain_focus", function ( element, event )
		local f3_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f3_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f3_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f3_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( options, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		PlaySoundAlias( "uin_toggle_generic" ) --[[ @ 0]]
		ProcessListAction( self, element, controller, menu ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	self:addElement( options ) --[[ @ 0]]
	self.options = options --[[ @ 0]]
	
	local CommonIdentityWidgetStreamlinedSafeAreaContainer = CoD.CommonIdentityWidgetStreamlinedSafeAreaContainer.new( f1_local1, f1_arg0, 0.5, 0.5, -960, 960, 0, 1, 0, 0 ) --[[ @ 0]]
	CommonIdentityWidgetStreamlinedSafeAreaContainer:registerEventHandler( "menu_loaded", function ( element, event )
		local f6_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f6_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f6_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		SizeToSafeArea( element, f1_arg0 ) --[[ @ 0]]
		if not f6_local0 then
			f6_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f6_local0
	end ) --[[ @ 0]]
	self:addElement( CommonIdentityWidgetStreamlinedSafeAreaContainer ) --[[ @ 0]]
	self.CommonIdentityWidgetStreamlinedSafeAreaContainer = CommonIdentityWidgetStreamlinedSafeAreaContainer --[[ @ 0]]
	
	local bgblur = LUI.UIImage.new( 0.5, 0.5, 260.5, 800.5, 0.5, 0.5, 321.5, 423.5 ) --[[ @ 0]]
	bgblur:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	bgblur:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( bgblur ) --[[ @ 0]]
	self.bgblur = bgblur --[[ @ 0]]
	
	local BackingNoise = LUI.UIImage.new( 0.5, 0.5, 260, 800, 0.5, 0.5, 321.5, 423.5 ) --[[ @ 0]]
	BackingNoise:setAlpha( 0.8 ) --[[ @ 0]]
	BackingNoise:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	BackingNoise:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	BackingNoise:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	BackingNoise:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( BackingNoise ) --[[ @ 0]]
	self.BackingNoise = BackingNoise --[[ @ 0]]
	
	local BraketBottom = LUI.UIImage.new( 0.5, 0.5, 256, 803, 0.5, 0.5, 397, 425 ) --[[ @ 0]]
	BraketBottom:setZRot( 180 ) --[[ @ 0]]
	BraketBottom:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_info_bracket" ) ) --[[ @ 0]]
	BraketBottom:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	BraketBottom:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	BraketBottom:setupNineSliceShader( 350, 20 ) --[[ @ 0]]
	self:addElement( BraketBottom ) --[[ @ 0]]
	self.BraketBottom = BraketBottom --[[ @ 0]]
	
	local FuiBox02Right = LUI.UIImage.new( 0.5, 0.5, 763.5, 797.5, 0.5, 0.5, 360, 326 ) --[[ @ 0]]
	FuiBox02Right:setAlpha( 0.1 ) --[[ @ 0]]
	FuiBox02Right:setImage( RegisterImage( @"uie_ui_hud_vehicle_ac130_fui_box01" ) ) --[[ @ 0]]
	FuiBox02Right:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	FuiBox02Right:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( FuiBox02Right ) --[[ @ 0]]
	self.FuiBox02Right = FuiBox02Right --[[ @ 0]]
	
	local SpecialistName = LUI.UIText.new( 0.5, 0.5, 271.5, 789.5, 0.5, 0.5, 360, 389 ) --[[ @ 0]]
	SpecialistName:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
	SpecialistName:setAlpha( 0.7 ) --[[ @ 0]]
	SpecialistName:setZoom( 3 ) --[[ @ 0]]
	SpecialistName:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	SpecialistName:setLetterSpacing( 8 ) --[[ @ 0]]
	SpecialistName:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	SpecialistName:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	SpecialistName:linkToElementModel( self, "name", true, function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			SpecialistName:setText( CoD.SocialUtility.CleanGamerTag( ToUpper( CoD.BaseUtility.LocalizeIfXHash( f7_local0 ) ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( SpecialistName ) --[[ @ 0]]
	self.SpecialistName = SpecialistName --[[ @ 0]]
	
	local CharacterSelectionPrestigeInfo = CoD.CharacterSelection_PrestigeInfo.new( f1_local1, f1_arg0, 0.5, 0.5, 260, 334, 0.5, 0.5, 235, 309 ) --[[ @ 0]]
	CharacterSelectionPrestigeInfo:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				local f8_local0 --[[ @ 0]]
				if not IsPrestigeLevelAtZero( f1_arg0 ) then
					f8_local0 = CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg0, "isEchelonUnlock" ) --[[ @ 0]]
				else
					f8_local0 = false --[[ @ 0]]
				end
				return f8_local0
			end
		}
	} ) --[[ @ 0]]
	CharacterSelectionPrestigeInfo:linkToElementModel( CharacterSelectionPrestigeInfo, "isEchelonUnlock", true, function ( model )
		f1_local1:updateElementState( CharacterSelectionPrestigeInfo, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = model:get(),
			modelName = "isEchelonUnlock"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	CharacterSelectionPrestigeInfo:linkToElementModel( self, nil, false, function ( model )
		CharacterSelectionPrestigeInfo:setModel( model, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( CharacterSelectionPrestigeInfo ) --[[ @ 0]]
	self.CharacterSelectionPrestigeInfo = CharacterSelectionPrestigeInfo --[[ @ 0]]
	
	self:registerEventHandler( "occlusion_change", function ( self, event )
		local f11_local0 = nil --[[ @ 0]]
		if self.OcclusionChange then
			f11_local0 = self:OcclusionChange( event ) --[[ @ 0]]
		elseif self.super.OcclusionChange then
			f11_local0 = self.super:OcclusionChange( event ) --[[ @ 0]]
		end
		CoD.BaseUtility.SetModelFromUserData( f1_arg0, f1_local1, f1_arg1.model ) --[[ @ 0]]
		SendClientScriptMenuExpressionStateChangeNotify( f1_arg0, f1_local1, true, f1_arg1.model.characterIndex:get() ) --[[ @ 0]]
		if not f11_local0 then
			f11_local0 = self:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f11_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], nil, function ( element, menu, controller, model )
		GoBack( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], @"menu/back", nil, nil ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "close", function ( element )
		SendClientScriptMenuChangeNotify( f1_arg0, f1_local1, false ) --[[ @ 0]]
		UploadStats( self, f1_arg0 ) --[[ @ 0]]
		SaveLoadoutGeneric( f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	if CoD.isPC then
		XCamMouseControl.id = "XCamMouseControl" --[[ @ 0]]
	end
	BackingFrame:setModel( self.buttonModel, f1_arg0 ) --[[ @ 0]]
	if CoD.isPC then
		BackingFrame.id = "BackingFrame" --[[ @ 0]]
	end
	options.id = "options" --[[ @ 0]]
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	self.__defaultFocus = options --[[ @ 0]]
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
CoD.WZPersonalizeCharacterInspect.__resetProperties = function ( f15_arg0 )
	f15_arg0.options:completeAnimation() --[[ @ 0]]
	f15_arg0.options:setLeftRight( 0.5, 0.5, -813, -420 ) --[[ @ 0]]
	f15_arg0.options:setTopBottom( 0, 0, 222.5, 947.5 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.WZPersonalizeCharacterInspect.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	PC = {
		DefaultClip = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f17_arg0.options:completeAnimation() --[[ @ 0]]
			f17_arg0.options:setLeftRight( 0.5, 0.5, -813, -420 ) --[[ @ 0]]
			f17_arg0.options:setTopBottom( 0.5, 0.5, -317.5, 407.5 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.options ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.WZPersonalizeCharacterInspect.__onClose = function ( f18_arg0 )
	f18_arg0.XCamMouseControl:close() --[[ @ 0]]
	f18_arg0.BackingFrame:close() --[[ @ 0]]
	f18_arg0.options:close() --[[ @ 0]]
	f18_arg0.CommonIdentityWidgetStreamlinedSafeAreaContainer:close() --[[ @ 0]]
	f18_arg0.SpecialistName:close() --[[ @ 0]]
	f18_arg0.CharacterSelectionPrestigeInfo:close() --[[ @ 0]]
end
 --[[ @ 0]]
