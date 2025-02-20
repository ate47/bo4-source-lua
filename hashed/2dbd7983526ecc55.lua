-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "ui/uieditor/widgets/backgroundframes/genericmenuframe" ) --[[ @ 0]]
require( "ui/uieditor/widgets/cac/titledotswidget" ) --[[ @ 0]]
require( "x64:5131d34d6abd22fe" ) --[[ @ 0]]
require( "x64:254a41db003228cc" ) --[[ @ 0]]
require( "ui/uieditor/widgets/lobby/common/fe_buttonpanelshadercontainer" ) --[[ @ 0]]
require( "ui/uieditor/widgets/scrollbars/verticalcounter" ) --[[ @ 0]]

CoD.Paintshop = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.Paintshop = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "Paintshop", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	CoD.CraftUtility.PaintshopPreLoad( self, f1_arg0 ) --[[ @ 0]]
	SendClientScriptMenuChangeNotify( f1_arg0, f1_local1, true ) --[[ @ 0]]
	CoD.BaseUtility.SetPropertiesFromUserData( self, f1_arg1 ) --[[ @ 0]]
	self:setClass( CoD.Paintshop ) --[[ @ 0]]
	self.soundSet = "Paintshop" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_local1:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local BlackTransition = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BlackTransition:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BlackTransition:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( BlackTransition ) --[[ @ 0]]
	self.BlackTransition = BlackTransition --[[ @ 0]]
	
	local TitleDotsWidget0 = CoD.TitleDotsWidget.new( f1_local1, f1_arg0, 0.5, 0.5, -955, -167, 0.5, 0.5, -637.5, -400.5 ) --[[ @ 0]]
	TitleDotsWidget0:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( TitleDotsWidget0 ) --[[ @ 0]]
	self.TitleDotsWidget0 = TitleDotsWidget0 --[[ @ 0]]
	
	local LeftPanel = CoD.FE_ButtonPanelShaderContainer.new( f1_local1, f1_arg0, 0.5, 0.5, -864, -408, 0.5, 0.5, -403, 537 ) --[[ @ 0]]
	LeftPanel:setRGB( 0.5, 0.5, 0.5 ) --[[ @ 0]]
	self:addElement( LeftPanel ) --[[ @ 0]]
	self.LeftPanel = LeftPanel --[[ @ 0]]
	
	local paintjobSelector = CoD.PaintjobSelector.new( f1_local1, f1_arg0, 0.5, 0.5, -960, 960, 0.5, 0.5, -540, 540 ) --[[ @ 0]]
	paintjobSelector:registerEventHandler( "gain_focus", function ( element, event )
		local f2_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f2_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f2_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		UpdateElementState( self, "slotsFull", f1_arg0 ) --[[ @ 0]]
		return f2_local0
	end ) --[[ @ 0]]
	paintjobSelector:registerEventHandler( "menu_loaded", function ( element, event )
		local f3_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f3_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f3_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		if not IsPC() then
			SizeToSafeArea( element, f1_arg0 ) --[[ @ 0]]
		end
		if not f3_local0 then
			f3_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f3_local0
	end ) --[[ @ 0]]
	self:addElement( paintjobSelector ) --[[ @ 0]]
	self.paintjobSelector = paintjobSelector --[[ @ 0]]
	
	local MenuFrame = CoD.GenericMenuFrame.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	MenuFrame.CommonHeader.subtitle.StageTitle:setText( LocalizeToUpperString( @"hash_D5133E81D776975" ) ) --[[ @ 0]]
	MenuFrame:subscribeToGlobalModel( f1_arg0, "LobbyRoot", "lobbyTitle", function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			MenuFrame.CommonHeader.subtitle.subtitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( f4_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( MenuFrame ) --[[ @ 0]]
	self.MenuFrame = MenuFrame --[[ @ 0]]
	
	local slotsFull = CoD.PaintshopSlotsFull.new( f1_local1, f1_arg0, 0.5, 0.5, -286, -109, 0.5, 0.5, 351, 432 ) --[[ @ 0]]
	slotsFull:mergeStateConditions( {
		{
			stateName = "SlotsFull",
			condition = function ( menu, element, event )
				return CraftSlotsFullByStorageType( f1_arg0, Enum[@"StorageFileType"][@"hash_2743B8404C246F61"] )
			end
		}
	} ) --[[ @ 0]]
	slotsFull:setAlpha( 0 ) --[[ @ 0]]
	slotsFull:subscribeToGlobalModel( f1_arg0, "PerController", "Paintshop.UpdateDataSource", function ( model )
		UpdateSelfElementState( f1_local1, slotsFull, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( slotsFull ) --[[ @ 0]]
	self.slotsFull = slotsFull --[[ @ 0]]
	
	local categoryName = LUI.UIText.new( 0.5, 0.5, -378, 7, 0.5, 0.5, -368, -340 ) --[[ @ 0]]
	categoryName:setRGB( 0.97, 0.32, 0.05 ) --[[ @ 0]]
	categoryName:setAlpha( 0 ) --[[ @ 0]]
	categoryName:setText( LocalizeToUpperString( @"hash_17E4B041D9216644" ) ) --[[ @ 0]]
	categoryName:setTTF( "dinnext_regular" ) --[[ @ 0]]
	categoryName:setLetterSpacing( 1 ) --[[ @ 0]]
	categoryName:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	categoryName:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( categoryName ) --[[ @ 0]]
	self.categoryName = categoryName --[[ @ 0]]
	
	local weaponVerticalCounter = CoD.verticalCounter.new( f1_local1, f1_arg0, 0.5, 0.5, -787, -487, 0.5, 0.5, 399, 437 ) --[[ @ 0]]
	weaponVerticalCounter:setAlpha( 0 ) --[[ @ 0]]
	weaponVerticalCounter:registerEventHandler( "menu_loaded", function ( element, event )
		local f7_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f7_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f7_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		SetAsListVerticalCounter( self, element, "weaponList" ) --[[ @ 0]]
		if not f7_local0 then
			f7_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f7_local0
	end ) --[[ @ 0]]
	self:addElement( weaponVerticalCounter ) --[[ @ 0]]
	self.weaponVerticalCounter = weaponVerticalCounter --[[ @ 0]]
	
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"LUIButton"][@"hash_1805EFA15E9E7E5A"], nil, function ( element, menu, controller, model )
		GoBack( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_1805EFA15E9E7E5A"], @"hash_370A9FDC87CD3D48", nil, nil ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"LUIButton"][@"hash_222361E23588705A"], nil, function ( element, menu, controller, model )
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_222361E23588705A"], @"hash_0", nil, nil ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "close", function ( element )
		PaintshopWeaponList_Back( self, element, f1_arg0 ) --[[ @ 0]]
		ClearMenuSavedState( f1_local1 ) --[[ @ 0]]
		SendClientScriptMenuChangeNotify( f1_arg0, f1_local1, false ) --[[ @ 0]]
	end ) --[[ @ 0]]
	paintjobSelector.id = "paintjobSelector" --[[ @ 0]]
	MenuFrame:setModel( self.buttonModel, f1_arg0 ) --[[ @ 0]]
	if CoD.isPC then
		MenuFrame.id = "MenuFrame" --[[ @ 0]]
	end
	weaponVerticalCounter.id = "weaponVerticalCounter" --[[ @ 0]]
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	self.__defaultFocus = paintjobSelector --[[ @ 0]]
	if CoD.isPC and (IsKeyboard( f1_arg0 ) or self.ignoreCursor) then
		self:restoreState( f1_arg0 ) --[[ @ 0]]
	end
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local10 = self --[[ @ 0]]
	CoD.OverlayUtility.DisableBlur( self ) --[[ @ 0]]
	CoD.OverlayUtility.DisablePopupOpenCloseAnim( self ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.Paintshop.__resetProperties = function ( f13_arg0 )
	f13_arg0.LeftPanel:completeAnimation() --[[ @ 0]]
	f13_arg0.BlackTransition:completeAnimation() --[[ @ 0]]
	f13_arg0.LeftPanel:setLeftRight( 0.5, 0.5, -864, -408 ) --[[ @ 0]]
	f13_arg0.LeftPanel:setTopBottom( 0.5, 0.5, -403, 537 ) --[[ @ 0]]
	f13_arg0.BlackTransition:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.Paintshop.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f14_arg0.LeftPanel:completeAnimation() --[[ @ 0]]
			f14_arg0.LeftPanel:setLeftRight( 0.5, 0.5, 96, 552 ) --[[ @ 0]]
			f14_arg0.LeftPanel:setTopBottom( 0.5, 0.5, 136, 1020 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.LeftPanel ) --[[ @ 0]]
		end,
		Intro = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f15_local0 = function ( f16_arg0 )
				local f16_local0 = function ( f17_arg0 )
					f17_arg0:beginAnimation( 300 ) --[[ @ 0]]
					f17_arg0:setAlpha( 0 ) --[[ @ 0]]
					f17_arg0:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f15_arg0.BlackTransition:beginAnimation( 200 ) --[[ @ 0]]
				f15_arg0.BlackTransition:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
				f15_arg0.BlackTransition:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.BlackTransition:completeAnimation() --[[ @ 0]]
			f15_arg0.BlackTransition:setAlpha( 1 ) --[[ @ 0]]
			f15_local0( f15_arg0.BlackTransition ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.Paintshop.__onClose = function ( f18_arg0 )
	f18_arg0.TitleDotsWidget0:close() --[[ @ 0]]
	f18_arg0.LeftPanel:close() --[[ @ 0]]
	f18_arg0.paintjobSelector:close() --[[ @ 0]]
	f18_arg0.MenuFrame:close() --[[ @ 0]]
	f18_arg0.slotsFull:close() --[[ @ 0]]
	f18_arg0.weaponVerticalCounter:close() --[[ @ 0]]
end
 --[[ @ 0]]
