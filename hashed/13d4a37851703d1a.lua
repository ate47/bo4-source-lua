-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:32
require( "ui/uieditor/widgets/common/commonlistbuttongeneric" ) --[[ @ 0]]
require( "ui/uieditor/widgets/common/commonrightslideinpopup" ) --[[ @ 0]]
require( "ui/uieditor/widgets/footer/footerbutton_frontend_right" ) --[[ @ 0]]
require( "x64:3c83f9a398165f22" ) --[[ @ 0]]
require( "ui/uieditor/widgets/pc/pc_smallclosebutton" ) --[[ @ 0]]
require( "ui/uieditor/widgets/systemoverlays/featureoverlay_button_mouseonly" ) --[[ @ 0]]

CoD.ClanOptionsWidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ClanOptionsWidget.__defaultWidth = 1920 --[[ @ 0]]
CoD.ClanOptionsWidget.__defaultHeight = 1080 --[[ @ 0]]
CoD.ClanOptionsWidget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ClanOptionsWidget ) --[[ @ 0]]
	self.id = "ClanOptionsWidget" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	local PCBacking = nil --[[ @ 0]]
	
	PCBacking = CoD.PC_ClassOptionsPopup.new( f1_arg0, f1_arg1, 0.5, 0.5, -400, 400, 0, 1, 0, 0 ) --[[ @ 0]]
	PCBacking:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( PCBacking ) --[[ @ 0]]
	self.PCBacking = PCBacking --[[ @ 0]]
	
	local CommonRightSlideInPopup = CoD.CommonRightSlideInPopup.new( f1_arg0, f1_arg1, 1, 1, -1920, 0, 0.5, 0.5, -540, 540 ) --[[ @ 0]]
	self:addElement( CommonRightSlideInPopup ) --[[ @ 0]]
	self.CommonRightSlideInPopup = CommonRightSlideInPopup --[[ @ 0]]
	
	local buttons = CoD.FooterButton_Frontend_Right.new( f1_arg0, f1_arg1, 1, 1, -1920, 0, 1, 1, -48, 0 ) --[[ @ 0]]
	self:addElement( buttons ) --[[ @ 0]]
	self.buttons = buttons --[[ @ 0]]
	
	local featureOverlayButtonMouseOnly = nil --[[ @ 0]]
	
	featureOverlayButtonMouseOnly = CoD.featureOverlay_Button_MouseOnly.new( f1_arg0, f1_arg1, 1, 1, -525, -365, 1, 1, -60, 0 ) --[[ @ 0]]
	featureOverlayButtonMouseOnly.featureOverlayButtonContainer.Title:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_778D439E1B360368" ) ) --[[ @ 0]]
	featureOverlayButtonMouseOnly:registerEventHandler( "gain_focus", function ( element, event )
		local f2_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f2_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f2_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		return f2_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( featureOverlayButtonMouseOnly, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], "ui_confirm", function ( element, menu, controller, model )
		GoBack( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_0", nil, "ui_confirm" ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	self:addElement( featureOverlayButtonMouseOnly ) --[[ @ 0]]
	self.featureOverlayButtonMouseOnly = featureOverlayButtonMouseOnly --[[ @ 0]]
	
	local CurrentClassName = LUI.UIText.new( 1, 1, -460.5, -82.5, 0, 0, 128, 167 ) --[[ @ 0]]
	CurrentClassName:setRGB( ColorSet.T8__BEIGE__HEADER.r, ColorSet.T8__BEIGE__HEADER.g, ColorSet.T8__BEIGE__HEADER.b ) --[[ @ 0]]
	CurrentClassName:setText( LocalizeToUpperString( @"hash_0" ) ) --[[ @ 0]]
	CurrentClassName:setTTF( "notosans_bold" ) --[[ @ 0]]
	CurrentClassName:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	self:addElement( CurrentClassName ) --[[ @ 0]]
	self.CurrentClassName = CurrentClassName --[[ @ 0]]
	
	local TitleSeparator = LUI.UIImage.new( 1, 1, -462.5, -82.5, 0, 0, 175, 176 ) --[[ @ 0]]
	TitleSeparator:setRGB( ColorSet.T8__BEIGE__HEADER.r, ColorSet.T8__BEIGE__HEADER.g, ColorSet.T8__BEIGE__HEADER.b ) --[[ @ 0]]
	self:addElement( TitleSeparator ) --[[ @ 0]]
	self.TitleSeparator = TitleSeparator --[[ @ 0]]
	
	local ClassOptionsList = LUI.UIList.new( f1_arg0, f1_arg1, 20, 0, nil, false, false, false, false ) --[[ @ 0]]
	ClassOptionsList:setLeftRight( 1, 1, -467.5, -82.5 ) --[[ @ 0]]
	ClassOptionsList:setTopBottom( 0, 0, 270, 502 ) --[[ @ 0]]
	ClassOptionsList:setWidgetType( CoD.CommonListButtonGeneric ) --[[ @ 0]]
	ClassOptionsList:setVerticalCount( 4 ) --[[ @ 0]]
	ClassOptionsList:setSpacing( 20 ) --[[ @ 0]]
	ClassOptionsList:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	ClassOptionsList:setDataSource( "ClanAdminOptionsButtonList" ) --[[ @ 0]]
	ClassOptionsList:registerEventHandler( "list_item_gain_focus", function ( element, event )
		return nil
	end ) --[[ @ 0]]
	ClassOptionsList:registerEventHandler( "gain_focus", function ( element, event )
		local f6_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f6_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f6_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		return f6_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( ClassOptionsList, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], "ui_confirm", function ( element, menu, controller, model )
		ProcessListAction( self, element, controller, menu ) --[[ @ 0]]
		PlaySoundAlias( "uin_toggle_generic" ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_6D0BB36CD318F55F", nil, "ui_confirm" ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	self:addElement( ClassOptionsList ) --[[ @ 0]]
	self.ClassOptionsList = ClassOptionsList --[[ @ 0]]
	
	local ClassOptionDesc = LUI.UIText.new( 1, 1, -459.5, -49.5, 0, 0, 200.5, 219.5 ) --[[ @ 0]]
	ClassOptionDesc:setTTF( "dinnext_regular" ) --[[ @ 0]]
	ClassOptionDesc:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	ClassOptionDesc:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( ClassOptionDesc ) --[[ @ 0]]
	self.ClassOptionDesc = ClassOptionDesc --[[ @ 0]]
	
	local PCSmallCloseButton = nil --[[ @ 0]]
	
	PCSmallCloseButton = CoD.PC_SmallCloseButton.new( f1_arg0, f1_arg1, 0.5, 0.5, 336, 370, 0.5, 0.5, -500, -466 ) --[[ @ 0]]
	PCSmallCloseButton:setAlpha( 0 ) --[[ @ 0]]
	PCSmallCloseButton:registerEventHandler( "gain_focus", function ( element, event )
		local f9_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f9_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f9_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3865DD2DB1EFE9F8"] ) --[[ @ 0]]
		return f9_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( PCSmallCloseButton, f1_arg1, Enum[@"LUIButton"][@"hash_3865DD2DB1EFE9F8"], "MOUSE1", function ( element, menu, controller, model )
		GoBack( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3865DD2DB1EFE9F8"], @"hash_0", nil, "MOUSE1" ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( PCSmallCloseButton, f1_arg1, Enum[@"LUIButton"][@"hash_3865DD2DB1EFE9F8"], "ui_confirm", function ( element, menu, controller, model )
		GoBack( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3865DD2DB1EFE9F8"], @"hash_0", nil, "ui_confirm" ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	self:addElement( PCSmallCloseButton ) --[[ @ 0]]
	self.PCSmallCloseButton = PCSmallCloseButton --[[ @ 0]]
	
	self.ClassOptionDesc:linkToElementModel( self, "hintText", true, function ( model )
		local f14_local0 = model:get() --[[ @ 0]]
		if f14_local0 ~= nil then
			ClassOptionDesc:setText( Engine[@"hash_4F9F1239CFD921FE"]( f14_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:mergeStateConditions( {
		{
			stateName = "PC",
			condition = function ( menu, element, event )
				return IsPC()
			end
		}
	} ) --[[ @ 0]]
	buttons:appendEventHandler( "menu_loaded", function ()
		buttons:setModel( f1_arg0.buttonModel, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	if CoD.isPC then
		buttons.id = "buttons" --[[ @ 0]]
	end
	if CoD.isPC then
		featureOverlayButtonMouseOnly.id = "featureOverlayButtonMouseOnly" --[[ @ 0]]
	end
	ClassOptionsList.id = "ClassOptionsList" --[[ @ 0]]
	if CoD.isPC then
		PCSmallCloseButton.id = "PCSmallCloseButton" --[[ @ 0]]
	end
	self.__defaultFocus = ClassOptionsList --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local10 = self --[[ @ 0]]
	MenuHidesFreeCursor( f1_arg0, f1_arg1 ) --[[ @ 0]]
	PlaySoundAlias( "uin_party_ease_slide" ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.ClanOptionsWidget.__resetProperties = function ( f17_arg0 )
	f17_arg0.ClassOptionsList:completeAnimation() --[[ @ 0]]
	f17_arg0.ClassOptionDesc:completeAnimation() --[[ @ 0]]
	f17_arg0.TitleSeparator:completeAnimation() --[[ @ 0]]
	f17_arg0.CurrentClassName:completeAnimation() --[[ @ 0]]
	f17_arg0.CommonRightSlideInPopup:completeAnimation() --[[ @ 0]]
	f17_arg0.PCBacking:completeAnimation() --[[ @ 0]]
	f17_arg0.featureOverlayButtonMouseOnly:completeAnimation() --[[ @ 0]]
	f17_arg0.buttons:completeAnimation() --[[ @ 0]]
	f17_arg0.ClassOptionsList:setLeftRight( 1, 1, -467.5, -82.5 ) --[[ @ 0]]
	f17_arg0.ClassOptionsList:setTopBottom( 0, 0, 270, 502 ) --[[ @ 0]]
	f17_arg0.ClassOptionDesc:setLeftRight( 1, 1, -459.5, -49.5 ) --[[ @ 0]]
	f17_arg0.ClassOptionDesc:setTopBottom( 0, 0, 200.5, 219.5 ) --[[ @ 0]]
	f17_arg0.ClassOptionDesc:setAlpha( 1 ) --[[ @ 0]]
	f17_arg0.TitleSeparator:setLeftRight( 1, 1, -462.5, -82.5 ) --[[ @ 0]]
	f17_arg0.TitleSeparator:setTopBottom( 0, 0, 175, 176 ) --[[ @ 0]]
	f17_arg0.TitleSeparator:setAlpha( 1 ) --[[ @ 0]]
	f17_arg0.CurrentClassName:setLeftRight( 1, 1, -460.5, -82.5 ) --[[ @ 0]]
	f17_arg0.CurrentClassName:setTopBottom( 0, 0, 128, 167 ) --[[ @ 0]]
	f17_arg0.CurrentClassName:setAlpha( 1 ) --[[ @ 0]]
	f17_arg0.CommonRightSlideInPopup:setLeftRight( 1, 1, -1920, 0 ) --[[ @ 0]]
	f17_arg0.CommonRightSlideInPopup:setAlpha( 1 ) --[[ @ 0]]
	f17_arg0.PCBacking:setAlpha( 0 ) --[[ @ 0]]
	f17_arg0.featureOverlayButtonMouseOnly:setLeftRight( 1, 1, -525, -365 ) --[[ @ 0]]
	f17_arg0.featureOverlayButtonMouseOnly:setTopBottom( 1, 1, -60, 0 ) --[[ @ 0]]
	f17_arg0.buttons:setLeftRight( 1, 1, -1920, 0 ) --[[ @ 0]]
	f17_arg0.buttons:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ClanOptionsWidget.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Intro = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			local f19_local0 = function ( f20_arg0 )
				f19_arg0.CommonRightSlideInPopup:beginAnimation( 200 ) --[[ @ 0]]
				f19_arg0.CommonRightSlideInPopup:setLeftRight( 1, 1, -1920, 0 ) --[[ @ 0]]
				f19_arg0.CommonRightSlideInPopup:registerEventHandler( "interrupted_keyframe", f19_arg0.clipInterrupted ) --[[ @ 0]]
				f19_arg0.CommonRightSlideInPopup:registerEventHandler( "transition_complete_keyframe", f19_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f19_arg0.CommonRightSlideInPopup:completeAnimation() --[[ @ 0]]
			f19_arg0.CommonRightSlideInPopup:setLeftRight( 1, 1, -1371, 549 ) --[[ @ 0]]
			f19_local0( f19_arg0.CommonRightSlideInPopup ) --[[ @ 0]]
			local f19_local1 = function ( f21_arg0 )
				f19_arg0.CurrentClassName:beginAnimation( 200 ) --[[ @ 0]]
				f19_arg0.CurrentClassName:setLeftRight( 1, 1, -460.5, -82.5 ) --[[ @ 0]]
				f19_arg0.CurrentClassName:registerEventHandler( "interrupted_keyframe", f19_arg0.clipInterrupted ) --[[ @ 0]]
				f19_arg0.CurrentClassName:registerEventHandler( "transition_complete_keyframe", f19_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f19_arg0.CurrentClassName:completeAnimation() --[[ @ 0]]
			f19_arg0.CurrentClassName:setLeftRight( 1, 1, 88.5, 466.5 ) --[[ @ 0]]
			f19_local1( f19_arg0.CurrentClassName ) --[[ @ 0]]
			local f19_local2 = function ( f22_arg0 )
				f19_arg0.TitleSeparator:beginAnimation( 200 ) --[[ @ 0]]
				f19_arg0.TitleSeparator:setLeftRight( 1, 1, -462.5, -82.5 ) --[[ @ 0]]
				f19_arg0.TitleSeparator:registerEventHandler( "interrupted_keyframe", f19_arg0.clipInterrupted ) --[[ @ 0]]
				f19_arg0.TitleSeparator:registerEventHandler( "transition_complete_keyframe", f19_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f19_arg0.TitleSeparator:completeAnimation() --[[ @ 0]]
			f19_arg0.TitleSeparator:setLeftRight( 1, 1, 86.5, 466.5 ) --[[ @ 0]]
			f19_local2( f19_arg0.TitleSeparator ) --[[ @ 0]]
			local f19_local3 = function ( f23_arg0 )
				f19_arg0.ClassOptionsList:beginAnimation( 200 ) --[[ @ 0]]
				f19_arg0.ClassOptionsList:setLeftRight( 1, 1, -467.5, -82.5 ) --[[ @ 0]]
				f19_arg0.ClassOptionsList:registerEventHandler( "interrupted_keyframe", f19_arg0.clipInterrupted ) --[[ @ 0]]
				f19_arg0.ClassOptionsList:registerEventHandler( "transition_complete_keyframe", f19_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f19_arg0.ClassOptionsList:completeAnimation() --[[ @ 0]]
			f19_arg0.ClassOptionsList:setLeftRight( 1, 1, 81.5, 466.5 ) --[[ @ 0]]
			f19_local3( f19_arg0.ClassOptionsList ) --[[ @ 0]]
			local f19_local4 = function ( f24_arg0 )
				f19_arg0.ClassOptionDesc:beginAnimation( 200 ) --[[ @ 0]]
				f19_arg0.ClassOptionDesc:setLeftRight( 1, 1, -459.5, -49.5 ) --[[ @ 0]]
				f19_arg0.ClassOptionDesc:registerEventHandler( "interrupted_keyframe", f19_arg0.clipInterrupted ) --[[ @ 0]]
				f19_arg0.ClassOptionDesc:registerEventHandler( "transition_complete_keyframe", f19_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f19_arg0.ClassOptionDesc:completeAnimation() --[[ @ 0]]
			f19_arg0.ClassOptionDesc:setLeftRight( 1, 1, 89.5, 499.5 ) --[[ @ 0]]
			f19_local4( f19_arg0.ClassOptionDesc ) --[[ @ 0]]
		end
	},
	PC = {
		DefaultClip = function ( f25_arg0, f25_arg1 )
			f25_arg0:__resetProperties() --[[ @ 0]]
			f25_arg0:setupElementClipCounter( 8 ) --[[ @ 0]]
			f25_arg0.PCBacking:completeAnimation() --[[ @ 0]]
			f25_arg0.PCBacking:setAlpha( 1 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.PCBacking ) --[[ @ 0]]
			f25_arg0.CommonRightSlideInPopup:completeAnimation() --[[ @ 0]]
			f25_arg0.CommonRightSlideInPopup:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.CommonRightSlideInPopup ) --[[ @ 0]]
			f25_arg0.buttons:completeAnimation() --[[ @ 0]]
			f25_arg0.buttons:setLeftRight( 0.5, 0.5, -1440, 480 ) --[[ @ 0]]
			f25_arg0.buttons:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.buttons ) --[[ @ 0]]
			f25_arg0.featureOverlayButtonMouseOnly:completeAnimation() --[[ @ 0]]
			f25_arg0.featureOverlayButtonMouseOnly:setLeftRight( 0.5, 0.5, -339, -179 ) --[[ @ 0]]
			f25_arg0.featureOverlayButtonMouseOnly:setTopBottom( 1, 1, -108, -48 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.featureOverlayButtonMouseOnly ) --[[ @ 0]]
			f25_arg0.CurrentClassName:completeAnimation() --[[ @ 0]]
			f25_arg0.CurrentClassName:setLeftRight( 0.5, 0.5, -189, 189 ) --[[ @ 0]]
			f25_arg0.CurrentClassName:setTopBottom( 0.5, 0.5, -500, -461 ) --[[ @ 0]]
			f25_arg0.CurrentClassName:setAlpha( 1 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.CurrentClassName ) --[[ @ 0]]
			f25_arg0.TitleSeparator:completeAnimation() --[[ @ 0]]
			f25_arg0.TitleSeparator:setLeftRight( 0.5, 0.5, -244.5, 244.5 ) --[[ @ 0]]
			f25_arg0.TitleSeparator:setTopBottom( 0.5, 0.5, -444, -443 ) --[[ @ 0]]
			f25_arg0.TitleSeparator:setAlpha( 0.5 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.TitleSeparator ) --[[ @ 0]]
			f25_arg0.ClassOptionsList:completeAnimation() --[[ @ 0]]
			f25_arg0.ClassOptionsList:setLeftRight( 0.5, 0.5, -192.5, 192.5 ) --[[ @ 0]]
			f25_arg0.ClassOptionsList:setTopBottom( 0.5, 0.5, -254, -22 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.ClassOptionsList ) --[[ @ 0]]
			f25_arg0.ClassOptionDesc:completeAnimation() --[[ @ 0]]
			f25_arg0.ClassOptionDesc:setLeftRight( 0.5, 0.5, -192.5, 192.5 ) --[[ @ 0]]
			f25_arg0.ClassOptionDesc:setTopBottom( 0.5, 0.5, -30, -11 ) --[[ @ 0]]
			f25_arg0.ClassOptionDesc:setAlpha( 0.15 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.ClassOptionDesc ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ClanOptionsWidget.__onClose = function ( f26_arg0 )
	f26_arg0.PCBacking:close() --[[ @ 0]]
	f26_arg0.CommonRightSlideInPopup:close() --[[ @ 0]]
	f26_arg0.buttons:close() --[[ @ 0]]
	f26_arg0.featureOverlayButtonMouseOnly:close() --[[ @ 0]]
	f26_arg0.ClassOptionsList:close() --[[ @ 0]]
	f26_arg0.ClassOptionDesc:close() --[[ @ 0]]
	f26_arg0.PCSmallCloseButton:close() --[[ @ 0]]
end
 --[[ @ 0]]
