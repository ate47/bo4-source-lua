-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "ui/uieditor/widgets/cac/cac_background_slide_panel" ) --[[ @ 0]]
require( "ui/uieditor/widgets/cac/itemnamedescunlocktext" ) --[[ @ 0]]
require( "x64:5bfdb5df2cebf5b2" ) --[[ @ 0]]
require( "x64:317e754536a5528" ) --[[ @ 0]]
require( "ui/uieditor/widgets/pc/utility/xcammousecontrol" ) --[[ @ 0]]

CoD.PaintjobWeaponSelect = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.PaintjobWeaponSelect = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "PaintjobWeaponSelect", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	CoD.BaseUtility.SetPropertiesFromUserData( self, f1_arg1 ) --[[ @ 0]]
	SetControllerModelValue( f1_arg0, "isInPaintshop", true ) --[[ @ 0]]
	SendClientScriptMenuChangeNotify( f1_arg0, f1_local1, true ) --[[ @ 0]]
	CoD.BaseUtility.InitControllerModel( f1_arg0, "PaintjobWeaponVariantListShown", false ) --[[ @ 0]]
	self:setClass( CoD.PaintjobWeaponSelect ) --[[ @ 0]]
	self.soundSet = "FrontendMain" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_local1:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	local XCamMouseControl = nil --[[ @ 0]]
	
	XCamMouseControl = CoD.XCamMouseControl.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 0, 183, 683 ) --[[ @ 0]]
	self:addElement( XCamMouseControl ) --[[ @ 0]]
	self.XCamMouseControl = XCamMouseControl --[[ @ 0]]
	
	local BackgroundSlidePanel = CoD.cac_background_slide_panel.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 0, 672, 1294 ) --[[ @ 0]]
	BackgroundSlidePanel:setZoom( 70 ) --[[ @ 0]]
	self:addElement( BackgroundSlidePanel ) --[[ @ 0]]
	self.BackgroundSlidePanel = BackgroundSlidePanel --[[ @ 0]]
	
	local ItemInfo = CoD.ItemNameDescUnlockText.new( f1_local1, f1_arg0, 0.5, 0.5, -792, -292, 0, 0, 451.5, 558.5 ) --[[ @ 0]]
	self:addElement( ItemInfo ) --[[ @ 0]]
	self.ItemInfo = ItemInfo --[[ @ 0]]
	
	local PaintshopWeaponSelectWidget = CoD.PaintshopWeaponSelectWidget.new( f1_local1, f1_arg0, 0.5, 0.5, -960, 960, 0, 0, 0, 1080 ) --[[ @ 0]]
	PaintshopWeaponSelectWidget:registerEventHandler( "menu_loaded", function ( element, event )
		local f2_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f2_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f2_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		if not IsPC() then
			SizeToSafeArea( element, f1_arg0 ) --[[ @ 0]]
		end
		if not f2_local0 then
			f2_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f2_local0
	end ) --[[ @ 0]]
	self:addElement( PaintshopWeaponSelectWidget ) --[[ @ 0]]
	self.PaintshopWeaponSelectWidget = PaintshopWeaponSelectWidget --[[ @ 0]]
	
	local PaintjobWeaponSelectSafeAreaContainer = CoD.PaintjobWeaponSelectSafeAreaContainer.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	PaintjobWeaponSelectSafeAreaContainer:registerEventHandler( "menu_loaded", function ( element, event )
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
	self:addElement( PaintjobWeaponSelectSafeAreaContainer ) --[[ @ 0]]
	self.PaintjobWeaponSelectSafeAreaContainer = PaintjobWeaponSelectSafeAreaContainer --[[ @ 0]]
	
	local f1_local7 = self --[[ @ 0]]
	local f1_local8 = self.subscribeToModel --[[ @ 0]]
	local f1_local9 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	f1_local8( f1_local7, f1_local9.PaintjobWeaponVariantListShown, function ( f4_arg0, f4_arg1 )
		CoD.Menu.UpdateButtonShownState( f4_arg1, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xbb_pscircle"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], nil, function ( element, menu, controller, model )
		if not CoD.ModelUtility.IsControllerModelValueTrue( controller, "PaintjobWeaponVariantListShown" ) then
			PlaySoundAlias( "uin_party_ease_slide_back" ) --[[ @ 0]]
			GoBack( self, controller ) --[[ @ 0]]
			return true
		elseif CoD.ModelUtility.IsControllerModelValueTrue( controller, "PaintjobWeaponVariantListShown" ) then
			PlaySoundAlias( "uin_party_ease_slide_back" ) --[[ @ 0]]
			CoD.CACUtility.HideWeaponVariantList( menu, controller ) --[[ @ 0]]
			SetControllerModelValue( controller, "PaintjobWeaponVariantListShown", false ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not CoD.ModelUtility.IsControllerModelValueTrue( controller, "PaintjobWeaponVariantListShown" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], @"menu/back", nil, nil ) --[[ @ 0]]
			return true
		elseif CoD.ModelUtility.IsControllerModelValueTrue( controller, "PaintjobWeaponVariantListShown" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], @"menu/back", nil, nil ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "close", function ( element )
		CoD.BreadcrumbUtility.UploadBuffer( f1_arg0, Enum[@"storagefiletype"][@"storage_mp_stats_online"] ) --[[ @ 0]]
		SetControllerModelValue( f1_arg0, "isInPaintshop", false ) --[[ @ 0]]
		SendClientScriptNotifyForAdjustedClient( f1_arg0, "CustomClass_closed", "" ) --[[ @ 0]]
		SendClientScriptMenuChangeNotify( f1_arg0, f1_local1, false ) --[[ @ 0]]
		ClearMenuSavedState( f1_local1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	if CoD.isPC then
		XCamMouseControl.id = "XCamMouseControl" --[[ @ 0]]
	end
	PaintshopWeaponSelectWidget.id = "PaintshopWeaponSelectWidget" --[[ @ 0]]
	if CoD.isPC then
		PaintjobWeaponSelectSafeAreaContainer.id = "PaintjobWeaponSelectSafeAreaContainer" --[[ @ 0]]
	end
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	self.__defaultFocus = PaintshopWeaponSelectWidget --[[ @ 0]]
	if CoD.isPC and (IsKeyboard( f1_arg0 ) or self.ignoreCursor) then
		self:restoreState( f1_arg0 ) --[[ @ 0]]
	end
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local8 = self --[[ @ 0]]
	CoD.BaseUtility.SetModelFromPropertyModel( f1_arg0, self, self ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.PaintjobWeaponSelect.__resetProperties = function ( f8_arg0 )
	f8_arg0.BackgroundSlidePanel:completeAnimation() --[[ @ 0]]
	f8_arg0.BackgroundSlidePanel:setTopBottom( 0, 0, 672, 1294 ) --[[ @ 0]]
	f8_arg0.BackgroundSlidePanel:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.PaintjobWeaponSelect.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f9_arg0.BackgroundSlidePanel:completeAnimation() --[[ @ 0]]
			f9_arg0.BackgroundSlidePanel:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.BackgroundSlidePanel ) --[[ @ 0]]
		end,
		Open = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f10_local0 = function ( f11_arg0 )
				local f11_local0 = function ( f12_arg0 )
					f12_arg0:beginAnimation( 100, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
					f12_arg0:setTopBottom( 0, 0, 672, 1294 ) --[[ @ 0]]
					f12_arg0:setAlpha( 1 ) --[[ @ 0]]
					f12_arg0:registerEventHandler( "transition_complete_keyframe", f10_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f10_arg0.BackgroundSlidePanel:beginAnimation( 100 ) --[[ @ 0]]
				f10_arg0.BackgroundSlidePanel:setTopBottom( 0, 0, 872, 1494 ) --[[ @ 0]]
				f10_arg0.BackgroundSlidePanel:registerEventHandler( "interrupted_keyframe", f10_arg0.clipInterrupted ) --[[ @ 0]]
				f10_arg0.BackgroundSlidePanel:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f10_arg0.BackgroundSlidePanel:completeAnimation() --[[ @ 0]]
			f10_arg0.BackgroundSlidePanel:setTopBottom( 0, 0, 1072, 1694 ) --[[ @ 0]]
			f10_arg0.BackgroundSlidePanel:setAlpha( 0 ) --[[ @ 0]]
			f10_local0( f10_arg0.BackgroundSlidePanel ) --[[ @ 0]]
		end,
		Close = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f13_local0 = function ( f14_arg0 )
				f13_arg0.BackgroundSlidePanel:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f13_arg0.BackgroundSlidePanel:setTopBottom( 0, 0, 1072, 1694 ) --[[ @ 0]]
				f13_arg0.BackgroundSlidePanel:setAlpha( 0 ) --[[ @ 0]]
				f13_arg0.BackgroundSlidePanel:registerEventHandler( "interrupted_keyframe", f13_arg0.clipInterrupted ) --[[ @ 0]]
				f13_arg0.BackgroundSlidePanel:registerEventHandler( "transition_complete_keyframe", f13_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f13_arg0.BackgroundSlidePanel:completeAnimation() --[[ @ 0]]
			f13_arg0.BackgroundSlidePanel:setTopBottom( 0, 0, 672, 1294 ) --[[ @ 0]]
			f13_arg0.BackgroundSlidePanel:setAlpha( 1 ) --[[ @ 0]]
			f13_local0( f13_arg0.BackgroundSlidePanel ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.PaintjobWeaponSelect.__onClose = function ( f15_arg0 )
	f15_arg0.XCamMouseControl:close() --[[ @ 0]]
	f15_arg0.BackgroundSlidePanel:close() --[[ @ 0]]
	f15_arg0.ItemInfo:close() --[[ @ 0]]
	f15_arg0.PaintshopWeaponSelectWidget:close() --[[ @ 0]]
	f15_arg0.PaintjobWeaponSelectSafeAreaContainer:close() --[[ @ 0]]
end
 --[[ @ 0]]
