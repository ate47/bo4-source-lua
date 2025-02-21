-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/common/commonlistbuttongeneric" ) --[[ @ 0]]
require( "ui/uieditor/widgets/common/commonrightslideinpopup" ) --[[ @ 0]]
require( "ui/uieditor/widgets/footer/footerbutton_frontend_right" ) --[[ @ 0]]
require( "x64:230f6657af27fb76" ) --[[ @ 0]]
require( "x64:3c83f9a398165f22" ) --[[ @ 0]]
require( "ui/uieditor/widgets/pc/pc_smallclosebutton" ) --[[ @ 0]]
require( "ui/uieditor/widgets/systemoverlays/featureoverlay_button_mouseonly" ) --[[ @ 0]]

CoD.ClassOptionsWidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ClassOptionsWidget.__defaultWidth = 1920 --[[ @ 0]]
CoD.ClassOptionsWidget.__defaultHeight = 1080 --[[ @ 0]]
CoD.ClassOptionsWidget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ClassOptionsWidget ) --[[ @ 0]]
	self.id = "ClassOptionsWidget" --[[ @ 0]]
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
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f2_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( featureOverlayButtonMouseOnly, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		GoBack( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_0", nil, "ui_confirm" ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	self:addElement( featureOverlayButtonMouseOnly ) --[[ @ 0]]
	self.featureOverlayButtonMouseOnly = featureOverlayButtonMouseOnly --[[ @ 0]]
	
	local ClassSetOptionsList = LUI.UIList.new( f1_arg0, f1_arg1, 20, 0, nil, false, false, false, false ) --[[ @ 0]]
	ClassSetOptionsList:setLeftRight( 1, 1, -465.5, -80.5 ) --[[ @ 0]]
	ClassSetOptionsList:setTopBottom( 0, 0, 601, 707 ) --[[ @ 0]]
	ClassSetOptionsList:setWidgetType( CoD.CommonListButtonGeneric ) --[[ @ 0]]
	ClassSetOptionsList:setVerticalCount( 2 ) --[[ @ 0]]
	ClassSetOptionsList:setSpacing( 20 ) --[[ @ 0]]
	ClassSetOptionsList:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	ClassSetOptionsList:setDataSource( "CACClassOptions" ) --[[ @ 0]]
	ClassSetOptionsList:registerEventHandler( "list_item_gain_focus", function ( element, event )
		local f5_local0 = nil --[[ @ 0]]
		ClassOptionsSetHintText( f1_arg0, element, f1_arg1 ) --[[ @ 0]]
		return f5_local0
	end ) --[[ @ 0]]
	ClassSetOptionsList:registerEventHandler( "menu_loaded", function ( element, event )
		local f6_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f6_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f6_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		if not IsClassSetsAvailableForCurrentGameMode() then
			MakeNotFocusable( element, f1_arg1 ) --[[ @ 0]]
		elseif not DoesPlayerHaveExtraSlotsItem( f1_arg1 ) then
			MakeNotFocusable( element, f1_arg1 ) --[[ @ 0]]
		end
		if not f6_local0 then
			f6_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f6_local0
	end ) --[[ @ 0]]
	ClassSetOptionsList:registerEventHandler( "gain_focus", function ( element, event )
		local f7_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f7_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f7_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f7_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( ClassSetOptionsList, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], nil, function ( element, menu, controller, model )
		ProcessListAction( self, element, controller, menu ) --[[ @ 0]]
		PlaySoundAlias( "uin_toggle_generic" ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, nil ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	self:addElement( ClassSetOptionsList ) --[[ @ 0]]
	self.ClassSetOptionsList = ClassSetOptionsList --[[ @ 0]]
	
	local TitleSeparator2 = LUI.UIImage.new( 1, 1, -462.5, -82.5, 0, 0, 601, 602 ) --[[ @ 0]]
	TitleSeparator2:setRGB( ColorSet.T8__BEIGE__HEADER.r, ColorSet.T8__BEIGE__HEADER.g, ColorSet.T8__BEIGE__HEADER.b ) --[[ @ 0]]
	self:addElement( TitleSeparator2 ) --[[ @ 0]]
	self.TitleSeparator2 = TitleSeparator2 --[[ @ 0]]
	
	local TitleSeparator3 = nil --[[ @ 0]]
	
	TitleSeparator3 = LUI.UIImage.new( 0.5, 0.5, -162.5, 162.5, 0, 0, 275, 276 ) --[[ @ 0]]
	TitleSeparator3:setAlpha( 0.03 ) --[[ @ 0]]
	self:addElement( TitleSeparator3 ) --[[ @ 0]]
	self.TitleSeparator3 = TitleSeparator3 --[[ @ 0]]
	
	local Image = nil --[[ @ 0]]
	
	Image = LUI.UIImage.new( 0.5, 0.5, -192.5, 192.5, 0, 0, 139, 182 ) --[[ @ 0]]
	Image:setAlpha( 0.02 ) --[[ @ 0]]
	self:addElement( Image ) --[[ @ 0]]
	self.Image = Image --[[ @ 0]]
	
	local ClassNameLabelBacking = nil --[[ @ 0]]
	
	ClassNameLabelBacking = LUI.UIImage.new( 0.5, 0.5, -192.5, 192.5, 0, 0, 139, 182 ) --[[ @ 0]]
	ClassNameLabelBacking:setAlpha( 0.5 ) --[[ @ 0]]
	ClassNameLabelBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	ClassNameLabelBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	ClassNameLabelBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	ClassNameLabelBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( ClassNameLabelBacking ) --[[ @ 0]]
	self.ClassNameLabelBacking = ClassNameLabelBacking --[[ @ 0]]
	
	local ClassNamelLabel = nil --[[ @ 0]]
	
	ClassNamelLabel = LUI.UIText.new( 0.5, 0.5, -192.5, 192.5, 0, 0, 146, 175 ) --[[ @ 0]]
	ClassNamelLabel:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	ClassNamelLabel:setAlpha( 0.2 ) --[[ @ 0]]
	ClassNamelLabel:setText( LocalizeToUpperString( @"menu/class_name" ) ) --[[ @ 0]]
	ClassNamelLabel:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	ClassNamelLabel:setLetterSpacing( 4 ) --[[ @ 0]]
	ClassNamelLabel:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	self:addElement( ClassNamelLabel ) --[[ @ 0]]
	self.ClassNamelLabel = ClassNamelLabel --[[ @ 0]]
	
	local PCClassOptionRenameBox = nil --[[ @ 0]]
	
	PCClassOptionRenameBox = CoD.PC_ClassOptionRenameBox.new( f1_arg0, f1_arg1, 0.5, 0.5, -192.5, 192.5, 0, 0, 182, 232 ) --[[ @ 0]]
	self:addElement( PCClassOptionRenameBox ) --[[ @ 0]]
	self.PCClassOptionRenameBox = PCClassOptionRenameBox --[[ @ 0]]
	
	local ClassOptionsTitle = nil --[[ @ 0]]
	
	ClassOptionsTitle = LUI.UIText.new( 0.5, 0.5, -192.5, 192.5, 0, 0, 40, 79 ) --[[ @ 0]]
	ClassOptionsTitle:setRGB( ColorSet.T8__BEIGE__HEADER.r, ColorSet.T8__BEIGE__HEADER.g, ColorSet.T8__BEIGE__HEADER.b ) --[[ @ 0]]
	ClassOptionsTitle:setText( LocalizeToUpperString( @"menu/class_options" ) ) --[[ @ 0]]
	ClassOptionsTitle:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	ClassOptionsTitle:setLetterSpacing( 2 ) --[[ @ 0]]
	ClassOptionsTitle:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	self:addElement( ClassOptionsTitle ) --[[ @ 0]]
	self.ClassOptionsTitle = ClassOptionsTitle --[[ @ 0]]
	
	local CurrentClassName = LUI.UIText.new( 1, 1, -460.5, -82.5, 0, 0, 128, 167 ) --[[ @ 0]]
	CurrentClassName:setRGB( ColorSet.T8__BEIGE__HEADER.r, ColorSet.T8__BEIGE__HEADER.g, ColorSet.T8__BEIGE__HEADER.b ) --[[ @ 0]]
	CurrentClassName:setTTF( "notosans_bold" ) --[[ @ 0]]
	CurrentClassName:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	CurrentClassName:subscribeToGlobalModel( f1_arg1, "CACClassOptions", "customClassName", function ( model )
		local f10_local0 = model:get() --[[ @ 0]]
		if f10_local0 ~= nil then
			CurrentClassName:setText( f10_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( CurrentClassName ) --[[ @ 0]]
	self.CurrentClassName = CurrentClassName --[[ @ 0]]
	
	local ClassSetTitle = LUI.UIText.new( 1, 1, -460.5, -82.5, 0, 0, 551.5, 590.5 ) --[[ @ 0]]
	ClassSetTitle:setRGB( ColorSet.T8__BEIGE__HEADER.r, ColorSet.T8__BEIGE__HEADER.g, ColorSet.T8__BEIGE__HEADER.b ) --[[ @ 0]]
	ClassSetTitle:setTTF( "notosans_bold" ) --[[ @ 0]]
	ClassSetTitle:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	ClassSetTitle:subscribeToGlobalModel( f1_arg1, "CustomClassMenu", "customClassSetName", function ( model )
		local f11_local0 = model:get() --[[ @ 0]]
		if f11_local0 ~= nil then
			ClassSetTitle:setText( f11_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ClassSetTitle ) --[[ @ 0]]
	self.ClassSetTitle = ClassSetTitle --[[ @ 0]]
	
	local TitleSeparator = LUI.UIImage.new( 1, 1, -462.5, -82.5, 0, 0, 175, 176 ) --[[ @ 0]]
	TitleSeparator:setRGB( ColorSet.T8__BEIGE__HEADER.r, ColorSet.T8__BEIGE__HEADER.g, ColorSet.T8__BEIGE__HEADER.b ) --[[ @ 0]]
	self:addElement( TitleSeparator ) --[[ @ 0]]
	self.TitleSeparator = TitleSeparator --[[ @ 0]]
	
	local ClassOptionsList = LUI.UIList.new( f1_arg0, f1_arg1, 20, 0, nil, false, false, false, false ) --[[ @ 0]]
	ClassOptionsList:setLeftRight( 1, 1, -467.5, -82.5 ) --[[ @ 0]]
	ClassOptionsList:setTopBottom( 0, 0, 272, 504 ) --[[ @ 0]]
	ClassOptionsList:setWidgetType( CoD.CommonListButtonGeneric ) --[[ @ 0]]
	ClassOptionsList:setVerticalCount( 4 ) --[[ @ 0]]
	ClassOptionsList:setSpacing( 20 ) --[[ @ 0]]
	ClassOptionsList:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	ClassOptionsList:setDataSource( "CACClassOptions" ) --[[ @ 0]]
	ClassOptionsList:registerEventHandler( "list_item_gain_focus", function ( element, event )
		local f12_local0 = nil --[[ @ 0]]
		ClassOptionsSetHintText( f1_arg0, element, f1_arg1 ) --[[ @ 0]]
		return f12_local0
	end ) --[[ @ 0]]
	ClassOptionsList:registerEventHandler( "gain_focus", function ( element, event )
		local f13_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f13_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f13_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f13_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( ClassOptionsList, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		ProcessListAction( self, element, controller, menu ) --[[ @ 0]]
		PlaySoundAlias( "uin_toggle_generic" ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	self:addElement( ClassOptionsList ) --[[ @ 0]]
	self.ClassOptionsList = ClassOptionsList --[[ @ 0]]
	
	local ClassOptionDesc = LUI.UIText.new( 1, 1, -459.5, -49.5, 0, 0, 200.5, 219.5 ) --[[ @ 0]]
	ClassOptionDesc:setTTF( "dinnext_regular" ) --[[ @ 0]]
	ClassOptionDesc:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	ClassOptionDesc:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	ClassOptionDesc:subscribeToGlobalModel( f1_arg1, "CACClassOptions", "customClassOptionsHintText", function ( model )
		local f16_local0 = model:get() --[[ @ 0]]
		if f16_local0 ~= nil then
			ClassOptionDesc:setText( Engine[@"hash_4F9F1239CFD921FE"]( f16_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ClassOptionDesc ) --[[ @ 0]]
	self.ClassOptionDesc = ClassOptionDesc --[[ @ 0]]
	
	local PCSmallCloseButton = nil --[[ @ 0]]
	
	PCSmallCloseButton = CoD.PC_SmallCloseButton.new( f1_arg0, f1_arg1, 0.5, 0.5, 336, 370, 0.5, 0.5, -500, -466 ) --[[ @ 0]]
	PCSmallCloseButton:registerEventHandler( "gain_focus", function ( element, event )
		local f17_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f17_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f17_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_none"] ) --[[ @ 0]]
		return f17_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( PCSmallCloseButton, f1_arg1, Enum[@"luibutton"][@"lui_key_none"], "MOUSE1", function ( element, menu, controller, model )
		GoBack( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_none"], @"hash_0", nil, "MOUSE1" ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( PCSmallCloseButton, f1_arg1, Enum[@"luibutton"][@"lui_key_none"], "ui_confirm", function ( element, menu, controller, model )
		GoBack( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_none"], @"hash_0", nil, "ui_confirm" ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	self:addElement( PCSmallCloseButton ) --[[ @ 0]]
	self.PCSmallCloseButton = PCSmallCloseButton --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "PC",
			condition = function ( menu, element, event )
				return IsPC()
			end
		},
		{
			stateName = "PCclassSets",
			condition = function ( menu, element, event )
				local f23_local0 = IsClassSetsAvailableForCurrentGameMode() --[[ @ 0]]
				if f23_local0 then
					f23_local0 = DoesPlayerHaveExtraSlotsItem( f1_arg1 ) --[[ @ 0]]
					if f23_local0 then
						f23_local0 = IsPC() --[[ @ 0]]
					end
				end
				return f23_local0
			end
		},
		{
			stateName = "ClassSets",
			condition = function ( menu, element, event )
				local f24_local0 = IsClassSetsAvailableForCurrentGameMode() --[[ @ 0]]
				if f24_local0 then
					f24_local0 = DoesPlayerHaveExtraSlotsItem( f1_arg1 ) --[[ @ 0]]
					if f24_local0 then
						f24_local0 = not IsPC() --[[ @ 0]]
					end
				end
				return f24_local0
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
	ClassSetOptionsList.id = "ClassSetOptionsList" --[[ @ 0]]
	if CoD.isPC then
		PCClassOptionRenameBox.id = "PCClassOptionRenameBox" --[[ @ 0]]
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
	
	local f1_local19 = self --[[ @ 0]]
	MenuHidesFreeCursor( f1_arg0, f1_arg1 ) --[[ @ 0]]
	PlaySoundAlias( "uin_party_ease_slide" ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.ClassOptionsWidget.__resetProperties = function ( f26_arg0 )
	f26_arg0.ClassSetTitle:completeAnimation() --[[ @ 0]]
	f26_arg0.ClassSetOptionsList:completeAnimation() --[[ @ 0]]
	f26_arg0.TitleSeparator2:completeAnimation() --[[ @ 0]]
	f26_arg0.PCClassOptionRenameBox:completeAnimation() --[[ @ 0]]
	f26_arg0.ClassOptionsList:completeAnimation() --[[ @ 0]]
	f26_arg0.ClassOptionDesc:completeAnimation() --[[ @ 0]]
	f26_arg0.TitleSeparator:completeAnimation() --[[ @ 0]]
	f26_arg0.CurrentClassName:completeAnimation() --[[ @ 0]]
	f26_arg0.CommonRightSlideInPopup:completeAnimation() --[[ @ 0]]
	f26_arg0.PCBacking:completeAnimation() --[[ @ 0]]
	f26_arg0.featureOverlayButtonMouseOnly:completeAnimation() --[[ @ 0]]
	f26_arg0.buttons:completeAnimation() --[[ @ 0]]
	f26_arg0.ClassSetTitle:setLeftRight( 1, 1, -460.5, -82.5 ) --[[ @ 0]]
	f26_arg0.ClassSetTitle:setTopBottom( 0, 0, 551.5, 590.5 ) --[[ @ 0]]
	f26_arg0.ClassSetTitle:setAlpha( 1 ) --[[ @ 0]]
	f26_arg0.ClassSetOptionsList:setLeftRight( 1, 1, -465.5, -80.5 ) --[[ @ 0]]
	f26_arg0.ClassSetOptionsList:setTopBottom( 0, 0, 601, 707 ) --[[ @ 0]]
	f26_arg0.ClassSetOptionsList:setAlpha( 1 ) --[[ @ 0]]
	f26_arg0.TitleSeparator2:setLeftRight( 1, 1, -462.5, -82.5 ) --[[ @ 0]]
	f26_arg0.TitleSeparator2:setTopBottom( 0, 0, 601, 602 ) --[[ @ 0]]
	f26_arg0.TitleSeparator2:setAlpha( 1 ) --[[ @ 0]]
	f26_arg0.PCClassOptionRenameBox:setLeftRight( 0.5, 0.5, -192.5, 192.5 ) --[[ @ 0]]
	f26_arg0.PCClassOptionRenameBox:setTopBottom( 0, 0, 182, 232 ) --[[ @ 0]]
	f26_arg0.ClassOptionsList:setLeftRight( 1, 1, -467.5, -82.5 ) --[[ @ 0]]
	f26_arg0.ClassOptionsList:setTopBottom( 0, 0, 272, 504 ) --[[ @ 0]]
	f26_arg0.ClassOptionDesc:setLeftRight( 1, 1, -459.5, -49.5 ) --[[ @ 0]]
	f26_arg0.ClassOptionDesc:setTopBottom( 0, 0, 200.5, 219.5 ) --[[ @ 0]]
	f26_arg0.ClassOptionDesc:setAlpha( 1 ) --[[ @ 0]]
	f26_arg0.TitleSeparator:setLeftRight( 1, 1, -462.5, -82.5 ) --[[ @ 0]]
	f26_arg0.TitleSeparator:setTopBottom( 0, 0, 175, 176 ) --[[ @ 0]]
	f26_arg0.TitleSeparator:setAlpha( 1 ) --[[ @ 0]]
	f26_arg0.CurrentClassName:setLeftRight( 1, 1, -460.5, -82.5 ) --[[ @ 0]]
	f26_arg0.CurrentClassName:setTopBottom( 0, 0, 128, 167 ) --[[ @ 0]]
	f26_arg0.CurrentClassName:setAlpha( 1 ) --[[ @ 0]]
	f26_arg0.CommonRightSlideInPopup:setLeftRight( 1, 1, -1920, 0 ) --[[ @ 0]]
	f26_arg0.CommonRightSlideInPopup:setAlpha( 1 ) --[[ @ 0]]
	f26_arg0.PCBacking:setAlpha( 0 ) --[[ @ 0]]
	f26_arg0.featureOverlayButtonMouseOnly:setLeftRight( 1, 1, -525, -365 ) --[[ @ 0]]
	f26_arg0.featureOverlayButtonMouseOnly:setTopBottom( 1, 1, -60, 0 ) --[[ @ 0]]
	f26_arg0.buttons:setLeftRight( 1, 1, -1920, 0 ) --[[ @ 0]]
	f26_arg0.buttons:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ClassOptionsWidget.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f27_arg0, f27_arg1 )
			f27_arg0:__resetProperties() --[[ @ 0]]
			f27_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f27_arg0.ClassSetOptionsList:completeAnimation() --[[ @ 0]]
			f27_arg0.ClassSetOptionsList:setAlpha( 0 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.ClassSetOptionsList ) --[[ @ 0]]
			f27_arg0.TitleSeparator2:completeAnimation() --[[ @ 0]]
			f27_arg0.TitleSeparator2:setAlpha( 0 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.TitleSeparator2 ) --[[ @ 0]]
			f27_arg0.PCClassOptionRenameBox:completeAnimation() --[[ @ 0]]
			f27_arg0.PCClassOptionRenameBox:setLeftRight( 1, 1, -494.5, -82.5 ) --[[ @ 0]]
			f27_arg0.PCClassOptionRenameBox:setTopBottom( 0, 0, 128, 158 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.PCClassOptionRenameBox ) --[[ @ 0]]
			f27_arg0.ClassSetTitle:completeAnimation() --[[ @ 0]]
			f27_arg0.ClassSetTitle:setAlpha( 0 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.ClassSetTitle ) --[[ @ 0]]
		end,
		Intro = function ( f28_arg0, f28_arg1 )
			f28_arg0:__resetProperties() --[[ @ 0]]
			f28_arg0:setupElementClipCounter( 8 ) --[[ @ 0]]
			local f28_local0 = function ( f29_arg0 )
				f28_arg0.CommonRightSlideInPopup:beginAnimation( 200 ) --[[ @ 0]]
				f28_arg0.CommonRightSlideInPopup:setLeftRight( 1, 1, -1920, 0 ) --[[ @ 0]]
				f28_arg0.CommonRightSlideInPopup:registerEventHandler( "interrupted_keyframe", f28_arg0.clipInterrupted ) --[[ @ 0]]
				f28_arg0.CommonRightSlideInPopup:registerEventHandler( "transition_complete_keyframe", f28_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f28_arg0.CommonRightSlideInPopup:completeAnimation() --[[ @ 0]]
			f28_arg0.CommonRightSlideInPopup:setLeftRight( 1, 1, -1371, 549 ) --[[ @ 0]]
			f28_local0( f28_arg0.CommonRightSlideInPopup ) --[[ @ 0]]
			f28_arg0.ClassSetOptionsList:completeAnimation() --[[ @ 0]]
			f28_arg0.ClassSetOptionsList:setAlpha( 0 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.ClassSetOptionsList ) --[[ @ 0]]
			f28_arg0.TitleSeparator2:completeAnimation() --[[ @ 0]]
			f28_arg0.TitleSeparator2:setAlpha( 0 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.TitleSeparator2 ) --[[ @ 0]]
			local f28_local1 = function ( f30_arg0 )
				f28_arg0.CurrentClassName:beginAnimation( 200 ) --[[ @ 0]]
				f28_arg0.CurrentClassName:setLeftRight( 1, 1, -460.5, -82.5 ) --[[ @ 0]]
				f28_arg0.CurrentClassName:registerEventHandler( "interrupted_keyframe", f28_arg0.clipInterrupted ) --[[ @ 0]]
				f28_arg0.CurrentClassName:registerEventHandler( "transition_complete_keyframe", f28_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f28_arg0.CurrentClassName:completeAnimation() --[[ @ 0]]
			f28_arg0.CurrentClassName:setLeftRight( 1, 1, 88.5, 466.5 ) --[[ @ 0]]
			f28_local1( f28_arg0.CurrentClassName ) --[[ @ 0]]
			f28_arg0.ClassSetTitle:completeAnimation() --[[ @ 0]]
			f28_arg0.ClassSetTitle:setAlpha( 0 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.ClassSetTitle ) --[[ @ 0]]
			local f28_local2 = function ( f31_arg0 )
				f28_arg0.TitleSeparator:beginAnimation( 200 ) --[[ @ 0]]
				f28_arg0.TitleSeparator:setLeftRight( 1, 1, -462.5, -82.5 ) --[[ @ 0]]
				f28_arg0.TitleSeparator:registerEventHandler( "interrupted_keyframe", f28_arg0.clipInterrupted ) --[[ @ 0]]
				f28_arg0.TitleSeparator:registerEventHandler( "transition_complete_keyframe", f28_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f28_arg0.TitleSeparator:completeAnimation() --[[ @ 0]]
			f28_arg0.TitleSeparator:setLeftRight( 1, 1, 86.5, 466.5 ) --[[ @ 0]]
			f28_local2( f28_arg0.TitleSeparator ) --[[ @ 0]]
			local f28_local3 = function ( f32_arg0 )
				f28_arg0.ClassOptionsList:beginAnimation( 200 ) --[[ @ 0]]
				f28_arg0.ClassOptionsList:setLeftRight( 1, 1, -467.5, -82.5 ) --[[ @ 0]]
				f28_arg0.ClassOptionsList:registerEventHandler( "interrupted_keyframe", f28_arg0.clipInterrupted ) --[[ @ 0]]
				f28_arg0.ClassOptionsList:registerEventHandler( "transition_complete_keyframe", f28_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f28_arg0.ClassOptionsList:completeAnimation() --[[ @ 0]]
			f28_arg0.ClassOptionsList:setLeftRight( 1, 1, 81.5, 466.5 ) --[[ @ 0]]
			f28_local3( f28_arg0.ClassOptionsList ) --[[ @ 0]]
			local f28_local4 = function ( f33_arg0 )
				f28_arg0.ClassOptionDesc:beginAnimation( 200 ) --[[ @ 0]]
				f28_arg0.ClassOptionDesc:setLeftRight( 1, 1, -459.5, -49.5 ) --[[ @ 0]]
				f28_arg0.ClassOptionDesc:registerEventHandler( "interrupted_keyframe", f28_arg0.clipInterrupted ) --[[ @ 0]]
				f28_arg0.ClassOptionDesc:registerEventHandler( "transition_complete_keyframe", f28_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f28_arg0.ClassOptionDesc:completeAnimation() --[[ @ 0]]
			f28_arg0.ClassOptionDesc:setLeftRight( 1, 1, 89.5, 499.5 ) --[[ @ 0]]
			f28_local4( f28_arg0.ClassOptionDesc ) --[[ @ 0]]
		end
	},
	PC = {
		DefaultClip = function ( f34_arg0, f34_arg1 )
			f34_arg0:__resetProperties() --[[ @ 0]]
			f34_arg0:setupElementClipCounter( 11 ) --[[ @ 0]]
			f34_arg0.PCBacking:completeAnimation() --[[ @ 0]]
			f34_arg0.PCBacking:setAlpha( 1 ) --[[ @ 0]]
			f34_arg0.clipFinished( f34_arg0.PCBacking ) --[[ @ 0]]
			f34_arg0.CommonRightSlideInPopup:completeAnimation() --[[ @ 0]]
			f34_arg0.CommonRightSlideInPopup:setAlpha( 0 ) --[[ @ 0]]
			f34_arg0.clipFinished( f34_arg0.CommonRightSlideInPopup ) --[[ @ 0]]
			f34_arg0.buttons:completeAnimation() --[[ @ 0]]
			f34_arg0.buttons:setLeftRight( 0.5, 0.5, -1440, 480 ) --[[ @ 0]]
			f34_arg0.buttons:setAlpha( 0 ) --[[ @ 0]]
			f34_arg0.clipFinished( f34_arg0.buttons ) --[[ @ 0]]
			f34_arg0.featureOverlayButtonMouseOnly:completeAnimation() --[[ @ 0]]
			f34_arg0.featureOverlayButtonMouseOnly:setLeftRight( 0.5, 0.5, -339, -179 ) --[[ @ 0]]
			f34_arg0.featureOverlayButtonMouseOnly:setTopBottom( 1, 1, -108, -48 ) --[[ @ 0]]
			f34_arg0.clipFinished( f34_arg0.featureOverlayButtonMouseOnly ) --[[ @ 0]]
			f34_arg0.ClassSetOptionsList:completeAnimation() --[[ @ 0]]
			f34_arg0.ClassSetOptionsList:setLeftRight( 0.5, 0.5, -192.5, 192.5 ) --[[ @ 0]]
			f34_arg0.ClassSetOptionsList:setTopBottom( 0.5, 0.5, 61, 167 ) --[[ @ 0]]
			f34_arg0.ClassSetOptionsList:setAlpha( 0 ) --[[ @ 0]]
			f34_arg0.clipFinished( f34_arg0.ClassSetOptionsList ) --[[ @ 0]]
			f34_arg0.TitleSeparator2:completeAnimation() --[[ @ 0]]
			f34_arg0.TitleSeparator2:setLeftRight( 0.5, 0.5, -190, 190 ) --[[ @ 0]]
			f34_arg0.TitleSeparator2:setTopBottom( 0.5, 0.5, 61, 62 ) --[[ @ 0]]
			f34_arg0.TitleSeparator2:setAlpha( 0 ) --[[ @ 0]]
			f34_arg0.clipFinished( f34_arg0.TitleSeparator2 ) --[[ @ 0]]
			f34_arg0.CurrentClassName:completeAnimation() --[[ @ 0]]
			f34_arg0.CurrentClassName:setLeftRight( 0.5, 0.5, -189, 189 ) --[[ @ 0]]
			f34_arg0.CurrentClassName:setTopBottom( 0.5, 0.5, -412, -373 ) --[[ @ 0]]
			f34_arg0.CurrentClassName:setAlpha( 0 ) --[[ @ 0]]
			f34_arg0.clipFinished( f34_arg0.CurrentClassName ) --[[ @ 0]]
			f34_arg0.ClassSetTitle:completeAnimation() --[[ @ 0]]
			f34_arg0.ClassSetTitle:setLeftRight( 0.5, 0.5, -189, 189 ) --[[ @ 0]]
			f34_arg0.ClassSetTitle:setTopBottom( 0.5, 0.5, 11.5, 50.5 ) --[[ @ 0]]
			f34_arg0.ClassSetTitle:setAlpha( 0 ) --[[ @ 0]]
			f34_arg0.clipFinished( f34_arg0.ClassSetTitle ) --[[ @ 0]]
			f34_arg0.TitleSeparator:completeAnimation() --[[ @ 0]]
			f34_arg0.TitleSeparator:setLeftRight( 0.5, 0.5, -244.5, 244.5 ) --[[ @ 0]]
			f34_arg0.TitleSeparator:setTopBottom( 0.5, 0.5, -444, -443 ) --[[ @ 0]]
			f34_arg0.TitleSeparator:setAlpha( 0.5 ) --[[ @ 0]]
			f34_arg0.clipFinished( f34_arg0.TitleSeparator ) --[[ @ 0]]
			f34_arg0.ClassOptionsList:completeAnimation() --[[ @ 0]]
			f34_arg0.ClassOptionsList:setLeftRight( 0.5, 0.5, -192.5, 192.5 ) --[[ @ 0]]
			f34_arg0.ClassOptionsList:setTopBottom( 0.5, 0.5, -254, -22 ) --[[ @ 0]]
			f34_arg0.clipFinished( f34_arg0.ClassOptionsList ) --[[ @ 0]]
			f34_arg0.ClassOptionDesc:completeAnimation() --[[ @ 0]]
			f34_arg0.ClassOptionDesc:setLeftRight( 0.5, 0.5, -192.5, 192.5 ) --[[ @ 0]]
			f34_arg0.ClassOptionDesc:setTopBottom( 0.5, 0.5, -30, -11 ) --[[ @ 0]]
			f34_arg0.ClassOptionDesc:setAlpha( 0.15 ) --[[ @ 0]]
			f34_arg0.clipFinished( f34_arg0.ClassOptionDesc ) --[[ @ 0]]
		end
	},
	PCclassSets = {
		DefaultClip = function ( f35_arg0, f35_arg1 )
			f35_arg0:__resetProperties() --[[ @ 0]]
			f35_arg0:setupElementClipCounter( 11 ) --[[ @ 0]]
			f35_arg0.PCBacking:completeAnimation() --[[ @ 0]]
			f35_arg0.PCBacking:setAlpha( 1 ) --[[ @ 0]]
			f35_arg0.clipFinished( f35_arg0.PCBacking ) --[[ @ 0]]
			f35_arg0.CommonRightSlideInPopup:completeAnimation() --[[ @ 0]]
			f35_arg0.CommonRightSlideInPopup:setAlpha( 0 ) --[[ @ 0]]
			f35_arg0.clipFinished( f35_arg0.CommonRightSlideInPopup ) --[[ @ 0]]
			f35_arg0.buttons:completeAnimation() --[[ @ 0]]
			f35_arg0.buttons:setLeftRight( 0.5, 0.5, -1440, 480 ) --[[ @ 0]]
			f35_arg0.buttons:setAlpha( 0 ) --[[ @ 0]]
			f35_arg0.clipFinished( f35_arg0.buttons ) --[[ @ 0]]
			f35_arg0.featureOverlayButtonMouseOnly:completeAnimation() --[[ @ 0]]
			f35_arg0.featureOverlayButtonMouseOnly:setLeftRight( 0.5, 0.5, -339, -179 ) --[[ @ 0]]
			f35_arg0.featureOverlayButtonMouseOnly:setTopBottom( 1, 1, -108, -48 ) --[[ @ 0]]
			f35_arg0.clipFinished( f35_arg0.featureOverlayButtonMouseOnly ) --[[ @ 0]]
			f35_arg0.ClassSetOptionsList:completeAnimation() --[[ @ 0]]
			f35_arg0.ClassSetOptionsList:setLeftRight( 0.5, 0.5, -192.5, 192.5 ) --[[ @ 0]]
			f35_arg0.ClassSetOptionsList:setTopBottom( 0.5, 0.5, 61, 167 ) --[[ @ 0]]
			f35_arg0.ClassSetOptionsList:setAlpha( 1 ) --[[ @ 0]]
			f35_arg0.clipFinished( f35_arg0.ClassSetOptionsList ) --[[ @ 0]]
			f35_arg0.TitleSeparator2:completeAnimation() --[[ @ 0]]
			f35_arg0.TitleSeparator2:setLeftRight( 0.5, 0.5, -190, 190 ) --[[ @ 0]]
			f35_arg0.TitleSeparator2:setTopBottom( 0.5, 0.5, 61, 62 ) --[[ @ 0]]
			f35_arg0.TitleSeparator2:setAlpha( 1 ) --[[ @ 0]]
			f35_arg0.clipFinished( f35_arg0.TitleSeparator2 ) --[[ @ 0]]
			f35_arg0.CurrentClassName:completeAnimation() --[[ @ 0]]
			f35_arg0.CurrentClassName:setLeftRight( 0.5, 0.5, -189, 189 ) --[[ @ 0]]
			f35_arg0.CurrentClassName:setTopBottom( 0.5, 0.5, -412, -373 ) --[[ @ 0]]
			f35_arg0.CurrentClassName:setAlpha( 0 ) --[[ @ 0]]
			f35_arg0.clipFinished( f35_arg0.CurrentClassName ) --[[ @ 0]]
			f35_arg0.ClassSetTitle:completeAnimation() --[[ @ 0]]
			f35_arg0.ClassSetTitle:setLeftRight( 0.5, 0.5, -189, 189 ) --[[ @ 0]]
			f35_arg0.ClassSetTitle:setTopBottom( 0.5, 0.5, 11.5, 50.5 ) --[[ @ 0]]
			f35_arg0.ClassSetTitle:setAlpha( 1 ) --[[ @ 0]]
			f35_arg0.clipFinished( f35_arg0.ClassSetTitle ) --[[ @ 0]]
			f35_arg0.TitleSeparator:completeAnimation() --[[ @ 0]]
			f35_arg0.TitleSeparator:setLeftRight( 0.5, 0.5, -244.5, 244.5 ) --[[ @ 0]]
			f35_arg0.TitleSeparator:setTopBottom( 0.5, 0.5, -444, -443 ) --[[ @ 0]]
			f35_arg0.TitleSeparator:setAlpha( 0.5 ) --[[ @ 0]]
			f35_arg0.clipFinished( f35_arg0.TitleSeparator ) --[[ @ 0]]
			f35_arg0.ClassOptionsList:completeAnimation() --[[ @ 0]]
			f35_arg0.ClassOptionsList:setLeftRight( 0.5, 0.5, -192.5, 192.5 ) --[[ @ 0]]
			f35_arg0.ClassOptionsList:setTopBottom( 0.5, 0.5, -254, -22 ) --[[ @ 0]]
			f35_arg0.clipFinished( f35_arg0.ClassOptionsList ) --[[ @ 0]]
			f35_arg0.ClassOptionDesc:completeAnimation() --[[ @ 0]]
			f35_arg0.ClassOptionDesc:setLeftRight( 0.5, 0.5, -192.5, 192.5 ) --[[ @ 0]]
			f35_arg0.ClassOptionDesc:setTopBottom( 0.5, 0.5, -30, -11 ) --[[ @ 0]]
			f35_arg0.ClassOptionDesc:setAlpha( 0.15 ) --[[ @ 0]]
			f35_arg0.clipFinished( f35_arg0.ClassOptionDesc ) --[[ @ 0]]
		end
	},
	ClassSets = {
		DefaultClip = function ( f36_arg0, f36_arg1 )
			f36_arg0:__resetProperties() --[[ @ 0]]
			f36_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f36_arg0.ClassSetOptionsList:completeAnimation() --[[ @ 0]]
			f36_arg0.ClassSetOptionsList:setAlpha( 1 ) --[[ @ 0]]
			f36_arg0.clipFinished( f36_arg0.ClassSetOptionsList ) --[[ @ 0]]
			f36_arg0.TitleSeparator2:completeAnimation() --[[ @ 0]]
			f36_arg0.TitleSeparator2:setAlpha( 1 ) --[[ @ 0]]
			f36_arg0.clipFinished( f36_arg0.TitleSeparator2 ) --[[ @ 0]]
			f36_arg0.ClassSetTitle:completeAnimation() --[[ @ 0]]
			f36_arg0.ClassSetTitle:setAlpha( 1 ) --[[ @ 0]]
			f36_arg0.clipFinished( f36_arg0.ClassSetTitle ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ClassOptionsWidget.__onClose = function ( f37_arg0 )
	f37_arg0.PCBacking:close() --[[ @ 0]]
	f37_arg0.CommonRightSlideInPopup:close() --[[ @ 0]]
	f37_arg0.buttons:close() --[[ @ 0]]
	f37_arg0.featureOverlayButtonMouseOnly:close() --[[ @ 0]]
	f37_arg0.ClassSetOptionsList:close() --[[ @ 0]]
	f37_arg0.PCClassOptionRenameBox:close() --[[ @ 0]]
	f37_arg0.CurrentClassName:close() --[[ @ 0]]
	f37_arg0.ClassSetTitle:close() --[[ @ 0]]
	f37_arg0.ClassOptionsList:close() --[[ @ 0]]
	f37_arg0.ClassOptionDesc:close() --[[ @ 0]]
	f37_arg0.PCSmallCloseButton:close() --[[ @ 0]]
end
 --[[ @ 0]]
