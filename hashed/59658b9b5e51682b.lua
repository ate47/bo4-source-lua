-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/buttonprogressring" ) --[[ @ 0]]
require( "ui/uieditor/widgets/controllerdependent_textbox" ) --[[ @ 0]]
require( "x64:57740d6a36622800" ) --[[ @ 0]]
require( "x64:2eb2b44d72f6861a" ) --[[ @ 0]]
require( "x64:5e6b26605fb6b80c" ) --[[ @ 0]]

CoD.Support_ExtraButton = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Support_ExtraButton.__defaultWidth = 40 --[[ @ 0]]
CoD.Support_ExtraButton.__defaultHeight = 70 --[[ @ 0]]
CoD.Support_ExtraButton.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.Support_ExtraButton ) --[[ @ 0]]
	self.id = "Support_ExtraButton" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local BGTopBlur = LUI.UIImage.new( 0, 0, -12, 60, 0, 0, 5, 69 ) --[[ @ 0]]
	BGTopBlur:setImage( RegisterImage( @"uie_ui_hud_core_frame_streaks_widget_top_mask" ) ) --[[ @ 0]]
	BGTopBlur:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	BGTopBlur:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( BGTopBlur ) --[[ @ 0]]
	self.BGTopBlur = BGTopBlur --[[ @ 0]]
	
	local BGTop = LUI.UIImage.new( 0, 0, -12, 60, 0, 0, 5, 69 ) --[[ @ 0]]
	BGTop:setImage( RegisterImage( @"uie_ui_hud_core_frame_streaks_widget_top" ) ) --[[ @ 0]]
	self:addElement( BGTop ) --[[ @ 0]]
	self.BGTop = BGTop --[[ @ 0]]
	
	local PanelDark = LUI.UIImage.new( 0, 0, -22, 60, 0, 0, -3.5, 79.5 ) --[[ @ 0]]
	PanelDark:setAlpha( 0.97 ) --[[ @ 0]]
	PanelDark:setImage( RegisterImage( @"uie_streak_flare_bg" ) ) --[[ @ 0]]
	self:addElement( PanelDark ) --[[ @ 0]]
	self.PanelDark = PanelDark --[[ @ 0]]
	
	local Background = LUI.UIImage.new( 0, 0, -22, 60, 0, 0, -3.5, 79.5 ) --[[ @ 0]]
	Background:setAlpha( 0.2 ) --[[ @ 0]]
	Background:setImage( RegisterImage( @"uie_streak_flare" ) ) --[[ @ 0]]
	Background:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Background ) --[[ @ 0]]
	self.Background = Background --[[ @ 0]]
	
	local LED = LUI.UIImage.new( 0, 0, -11.5, 52.5, 0, 0, 3, 67 ) --[[ @ 0]]
	LED:setRGB( 0.79, 0.45, 0.05 ) --[[ @ 0]]
	LED:setAlpha( 0 ) --[[ @ 0]]
	LED:setImage( RegisterImage( @"uie_ui_hud_core_streak_led_button" ) ) --[[ @ 0]]
	self:addElement( LED ) --[[ @ 0]]
	self.LED = LED --[[ @ 0]]
	
	local buttonInternal = CoD.Support_ButtonInternal.new( f1_arg0, f1_arg1, 0, 0, 0, 40, 0, 0, 18, 59 ) --[[ @ 0]]
	buttonInternal:linkToElementModel( self, nil, false, function ( model )
		buttonInternal:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( buttonInternal ) --[[ @ 0]]
	self.buttonInternal = buttonInternal --[[ @ 0]]
	
	local Bar = CoD.Support_EarningBar.new( f1_arg0, f1_arg1, 0, 0, -9, 0, 0, 0, 35, 37 ) --[[ @ 0]]
	Bar:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
	Bar:setAlpha( 0 ) --[[ @ 0]]
	Bar:linkToElementModel( self, nil, false, function ( model )
		Bar:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Bar ) --[[ @ 0]]
	self.Bar = Bar --[[ @ 0]]
	
	local ButtonProgressRing = CoD.ButtonProgressRing.new( f1_arg0, f1_arg1, 1, 1, -94, -52, 0, 0, 15.5, 57.5 ) --[[ @ 0]]
	ButtonProgressRing:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return AlwaysTrue()
			end
		}
	} ) --[[ @ 0]]
	ButtonProgressRing:setAlpha( 0 ) --[[ @ 0]]
	ButtonProgressRing:setScale( 0.7, 0.7 ) --[[ @ 0]]
	ButtonProgressRing:subscribeToGlobalModel( f1_arg1, "HUDItems", "heroHoldProgress", function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			ButtonProgressRing.progressRing:setShaderVector( 0, CoD.GetVectorComponentFromString( f5_local0, 1 ), CoD.GetVectorComponentFromString( f5_local0, 2 ), CoD.GetVectorComponentFromString( f5_local0, 3 ), CoD.GetVectorComponentFromString( f5_local0, 4 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ButtonProgressRing ) --[[ @ 0]]
	self.ButtonProgressRing = ButtonProgressRing --[[ @ 0]]
	
	local ControllerDependentTextBox = CoD.ControllerDependent_TextBox.new( f1_arg0, f1_arg1, 1, 1, -117.5, -28.5, 0, 0, 13.5, 58.5 ) --[[ @ 0]]
	ControllerDependentTextBox:mergeStateConditions( {
		{
			stateName = "KeyboardAndMouse",
			condition = function ( menu, element, event )
				return IsMouseOrKeyboard( f1_arg1 ) and AlwaysFalse()
			end
		},
		{
			stateName = "KeyboardAndMouseAbility",
			condition = function ( menu, element, event )
				return IsMouseOrKeyboard( f1_arg1 ) and AlwaysFalse()
			end
		},
		{
			stateName = "KeyboardAndMouseUltimate",
			condition = function ( menu, element, event )
				return IsMouseOrKeyboard( f1_arg1 ) and AlwaysFalse()
			end
		},
		{
			stateName = "KeyboardAndMouseScoreStreak",
			condition = function ( menu, element, event )
				return IsMouseOrKeyboard( f1_arg1 ) and AlwaysTrue()
			end
		}
	} ) --[[ @ 0]]
	local ArrowDown = ControllerDependentTextBox --[[ @ 0]]
	local ArrowUp = ControllerDependentTextBox.subscribeToModel --[[ @ 0]]
	local FUItop2 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	ArrowUp( ArrowDown, FUItop2["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_killcam"]], function ( f10_arg0 )
		f1_arg0:updateElementState( ControllerDependentTextBox, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f10_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_killcam"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	ArrowDown = ControllerDependentTextBox --[[ @ 0]]
	ArrowUp = ControllerDependentTextBox.subscribeToModel --[[ @ 0]]
	FUItop2 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	ArrowUp( ArrowDown, FUItop2["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_play_of_the_match"]], function ( f11_arg0 )
		f1_arg0:updateElementState( ControllerDependentTextBox, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f11_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_play_of_the_match"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	ControllerDependentTextBox:appendEventHandler( "input_source_changed", function ( f12_arg0, f12_arg1 )
		f12_arg1.menu = f12_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( ControllerDependentTextBox, f12_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ArrowDown = ControllerDependentTextBox --[[ @ 0]]
	ArrowUp = ControllerDependentTextBox.subscribeToModel --[[ @ 0]]
	FUItop2 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	ArrowUp( ArrowDown, FUItop2.LastInput, function ( f13_arg0 )
		f1_arg0:updateElementState( ControllerDependentTextBox, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f13_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	ControllerDependentTextBox:setAlpha( 0 ) --[[ @ 0]]
	ControllerDependentTextBox.KBMText:setLetterSpacing( 0 ) --[[ @ 0]]
	ControllerDependentTextBox.GamepadText:setText( CoD.BaseUtility.AlreadyLocalized( "[{+weapnext_inventory}]" ) ) --[[ @ 0]]
	ControllerDependentTextBox.GamepadText:setLetterSpacing( 0 ) --[[ @ 0]]
	ControllerDependentTextBox.GamepadText:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	ControllerDependentTextBox:linkToElementModel( self, nil, false, function ( model )
		ControllerDependentTextBox:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ControllerDependentTextBox:linkToElementModel( self, "bindingKBM", true, function ( model )
		local f15_local0 = model:get() --[[ @ 0]]
		if f15_local0 ~= nil then
			ControllerDependentTextBox.KBMText:setText( CoD.BaseUtility.AlreadyLocalized( f15_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ControllerDependentTextBox ) --[[ @ 0]]
	self.ControllerDependentTextBox = ControllerDependentTextBox --[[ @ 0]]
	
	ArrowUp = CoD.Support_ButtonArrow.new( f1_arg0, f1_arg1, 0, 0, -41, -25, 0, 0, -1, 15 ) --[[ @ 0]]
	ArrowUp:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualToEitherValue( element, f1_arg1, "arrowState", CoD.ScorestreakInGameUtility.ArrowState.UP, CoD.ScorestreakInGameUtility.ArrowState.BOTH )
			end
		}
	} ) --[[ @ 0]]
	ArrowUp:linkToElementModel( ArrowUp, "arrowState", true, function ( model )
		f1_arg0:updateElementState( ArrowUp, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "arrowState"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ArrowUp:setAlpha( 0 ) --[[ @ 0]]
	ArrowUp:setZRot( 90 ) --[[ @ 0]]
	ArrowUp:linkToElementModel( self, nil, false, function ( model )
		ArrowUp:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ArrowUp ) --[[ @ 0]]
	self.ArrowUp = ArrowUp --[[ @ 0]]
	
	ArrowDown = CoD.Support_ButtonArrow.new( f1_arg0, f1_arg1, 0, 0, -41, -25, 0, 0, 57, 73 ) --[[ @ 0]]
	ArrowDown:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualToEitherValue( element, f1_arg1, "arrowState", CoD.ScorestreakInGameUtility.ArrowState.DOWN, CoD.ScorestreakInGameUtility.ArrowState.BOTH )
			end
		}
	} ) --[[ @ 0]]
	ArrowDown:linkToElementModel( ArrowDown, "arrowState", true, function ( model )
		f1_arg0:updateElementState( ArrowDown, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "arrowState"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ArrowDown:setAlpha( 0 ) --[[ @ 0]]
	ArrowDown:setZRot( -90 ) --[[ @ 0]]
	ArrowDown:linkToElementModel( self, nil, false, function ( model )
		ArrowDown:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ArrowDown ) --[[ @ 0]]
	self.ArrowDown = ArrowDown --[[ @ 0]]
	
	FUItop2 = LUI.UIImage.new( 0, 0, 0.5, 40.5, 0, 0, 52, 60 ) --[[ @ 0]]
	FUItop2:setRGB( ColorSet.T8__OCHRE.r, ColorSet.T8__OCHRE.g, ColorSet.T8__OCHRE.b ) --[[ @ 0]]
	FUItop2:setAlpha( 0 ) --[[ @ 0]]
	FUItop2:setImage( RegisterImage( @"uie_ui_hud_core_streak_widget_fui_selector" ) ) --[[ @ 0]]
	FUItop2:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( FUItop2 ) --[[ @ 0]]
	self.FUItop2 = FUItop2 --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Usable",
			condition = function ( menu, element, event )
				local f22_local0 = CoD.ModelUtility.IsSelfModelValueNonEmptyString( element, f1_arg1, "rewardImage" ) --[[ @ 0]]
				if f22_local0 then
					f22_local0 = CoD.ModelUtility.IsSelfModelValueGreaterThan( element, f1_arg1, "rewardAmmo", 0 ) --[[ @ 0]]
					if f22_local0 then
						f22_local0 = IsGamepad( f1_arg1 ) --[[ @ 0]]
					end
				end
				return f22_local0
			end
		},
		{
			stateName = "UsableKBM",
			condition = function ( menu, element, event )
				local f23_local0 = CoD.ModelUtility.IsSelfModelValueNonEmptyString( element, f1_arg1, "rewardImage" ) --[[ @ 0]]
				if f23_local0 then
					f23_local0 = CoD.ModelUtility.IsSelfModelValueGreaterThan( element, f1_arg1, "rewardAmmo", 0 ) --[[ @ 0]]
					if f23_local0 then
						f23_local0 = IsMouseOrKeyboard( f1_arg1 ) --[[ @ 0]]
					end
				end
				return f23_local0
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "rewardImage", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "rewardImage"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "rewardAmmo", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "rewardAmmo"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:appendEventHandler( "input_source_changed", function ( f26_arg0, f26_arg1 )
		f26_arg1.menu = f26_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( self, f26_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local13 = self --[[ @ 0]]
	local f1_local14 = self.subscribeToModel --[[ @ 0]]
	local f1_local15 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local14( f1_local13, f1_local15.LastInput, function ( f27_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f27_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "setState", function ( element, controller, f28_arg2, f28_arg3, f28_arg4 )
		DispatchEventToParent( element, "scorestreak_state_update", controller ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.Support_ExtraButton.__resetProperties = function ( f29_arg0 )
	f29_arg0.buttonInternal:completeAnimation() --[[ @ 0]]
	f29_arg0.Bar:completeAnimation() --[[ @ 0]]
	f29_arg0.Background:completeAnimation() --[[ @ 0]]
	f29_arg0.FUItop2:completeAnimation() --[[ @ 0]]
	f29_arg0.ArrowDown:completeAnimation() --[[ @ 0]]
	f29_arg0.ArrowUp:completeAnimation() --[[ @ 0]]
	f29_arg0.ControllerDependentTextBox:completeAnimation() --[[ @ 0]]
	f29_arg0.ButtonProgressRing:completeAnimation() --[[ @ 0]]
	f29_arg0.LED:completeAnimation() --[[ @ 0]]
	f29_arg0.PanelDark:completeAnimation() --[[ @ 0]]
	f29_arg0.BGTop:completeAnimation() --[[ @ 0]]
	f29_arg0.BGTopBlur:completeAnimation() --[[ @ 0]]
	f29_arg0.buttonInternal:setLeftRight( 0, 0, 0, 40 ) --[[ @ 0]]
	f29_arg0.buttonInternal:setTopBottom( 0, 0, 18, 59 ) --[[ @ 0]]
	f29_arg0.buttonInternal:setAlpha( 1 ) --[[ @ 0]]
	f29_arg0.buttonInternal:setScale( 1, 1 ) --[[ @ 0]]
	f29_arg0.Bar:setLeftRight( 0, 0, -9, 0 ) --[[ @ 0]]
	f29_arg0.Bar:setTopBottom( 0, 0, 35, 37 ) --[[ @ 0]]
	f29_arg0.Bar:setAlpha( 0 ) --[[ @ 0]]
	f29_arg0.Background:setTopBottom( 0, 0, -3.5, 79.5 ) --[[ @ 0]]
	f29_arg0.Background:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f29_arg0.Background:setAlpha( 0.2 ) --[[ @ 0]]
	f29_arg0.Background:setScale( 1, 1 ) --[[ @ 0]]
	f29_arg0.FUItop2:setLeftRight( 0, 0, 0.5, 40.5 ) --[[ @ 0]]
	f29_arg0.FUItop2:setAlpha( 0 ) --[[ @ 0]]
	f29_arg0.ArrowDown:setTopBottom( 0, 0, 57, 73 ) --[[ @ 0]]
	f29_arg0.ArrowDown:setAlpha( 0 ) --[[ @ 0]]
	f29_arg0.ArrowUp:setLeftRight( 0, 0, -41, -25 ) --[[ @ 0]]
	f29_arg0.ArrowUp:setTopBottom( 0, 0, -1, 15 ) --[[ @ 0]]
	f29_arg0.ArrowUp:setAlpha( 0 ) --[[ @ 0]]
	f29_arg0.ControllerDependentTextBox:setLeftRight( 1, 1, -117.5, -28.5 ) --[[ @ 0]]
	f29_arg0.ControllerDependentTextBox:setTopBottom( 0, 0, 13.5, 58.5 ) --[[ @ 0]]
	f29_arg0.ControllerDependentTextBox:setAlpha( 0 ) --[[ @ 0]]
	f29_arg0.ButtonProgressRing:setAlpha( 0 ) --[[ @ 0]]
	f29_arg0.LED:setTopBottom( 0, 0, 3, 67 ) --[[ @ 0]]
	f29_arg0.LED:setAlpha( 0 ) --[[ @ 0]]
	f29_arg0.PanelDark:setTopBottom( 0, 0, -3.5, 79.5 ) --[[ @ 0]]
	f29_arg0.PanelDark:setAlpha( 0.97 ) --[[ @ 0]]
	f29_arg0.PanelDark:setScale( 1, 1 ) --[[ @ 0]]
	f29_arg0.BGTop:setTopBottom( 0, 0, 5, 69 ) --[[ @ 0]]
	f29_arg0.BGTop:setAlpha( 1 ) --[[ @ 0]]
	f29_arg0.BGTopBlur:setTopBottom( 0, 0, 5, 69 ) --[[ @ 0]]
	f29_arg0.BGTopBlur:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.Support_ExtraButton.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f30_arg0, f30_arg1 )
			f30_arg0:__resetProperties() --[[ @ 0]]
			f30_arg0:setupElementClipCounter( 12 ) --[[ @ 0]]
			f30_arg0.BGTopBlur:completeAnimation() --[[ @ 0]]
			f30_arg0.BGTopBlur:setAlpha( 0 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.BGTopBlur ) --[[ @ 0]]
			f30_arg0.BGTop:completeAnimation() --[[ @ 0]]
			f30_arg0.BGTop:setAlpha( 0 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.BGTop ) --[[ @ 0]]
			f30_arg0.PanelDark:completeAnimation() --[[ @ 0]]
			f30_arg0.PanelDark:setAlpha( 0 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.PanelDark ) --[[ @ 0]]
			f30_arg0.Background:completeAnimation() --[[ @ 0]]
			f30_arg0.Background:setAlpha( 0 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.Background ) --[[ @ 0]]
			f30_arg0.LED:completeAnimation() --[[ @ 0]]
			f30_arg0.LED:setAlpha( 0 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.LED ) --[[ @ 0]]
			f30_arg0.buttonInternal:completeAnimation() --[[ @ 0]]
			f30_arg0.buttonInternal:setLeftRight( 0, 0, 0, 40 ) --[[ @ 0]]
			f30_arg0.buttonInternal:setTopBottom( 0, 0, 0, 41 ) --[[ @ 0]]
			f30_arg0.buttonInternal:setAlpha( 0 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.buttonInternal ) --[[ @ 0]]
			f30_arg0.Bar:completeAnimation() --[[ @ 0]]
			f30_arg0.Bar:setLeftRight( 0, 0, -6, 3 ) --[[ @ 0]]
			f30_arg0.Bar:setTopBottom( 0, 0, 19, 21 ) --[[ @ 0]]
			f30_arg0.Bar:setAlpha( 0 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.Bar ) --[[ @ 0]]
			f30_arg0.ButtonProgressRing:completeAnimation() --[[ @ 0]]
			f30_arg0.ButtonProgressRing:setAlpha( 0 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.ButtonProgressRing ) --[[ @ 0]]
			f30_arg0.ControllerDependentTextBox:completeAnimation() --[[ @ 0]]
			f30_arg0.ControllerDependentTextBox:setAlpha( 0 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.ControllerDependentTextBox ) --[[ @ 0]]
			f30_arg0.ArrowUp:completeAnimation() --[[ @ 0]]
			f30_arg0.ArrowUp:setAlpha( 0 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.ArrowUp ) --[[ @ 0]]
			f30_arg0.ArrowDown:completeAnimation() --[[ @ 0]]
			f30_arg0.ArrowDown:setAlpha( 0 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.ArrowDown ) --[[ @ 0]]
			f30_arg0.FUItop2:completeAnimation() --[[ @ 0]]
			f30_arg0.FUItop2:setAlpha( 0 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.FUItop2 ) --[[ @ 0]]
		end,
		Usable = function ( f31_arg0, f31_arg1 )
			f31_arg0:__resetProperties() --[[ @ 0]]
			f31_arg0:setupElementClipCounter( 12 ) --[[ @ 0]]
			local f31_local0 = function ( f32_arg0 )
				f31_arg0.BGTopBlur:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f31_arg0.BGTopBlur:setTopBottom( 0, 0, 5, 69 ) --[[ @ 0]]
				f31_arg0.BGTopBlur:setAlpha( 1 ) --[[ @ 0]]
				f31_arg0.BGTopBlur:registerEventHandler( "interrupted_keyframe", f31_arg0.clipInterrupted ) --[[ @ 0]]
				f31_arg0.BGTopBlur:registerEventHandler( "transition_complete_keyframe", f31_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f31_arg0.BGTopBlur:completeAnimation() --[[ @ 0]]
			f31_arg0.BGTopBlur:setTopBottom( 0, 0, 15, 79 ) --[[ @ 0]]
			f31_arg0.BGTopBlur:setAlpha( 0 ) --[[ @ 0]]
			f31_local0( f31_arg0.BGTopBlur ) --[[ @ 0]]
			local f31_local1 = function ( f33_arg0 )
				f31_arg0.BGTop:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f31_arg0.BGTop:setTopBottom( 0, 0, 5, 69 ) --[[ @ 0]]
				f31_arg0.BGTop:setAlpha( 1 ) --[[ @ 0]]
				f31_arg0.BGTop:registerEventHandler( "interrupted_keyframe", f31_arg0.clipInterrupted ) --[[ @ 0]]
				f31_arg0.BGTop:registerEventHandler( "transition_complete_keyframe", f31_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f31_arg0.BGTop:completeAnimation() --[[ @ 0]]
			f31_arg0.BGTop:setTopBottom( 0, 0, 15, 79 ) --[[ @ 0]]
			f31_arg0.BGTop:setAlpha( 0 ) --[[ @ 0]]
			f31_local1( f31_arg0.BGTop ) --[[ @ 0]]
			local f31_local2 = function ( f34_arg0 )
				f31_arg0.PanelDark:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f31_arg0.PanelDark:setTopBottom( 0, 0, -3.5, 79.5 ) --[[ @ 0]]
				f31_arg0.PanelDark:setAlpha( 0.97 ) --[[ @ 0]]
				f31_arg0.PanelDark:registerEventHandler( "interrupted_keyframe", f31_arg0.clipInterrupted ) --[[ @ 0]]
				f31_arg0.PanelDark:registerEventHandler( "transition_complete_keyframe", f31_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f31_arg0.PanelDark:completeAnimation() --[[ @ 0]]
			f31_arg0.PanelDark:setTopBottom( 0, 0, 6.5, 89.5 ) --[[ @ 0]]
			f31_arg0.PanelDark:setAlpha( 0 ) --[[ @ 0]]
			f31_arg0.PanelDark:setScale( 1, 0.8 ) --[[ @ 0]]
			f31_local2( f31_arg0.PanelDark ) --[[ @ 0]]
			local f31_local3 = function ( f35_arg0 )
				f31_arg0.Background:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f31_arg0.Background:setTopBottom( 0, 0, -3.5, 79.5 ) --[[ @ 0]]
				f31_arg0.Background:setAlpha( 0.05 ) --[[ @ 0]]
				f31_arg0.Background:registerEventHandler( "interrupted_keyframe", f31_arg0.clipInterrupted ) --[[ @ 0]]
				f31_arg0.Background:registerEventHandler( "transition_complete_keyframe", f31_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f31_arg0.Background:completeAnimation() --[[ @ 0]]
			f31_arg0.Background:setTopBottom( 0, 0, 6.5, 89.5 ) --[[ @ 0]]
			f31_arg0.Background:setAlpha( 0 ) --[[ @ 0]]
			f31_arg0.Background:setScale( 1, 0.8 ) --[[ @ 0]]
			f31_local3( f31_arg0.Background ) --[[ @ 0]]
			local f31_local4 = function ( f36_arg0 )
				f31_arg0.LED:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f31_arg0.LED:setTopBottom( 0, 0, 3, 67 ) --[[ @ 0]]
				f31_arg0.LED:setAlpha( 0.08 ) --[[ @ 0]]
				f31_arg0.LED:registerEventHandler( "interrupted_keyframe", f31_arg0.clipInterrupted ) --[[ @ 0]]
				f31_arg0.LED:registerEventHandler( "transition_complete_keyframe", f31_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f31_arg0.LED:completeAnimation() --[[ @ 0]]
			f31_arg0.LED:setTopBottom( 0, 0, 13, 77 ) --[[ @ 0]]
			f31_arg0.LED:setAlpha( 0 ) --[[ @ 0]]
			f31_local4( f31_arg0.LED ) --[[ @ 0]]
			local f31_local5 = function ( f37_arg0 )
				f31_arg0.buttonInternal:beginAnimation( 200, Enum[@"luitween"][@"luitween_bounce"] ) --[[ @ 0]]
				f31_arg0.buttonInternal:setAlpha( 1 ) --[[ @ 0]]
				f31_arg0.buttonInternal:registerEventHandler( "interrupted_keyframe", f31_arg0.clipInterrupted ) --[[ @ 0]]
				f31_arg0.buttonInternal:registerEventHandler( "transition_complete_keyframe", f31_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f31_arg0.buttonInternal:completeAnimation() --[[ @ 0]]
			f31_arg0.buttonInternal:setAlpha( 0 ) --[[ @ 0]]
			f31_local5( f31_arg0.buttonInternal ) --[[ @ 0]]
			f31_arg0.Bar:completeAnimation() --[[ @ 0]]
			f31_arg0.Bar:setLeftRight( 0, 0, -18, -9 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.Bar ) --[[ @ 0]]
			f31_arg0.ButtonProgressRing:completeAnimation() --[[ @ 0]]
			f31_arg0.ButtonProgressRing:setAlpha( 0 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.ButtonProgressRing ) --[[ @ 0]]
			f31_arg0.ControllerDependentTextBox:completeAnimation() --[[ @ 0]]
			f31_arg0.ControllerDependentTextBox:setAlpha( 0 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.ControllerDependentTextBox ) --[[ @ 0]]
			f31_arg0.ArrowUp:completeAnimation() --[[ @ 0]]
			f31_arg0.ArrowUp:setAlpha( 0 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.ArrowUp ) --[[ @ 0]]
			f31_arg0.ArrowDown:completeAnimation() --[[ @ 0]]
			f31_arg0.ArrowDown:setAlpha( 0 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.ArrowDown ) --[[ @ 0]]
			f31_arg0.FUItop2:completeAnimation() --[[ @ 0]]
			f31_arg0.FUItop2:setAlpha( 0 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.FUItop2 ) --[[ @ 0]]
		end
	},
	Usable = {
		DefaultClip = function ( f38_arg0, f38_arg1 )
			f38_arg0:__resetProperties() --[[ @ 0]]
			f38_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f38_arg0.PanelDark:completeAnimation() --[[ @ 0]]
			f38_arg0.PanelDark:setScale( 1, 0.8 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.PanelDark ) --[[ @ 0]]
			f38_arg0.Background:completeAnimation() --[[ @ 0]]
			f38_arg0.Background:setAlpha( 0.05 ) --[[ @ 0]]
			f38_arg0.Background:setScale( 1, 0.8 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.Background ) --[[ @ 0]]
			f38_arg0.LED:completeAnimation() --[[ @ 0]]
			f38_arg0.LED:setAlpha( 0.08 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.LED ) --[[ @ 0]]
			f38_arg0.buttonInternal:completeAnimation() --[[ @ 0]]
			f38_arg0.buttonInternal:setLeftRight( 0, 0, 0, 40 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.buttonInternal ) --[[ @ 0]]
			f38_arg0.Bar:completeAnimation() --[[ @ 0]]
			f38_arg0.Bar:setLeftRight( 0, 0, -18, -9 ) --[[ @ 0]]
			f38_arg0.Bar:setTopBottom( 0, 0, 19, 21 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.Bar ) --[[ @ 0]]
		end,
		Focus = function ( f39_arg0, f39_arg1 )
			f39_arg0:__resetProperties() --[[ @ 0]]
			f39_arg0:setupElementClipCounter( 10 ) --[[ @ 0]]
			local f39_local0 = function ( f40_arg0 )
				f39_arg0.PanelDark:beginAnimation( 230, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f39_arg0.PanelDark:setScale( 1, 1 ) --[[ @ 0]]
				f39_arg0.PanelDark:registerEventHandler( "interrupted_keyframe", f39_arg0.clipInterrupted ) --[[ @ 0]]
				f39_arg0.PanelDark:registerEventHandler( "transition_complete_keyframe", f39_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f39_arg0.PanelDark:completeAnimation() --[[ @ 0]]
			f39_arg0.PanelDark:setScale( 1, 0.8 ) --[[ @ 0]]
			f39_local0( f39_arg0.PanelDark ) --[[ @ 0]]
			local f39_local1 = function ( f41_arg0 )
				f39_arg0.Background:beginAnimation( 230, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f39_arg0.Background:setScale( 1, 1 ) --[[ @ 0]]
				f39_arg0.Background:registerEventHandler( "interrupted_keyframe", f39_arg0.clipInterrupted ) --[[ @ 0]]
				f39_arg0.Background:registerEventHandler( "transition_complete_keyframe", f39_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f39_arg0.Background:completeAnimation() --[[ @ 0]]
			f39_arg0.Background:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f39_arg0.Background:setAlpha( 0.75 ) --[[ @ 0]]
			f39_arg0.Background:setScale( 1, 0.8 ) --[[ @ 0]]
			f39_local1( f39_arg0.Background ) --[[ @ 0]]
			f39_arg0.LED:completeAnimation() --[[ @ 0]]
			f39_arg0.LED:setAlpha( 0.34 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.LED ) --[[ @ 0]]
			local f39_local2 = function ( f42_arg0 )
				f39_arg0.buttonInternal:beginAnimation( 230, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f39_arg0.buttonInternal:setScale( 1.1, 1.1 ) --[[ @ 0]]
				f39_arg0.buttonInternal:registerEventHandler( "interrupted_keyframe", f39_arg0.clipInterrupted ) --[[ @ 0]]
				f39_arg0.buttonInternal:registerEventHandler( "transition_complete_keyframe", f39_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f39_arg0.buttonInternal:completeAnimation() --[[ @ 0]]
			f39_arg0.buttonInternal:setScale( 1, 1 ) --[[ @ 0]]
			f39_local2( f39_arg0.buttonInternal ) --[[ @ 0]]
			f39_arg0.Bar:completeAnimation() --[[ @ 0]]
			f39_arg0.Bar:setLeftRight( 0, 0, -18, -9 ) --[[ @ 0]]
			f39_arg0.Bar:setTopBottom( 0, 0, 19, 21 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.Bar ) --[[ @ 0]]
			f39_arg0.ButtonProgressRing:completeAnimation() --[[ @ 0]]
			f39_arg0.ButtonProgressRing:setAlpha( 1 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.ButtonProgressRing ) --[[ @ 0]]
			f39_arg0.ControllerDependentTextBox:completeAnimation() --[[ @ 0]]
			f39_arg0.ControllerDependentTextBox:setAlpha( 1 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.ControllerDependentTextBox ) --[[ @ 0]]
			f39_arg0.ArrowUp:completeAnimation() --[[ @ 0]]
			f39_arg0.ArrowUp:setLeftRight( 0, 0, -41, -25 ) --[[ @ 0]]
			f39_arg0.ArrowUp:setTopBottom( 0, 0, 2, 18 ) --[[ @ 0]]
			f39_arg0.ArrowUp:setAlpha( 1 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.ArrowUp ) --[[ @ 0]]
			f39_arg0.ArrowDown:completeAnimation() --[[ @ 0]]
			f39_arg0.ArrowDown:setTopBottom( 0, 0, 56, 72 ) --[[ @ 0]]
			f39_arg0.ArrowDown:setAlpha( 1 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.ArrowDown ) --[[ @ 0]]
			f39_arg0.FUItop2:completeAnimation() --[[ @ 0]]
			f39_arg0.FUItop2:setLeftRight( 0, 0, -0.5, 39.5 ) --[[ @ 0]]
			f39_arg0.FUItop2:setAlpha( 0 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.FUItop2 ) --[[ @ 0]]
		end,
		DefaultState = function ( f43_arg0, f43_arg1 )
			f43_arg0:__resetProperties() --[[ @ 0]]
			f43_arg0:setupElementClipCounter( 12 ) --[[ @ 0]]
			local f43_local0 = function ( f44_arg0 )
				f43_arg0.BGTopBlur:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f43_arg0.BGTopBlur:setTopBottom( 0, 0, 15, 79 ) --[[ @ 0]]
				f43_arg0.BGTopBlur:setAlpha( 0 ) --[[ @ 0]]
				f43_arg0.BGTopBlur:registerEventHandler( "interrupted_keyframe", f43_arg0.clipInterrupted ) --[[ @ 0]]
				f43_arg0.BGTopBlur:registerEventHandler( "transition_complete_keyframe", f43_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f43_arg0.BGTopBlur:completeAnimation() --[[ @ 0]]
			f43_arg0.BGTopBlur:setTopBottom( 0, 0, 5, 69 ) --[[ @ 0]]
			f43_arg0.BGTopBlur:setAlpha( 1 ) --[[ @ 0]]
			f43_local0( f43_arg0.BGTopBlur ) --[[ @ 0]]
			local f43_local1 = function ( f45_arg0 )
				f43_arg0.BGTop:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f43_arg0.BGTop:setTopBottom( 0, 0, 15, 79 ) --[[ @ 0]]
				f43_arg0.BGTop:setAlpha( 0 ) --[[ @ 0]]
				f43_arg0.BGTop:registerEventHandler( "interrupted_keyframe", f43_arg0.clipInterrupted ) --[[ @ 0]]
				f43_arg0.BGTop:registerEventHandler( "transition_complete_keyframe", f43_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f43_arg0.BGTop:completeAnimation() --[[ @ 0]]
			f43_arg0.BGTop:setTopBottom( 0, 0, 5, 69 ) --[[ @ 0]]
			f43_arg0.BGTop:setAlpha( 1 ) --[[ @ 0]]
			f43_local1( f43_arg0.BGTop ) --[[ @ 0]]
			local f43_local2 = function ( f46_arg0 )
				f43_arg0.PanelDark:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f43_arg0.PanelDark:setTopBottom( 0, 0, 6.5, 89.5 ) --[[ @ 0]]
				f43_arg0.PanelDark:setAlpha( 0 ) --[[ @ 0]]
				f43_arg0.PanelDark:registerEventHandler( "interrupted_keyframe", f43_arg0.clipInterrupted ) --[[ @ 0]]
				f43_arg0.PanelDark:registerEventHandler( "transition_complete_keyframe", f43_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f43_arg0.PanelDark:completeAnimation() --[[ @ 0]]
			f43_arg0.PanelDark:setTopBottom( 0, 0, -3.5, 79.5 ) --[[ @ 0]]
			f43_arg0.PanelDark:setAlpha( 0.97 ) --[[ @ 0]]
			f43_arg0.PanelDark:setScale( 1, 0.8 ) --[[ @ 0]]
			f43_local2( f43_arg0.PanelDark ) --[[ @ 0]]
			local f43_local3 = function ( f47_arg0 )
				f43_arg0.Background:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f43_arg0.Background:setTopBottom( 0, 0, 6.5, 89.5 ) --[[ @ 0]]
				f43_arg0.Background:setAlpha( 0 ) --[[ @ 0]]
				f43_arg0.Background:registerEventHandler( "interrupted_keyframe", f43_arg0.clipInterrupted ) --[[ @ 0]]
				f43_arg0.Background:registerEventHandler( "transition_complete_keyframe", f43_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f43_arg0.Background:completeAnimation() --[[ @ 0]]
			f43_arg0.Background:setTopBottom( 0, 0, -3.5, 79.5 ) --[[ @ 0]]
			f43_arg0.Background:setAlpha( 0.05 ) --[[ @ 0]]
			f43_arg0.Background:setScale( 1, 0.8 ) --[[ @ 0]]
			f43_local3( f43_arg0.Background ) --[[ @ 0]]
			local f43_local4 = function ( f48_arg0 )
				f43_arg0.LED:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f43_arg0.LED:setTopBottom( 0, 0, 13, 77 ) --[[ @ 0]]
				f43_arg0.LED:setAlpha( 0 ) --[[ @ 0]]
				f43_arg0.LED:registerEventHandler( "interrupted_keyframe", f43_arg0.clipInterrupted ) --[[ @ 0]]
				f43_arg0.LED:registerEventHandler( "transition_complete_keyframe", f43_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f43_arg0.LED:completeAnimation() --[[ @ 0]]
			f43_arg0.LED:setTopBottom( 0, 0, 3, 67 ) --[[ @ 0]]
			f43_arg0.LED:setAlpha( 0.08 ) --[[ @ 0]]
			f43_local4( f43_arg0.LED ) --[[ @ 0]]
			local f43_local5 = function ( f49_arg0 )
				f43_arg0.buttonInternal:beginAnimation( 200, Enum[@"luitween"][@"luitween_bounce"] ) --[[ @ 0]]
				f43_arg0.buttonInternal:setAlpha( 0 ) --[[ @ 0]]
				f43_arg0.buttonInternal:registerEventHandler( "interrupted_keyframe", f43_arg0.clipInterrupted ) --[[ @ 0]]
				f43_arg0.buttonInternal:registerEventHandler( "transition_complete_keyframe", f43_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f43_arg0.buttonInternal:completeAnimation() --[[ @ 0]]
			f43_arg0.buttonInternal:setLeftRight( 0, 0, 0, 40 ) --[[ @ 0]]
			f43_arg0.buttonInternal:setTopBottom( 0, 0, 18, 59 ) --[[ @ 0]]
			f43_arg0.buttonInternal:setAlpha( 1 ) --[[ @ 0]]
			f43_local5( f43_arg0.buttonInternal ) --[[ @ 0]]
			f43_arg0.Bar:completeAnimation() --[[ @ 0]]
			f43_arg0.Bar:setLeftRight( 0, 0, -18, -9 ) --[[ @ 0]]
			f43_arg0.Bar:setTopBottom( 0, 0, 19, 21 ) --[[ @ 0]]
			f43_arg0.Bar:setAlpha( 0 ) --[[ @ 0]]
			f43_arg0.clipFinished( f43_arg0.Bar ) --[[ @ 0]]
			f43_arg0.ButtonProgressRing:completeAnimation() --[[ @ 0]]
			f43_arg0.ButtonProgressRing:setAlpha( 0 ) --[[ @ 0]]
			f43_arg0.clipFinished( f43_arg0.ButtonProgressRing ) --[[ @ 0]]
			f43_arg0.ControllerDependentTextBox:completeAnimation() --[[ @ 0]]
			f43_arg0.ControllerDependentTextBox:setAlpha( 0 ) --[[ @ 0]]
			f43_arg0.clipFinished( f43_arg0.ControllerDependentTextBox ) --[[ @ 0]]
			f43_arg0.ArrowUp:completeAnimation() --[[ @ 0]]
			f43_arg0.ArrowUp:setAlpha( 0 ) --[[ @ 0]]
			f43_arg0.clipFinished( f43_arg0.ArrowUp ) --[[ @ 0]]
			f43_arg0.ArrowDown:completeAnimation() --[[ @ 0]]
			f43_arg0.ArrowDown:setAlpha( 0 ) --[[ @ 0]]
			f43_arg0.clipFinished( f43_arg0.ArrowDown ) --[[ @ 0]]
			f43_arg0.FUItop2:completeAnimation() --[[ @ 0]]
			f43_arg0.FUItop2:setAlpha( 0 ) --[[ @ 0]]
			f43_arg0.clipFinished( f43_arg0.FUItop2 ) --[[ @ 0]]
		end
	},
	UsableKBM = {
		DefaultClip = function ( f50_arg0, f50_arg1 )
			f50_arg0:__resetProperties() --[[ @ 0]]
			f50_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			local f50_local0 = function ( f51_arg0 )
				f50_arg0.PanelDark:beginAnimation( 230 ) --[[ @ 0]]
				f50_arg0.PanelDark:setScale( 1, 1 ) --[[ @ 0]]
				f50_arg0.PanelDark:registerEventHandler( "interrupted_keyframe", f50_arg0.clipInterrupted ) --[[ @ 0]]
				f50_arg0.PanelDark:registerEventHandler( "transition_complete_keyframe", f50_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f50_arg0.PanelDark:completeAnimation() --[[ @ 0]]
			f50_arg0.PanelDark:setScale( 1, 0.8 ) --[[ @ 0]]
			f50_local0( f50_arg0.PanelDark ) --[[ @ 0]]
			local f50_local1 = function ( f52_arg0 )
				f50_arg0.Background:beginAnimation( 230 ) --[[ @ 0]]
				f50_arg0.Background:setScale( 1, 1 ) --[[ @ 0]]
				f50_arg0.Background:registerEventHandler( "interrupted_keyframe", f50_arg0.clipInterrupted ) --[[ @ 0]]
				f50_arg0.Background:registerEventHandler( "transition_complete_keyframe", f50_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f50_arg0.Background:completeAnimation() --[[ @ 0]]
			f50_arg0.Background:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f50_arg0.Background:setAlpha( 0.75 ) --[[ @ 0]]
			f50_arg0.Background:setScale( 1, 0.8 ) --[[ @ 0]]
			f50_local1( f50_arg0.Background ) --[[ @ 0]]
			f50_arg0.LED:completeAnimation() --[[ @ 0]]
			f50_arg0.LED:setAlpha( 0.34 ) --[[ @ 0]]
			f50_arg0.clipFinished( f50_arg0.LED ) --[[ @ 0]]
			local f50_local2 = function ( f53_arg0 )
				f50_arg0.buttonInternal:beginAnimation( 230 ) --[[ @ 0]]
				f50_arg0.buttonInternal:setScale( 1.1, 1.1 ) --[[ @ 0]]
				f50_arg0.buttonInternal:registerEventHandler( "interrupted_keyframe", f50_arg0.clipInterrupted ) --[[ @ 0]]
				f50_arg0.buttonInternal:registerEventHandler( "transition_complete_keyframe", f50_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f50_arg0.buttonInternal:completeAnimation() --[[ @ 0]]
			f50_arg0.buttonInternal:setLeftRight( 0, 0, 0, 40 ) --[[ @ 0]]
			f50_arg0.buttonInternal:setScale( 1, 1 ) --[[ @ 0]]
			f50_local2( f50_arg0.buttonInternal ) --[[ @ 0]]
			f50_arg0.Bar:completeAnimation() --[[ @ 0]]
			f50_arg0.Bar:setLeftRight( 0, 0, -18, -9 ) --[[ @ 0]]
			f50_arg0.Bar:setTopBottom( 0, 0, 19, 21 ) --[[ @ 0]]
			f50_arg0.clipFinished( f50_arg0.Bar ) --[[ @ 0]]
			f50_arg0.ControllerDependentTextBox:completeAnimation() --[[ @ 0]]
			f50_arg0.ControllerDependentTextBox:setLeftRight( 1, 1, -119, -30 ) --[[ @ 0]]
			f50_arg0.ControllerDependentTextBox:setTopBottom( 0.5, 0.5, -1.5, 20.5 ) --[[ @ 0]]
			f50_arg0.ControllerDependentTextBox:setAlpha( 1 ) --[[ @ 0]]
			f50_arg0.clipFinished( f50_arg0.ControllerDependentTextBox ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.Support_ExtraButton.__onClose = function ( f54_arg0 )
	f54_arg0.buttonInternal:close() --[[ @ 0]]
	f54_arg0.Bar:close() --[[ @ 0]]
	f54_arg0.ButtonProgressRing:close() --[[ @ 0]]
	f54_arg0.ControllerDependentTextBox:close() --[[ @ 0]]
	f54_arg0.ArrowUp:close() --[[ @ 0]]
	f54_arg0.ArrowDown:close() --[[ @ 0]]
end
 --[[ @ 0]]
