-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
CoD.KeyboardTextFieldInputCursor = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.KeyboardTextFieldInputCursor.__defaultWidth = 195 --[[ @ 0]]
CoD.KeyboardTextFieldInputCursor.__defaultHeight = 72 --[[ @ 0]]
CoD.KeyboardTextFieldInputCursor.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.KeyboardTextFieldInputCursor ) --[[ @ 0]]
	self.id = "KeyboardTextFieldInputCursor" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local text = LUI.UIText.new( 0, 0, -1, 194, 0, 1, 0, 0 ) --[[ @ 0]]
	text:setRGB( ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b ) --[[ @ 0]]
	text:setAlpha( 0.8 ) --[[ @ 0]]
	text:setText( CoD.BaseUtility.AlreadyLocalized( "|" ) ) --[[ @ 0]]
	text:setTTF( "notosans_regular" ) --[[ @ 0]]
	text:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	text:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( text ) --[[ @ 0]]
	self.text = text --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.KeyboardTextFieldInputCursor.__resetProperties = function ( f2_arg0 )
	f2_arg0.text:completeAnimation() --[[ @ 0]]
	f2_arg0.text:setAlpha( 0.8 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.KeyboardTextFieldInputCursor.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					local f5_local0 = function ( f6_arg0 )
						f6_arg0:beginAnimation( 490 ) --[[ @ 0]]
						f6_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f5_arg0:beginAnimation( 9 ) --[[ @ 0]]
					f5_arg0:setAlpha( 0 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.text:beginAnimation( 500 ) --[[ @ 0]]
				f3_arg0.text:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.text:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.text:completeAnimation() --[[ @ 0]]
			f3_arg0.text:setAlpha( 0.8 ) --[[ @ 0]]
			f3_local0( f3_arg0.text ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
