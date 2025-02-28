-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/cac/chooseclassslideout" ) --[[ @ 0]]
require( "ui/uieditor/widgets/footer/footercontainer_ingame_right" ) --[[ @ 0]]
require( "ui/uieditor/widgets/emptyfocusable" ) --[[ @ 0]]

CoD.ClassSelectSlideoutPopup = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.ClassSelectSlideoutPopup = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "ClassSelectSlideoutPopup", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	self:setClass( CoD.ClassSelectSlideoutPopup ) --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_local1:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local FullBackground = LUI.UIImage.new( -0.1, 1.1, 0, 0, -0.15, 1.15, 0, 0 ) --[[ @ 0]]
	FullBackground:setRGB( 0, 0, 0 ) --[[ @ 0]]
	FullBackground:setAlpha( 0.25 ) --[[ @ 0]]
	self:addElement( FullBackground ) --[[ @ 0]]
	self.FullBackground = FullBackground --[[ @ 0]]
	
	local ChooseClassSlideOut = CoD.ChooseClassSlideOut.new( f1_local1, f1_arg0, 0, 1, 0, 0, 1, 1, 0, 600 ) --[[ @ 0]]
	self:addElement( ChooseClassSlideOut ) --[[ @ 0]]
	self.ChooseClassSlideOut = ChooseClassSlideOut --[[ @ 0]]
	
	local MouseFocusClose = nil --[[ @ 0]]
	
	MouseFocusClose = CoD.emptyFocusable.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	MouseFocusClose:setAlpha( 0 ) --[[ @ 0]]
	MouseFocusClose:registerEventHandler( "gain_focus", function ( element, event )
		local f2_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f2_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f2_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_none"] ) --[[ @ 0]]
		return f2_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( MouseFocusClose, f1_arg0, Enum[@"luibutton"][@"lui_key_none"], "MOUSE1", function ( element, menu, controller, model )
		if not IsRepeatButtonPress( model ) then
			CoD.StartMenuUtility.HideClassSelectSlideout( menu, controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not IsRepeatButtonPress( nil ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_none"], @"hash_0", nil, "MOUSE1" ) --[[ @ 0]]
			return false
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( MouseFocusClose ) --[[ @ 0]]
	self.MouseFocusClose = MouseFocusClose --[[ @ 0]]
	
	local FooterContainerFrontendRight = CoD.FooterContainer_Ingame_Right.new( f1_local1, f1_arg0, 0.5, 0.5, -960, 960, 1, 1, -48, 0 ) --[[ @ 0]]
	FooterContainerFrontendRight:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( FooterContainerFrontendRight ) --[[ @ 0]]
	self.FooterContainerFrontendRight = FooterContainerFrontendRight --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Open",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueTrue( f1_arg0, "StartMenu_Main.ShowClassSelect" )
			end
		}
	} ) --[[ @ 0]]
	local f1_local6 = self --[[ @ 0]]
	local f1_local7 = self.subscribeToModel --[[ @ 0]]
	local f1_local8 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	f1_local7( f1_local6, f1_local8["StartMenu_Main.ShowClassSelect"], function ( f6_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f6_arg0:get(),
			modelName = "StartMenu_Main.ShowClassSelect"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:linkToElementModel( self, nil, true, function ( model, f7_arg1 )
		CoD.Menu.UpdateButtonShownState( f7_arg1, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], nil, function ( element, menu, controller, model )
		if not IsPC() then
			CoD.StartMenuUtility.HideClassSelectSlideout( menu, controller ) --[[ @ 0]]
			return true
		else
			CoD.StartMenuUtility.HideClassSelectSlideout( menu, controller ) --[[ @ 0]]
			return true
		end
	end, function ( element, menu, controller )
		if not IsPC() then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], @"menu/dismiss", nil, nil ) --[[ @ 0]]
			return true
		else
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], @"menu/back", nil, nil ) --[[ @ 0]]
			return true
		end
	end, false ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		if not CoD.CACUtility.IsCurrentClassLocked( menu, controller ) and IsPC() then
			CoD.PCUtility.ConfirmChangeClass( menu, controller ) --[[ @ 0]]
			return true
		elseif not CoD.CACUtility.IsCurrentClassLocked( menu, controller ) and not IsPC() then
			CoD.BaseUtility.CallCustomElementFunction( self, self.ChooseClassSlideOut, controller, menu, "_chooseClass" ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not CoD.CACUtility.IsCurrentClassLocked( menu, controller ) and IsPC() then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_0", nil, "ui_confirm" ) --[[ @ 0]]
			return false
		elseif not CoD.CACUtility.IsCurrentClassLocked( menu, controller ) and not IsPC() then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_0", nil, "ui_confirm" ) --[[ @ 0]]
			return false
		else
			return false
		end
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "setState", function ( element, controller, f12_arg2, f12_arg3, f12_arg4 )
		if IsSelfInState( self, "Open" ) then
			PlaySoundAlias( "cac_loadout_edit_select_primary" ) --[[ @ 0]]
			MenuHidesFreeCursor( f1_local1, controller ) --[[ @ 0]]
			CoD.BaseUtility.DisableNavigation( f1_local1 ) --[[ @ 0]]
		elseif IsSelfInState( self, "DefaultState" ) then
			MenuUnhideFreeCursor( f1_local1, controller ) --[[ @ 0]]
			CoD.BaseUtility.EnableNavigation( f1_local1 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:subscribeToGlobalModel( f1_arg0, "PerController", "StartMenu_Main.clear_transition", function ( model )
		local f13_local0 = self --[[ @ 0]]
		CoD.StartMenuUtility.HideClassSelectSlideout( f1_local1, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:subscribeToGlobalModel( f1_arg0, "PerController", "engineLoadoutSelect", function ( model )
		local f14_local0 = self --[[ @ 0]]
		if IsPC() then
			CoD.StartMenuUtility.HideClassSelectSlideout( f1_local1, f1_arg0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	ChooseClassSlideOut.id = "ChooseClassSlideOut" --[[ @ 0]]
	if CoD.isPC then
		MouseFocusClose.id = "MouseFocusClose" --[[ @ 0]]
	end
	FooterContainerFrontendRight:setModel( self.buttonModel, f1_arg0 ) --[[ @ 0]]
	if CoD.isPC then
		FooterContainerFrontendRight.id = "FooterContainerFrontendRight" --[[ @ 0]]
	end
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	f1_local7 = self --[[ @ 0]]
	SetProperty( self, "disableInputLock", true ) --[[ @ 0]]
	f1_local7 = FullBackground --[[ @ 0]]
	if IsPC() then
		SizeToWidthOfScreen( f1_local7, f1_arg0 ) --[[ @ 0]]
	elseif IsSplitscreenAndInGame( f1_arg0 ) then
		SizeToWidthOfScreen( f1_local7, f1_arg0 ) --[[ @ 0]]
	end
	f1_local7 = FooterContainerFrontendRight --[[ @ 0]]
	if not IsPC() then
		SizeToSafeArea( f1_local7, f1_arg0 ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.ClassSelectSlideoutPopup.__resetProperties = function ( f15_arg0 )
	f15_arg0.FullBackground:completeAnimation() --[[ @ 0]]
	f15_arg0.MouseFocusClose:completeAnimation() --[[ @ 0]]
	f15_arg0.ChooseClassSlideOut:completeAnimation() --[[ @ 0]]
	f15_arg0.FooterContainerFrontendRight:completeAnimation() --[[ @ 0]]
	f15_arg0.FullBackground:setAlpha( 0.25 ) --[[ @ 0]]
	f15_arg0.MouseFocusClose:setAlpha( 0 ) --[[ @ 0]]
	f15_arg0.ChooseClassSlideOut:setTopBottom( 1, 1, 0, 600 ) --[[ @ 0]]
	f15_arg0.ChooseClassSlideOut:setAlpha( 1 ) --[[ @ 0]]
	f15_arg0.FooterContainerFrontendRight:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ClassSelectSlideoutPopup.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f16_arg0.FullBackground:completeAnimation() --[[ @ 0]]
			f16_arg0.FullBackground:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.FullBackground ) --[[ @ 0]]
			f16_arg0.ChooseClassSlideOut:completeAnimation() --[[ @ 0]]
			f16_arg0.ChooseClassSlideOut:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.ChooseClassSlideOut ) --[[ @ 0]]
			f16_arg0.MouseFocusClose:completeAnimation() --[[ @ 0]]
			f16_arg0.MouseFocusClose:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.MouseFocusClose ) --[[ @ 0]]
		end,
		Open = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			local f17_local0 = function ( f18_arg0 )
				f17_arg0.FullBackground:beginAnimation( 200 ) --[[ @ 0]]
				f17_arg0.FullBackground:setAlpha( 0.8 ) --[[ @ 0]]
				f17_arg0.FullBackground:registerEventHandler( "interrupted_keyframe", f17_arg0.clipInterrupted ) --[[ @ 0]]
				f17_arg0.FullBackground:registerEventHandler( "transition_complete_keyframe", f17_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f17_arg0.FullBackground:completeAnimation() --[[ @ 0]]
			f17_arg0.FullBackground:setAlpha( 0 ) --[[ @ 0]]
			f17_local0( f17_arg0.FullBackground ) --[[ @ 0]]
			local f17_local1 = function ( f19_arg0 )
				f17_arg0.ChooseClassSlideOut:beginAnimation( 200 ) --[[ @ 0]]
				f17_arg0.ChooseClassSlideOut:setTopBottom( 1, 1, -600, 0 ) --[[ @ 0]]
				f17_arg0.ChooseClassSlideOut:registerEventHandler( "interrupted_keyframe", f17_arg0.clipInterrupted ) --[[ @ 0]]
				f17_arg0.ChooseClassSlideOut:registerEventHandler( "transition_complete_keyframe", f17_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f17_arg0.ChooseClassSlideOut:completeAnimation() --[[ @ 0]]
			f17_arg0.ChooseClassSlideOut:setTopBottom( 1, 1, 0, 600 ) --[[ @ 0]]
			f17_local1( f17_arg0.ChooseClassSlideOut ) --[[ @ 0]]
			local f17_local2 = function ( f20_arg0 )
				f17_arg0.MouseFocusClose:beginAnimation( 200 ) --[[ @ 0]]
				f17_arg0.MouseFocusClose:setAlpha( 1 ) --[[ @ 0]]
				f17_arg0.MouseFocusClose:registerEventHandler( "interrupted_keyframe", f17_arg0.clipInterrupted ) --[[ @ 0]]
				f17_arg0.MouseFocusClose:registerEventHandler( "transition_complete_keyframe", f17_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f17_arg0.MouseFocusClose:completeAnimation() --[[ @ 0]]
			f17_arg0.MouseFocusClose:setAlpha( 0 ) --[[ @ 0]]
			f17_local2( f17_arg0.MouseFocusClose ) --[[ @ 0]]
			local f17_local3 = function ( f21_arg0 )
				f17_arg0.FooterContainerFrontendRight:beginAnimation( 200 ) --[[ @ 0]]
				f17_arg0.FooterContainerFrontendRight:setAlpha( 1 ) --[[ @ 0]]
				f17_arg0.FooterContainerFrontendRight:registerEventHandler( "interrupted_keyframe", f17_arg0.clipInterrupted ) --[[ @ 0]]
				f17_arg0.FooterContainerFrontendRight:registerEventHandler( "transition_complete_keyframe", f17_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f17_arg0.FooterContainerFrontendRight:completeAnimation() --[[ @ 0]]
			f17_arg0.FooterContainerFrontendRight:setAlpha( 0 ) --[[ @ 0]]
			f17_local3( f17_arg0.FooterContainerFrontendRight ) --[[ @ 0]]
		end
	},
	Open = {
		DefaultClip = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f22_arg0.FullBackground:completeAnimation() --[[ @ 0]]
			f22_arg0.FullBackground:setAlpha( 0.8 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.FullBackground ) --[[ @ 0]]
			f22_arg0.ChooseClassSlideOut:completeAnimation() --[[ @ 0]]
			f22_arg0.ChooseClassSlideOut:setTopBottom( 1, 1, -600, 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.ChooseClassSlideOut ) --[[ @ 0]]
			f22_arg0.MouseFocusClose:completeAnimation() --[[ @ 0]]
			f22_arg0.MouseFocusClose:setAlpha( 1 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.MouseFocusClose ) --[[ @ 0]]
			f22_arg0.FooterContainerFrontendRight:completeAnimation() --[[ @ 0]]
			f22_arg0.FooterContainerFrontendRight:setAlpha( 1 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.FooterContainerFrontendRight ) --[[ @ 0]]
		end,
		DefaultState = function ( f23_arg0, f23_arg1 )
			f23_arg0:__resetProperties() --[[ @ 0]]
			f23_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f23_local0 = function ( f24_arg0 )
				f23_arg0.FullBackground:beginAnimation( 200 ) --[[ @ 0]]
				f23_arg0.FullBackground:setAlpha( 0 ) --[[ @ 0]]
				f23_arg0.FullBackground:registerEventHandler( "interrupted_keyframe", f23_arg0.clipInterrupted ) --[[ @ 0]]
				f23_arg0.FullBackground:registerEventHandler( "transition_complete_keyframe", f23_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f23_arg0.FullBackground:completeAnimation() --[[ @ 0]]
			f23_arg0.FullBackground:setAlpha( 0.8 ) --[[ @ 0]]
			f23_local0( f23_arg0.FullBackground ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ClassSelectSlideoutPopup.__onClose = function ( f25_arg0 )
	f25_arg0.FullBackground:close() --[[ @ 0]]
	f25_arg0.ChooseClassSlideOut:close() --[[ @ 0]]
	f25_arg0.MouseFocusClose:close() --[[ @ 0]]
	f25_arg0.FooterContainerFrontendRight:close() --[[ @ 0]]
end
 --[[ @ 0]]
