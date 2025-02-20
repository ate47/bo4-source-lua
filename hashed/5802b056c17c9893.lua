-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "ui/uieditor/widgets/cac/cacheader" ) --[[ @ 0]]
require( "ui/uieditor/widgets/footer/footercontainer_frontend_right" ) --[[ @ 0]]
require( "ui/uieditor/widgets/header/header_container_frontend" ) --[[ @ 0]]

CoD.GenericMenuFrameCAC = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.GenericMenuFrameCAC.__defaultWidth = 1920 --[[ @ 0]]
CoD.GenericMenuFrameCAC.__defaultHeight = 1080 --[[ @ 0]]
CoD.GenericMenuFrameCAC.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.GenericMenuFrameCAC ) --[[ @ 0]]
	self.id = "GenericMenuFrameCAC" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = CoD.isPC --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local FooterContainerFrontendRight = CoD.FooterContainer_Frontend_Right.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 1, 1, -48, 0 ) --[[ @ 0]]
	FooterContainerFrontendRight:registerEventHandler( "menu_loaded", function ( element, event )
		local f2_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f2_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f2_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		if not IsPC() then
			SizeToSafeArea( element, f1_arg1 ) --[[ @ 0]]
		end
		if not f2_local0 then
			f2_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f2_local0
	end ) --[[ @ 0]]
	self:addElement( FooterContainerFrontendRight ) --[[ @ 0]]
	self.FooterContainerFrontendRight = FooterContainerFrontendRight --[[ @ 0]]
	
	local CommonHeader = CoD.CACHeader.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 0, 0, 67 ) --[[ @ 0]]
	CommonHeader.BGSceneBlur:setAlpha( 0 ) --[[ @ 0]]
	CommonHeader.subtitle.StageTitle:setText( LocalizeToUpperString( @"hash_BB7AA7A26F39DFA" ) ) --[[ @ 0]]
	CommonHeader.subtitle.subtitle:setAlpha( 0 ) --[[ @ 0]]
	CommonHeader:subscribeToGlobalModel( f1_arg1, "LobbyRoot", "lobbyTitle", function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			CommonHeader.subtitle.subtitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	CommonHeader:registerEventHandler( "menu_loaded", function ( element, event )
		local f4_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f4_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f4_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		if not IsPC() then
			SizeToSafeArea( element, f1_arg1 ) --[[ @ 0]]
		end
		if not f4_local0 then
			f4_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f4_local0
	end ) --[[ @ 0]]
	self:addElement( CommonHeader ) --[[ @ 0]]
	self.CommonHeader = CommonHeader --[[ @ 0]]
	
	local HeaderStripe = CoD.header_container_frontend.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 0, 0, 42 ) --[[ @ 0]]
	HeaderStripe:registerEventHandler( "menu_loaded", function ( element, event )
		local f5_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f5_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f5_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		if not IsPC() then
			SizeToSafeArea( element, f1_arg1 ) --[[ @ 0]]
		elseif IsPC() then
			SizeToWidthOfScreen( element, f1_arg1 ) --[[ @ 0]]
		end
		if not f5_local0 then
			f5_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f5_local0
	end ) --[[ @ 0]]
	self:addElement( HeaderStripe ) --[[ @ 0]]
	self.HeaderStripe = HeaderStripe --[[ @ 0]]
	
	FooterContainerFrontendRight:appendEventHandler( "menu_loaded", function ()
		FooterContainerFrontendRight:setModel( f1_arg0.buttonModel, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	if CoD.isPC then
		FooterContainerFrontendRight.id = "FooterContainerFrontendRight" --[[ @ 0]]
	end
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.GenericMenuFrameCAC.__onClose = function ( f7_arg0 )
	f7_arg0.FooterContainerFrontendRight:close() --[[ @ 0]]
	f7_arg0.CommonHeader:close() --[[ @ 0]]
	f7_arg0.HeaderStripe:close() --[[ @ 0]]
end
 --[[ @ 0]]
