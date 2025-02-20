-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "x64:3b363529a2e34794" ) --[[ @ 0]]
require( "ui/uieditor/widgets/controllerdependent_textbox" ) --[[ @ 0]]

CoD.BountyHunterOpenPrompt = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.BountyHunterOpenPrompt.__defaultWidth = 300 --[[ @ 0]]
CoD.BountyHunterOpenPrompt.__defaultHeight = 30 --[[ @ 0]]
CoD.BountyHunterOpenPrompt.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.BountyHunterOpenPrompt ) --[[ @ 0]]
	self.id = "BountyHunterOpenPrompt" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Backing = LUI.UIImage.new( 0, 0, 0, 300, 0.5, 0.5, -20, 20 ) --[[ @ 0]]
	Backing:setRGB( 0.15, 0.15, 0.15 ) --[[ @ 0]]
	Backing:setAlpha( 0.85 ) --[[ @ 0]]
	self:addElement( Backing ) --[[ @ 0]]
	self.Backing = Backing --[[ @ 0]]
	
	local Prompt = LUI.UIText.new( 0.5, 0.5, -150, 150, 0.5, 0.5, -15, 15 ) --[[ @ 0]]
	Prompt:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_38CFE818E4F35809" ) ) --[[ @ 0]]
	Prompt:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Prompt:setLetterSpacing( 4 ) --[[ @ 0]]
	Prompt:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	Prompt:setBackingType( 1 ) --[[ @ 0]]
	Prompt:setBackingWidget( CoD.TextBackingCommonWithBlur, f1_arg0, f1_arg1 ) --[[ @ 0]]
	Prompt:setBackingXPadding( 6 ) --[[ @ 0]]
	self:addElement( Prompt ) --[[ @ 0]]
	self.Prompt = Prompt --[[ @ 0]]
	
	local PCPromptText = nil --[[ @ 0]]
	
	PCPromptText = LUI.UIText.new( 0, 0, 66, 300, 0.5, 0.5, -15, 15 ) --[[ @ 0]]
	PCPromptText:setAlpha( 0 ) --[[ @ 0]]
	PCPromptText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_6A2CE63A1E424223" ) ) --[[ @ 0]]
	PCPromptText:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	PCPromptText:setLetterSpacing( 4 ) --[[ @ 0]]
	PCPromptText:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	PCPromptText:setAlignment( Enum[@"LUIAlignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	PCPromptText:setBackingType( 1 ) --[[ @ 0]]
	PCPromptText:setBackingWidget( CoD.TextBackingCommonWithBlur, f1_arg0, f1_arg1 ) --[[ @ 0]]
	PCPromptText:setBackingXPadding( 6 ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( PCPromptText, "setText", function ( element, controller )
		if IsPC() then
			ScaleWidgetToLabel( self, element, 0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( PCPromptText ) --[[ @ 0]]
	self.PCPromptText = PCPromptText --[[ @ 0]]
	
	local ControllerDependentTextBox = nil --[[ @ 0]]
	
	ControllerDependentTextBox = CoD.ControllerDependent_TextBox.new( f1_arg0, f1_arg1, 0.5, 0.5, -180, -91, 0.5, 0.5, -2, 20 ) --[[ @ 0]]
	ControllerDependentTextBox:mergeStateConditions( {
		{
			stateName = "KeyboardAndMouse",
			condition = function ( menu, element, event )
				return IsMouseOrKeyboard( f1_arg1 ) and AlwaysTrue()
			end
		}
	} ) --[[ @ 0]]
	local f1_local5 = ControllerDependentTextBox --[[ @ 0]]
	local f1_local6 = ControllerDependentTextBox.subscribeToModel --[[ @ 0]]
	local f1_local7 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local5, f1_local7["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_68A5E996D4528DA2"]], function ( f4_arg0 )
		f1_arg0:updateElementState( ControllerDependentTextBox, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f4_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_68A5E996D4528DA2"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local5 = ControllerDependentTextBox --[[ @ 0]]
	f1_local6 = ControllerDependentTextBox.subscribeToModel --[[ @ 0]]
	f1_local7 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local5, f1_local7["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_624E603C16FCC38F"]], function ( f5_arg0 )
		f1_arg0:updateElementState( ControllerDependentTextBox, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_624E603C16FCC38F"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	ControllerDependentTextBox:appendEventHandler( "input_source_changed", function ( f6_arg0, f6_arg1 )
		f6_arg1.menu = f6_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( ControllerDependentTextBox, f6_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local5 = ControllerDependentTextBox --[[ @ 0]]
	f1_local6 = ControllerDependentTextBox.subscribeToModel --[[ @ 0]]
	f1_local7 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local5, f1_local7.LastInput, function ( f7_arg0 )
		f1_arg0:updateElementState( ControllerDependentTextBox, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f7_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	ControllerDependentTextBox:setAlpha( 0 ) --[[ @ 0]]
	ControllerDependentTextBox.KBMText:setText( CoD.BaseUtility.AlreadyLocalized( "[{+activate}]" ) ) --[[ @ 0]]
	ControllerDependentTextBox.GamepadText:setText( CoD.BaseUtility.AlreadyLocalized( "^BBUTTON_CANCEL^" ) ) --[[ @ 0]]
	ControllerDependentTextBox.GamepadText:setAlignment( Enum[@"LUIAlignment"][@"hash_3830CFD395E6AA0A"] ) --[[ @ 0]]
	ControllerDependentTextBox.GamepadText:setAlignment( Enum[@"LUIAlignment"][@"hash_6ED4298C93DC5ED"] ) --[[ @ 0]]
	self:addElement( ControllerDependentTextBox ) --[[ @ 0]]
	self.ControllerDependentTextBox = ControllerDependentTextBox --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "KeyboardMouse",
			condition = function ( menu, element, event )
				return IsMouseOrKeyboard( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	self:appendEventHandler( "input_source_changed", function ( f9_arg0, f9_arg1 )
		f9_arg1.menu = f9_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( self, f9_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local5 = self --[[ @ 0]]
	f1_local6 = self.subscribeToModel --[[ @ 0]]
	f1_local7 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local5, f1_local7.LastInput, function ( f10_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f10_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PreLoadFunc then
		PreLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	f1_local6 = self --[[ @ 0]]
	f1_local6 = ControllerDependentTextBox --[[ @ 0]]
	if IsGamepad( f1_arg1 ) then
		HideWidget( f1_local6 ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.BountyHunterOpenPrompt.__resetProperties = function ( f11_arg0 )
	f11_arg0.Prompt:completeAnimation() --[[ @ 0]]
	f11_arg0.ControllerDependentTextBox:completeAnimation() --[[ @ 0]]
	f11_arg0.PCPromptText:completeAnimation() --[[ @ 0]]
	f11_arg0.Prompt:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.ControllerDependentTextBox:setAlpha( 0 ) --[[ @ 0]]
	f11_arg0.PCPromptText:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.BountyHunterOpenPrompt.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	KeyboardMouse = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f13_arg0.Prompt:completeAnimation() --[[ @ 0]]
			f13_arg0.Prompt:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.Prompt ) --[[ @ 0]]
			f13_arg0.PCPromptText:completeAnimation() --[[ @ 0]]
			f13_arg0.PCPromptText:setAlpha( 1 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.PCPromptText ) --[[ @ 0]]
			f13_arg0.ControllerDependentTextBox:completeAnimation() --[[ @ 0]]
			f13_arg0.ControllerDependentTextBox:setAlpha( 1 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.ControllerDependentTextBox ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.BountyHunterOpenPrompt.__onClose = function ( f14_arg0 )
	f14_arg0.ControllerDependentTextBox:close() --[[ @ 0]]
end
 --[[ @ 0]]
