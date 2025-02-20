-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
require( "ui/uieditor/widgets/systemoverlays/featureoverlay_button" ) --[[ @ 0]]

CoD.PC_BountyHunterBuy_BackButton = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PC_BountyHunterBuy_BackButton.__defaultWidth = 200 --[[ @ 0]]
CoD.PC_BountyHunterBuy_BackButton.__defaultHeight = 60 --[[ @ 0]]
CoD.PC_BountyHunterBuy_BackButton.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PC_BountyHunterBuy_BackButton ) --[[ @ 0]]
	self.id = "PC_BountyHunterBuy_BackButton" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Button = CoD.featureOverlay_Button.new( f1_arg0, f1_arg1, 0.5, 0.5, -100, 100, 1, 1, -60, 0 ) --[[ @ 0]]
	Button.ButtonContainer.Title:setText( LocalizeToUpperString( @"hash_66C253CF816B40B5" ) ) --[[ @ 0]]
	self:addElement( Button ) --[[ @ 0]]
	self.Button = Button --[[ @ 0]]
	
	local GamepadTitle = LUI.UIText.new( 0, 0, 54, 254, 0.5, 0.5, -10.5, 11.5 ) --[[ @ 0]]
	GamepadTitle:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	GamepadTitle:setAlpha( 0 ) --[[ @ 0]]
	GamepadTitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_66C253CF816B40B5" ) ) --[[ @ 0]]
	GamepadTitle:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	GamepadTitle:setLetterSpacing( 3 ) --[[ @ 0]]
	GamepadTitle:setLineSpacing( 1 ) --[[ @ 0]]
	GamepadTitle:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	self:addElement( GamepadTitle ) --[[ @ 0]]
	self.GamepadTitle = GamepadTitle --[[ @ 0]]
	
	local GamepadPrompt = LUI.UIImage.new( 0, 0, 12, 44, 0.5, 0.5, -17.5, 14.5 ) --[[ @ 0]]
	GamepadPrompt:setAlpha( 0 ) --[[ @ 0]]
	GamepadPrompt:subscribeToGlobalModel( f1_arg1, "Controller", "secondary_button_image", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			GamepadPrompt:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( GamepadPrompt ) --[[ @ 0]]
	self.GamepadPrompt = GamepadPrompt --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Gamepad",
			condition = function ( menu, element, event )
				return IsGamepad( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	self:appendEventHandler( "input_source_changed", function ( f4_arg0, f4_arg1 )
		f4_arg1.menu = f4_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( self, f4_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local4 = self --[[ @ 0]]
	local f1_local5 = self.subscribeToModel --[[ @ 0]]
	local f1_local6 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6.LastInput, function ( f5_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	Button.id = "Button" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.PC_BountyHunterBuy_BackButton.__resetProperties = function ( f6_arg0 )
	f6_arg0.Button:completeAnimation() --[[ @ 0]]
	f6_arg0.GamepadTitle:completeAnimation() --[[ @ 0]]
	f6_arg0.GamepadPrompt:completeAnimation() --[[ @ 0]]
	f6_arg0.Button:setAlpha( 1 ) --[[ @ 0]]
	f6_arg0.GamepadTitle:setAlpha( 0 ) --[[ @ 0]]
	f6_arg0.GamepadPrompt:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.PC_BountyHunterBuy_BackButton.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f7_arg0.Button:completeAnimation() --[[ @ 0]]
			f7_arg0.Button:setAlpha( 1 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.Button ) --[[ @ 0]]
		end,
		ChildFocus = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f8_arg0.Button:completeAnimation() --[[ @ 0]]
			f8_arg0.Button:setAlpha( 1 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.Button ) --[[ @ 0]]
		end
	},
	Gamepad = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f9_arg0.Button:completeAnimation() --[[ @ 0]]
			f9_arg0.Button:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.Button ) --[[ @ 0]]
			f9_arg0.GamepadTitle:completeAnimation() --[[ @ 0]]
			f9_arg0.GamepadTitle:setAlpha( 1 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.GamepadTitle ) --[[ @ 0]]
			f9_arg0.GamepadPrompt:completeAnimation() --[[ @ 0]]
			f9_arg0.GamepadPrompt:setAlpha( 1 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.GamepadPrompt ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.PC_BountyHunterBuy_BackButton.__onClose = function ( f10_arg0 )
	f10_arg0.Button:close() --[[ @ 0]]
	f10_arg0.GamepadPrompt:close() --[[ @ 0]]
end
 --[[ @ 0]]
