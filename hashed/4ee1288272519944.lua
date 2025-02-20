-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
CoD.AmmoWidget_Prompt = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AmmoWidget_Prompt.__defaultWidth = 64 --[[ @ 0]]
CoD.AmmoWidget_Prompt.__defaultHeight = 12 --[[ @ 0]]
CoD.AmmoWidget_Prompt.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AmmoWidget_Prompt ) --[[ @ 0]]
	self.id = "AmmoWidget_Prompt" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local red_box = LUI.UIImage.new( 0, 0, 0, 64, 0, 0, -1, 10 ) --[[ @ 0]]
	red_box:setRGB( 0.6, 0.07, 0.07 ) --[[ @ 0]]
	red_box:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( red_box ) --[[ @ 0]]
	self.red_box = red_box --[[ @ 0]]
	
	local PromptText = LUI.UIText.new( 0, 0, 0, 64, 0.22, 0.22, -2.5, 8.5 ) --[[ @ 0]]
	PromptText:setRGB( 1, 0, 0 ) --[[ @ 0]]
	PromptText:setAlpha( 0 ) --[[ @ 0]]
	PromptText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_191D99ADC60420B1" ) ) --[[ @ 0]]
	PromptText:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	PromptText:setLetterSpacing( 3 ) --[[ @ 0]]
	PromptText:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	PromptText:setAlignment( Enum[@"LUIAlignment"][@"hash_6ED4298C93DC5ED"] ) --[[ @ 0]]
	self:addElement( PromptText ) --[[ @ 0]]
	self.PromptText = PromptText --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.AmmoWidget_Prompt.__resetProperties = function ( f2_arg0 )
	f2_arg0.PromptText:completeAnimation() --[[ @ 0]]
	f2_arg0.red_box:completeAnimation() --[[ @ 0]]
	f2_arg0.PromptText:setLeftRight( 0, 0, 0, 64 ) --[[ @ 0]]
	f2_arg0.PromptText:setTopBottom( 0.22, 0.22, -2.5, 8.5 ) --[[ @ 0]]
	f2_arg0.PromptText:setRGB( 1, 0, 0 ) --[[ @ 0]]
	f2_arg0.PromptText:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.PromptText:setLetterSpacing( 3 ) --[[ @ 0]]
	f2_arg0.PromptText:setAlignment( Enum[@"LUIAlignment"][@"hash_6ED4298C93DC5ED"] ) --[[ @ 0]]
	f2_arg0.red_box:setLeftRight( 0, 0, 0, 64 ) --[[ @ 0]]
	f2_arg0.red_box:setTopBottom( 0, 0, -1, 10 ) --[[ @ 0]]
	f2_arg0.red_box:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.AmmoWidget_Prompt.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f3_arg0.PromptText:completeAnimation() --[[ @ 0]]
			f3_arg0.PromptText:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.PromptText ) --[[ @ 0]]
		end
	},
	LowAmmo = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f4_local0 = function ( f5_arg0 )
				local f5_local0 = function ( f6_arg0 )
					f6_arg0:beginAnimation( 2480 ) --[[ @ 0]]
					f6_arg0:setAlpha( 0.8 ) --[[ @ 0]]
					f6_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0.red_box:beginAnimation( 2500 ) --[[ @ 0]]
				f4_arg0.red_box:setAlpha( 0 ) --[[ @ 0]]
				f4_arg0.red_box:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.red_box:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.red_box:completeAnimation() --[[ @ 0]]
			f4_arg0.red_box:setLeftRight( 0, 0, 0, 64 ) --[[ @ 0]]
			f4_arg0.red_box:setTopBottom( 0, 0, -1, 10 ) --[[ @ 0]]
			f4_arg0.red_box:setAlpha( 0.8 ) --[[ @ 0]]
			f4_local0( f4_arg0.red_box ) --[[ @ 0]]
			f4_arg0.PromptText:completeAnimation() --[[ @ 0]]
			f4_arg0.PromptText:setLeftRight( 0, 0, 0, 64 ) --[[ @ 0]]
			f4_arg0.PromptText:setTopBottom( 0.22, 0.22, -3, 8 ) --[[ @ 0]]
			f4_arg0.PromptText:setRGB( 1, 0.49, 0.49 ) --[[ @ 0]]
			f4_arg0.PromptText:setAlpha( 1 ) --[[ @ 0]]
			f4_arg0.PromptText:setLetterSpacing( 3 ) --[[ @ 0]]
			f4_arg0.PromptText:setAlignment( Enum[@"LUIAlignment"][@"hash_6ED4298C93DC5ED"] ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.PromptText ) --[[ @ 0]]
			f4_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	},
	LowHealth = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f7_local0 = function ( f8_arg0 )
				local f8_local0 = function ( f9_arg0 )
					f9_arg0:beginAnimation( 2479 ) --[[ @ 0]]
					f9_arg0:setAlpha( 0.8 ) --[[ @ 0]]
					f9_arg0:registerEventHandler( "transition_complete_keyframe", f7_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f7_arg0.red_box:beginAnimation( 2510 ) --[[ @ 0]]
				f7_arg0.red_box:setAlpha( 0 ) --[[ @ 0]]
				f7_arg0.red_box:registerEventHandler( "interrupted_keyframe", f7_arg0.clipInterrupted ) --[[ @ 0]]
				f7_arg0.red_box:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f7_arg0.red_box:completeAnimation() --[[ @ 0]]
			f7_arg0.red_box:setLeftRight( 0, 0, 0, 64 ) --[[ @ 0]]
			f7_arg0.red_box:setTopBottom( 0, 0, -1, 12 ) --[[ @ 0]]
			f7_arg0.red_box:setAlpha( 0.8 ) --[[ @ 0]]
			f7_local0( f7_arg0.red_box ) --[[ @ 0]]
			f7_arg0.PromptText:completeAnimation() --[[ @ 0]]
			f7_arg0.PromptText:setLeftRight( 0, 0, 0, 64 ) --[[ @ 0]]
			f7_arg0.PromptText:setTopBottom( 0.22, 0.22, -2.5, 8.5 ) --[[ @ 0]]
			f7_arg0.PromptText:setRGB( 1, 0.49, 0.49 ) --[[ @ 0]]
			f7_arg0.PromptText:setAlpha( 1 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.PromptText ) --[[ @ 0]]
			f7_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
