-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:32
require( "ui/uieditor/widgets/backgroundframes/genericmenuframeidentity" ) --[[ @ 0]]
require( "x64:6b157ebcd8b4adcc" ) --[[ @ 0]]

CoD.Challenges_Prestige = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.Challenges_Prestige = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "Challenges_Prestige", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	self:setClass( CoD.Challenges_Prestige ) --[[ @ 0]]
	self.soundSet = "ChooseDecal" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local SceneBlur = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	SceneBlur:setRGB( 0, 0, 0 ) --[[ @ 0]]
	SceneBlur:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	SceneBlur:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( SceneBlur ) --[[ @ 0]]
	self.SceneBlur = SceneBlur --[[ @ 0]]
	
	local BGEnhancement = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BGEnhancement:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BGEnhancement:setAlpha( 0.9 ) --[[ @ 0]]
	self:addElement( BGEnhancement ) --[[ @ 0]]
	self.BGEnhancement = BGEnhancement --[[ @ 0]]
	
	local TabFrame = LUI.UIFrame.new( f1_local1, f1_arg0, 0, 0, false ) --[[ @ 0]]
	TabFrame:setLeftRight( 0.5, 0.5, -862.5, 862.5 ) --[[ @ 0]]
	TabFrame:setTopBottom( 0.5, 0.5, -372, 408 ) --[[ @ 0]]
	self:addElement( TabFrame ) --[[ @ 0]]
	self.TabFrame = TabFrame --[[ @ 0]]
	
	local MenuFrame = CoD.GenericMenuFrameIdentity.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	MenuFrame.CommonHeader.subtitle.StageTitle:setText( LocalizeToUpperString( @"hash_3F45564D1E059F32" ) ) --[[ @ 0]]
	MenuFrame:subscribeToGlobalModel( f1_arg0, "LobbyRoot", "lobbyTitle", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			MenuFrame.CommonHeader.subtitle.subtitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( MenuFrame ) --[[ @ 0]]
	self.MenuFrame = MenuFrame --[[ @ 0]]
	
	local SafeAreaWidget = CoD.Challenges_SafeAreaWidget.new( f1_local1, f1_arg0, 0, 0, 0, 1920, 0, 0, 0, 1080 ) --[[ @ 0]]
	SafeAreaWidget.FETabBar.Tabs.grid:setHorizontalCount( 10 ) --[[ @ 0]]
	SafeAreaWidget.FETabBar.Tabs.grid:setDataSource( "PrestigeTabs" ) --[[ @ 0]]
	SafeAreaWidget:registerEventHandler( "list_active_changed", function ( element, event )
		local f3_local0 = nil --[[ @ 0]]
		CoD.ChallengesUtility.UpdateCardListFromTabChanged( f1_local1, element, f1_arg0 ) --[[ @ 0]]
		return f3_local0
	end ) --[[ @ 0]]
	SafeAreaWidget:registerEventHandler( "menu_loaded", function ( element, event )
		local f4_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f4_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f4_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		SizeToSafeArea( element, f1_arg0 ) --[[ @ 0]]
		if not f4_local0 then
			f4_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f4_local0
	end ) --[[ @ 0]]
	self:addElement( SafeAreaWidget ) --[[ @ 0]]
	self.SafeAreaWidget = SafeAreaWidget --[[ @ 0]]
	
	TabFrame:linkToElementModel( SafeAreaWidget.FETabBar.Tabs.grid, "tabWidget", true, function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			TabFrame:changeFrameWidget( f5_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"LUIButton"][@"hash_1805EFA15E9E7E5A"], nil, function ( element, menu, controller, model )
		GoBack( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_1805EFA15E9E7E5A"], @"hash_370A9FDC87CD3D48", nil, nil ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	TabFrame.id = "TabFrame" --[[ @ 0]]
	MenuFrame:setModel( self.buttonModel, f1_arg0 ) --[[ @ 0]]
	MenuFrame.id = "MenuFrame" --[[ @ 0]]
	SafeAreaWidget.id = "SafeAreaWidget" --[[ @ 0]]
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	self.__defaultFocus = TabFrame --[[ @ 0]]
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
CoD.Challenges_Prestige.__onClose = function ( f8_arg0 )
	f8_arg0.TabFrame:close() --[[ @ 0]]
	f8_arg0.MenuFrame:close() --[[ @ 0]]
	f8_arg0.SafeAreaWidget:close() --[[ @ 0]]
end
 --[[ @ 0]]
