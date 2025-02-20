-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:32
CoD.ConsoleText = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ConsoleText.__defaultWidth = 495 --[[ @ 0]]
CoD.ConsoleText.__defaultHeight = 21 --[[ @ 0]]
CoD.ConsoleText.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ConsoleText ) --[[ @ 0]]
	self.id = "ConsoleText" --[[ @ 0]]
	self.soundSet = "HUD" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Text = LUI.UIText.new( 0, 0, 0, 495, 0, 0, -2.5, 23.5 ) --[[ @ 0]]
	Text:setText( "" ) --[[ @ 0]]
	Text:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Text:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	self:addElement( Text ) --[[ @ 0]]
	self.Text = Text --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ConsoleText.__resetProperties = function ( f2_arg0 )
	f2_arg0.Text:completeAnimation() --[[ @ 0]]
	f2_arg0.Text:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ConsoleText.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f3_arg0.Text:completeAnimation() --[[ @ 0]]
			f3_arg0.Text:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.Text ) --[[ @ 0]]
		end,
		FadeOut = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f4_local0 = function ( f5_arg0 )
				f4_arg0.Text:beginAnimation( 100 ) --[[ @ 0]]
				f4_arg0.Text:setAlpha( 0 ) --[[ @ 0]]
				f4_arg0.Text:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.Text:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.Text:completeAnimation() --[[ @ 0]]
			f4_arg0.Text:setAlpha( 1 ) --[[ @ 0]]
			f4_local0( f4_arg0.Text ) --[[ @ 0]]
		end,
		FadeIn = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f6_local0 = function ( f7_arg0 )
				f6_arg0.Text:beginAnimation( 100 ) --[[ @ 0]]
				f6_arg0.Text:setAlpha( 1 ) --[[ @ 0]]
				f6_arg0.Text:registerEventHandler( "interrupted_keyframe", f6_arg0.clipInterrupted ) --[[ @ 0]]
				f6_arg0.Text:registerEventHandler( "transition_complete_keyframe", f6_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f6_arg0.Text:completeAnimation() --[[ @ 0]]
			f6_arg0.Text:setAlpha( 0 ) --[[ @ 0]]
			f6_local0( f6_arg0.Text ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
