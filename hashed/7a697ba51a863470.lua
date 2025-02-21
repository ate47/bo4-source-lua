-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/eulabody" ) --[[ @ 0]]
require( "ui/uieditor/widgets/pc/pc_eula_buttons" ) --[[ @ 0]]
require( "ui/uieditor/widgets/pc/pc_eula_pages" ) --[[ @ 0]]
require( "x64:32b3a36f75bb6e0e" ) --[[ @ 0]]

CoD.EULA = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.EULA = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "EULA", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	MenuHidesFreeCursor( f1_local1, f1_arg0 ) --[[ @ 0]]
	self:setClass( CoD.EULA ) --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_local1:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local BlackBG = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BlackBG:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BlackBG:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_multiply" ) ) --[[ @ 0]]
	self:addElement( BlackBG ) --[[ @ 0]]
	self.BlackBG = BlackBG --[[ @ 0]]
	
	local Header = LUI.UIText.new( 0.5, 0.5, -864, 864, 0, 0, 166, 211 ) --[[ @ 0]]
	Header:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_431BE80D5236D780" ) ) --[[ @ 0]]
	Header:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	Header:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Header:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( Header ) --[[ @ 0]]
	self.Header = Header --[[ @ 0]]
	
	local eulaBody = CoD.eulaBody.new( f1_local1, f1_arg0, 0.5, 0.5, -864, 864, 0, 0, 251, 951 ) --[[ @ 0]]
	eulaBody:registerEventHandler( "menu_loaded", function ( element, event )
		local f2_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f2_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f2_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		CoD.LobbyUtility.InitializeEULA( element, f1_arg0, f1_local1 ) --[[ @ 0]]
		if not f2_local0 then
			f2_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f2_local0
	end ) --[[ @ 0]]
	self:addElement( eulaBody ) --[[ @ 0]]
	self.eulaBody = eulaBody --[[ @ 0]]
	
	local f1_local5 = nil --[[ @ 0]]
	
	local PCEULAButtons = LUI.UIList.new( f1_local1, f1_arg0, 20, 0, nil, false, false, false, false ) --[[ @ 0]]
	PCEULAButtons:setLeftRight( 0.5, 0.5, -250, 250 ) --[[ @ 0]]
	PCEULAButtons:setTopBottom( 0.9, 0.9, 0, 80 ) --[[ @ 0]]
	PCEULAButtons:setWidgetType( CoD.PC_EULA_Buttons ) --[[ @ 0]]
	PCEULAButtons:setHorizontalCount( 2 ) --[[ @ 0]]
	PCEULAButtons:setSpacing( 20 ) --[[ @ 0]]
	PCEULAButtons:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	PCEULAButtons:setDataSource( "PCEULAOptions" ) --[[ @ 0]]
	PCEULAButtons:registerEventHandler( "gain_focus", function ( element, event )
		local f3_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f3_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f3_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f3_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( PCEULAButtons, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		ProcessListAction( self, element, controller, menu ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_0", nil, "ui_confirm" ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	self:addElement( PCEULAButtons ) --[[ @ 0]]
	self.PCEULAButtons = PCEULAButtons --[[ @ 0]]
	
	local PCEULAPages = nil --[[ @ 0]]
	
	PCEULAPages = CoD.PC_EULA_Pages.new( f1_local1, f1_arg0, 0.88, 0.88, -80, 80, 0.94, 0.94, 0, 30 ) --[[ @ 0]]
	self:addElement( PCEULAPages ) --[[ @ 0]]
	self.PCEULAPages = PCEULAPages --[[ @ 0]]
	
	local SliderArrowLeft = nil --[[ @ 0]]
	
	SliderArrowLeft = CoD.StartMenu_Options_SettingSliderArrow.new( f1_local1, f1_arg0, 0.8, 0.8, -2, 58, 0.85, 0.85, 0, 60 ) --[[ @ 0]]
	SliderArrowLeft:mergeStateConditions( {
		{
			stateName = "Unavailable",
			condition = function ( menu, element, event )
				return CoD.LobbyUtility.IsFirstEULAPage( f1_arg0 )
			end
		}
	} ) --[[ @ 0]]
	local f1_local9 = SliderArrowLeft --[[ @ 0]]
	local SliderArrowRight = SliderArrowLeft.subscribeToModel --[[ @ 0]]
	local f1_local11 = DataSources.EULA.getModel( f1_arg0 ) --[[ @ 0]]
	SliderArrowRight( f1_local9, f1_local11.CurrentEULAPage, function ( f7_arg0 )
		f1_local1:updateElementState( SliderArrowLeft, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f7_arg0:get(),
			modelName = "CurrentEULAPage"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	SliderArrowLeft:setZRot( 270 ) --[[ @ 0]]
	SliderArrowLeft:registerEventHandler( "gain_focus", function ( element, event )
		local f8_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f8_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f8_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f8_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( SliderArrowLeft, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		CoD.LobbyUtility.PreviousEULAPage( self, element, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_0", nil, "ui_confirm" ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	self:addElement( SliderArrowLeft ) --[[ @ 0]]
	self.SliderArrowLeft = SliderArrowLeft --[[ @ 0]]
	
	SliderArrowRight = nil --[[ @ 0]]
	
	SliderArrowRight = CoD.StartMenu_Options_SettingSliderArrow.new( f1_local1, f1_arg0, 0.91, 0.91, 22.5, 76.5, 0.85, 0.85, 0, 60 ) --[[ @ 0]]
	SliderArrowRight:mergeStateConditions( {
		{
			stateName = "Unavailable",
			condition = function ( menu, element, event )
				return CoD.LobbyUtility.IsLastEULAPage( f1_arg0 )
			end
		}
	} ) --[[ @ 0]]
	f1_local11 = SliderArrowRight --[[ @ 0]]
	f1_local9 = SliderArrowRight.subscribeToModel --[[ @ 0]]
	local f1_local12 = DataSources.EULA.getModel( f1_arg0 ) --[[ @ 0]]
	f1_local9( f1_local11, f1_local12.CurrentEULAPage, function ( f12_arg0 )
		f1_local1:updateElementState( SliderArrowRight, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f12_arg0:get(),
			modelName = "CurrentEULAPage"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local11 = SliderArrowRight --[[ @ 0]]
	f1_local9 = SliderArrowRight.subscribeToModel --[[ @ 0]]
	f1_local12 = DataSources.EULA.getModel( f1_arg0 ) --[[ @ 0]]
	f1_local9( f1_local11, f1_local12.MaxEULAPage, function ( f13_arg0 )
		f1_local1:updateElementState( SliderArrowRight, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f13_arg0:get(),
			modelName = "MaxEULAPage"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	SliderArrowRight:setZRot( 90 ) --[[ @ 0]]
	SliderArrowRight:registerEventHandler( "gain_focus", function ( element, event )
		local f14_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f14_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f14_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f14_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( SliderArrowRight, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		CoD.LobbyUtility.NextEULAPage( self, element, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_0", nil, "ui_confirm" ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	self:addElement( SliderArrowRight ) --[[ @ 0]]
	self.SliderArrowRight = SliderArrowRight --[[ @ 0]]
	
	f1_local9 = nil --[[ @ 0]]
	f1_local9 = LUI.UIElement.createFake() --[[ @ 0]]
	self.FooterContainerFrontendRight = f1_local9 --[[ @ 0]]
	self:mergeStateConditions( {
		{
			stateName = "PC",
			condition = function ( menu, element, event )
				return IsPC()
			end
		}
	} ) --[[ @ 0]]
	f1_local12 = self --[[ @ 0]]
	f1_local11 = self.subscribeToModel --[[ @ 0]]
	local f1_local13 = DataSources.EULA.getModel( f1_arg0 ) --[[ @ 0]]
	f1_local11( f1_local12, f1_local13.CurrentEULAPage, function ( f18_arg0, f18_arg1 )
		CoD.Menu.UpdateButtonShownState( f18_arg1, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_lb"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f18_arg1, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_rb"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local12 = self --[[ @ 0]]
	f1_local11 = self.subscribeToModel --[[ @ 0]]
	f1_local13 = DataSources.EULA.getModel( f1_arg0 ) --[[ @ 0]]
	f1_local11( f1_local12, f1_local13.MaxEULAPage, function ( f19_arg0, f19_arg1 )
		CoD.Menu.UpdateButtonShownState( f19_arg1, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_rb"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		if not IsPC() then
			CoD.LobbyUtility.AcceptEULA( menu, controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not IsPC() then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/accept", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], "ESCAPE", function ( element, menu, controller, model )
		if not IsPC() then
			CoD.LobbyUtility.DeclineEULA( self, menu, controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not IsPC() then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], @"menu/decline", nil, "ESCAPE" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_lb"], "ui_navleft", function ( element, menu, controller, model )
		if not CoD.LobbyUtility.IsFirstEULAPage( controller ) then
			CoD.LobbyUtility.PreviousEULAPage( self, self.eulaBody, controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_lb"], @"menu/previous_page", nil, "ui_navleft" ) --[[ @ 0]]
		if not CoD.LobbyUtility.IsFirstEULAPage( controller ) then
			return true
		else
			return false
		end
	end, true ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_rb"], "ui_navright", function ( element, menu, controller, model )
		if not CoD.LobbyUtility.IsLastEULAPage( controller ) then
			CoD.LobbyUtility.NextEULAPage( self, self.eulaBody, controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_rb"], @"menu/next_page", nil, "ui_navright" ) --[[ @ 0]]
		if not CoD.LobbyUtility.IsLastEULAPage( controller ) then
			return true
		else
			return false
		end
	end, true ) --[[ @ 0]]
	self:subscribeToGlobalModel( f1_arg0, "EULA", "SawAllPages", function ( model )
		local f28_local0 = self --[[ @ 0]]
		if IsPC() then
			UpdateElementState( self, "PCEULAButtons", f1_arg0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	PCEULAButtons.id = "PCEULAButtons" --[[ @ 0]]
	if CoD.isPC then
		SliderArrowLeft.id = "SliderArrowLeft" --[[ @ 0]]
	end
	if CoD.isPC then
		SliderArrowRight.id = "SliderArrowRight" --[[ @ 0]]
	end
	f1_local9:setModel( self.buttonModel, f1_arg0 ) --[[ @ 0]]
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.EULA.__resetProperties = function ( f29_arg0 )
	f29_arg0.eulaBody:completeAnimation() --[[ @ 0]]
	f29_arg0.Header:completeAnimation() --[[ @ 0]]
	f29_arg0.PCEULAButtons:completeAnimation() --[[ @ 0]]
	f29_arg0.PCEULAPages:completeAnimation() --[[ @ 0]]
	f29_arg0.SliderArrowLeft:completeAnimation() --[[ @ 0]]
	f29_arg0.SliderArrowRight:completeAnimation() --[[ @ 0]]
	f29_arg0.eulaBody:setTopBottom( 0, 0, 251, 951 ) --[[ @ 0]]
	f29_arg0.Header:setTopBottom( 0, 0, 166, 211 ) --[[ @ 0]]
	f29_arg0.PCEULAButtons:setTopBottom( 0.9, 0.9, 0, 80 ) --[[ @ 0]]
	f29_arg0.PCEULAPages:setLeftRight( 0.88, 0.88, -80, 80 ) --[[ @ 0]]
	f29_arg0.PCEULAPages:setTopBottom( 0.94, 0.94, 0, 30 ) --[[ @ 0]]
	f29_arg0.SliderArrowLeft:setLeftRight( 0.8, 0.8, -2, 58 ) --[[ @ 0]]
	f29_arg0.SliderArrowLeft:setTopBottom( 0.85, 0.85, 0, 60 ) --[[ @ 0]]
	f29_arg0.SliderArrowRight:setLeftRight( 0.91, 0.91, 22.5, 76.5 ) --[[ @ 0]]
	f29_arg0.SliderArrowRight:setTopBottom( 0.85, 0.85, 0, 60 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.EULA.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f30_arg0, f30_arg1 )
			f30_arg0:__resetProperties() --[[ @ 0]]
			f30_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	PC = {
		DefaultClip = function ( f31_arg0, f31_arg1 )
			f31_arg0:__resetProperties() --[[ @ 0]]
			f31_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			f31_arg0.Header:completeAnimation() --[[ @ 0]]
			f31_arg0.Header:setTopBottom( 0.5, 0.5, -410, -365 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.Header ) --[[ @ 0]]
			f31_arg0.eulaBody:completeAnimation() --[[ @ 0]]
			f31_arg0.eulaBody:setTopBottom( 0.5, 0.5, -350, 350 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.eulaBody ) --[[ @ 0]]
			f31_arg0.PCEULAButtons:completeAnimation() --[[ @ 0]]
			f31_arg0.PCEULAButtons:setTopBottom( 0.5, 0.5, 370, 450 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.PCEULAButtons ) --[[ @ 0]]
			f31_arg0.PCEULAPages:completeAnimation() --[[ @ 0]]
			f31_arg0.PCEULAPages:setLeftRight( 0.5, 0.5, 710, 870 ) --[[ @ 0]]
			f31_arg0.PCEULAPages:setTopBottom( 0.5, 0.5, 395, 425 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.PCEULAPages ) --[[ @ 0]]
			f31_arg0.SliderArrowLeft:completeAnimation() --[[ @ 0]]
			f31_arg0.SliderArrowLeft:setLeftRight( 0.5, 0.5, 550, 610 ) --[[ @ 0]]
			f31_arg0.SliderArrowLeft:setTopBottom( 0.5, 0.5, 380, 440 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.SliderArrowLeft ) --[[ @ 0]]
			f31_arg0.SliderArrowRight:completeAnimation() --[[ @ 0]]
			f31_arg0.SliderArrowRight:setLeftRight( 0.5, 0.5, 630, 690 ) --[[ @ 0]]
			f31_arg0.SliderArrowRight:setTopBottom( 0.5, 0.5, 380, 440 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.SliderArrowRight ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.EULA.__onClose = function ( f32_arg0 )
	f32_arg0.eulaBody:close() --[[ @ 0]]
	f32_arg0.PCEULAButtons:close() --[[ @ 0]]
	f32_arg0.PCEULAPages:close() --[[ @ 0]]
	f32_arg0.SliderArrowLeft:close() --[[ @ 0]]
	f32_arg0.SliderArrowRight:close() --[[ @ 0]]
	f32_arg0.FooterContainerFrontendRight:close() --[[ @ 0]]
end
 --[[ @ 0]]
