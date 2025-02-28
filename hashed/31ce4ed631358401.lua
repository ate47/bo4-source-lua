-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "ui/uieditor/widgets/pc/utility/textbacking" ) --[[ @ 0]]

CoD.PCStartMenuOptionsUnbindKeybindMessage = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PCStartMenuOptionsUnbindKeybindMessage.__defaultWidth = 126 --[[ @ 0]]
CoD.PCStartMenuOptionsUnbindKeybindMessage.__defaultHeight = 24 --[[ @ 0]]
CoD.PCStartMenuOptionsUnbindKeybindMessage.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PCStartMenuOptionsUnbindKeybindMessage ) --[[ @ 0]]
	self.id = "PCStartMenuOptionsUnbindKeybindMessage" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local TextBox = LUI.UIText.new( 0, 0, 0, 126, 0, 1, 0, 0 ) --[[ @ 0]]
	TextBox:setRGB( 0.76, 0.76, 0.76 ) --[[ @ 0]]
	TextBox:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_37C0D99E99809ED" ) ) --[[ @ 0]]
	TextBox:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	TextBox:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( TextBox ) --[[ @ 0]]
	self.TextBox = TextBox --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Gamepad",
			condition = function ( menu, element, event )
				return IsGamepad( f1_arg1 )
			end
		},
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return true
			end
		}
	} ) --[[ @ 0]]
	self:appendEventHandler( "input_source_changed", function ( f4_arg0, f4_arg1 )
		f4_arg1.menu = f4_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( self, f4_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local2 = self --[[ @ 0]]
	local f1_local3 = self.subscribeToModel --[[ @ 0]]
	local f1_local4 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4.LastInput, function ( f5_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.PCStartMenuOptionsUnbindKeybindMessage.__resetProperties = function ( f6_arg0 )
	f6_arg0.TextBox:completeAnimation() --[[ @ 0]]
	f6_arg0.TextBox:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.PCStartMenuOptionsUnbindKeybindMessage.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Gamepad = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f8_arg0.TextBox:completeAnimation() --[[ @ 0]]
			f8_arg0.TextBox:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.TextBox ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f9_arg0.TextBox:completeAnimation() --[[ @ 0]]
			f9_arg0.TextBox:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.TextBox ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
