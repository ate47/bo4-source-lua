-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/cac/cac_background_slide_panel_short" ) --[[ @ 0]]
require( "ui/uieditor/widgets/cac/cacheader" ) --[[ @ 0]]
require( "ui/uieditor/widgets/cac/equipmentselect/equipmentlistwidget" ) --[[ @ 0]]
require( "x64:1d1b72c431d2cbb7" ) --[[ @ 0]]
require( "ui/uieditor/widgets/cac/itemnamedescunlocktext" ) --[[ @ 0]]
require( "x64:6341ce33d59fafd1" ) --[[ @ 0]]
require( "ui/uieditor/widgets/footer/footercontainer_frontend_right" ) --[[ @ 0]]
require( "ui/uieditor/widgets/header/header_container_frontend" ) --[[ @ 0]]
require( "ui/uieditor/widgets/pc/utility/xcammousecontrol" ) --[[ @ 0]]

CoD.SpecialistEquipmentSelect = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.SpecialistEquipmentSelect = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "SpecialistEquipmentSelect", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	CoD.BaseUtility.SetPropertiesFromUserData( self, f1_arg1 ) --[[ @ 0]]
	self:setClass( CoD.SpecialistEquipmentSelect ) --[[ @ 0]]
	self.soundSet = "CAC_Gear" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_local1:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	local XCamMouseControl = nil --[[ @ 0]]
	
	XCamMouseControl = CoD.XCamMouseControl.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 0, 146, 646 ) --[[ @ 0]]
	self:addElement( XCamMouseControl ) --[[ @ 0]]
	self.XCamMouseControl = XCamMouseControl --[[ @ 0]]
	
	local BackgroundSlidePanel = CoD.cac_background_slide_panel_short.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 0, 639, 1261 ) --[[ @ 0]]
	self:addElement( BackgroundSlidePanel ) --[[ @ 0]]
	self.BackgroundSlidePanel = BackgroundSlidePanel --[[ @ 0]]
	
	local EquipmentListWidget = CoD.EquipmentListWidget.new( f1_local1, f1_arg0, 0.5, 0.5, -1100, 1100, 0, 0, 547, 1047 ) --[[ @ 0]]
	self:addElement( EquipmentListWidget ) --[[ @ 0]]
	self.EquipmentListWidget = EquipmentListWidget --[[ @ 0]]
	
	local CACHeader = CoD.CACHeader.new( f1_local1, f1_arg0, 0.5, 0.5, -960, 960, 0, 0, 0, 67 ) --[[ @ 0]]
	CACHeader.subtitle.StageTitle:setText( LocalizeToUpperString( CoD.CACUtility.GetHeaderNameForLoadoutSlot( self, @"hash_15C60F77B9332E5B" ) ) ) --[[ @ 0]]
	CACHeader.subtitle.subtitle:setAlpha( 0 ) --[[ @ 0]]
	CACHeader:subscribeToGlobalModel( f1_arg0, "LobbyRoot", "lobbyTitle", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			CACHeader.subtitle.subtitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	CACHeader:linkToElementModel( self, nil, false, function ( model )
		CACHeader:setModel( model, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	CACHeader:registerEventHandler( "menu_loaded", function ( element, event )
		local f4_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f4_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f4_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		if not IsPC() then
			SizeToSafeArea( element, f1_arg0 ) --[[ @ 0]]
		end
		if not f4_local0 then
			f4_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f4_local0
	end ) --[[ @ 0]]
	self:addElement( CACHeader ) --[[ @ 0]]
	self.CACHeader = CACHeader --[[ @ 0]]
	
	local ItemInfo = CoD.ItemNameDescUnlockText.new( f1_local1, f1_arg0, 0.5, 0.5, -740, -240, 0, 0, 489.5, 596.5 ) --[[ @ 0]]
	ItemInfo:mergeStateConditions( {
		{
			stateName = "NotVisible",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg0, "refHash", CoDShared.DefaultSpecialistEquipment )
			end
		}
	} ) --[[ @ 0]]
	ItemInfo:linkToElementModel( ItemInfo, "refHash", true, function ( model )
		f1_local1:updateElementState( ItemInfo, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = model:get(),
			modelName = "refHash"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ItemInfo ) --[[ @ 0]]
	self.ItemInfo = ItemInfo --[[ @ 0]]
	
	local BackingGrayMediumLeft = CoD.header_container_frontend.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 0, 0, 42 ) --[[ @ 0]]
	BackingGrayMediumLeft:registerEventHandler( "menu_loaded", function ( element, event )
		local f7_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f7_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f7_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		if not IsPC() then
			SizeToSafeArea( element, f1_arg0 ) --[[ @ 0]]
		end
		if not f7_local0 then
			f7_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f7_local0
	end ) --[[ @ 0]]
	self:addElement( BackingGrayMediumLeft ) --[[ @ 0]]
	self.BackingGrayMediumLeft = BackingGrayMediumLeft --[[ @ 0]]
	
	local SpecialistEquipmentTabs = CoD.SpecialistEquipmentTabListWidget.new( f1_local1, f1_arg0, 0.5, 0.5, -960, 960, 0.5, 0.5, -540, 540 ) --[[ @ 0]]
	SpecialistEquipmentTabs:mergeStateConditions( {
		{
			stateName = "NotVisible",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg0, "refHash", CoDShared.DefaultSpecialistEquipment )
			end
		}
	} ) --[[ @ 0]]
	SpecialistEquipmentTabs:linkToElementModel( SpecialistEquipmentTabs, "refHash", true, function ( model )
		f1_local1:updateElementState( SpecialistEquipmentTabs, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = model:get(),
			modelName = "refHash"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	SpecialistEquipmentTabs:registerEventHandler( "menu_loaded", function ( element, event )
		local f10_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f10_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f10_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		if not IsPC() then
			SizeToSafeArea( element, f1_arg0 ) --[[ @ 0]]
		end
		if not f10_local0 then
			f10_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f10_local0
	end ) --[[ @ 0]]
	self:addElement( SpecialistEquipmentTabs ) --[[ @ 0]]
	self.SpecialistEquipmentTabs = SpecialistEquipmentTabs --[[ @ 0]]
	
	local FooterContainerFrontendRight = CoD.FooterContainer_Frontend_Right.new( f1_local1, f1_arg0, 0, 1, 0, 0, 1, 1, -48, 0 ) --[[ @ 0]]
	FooterContainerFrontendRight:registerEventHandler( "menu_loaded", function ( element, event )
		local f11_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f11_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f11_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		if not IsPC() then
			SizeToSafeArea( element, f1_arg0 ) --[[ @ 0]]
		end
		if not f11_local0 then
			f11_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f11_local0
	end ) --[[ @ 0]]
	self:addElement( FooterContainerFrontendRight ) --[[ @ 0]]
	self.FooterContainerFrontendRight = FooterContainerFrontendRight --[[ @ 0]]
	
	local RestrictedText = CoD.RestrictedItemWarningText.new( f1_local1, f1_arg0, 0.5, 0.5, -247, 247, 0.5, 0.5, 85, 115 ) --[[ @ 0]]
	self:addElement( RestrictedText ) --[[ @ 0]]
	self.RestrictedText = RestrictedText --[[ @ 0]]
	
	ItemInfo:linkToElementModel( EquipmentListWidget.itemList, nil, false, function ( model )
		ItemInfo:setModel( model, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	SpecialistEquipmentTabs:linkToElementModel( EquipmentListWidget.itemList, nil, false, function ( model )
		SpecialistEquipmentTabs:setModel( model, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	RestrictedText:linkToElementModel( EquipmentListWidget.itemList, nil, false, function ( model )
		RestrictedText:setModel( model, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], nil, function ( element, menu, controller, model )
		if not IsPC() then
			PlaySoundAlias( "uin_party_ease_slide_back" ) --[[ @ 0]]
			CoD.CACUtility.PlayChooseScreenOutro( menu, controller, "Close" ) --[[ @ 0]]
			DelayUnhideFreecursorGoBack( menu, controller, 200 ) --[[ @ 0]]
			return true
		elseif IsPC() then
			PlaySoundAlias( "uin_party_ease_slide_back" ) --[[ @ 0]]
			CoD.CACUtility.PlayChooseScreenOutro( menu, controller, "ClosePC" ) --[[ @ 0]]
			DelayGoBack( menu, controller, 70 ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not IsPC() then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], @"menu/back", nil, nil ) --[[ @ 0]]
			return true
		elseif IsPC() then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], @"menu/back", nil, nil ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "close", function ( element )
		ClearMenuSavedState( f1_local1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	if CoD.isPC then
		XCamMouseControl.id = "XCamMouseControl" --[[ @ 0]]
	end
	EquipmentListWidget.id = "EquipmentListWidget" --[[ @ 0]]
	SpecialistEquipmentTabs.id = "SpecialistEquipmentTabs" --[[ @ 0]]
	FooterContainerFrontendRight:setModel( self.buttonModel, f1_arg0 ) --[[ @ 0]]
	if CoD.isPC then
		FooterContainerFrontendRight.id = "FooterContainerFrontendRight" --[[ @ 0]]
	end
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	self.__defaultFocus = EquipmentListWidget --[[ @ 0]]
	if CoD.isPC and (IsKeyboard( f1_arg0 ) or self.ignoreCursor) then
		self:restoreState( f1_arg0 ) --[[ @ 0]]
	end
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	local f1_local11 = self --[[ @ 0]]
	if not IsPC() then
		CoD.BaseUtility.SetModelFromPropertyModel( f1_arg0, self, self ) --[[ @ 0]]
		CoD.CACUtility.PlayChooseScreenIntro( f1_local1, f1_arg0, 200, "Open", true ) --[[ @ 0]]
	elseif IsPC() then
		CoD.BaseUtility.SetModelFromPropertyModel( f1_arg0, self, self ) --[[ @ 0]]
		CoD.CACUtility.PlayChooseScreenIntro( f1_local1, f1_arg0, 200, "OpenPC", true ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.SpecialistEquipmentSelect.__resetProperties = function ( f18_arg0 )
	f18_arg0.EquipmentListWidget:completeAnimation() --[[ @ 0]]
	f18_arg0.BackgroundSlidePanel:completeAnimation() --[[ @ 0]]
	f18_arg0.EquipmentListWidget:setTopBottom( 0, 0, 547, 1047 ) --[[ @ 0]]
	f18_arg0.EquipmentListWidget:setAlpha( 1 ) --[[ @ 0]]
	f18_arg0.BackgroundSlidePanel:setTopBottom( 0, 0, 639, 1261 ) --[[ @ 0]]
	f18_arg0.BackgroundSlidePanel:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.SpecialistEquipmentSelect.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f19_arg0.BackgroundSlidePanel:completeAnimation() --[[ @ 0]]
			f19_arg0.BackgroundSlidePanel:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.BackgroundSlidePanel ) --[[ @ 0]]
			f19_arg0.EquipmentListWidget:completeAnimation() --[[ @ 0]]
			f19_arg0.EquipmentListWidget:setTopBottom( 0, 0, 1080, 1580 ) --[[ @ 0]]
			f19_arg0.EquipmentListWidget:setAlpha( 0.01 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.EquipmentListWidget ) --[[ @ 0]]
		end,
		Open = function ( f20_arg0, f20_arg1 )
			f20_arg0:__resetProperties() --[[ @ 0]]
			f20_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f20_local0 = function ( f21_arg0 )
				local f21_local0 = function ( f22_arg0 )
					f22_arg0:beginAnimation( 100, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
					f22_arg0:setTopBottom( 0, 0, 639, 1261 ) --[[ @ 0]]
					f22_arg0:setAlpha( 1 ) --[[ @ 0]]
					f22_arg0:registerEventHandler( "transition_complete_keyframe", f20_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f20_arg0.BackgroundSlidePanel:beginAnimation( 100 ) --[[ @ 0]]
				f20_arg0.BackgroundSlidePanel:setTopBottom( 0, 0, 872, 1494 ) --[[ @ 0]]
				f20_arg0.BackgroundSlidePanel:registerEventHandler( "interrupted_keyframe", f20_arg0.clipInterrupted ) --[[ @ 0]]
				f20_arg0.BackgroundSlidePanel:registerEventHandler( "transition_complete_keyframe", f21_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f20_arg0.BackgroundSlidePanel:completeAnimation() --[[ @ 0]]
			f20_arg0.BackgroundSlidePanel:setTopBottom( 0, 0, 1072, 1694 ) --[[ @ 0]]
			f20_arg0.BackgroundSlidePanel:setAlpha( 0 ) --[[ @ 0]]
			f20_local0( f20_arg0.BackgroundSlidePanel ) --[[ @ 0]]
			local f20_local1 = function ( f23_arg0 )
				local f23_local0 = function ( f24_arg0 )
					f24_arg0:beginAnimation( 49, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
					f24_arg0:setTopBottom( 0, 0, 547, 1047 ) --[[ @ 0]]
					f24_arg0:setAlpha( 1 ) --[[ @ 0]]
					f24_arg0:registerEventHandler( "transition_complete_keyframe", f20_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f20_arg0.EquipmentListWidget:beginAnimation( 200 ) --[[ @ 0]]
				f20_arg0.EquipmentListWidget:setTopBottom( 0, 0, 600, 1100 ) --[[ @ 0]]
				f20_arg0.EquipmentListWidget:registerEventHandler( "interrupted_keyframe", f20_arg0.clipInterrupted ) --[[ @ 0]]
				f20_arg0.EquipmentListWidget:registerEventHandler( "transition_complete_keyframe", f23_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f20_arg0.EquipmentListWidget:completeAnimation() --[[ @ 0]]
			f20_arg0.EquipmentListWidget:setTopBottom( 0, 0, 1080, 1580 ) --[[ @ 0]]
			f20_arg0.EquipmentListWidget:setAlpha( 0.01 ) --[[ @ 0]]
			f20_local1( f20_arg0.EquipmentListWidget ) --[[ @ 0]]
		end,
		Close = function ( f25_arg0, f25_arg1 )
			f25_arg0:__resetProperties() --[[ @ 0]]
			f25_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f25_local0 = function ( f26_arg0 )
				f25_arg0.BackgroundSlidePanel:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f25_arg0.BackgroundSlidePanel:setTopBottom( 0, 0, 1072, 1694 ) --[[ @ 0]]
				f25_arg0.BackgroundSlidePanel:setAlpha( 0 ) --[[ @ 0]]
				f25_arg0.BackgroundSlidePanel:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.BackgroundSlidePanel:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.BackgroundSlidePanel:completeAnimation() --[[ @ 0]]
			f25_arg0.BackgroundSlidePanel:setTopBottom( 0, 0, 639, 1261 ) --[[ @ 0]]
			f25_arg0.BackgroundSlidePanel:setAlpha( 1 ) --[[ @ 0]]
			f25_local0( f25_arg0.BackgroundSlidePanel ) --[[ @ 0]]
			local f25_local1 = function ( f27_arg0 )
				f25_arg0.EquipmentListWidget:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f25_arg0.EquipmentListWidget:setTopBottom( 0, 0, 1080, 1580 ) --[[ @ 0]]
				f25_arg0.EquipmentListWidget:setAlpha( 0 ) --[[ @ 0]]
				f25_arg0.EquipmentListWidget:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.EquipmentListWidget:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.EquipmentListWidget:completeAnimation() --[[ @ 0]]
			f25_arg0.EquipmentListWidget:setTopBottom( 0, 0, 547, 1047 ) --[[ @ 0]]
			f25_arg0.EquipmentListWidget:setAlpha( 1 ) --[[ @ 0]]
			f25_local1( f25_arg0.EquipmentListWidget ) --[[ @ 0]]
		end,
		OpenPC = function ( f28_arg0, f28_arg1 )
			f28_arg0:__resetProperties() --[[ @ 0]]
			f28_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f28_local0 = function ( f29_arg0 )
				f28_arg0.BackgroundSlidePanel:beginAnimation( 70 ) --[[ @ 0]]
				f28_arg0.BackgroundSlidePanel:setAlpha( 1 ) --[[ @ 0]]
				f28_arg0.BackgroundSlidePanel:registerEventHandler( "interrupted_keyframe", f28_arg0.clipInterrupted ) --[[ @ 0]]
				f28_arg0.BackgroundSlidePanel:registerEventHandler( "transition_complete_keyframe", f28_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f28_arg0.BackgroundSlidePanel:completeAnimation() --[[ @ 0]]
			f28_arg0.BackgroundSlidePanel:setAlpha( 0 ) --[[ @ 0]]
			f28_local0( f28_arg0.BackgroundSlidePanel ) --[[ @ 0]]
			local f28_local1 = function ( f30_arg0 )
				f28_arg0.EquipmentListWidget:beginAnimation( 70 ) --[[ @ 0]]
				f28_arg0.EquipmentListWidget:setAlpha( 1 ) --[[ @ 0]]
				f28_arg0.EquipmentListWidget:registerEventHandler( "interrupted_keyframe", f28_arg0.clipInterrupted ) --[[ @ 0]]
				f28_arg0.EquipmentListWidget:registerEventHandler( "transition_complete_keyframe", f28_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f28_arg0.EquipmentListWidget:completeAnimation() --[[ @ 0]]
			f28_arg0.EquipmentListWidget:setAlpha( 0 ) --[[ @ 0]]
			f28_local1( f28_arg0.EquipmentListWidget ) --[[ @ 0]]
		end,
		ClosePC = function ( f31_arg0, f31_arg1 )
			f31_arg0:__resetProperties() --[[ @ 0]]
			f31_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f31_local0 = function ( f32_arg0 )
				f31_arg0.BackgroundSlidePanel:beginAnimation( 40 ) --[[ @ 0]]
				f31_arg0.BackgroundSlidePanel:setAlpha( 0 ) --[[ @ 0]]
				f31_arg0.BackgroundSlidePanel:registerEventHandler( "interrupted_keyframe", f31_arg0.clipInterrupted ) --[[ @ 0]]
				f31_arg0.BackgroundSlidePanel:registerEventHandler( "transition_complete_keyframe", f31_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f31_arg0.BackgroundSlidePanel:completeAnimation() --[[ @ 0]]
			f31_arg0.BackgroundSlidePanel:setAlpha( 1 ) --[[ @ 0]]
			f31_local0( f31_arg0.BackgroundSlidePanel ) --[[ @ 0]]
			local f31_local1 = function ( f33_arg0 )
				f31_arg0.EquipmentListWidget:beginAnimation( 40 ) --[[ @ 0]]
				f31_arg0.EquipmentListWidget:setAlpha( 0 ) --[[ @ 0]]
				f31_arg0.EquipmentListWidget:registerEventHandler( "interrupted_keyframe", f31_arg0.clipInterrupted ) --[[ @ 0]]
				f31_arg0.EquipmentListWidget:registerEventHandler( "transition_complete_keyframe", f31_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f31_arg0.EquipmentListWidget:completeAnimation() --[[ @ 0]]
			f31_arg0.EquipmentListWidget:setAlpha( 1 ) --[[ @ 0]]
			f31_local1( f31_arg0.EquipmentListWidget ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.SpecialistEquipmentSelect.__onClose = function ( f34_arg0 )
	f34_arg0.ItemInfo:close() --[[ @ 0]]
	f34_arg0.SpecialistEquipmentTabs:close() --[[ @ 0]]
	f34_arg0.RestrictedText:close() --[[ @ 0]]
	f34_arg0.XCamMouseControl:close() --[[ @ 0]]
	f34_arg0.BackgroundSlidePanel:close() --[[ @ 0]]
	f34_arg0.EquipmentListWidget:close() --[[ @ 0]]
	f34_arg0.CACHeader:close() --[[ @ 0]]
	f34_arg0.BackingGrayMediumLeft:close() --[[ @ 0]]
	f34_arg0.FooterContainerFrontendRight:close() --[[ @ 0]]
end
 --[[ @ 0]]
