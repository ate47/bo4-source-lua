-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.CenterConsoleText = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CenterConsoleText.__defaultWidth = 495 --[[ @ 0]]
CoD.CenterConsoleText.__defaultHeight = 33 --[[ @ 0]]
CoD.CenterConsoleText.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CenterConsoleText ) --[[ @ 0]]
	self.id = "CenterConsoleText" --[[ @ 0]]
	self.soundSet = "HUD" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Text = LUI.UIText.new( 0, 0, 0, 1350, 0, 0, -2.5, 35.5 ) --[[ @ 0]]
	Text:setText( "" ) --[[ @ 0]]
	Text:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	Text:setRFTMaterial( LUI.UIImage.GetCachedMaterial( @"uie_aberration_no_blur" ) ) --[[ @ 0]]
	Text:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	Text:setShaderVector( 1, 0.5, 0, 0, 0 ) --[[ @ 0]]
	Text:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	Text:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	Text:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	Text:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( Text ) --[[ @ 0]]
	self.Text = Text --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CenterConsoleText.__resetProperties = function ( f2_arg0 )
	f2_arg0.Text:completeAnimation() --[[ @ 0]]
	f2_arg0.Text:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CenterConsoleText.__clipsPerState = {
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
