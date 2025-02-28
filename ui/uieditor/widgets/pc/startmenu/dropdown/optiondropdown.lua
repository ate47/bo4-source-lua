-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/lobby/common/fe_focusbarcontainer" ) --[[ @ 0]]
require( "x64:1dbd216abb19e109" ) --[[ @ 0]]
require( "ui/uieditor/widgets/scrollbars/verticalscrollbar" ) --[[ @ 0]]
require( "ui/uieditor/widgets/startmenu/startmenu_frame_nobg" ) --[[ @ 0]]

local f0_local0 = function ( f1_arg0, f1_arg1 )
	if f1_arg0.DropDownList then
		f1_arg0.inUse = not f1_arg0.inUse --[[ @ 0]]
		if f1_arg0.inUse then
			f1_arg0:setPriority( 100 ) --[[ @ 0]]
			f1_arg0.m_disableNavigation = true --[[ @ 0]]
			MakeFocusable( f1_arg0.DropDownList, f1_arg1 ) --[[ @ 0]]
			SetFocusToElement( f1_arg0, "DropDownList", f1_arg1 ) --[[ @ 0]]
			f1_arg0.DropDownList.m_disableNavigation = nil --[[ @ 0]]
			if type( f1_arg0.dropDownCurrentValue ) == "function" then
				local f1_local0 = f1_arg0.DropDownList:findItem( {
					value = f1_arg0.dropDownCurrentValue( f1_arg1, f1_arg0 )
				}, nil, false, nil ) --[[ @ 0]]
				if f1_local0 then
					f1_arg0.DropDownList:setActiveItem( f1_local0 ) --[[ @ 0]]
				end
			end
			local f1_local1, f1_local0 = f1_arg0.DropDownList:getLocalSize() --[[ @ 0]]
			f1_arg0.listBackground:setTopBottom( false, true, 0, f1_local0 ) --[[ @ 0]]
		else
			f1_arg0:setPriority( 0 ) --[[ @ 0]]
			f1_arg0.m_disableNavigation = nil --[[ @ 0]]
			MakeNotFocusable( f1_arg0.DropDownList, f1_arg1 ) --[[ @ 0]]
			SetLoseFocusToElement( f1_arg0, "DropDownList", f1_arg1 ) --[[ @ 0]]
			f1_arg0.DropDownList.m_disableNavigation = true --[[ @ 0]]
		end
		f1_arg0:dispatchEventToParent( {
			name = "dropdown_triggered",
			widget = f1_arg0,
			inUse = f1_arg0.inUse,
			controller = f1_arg1
		} ) --[[ @ 0]]
	end
end
 --[[ @ 0]]
local f0_local1 = function ( f2_arg0, f2_arg1, f2_arg2 )
	f2_arg0:setForceMouseEventDispatch( true ) --[[ @ 0]]
	f2_arg0:registerEventHandler( "dropdown_item_selected", function ( element, event )
		if type( element.dropDownItemSelected ) == "function" and element.inUse then
			element.currentValueText:setText( Engine[@"localize"]( element.dropDownItemSelected( f2_arg1, element, event.element ) ) ) --[[ @ 0]]
		end
		f0_local0( element, f2_arg1 ) --[[ @ 0]]
		UpdateState( element, event ) --[[ @ 0]]
		element.DropDownList:updateDataSource() --[[ @ 0]]
		return true
	end ) --[[ @ 0]]
	f2_arg0:registerEventHandler( "dropdown_item_cancelled", function ( element, event )
		if element.inUse then
			f0_local0( element, f2_arg1 ) --[[ @ 0]]
			UpdateState( element, event ) --[[ @ 0]]
			return true
		else
			return false
		end
	end ) --[[ @ 0]]
	f2_arg0:registerEventHandler( "options_refresh", function ( element, event )
		element.DropDownList:updateDataSource() --[[ @ 0]]
		if type( element.dropDownRefresh ) == "function" then
			element.currentValueText:setText( Engine[@"localize"]( element.dropDownRefresh( event.controller, element, element.DropDownList ) ) ) --[[ @ 0]]
		end
		UpdateState( element, event ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f2_arg0.listBackground:setHandleMouseButton( true ) --[[ @ 0]]
	CoD.Menu.AddButtonCallbackFunction( f2_arg2, f2_arg0, f2_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, f6_arg3 )
		if not f2_arg0.disabled and not menu.m_disableNavigation and menu:AcceptGamePadButtonInputFromModelCallback( controller ) then
			if not f2_arg0.inUse then
				f0_local0( f2_arg0, controller ) --[[ @ 0]]
				UpdateState( f2_arg0, {
					name = "update_state",
					controller = controller
				} ) --[[ @ 0]]
			end
			return true
		else
			
		end
	end ) --[[ @ 0]]
end
 --[[ @ 0]]
local PostLoadFunc = function ( self, controller, menu )
	if CoD.isPC then
		f0_local1( self, controller, menu ) --[[ @ 0]]
	end
end
 --[[ @ 0]]
CoD.OptionDropdown = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.OptionDropdown.__defaultWidth = 750 --[[ @ 0]]
CoD.OptionDropdown.__defaultHeight = 51 --[[ @ 0]]
CoD.OptionDropdown.new = function ( f8_arg0, f8_arg1, f8_arg2, f8_arg3, f8_arg4, f8_arg5, f8_arg6, f8_arg7, f8_arg8, f8_arg9 )
	local self = LUI.UIElement.new( f8_arg2, f8_arg3, f8_arg4, f8_arg5, f8_arg6, f8_arg7, f8_arg8, f8_arg9 ) --[[ @ 0]]
	self:setClass( CoD.OptionDropdown ) --[[ @ 0]]
	self.id = "OptionDropdown" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f8_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local listBackground = LUI.UIImage.new( 0, 0, 375, 779, 0, 0, 51, 438 ) --[[ @ 0]]
	listBackground:setRGB( 0, 0, 0 ) --[[ @ 0]]
	listBackground:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( listBackground ) --[[ @ 0]]
	self.listBackground = listBackground --[[ @ 0]]
	
	local fullBacking = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	fullBacking:setRGB( 0.1, 0.1, 0.1 ) --[[ @ 0]]
	fullBacking:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( fullBacking ) --[[ @ 0]]
	self.fullBacking = fullBacking --[[ @ 0]]
	
	local StartMenuframenoBG00 = CoD.StartMenu_frame_noBG.new( f8_arg0, f8_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( StartMenuframenoBG00 ) --[[ @ 0]]
	self.StartMenuframenoBG00 = StartMenuframenoBG00 --[[ @ 0]]
	
	local labelText = LUI.UIText.new( 0, 0, 14, 427, 0, 0, 7, 45 ) --[[ @ 0]]
	labelText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/new" ) ) --[[ @ 0]]
	labelText:setTTF( "default" ) --[[ @ 0]]
	labelText:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	labelText:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( labelText ) --[[ @ 0]]
	self.labelText = labelText --[[ @ 0]]
	
	local dropdownBacking = LUI.UIImage.new( 0, 0, 375, 737, 0, 0, 11, 40 ) --[[ @ 0]]
	dropdownBacking:setRGB( 0.1, 0.1, 0.1 ) --[[ @ 0]]
	dropdownBacking:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( dropdownBacking ) --[[ @ 0]]
	self.dropdownBacking = dropdownBacking --[[ @ 0]]
	
	local currentValueText = LUI.UIText.new( 0, 0, 383, 705, 0, 0, 6, 44 ) --[[ @ 0]]
	currentValueText:setText( "" ) --[[ @ 0]]
	currentValueText:setTTF( "default" ) --[[ @ 0]]
	currentValueText:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	currentValueText:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( currentValueText ) --[[ @ 0]]
	self.currentValueText = currentValueText --[[ @ 0]]
	
	local FocusBarB = CoD.FE_FocusBarContainer.new( f8_arg0, f8_arg1, 0, 1, 0, 0, 1, 1, -8, 0 ) --[[ @ 0]]
	FocusBarB:setAlpha( 0 ) --[[ @ 0]]
	FocusBarB:setZoom( 1 ) --[[ @ 0]]
	self:addElement( FocusBarB ) --[[ @ 0]]
	self.FocusBarB = FocusBarB --[[ @ 0]]
	
	local FocusBarT = CoD.FE_FocusBarContainer.new( f8_arg0, f8_arg1, 0, 1, 4, 0, 0, 0, 0, 6 ) --[[ @ 0]]
	FocusBarT:setAlpha( 0 ) --[[ @ 0]]
	FocusBarT:setZoom( 1 ) --[[ @ 0]]
	self:addElement( FocusBarT ) --[[ @ 0]]
	self.FocusBarT = FocusBarT --[[ @ 0]]
	
	local DropDownList = LUI.UIList.new( f8_arg0, f8_arg1, 2, 0, nil, true, false, false, false ) --[[ @ 0]]
	DropDownList:setLeftRight( 1, 1, -376, 0 ) --[[ @ 0]]
	DropDownList:setTopBottom( 0, 0, 55, 433 ) --[[ @ 0]]
	DropDownList:setAlpha( 0 ) --[[ @ 0]]
	DropDownList:setWidgetType( CoD.OptionDropdownItem ) --[[ @ 0]]
	DropDownList:setVerticalCount( 10 ) --[[ @ 0]]
	DropDownList:setFirstElementXOffset( 1 ) --[[ @ 0]]
	DropDownList:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	DropDownList:setVerticalScrollbar( CoD.verticalScrollbar ) --[[ @ 0]]
	DropDownList:setDataSource( "DropdownListTest" ) --[[ @ 0]]
	self:addElement( DropDownList ) --[[ @ 0]]
	self.DropDownList = DropDownList --[[ @ 0]]
	
	local Arrow = LUI.UIImage.new( 0, 1, 702, -2, 0, 1, 7, -7 ) --[[ @ 0]]
	Arrow:setZRot( 90 ) --[[ @ 0]]
	Arrow:setScale( 0.6, 0.6 ) --[[ @ 0]]
	Arrow:setImage( RegisterImage( @"uie_characterminiselectorarrow" ) ) --[[ @ 0]]
	self:addElement( Arrow ) --[[ @ 0]]
	self.Arrow = Arrow --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Disabled",
			condition = function ( menu, element, event )
				return IsDisabled( element, f8_arg1 )
			end
		},
		{
			stateName = "InUse",
			condition = function ( menu, element, event )
				return DropDownListIsInUse( element )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "disabled", true, function ( model )
		f8_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f8_arg0,
			controller = f8_arg1,
			modelValue = model:get(),
			modelName = "disabled"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "setState", function ( element, controller, f12_arg2, f12_arg3, f12_arg4 )
		if IsInDefaultState( element ) then
			MakeElementNotFocusable( self, "DropDownList", controller ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	DropDownList.id = "DropDownList" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f8_arg1, f8_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.OptionDropdown.__resetProperties = function ( f13_arg0 )
	f13_arg0.FocusBarT:completeAnimation() --[[ @ 0]]
	f13_arg0.currentValueText:completeAnimation() --[[ @ 0]]
	f13_arg0.FocusBarB:completeAnimation() --[[ @ 0]]
	f13_arg0.Arrow:completeAnimation() --[[ @ 0]]
	f13_arg0.labelText:completeAnimation() --[[ @ 0]]
	f13_arg0.DropDownList:completeAnimation() --[[ @ 0]]
	f13_arg0.listBackground:completeAnimation() --[[ @ 0]]
	f13_arg0.FocusBarT:setLeftRight( 0, 1, 4, 0 ) --[[ @ 0]]
	f13_arg0.FocusBarT:setTopBottom( 0, 0, 0, 6 ) --[[ @ 0]]
	f13_arg0.FocusBarT:setAlpha( 0 ) --[[ @ 0]]
	f13_arg0.currentValueText:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f13_arg0.currentValueText:setAlpha( 1 ) --[[ @ 0]]
	f13_arg0.FocusBarB:setAlpha( 0 ) --[[ @ 0]]
	f13_arg0.Arrow:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f13_arg0.Arrow:setZRot( 90 ) --[[ @ 0]]
	f13_arg0.labelText:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f13_arg0.DropDownList:setAlpha( 0 ) --[[ @ 0]]
	f13_arg0.listBackground:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.OptionDropdown.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f14_arg0.currentValueText:completeAnimation() --[[ @ 0]]
			f14_arg0.currentValueText:setAlpha( 0.5 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.currentValueText ) --[[ @ 0]]
			f14_arg0.FocusBarT:completeAnimation() --[[ @ 0]]
			f14_arg0.FocusBarT:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
			f14_arg0.FocusBarT:setTopBottom( 0, 0, 0, 6 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.FocusBarT ) --[[ @ 0]]
		end,
		Focus = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f15_arg0.FocusBarB:completeAnimation() --[[ @ 0]]
			f15_arg0.FocusBarB:setAlpha( 1 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.FocusBarB ) --[[ @ 0]]
			f15_arg0.FocusBarT:completeAnimation() --[[ @ 0]]
			f15_arg0.FocusBarT:setAlpha( 1 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.FocusBarT ) --[[ @ 0]]
		end
	},
	Disabled = {
		DefaultClip = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f16_arg0.labelText:completeAnimation() --[[ @ 0]]
			f16_arg0.labelText:setRGB( 0.2, 0.2, 0.2 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.labelText ) --[[ @ 0]]
			f16_arg0.currentValueText:completeAnimation() --[[ @ 0]]
			f16_arg0.currentValueText:setRGB( 0.2, 0.2, 0.2 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.currentValueText ) --[[ @ 0]]
			f16_arg0.Arrow:completeAnimation() --[[ @ 0]]
			f16_arg0.Arrow:setRGB( 0.2, 0.2, 0.2 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.Arrow ) --[[ @ 0]]
		end
	},
	InUse = {
		DefaultClip = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f17_arg0.listBackground:completeAnimation() --[[ @ 0]]
			f17_arg0.listBackground:setAlpha( 1 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.listBackground ) --[[ @ 0]]
			f17_arg0.DropDownList:completeAnimation() --[[ @ 0]]
			f17_arg0.DropDownList:setAlpha( 1 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.DropDownList ) --[[ @ 0]]
			f17_arg0.Arrow:completeAnimation() --[[ @ 0]]
			f17_arg0.Arrow:setZRot( 270 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.Arrow ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.OptionDropdown.__onClose = function ( f18_arg0 )
	f18_arg0.StartMenuframenoBG00:close() --[[ @ 0]]
	f18_arg0.FocusBarB:close() --[[ @ 0]]
	f18_arg0.FocusBarT:close() --[[ @ 0]]
	f18_arg0.DropDownList:close() --[[ @ 0]]
end
 --[[ @ 0]]
