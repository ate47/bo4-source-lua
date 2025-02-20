-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
CoD.PC_Korea_Event_Day_Progression_Numbers = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PC_Korea_Event_Day_Progression_Numbers.__defaultWidth = 60 --[[ @ 0]]
CoD.PC_Korea_Event_Day_Progression_Numbers.__defaultHeight = 32 --[[ @ 0]]
CoD.PC_Korea_Event_Day_Progression_Numbers.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PC_Korea_Event_Day_Progression_Numbers ) --[[ @ 0]]
	self.id = "PC_Korea_Event_Day_Progression_Numbers" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local TextBGImage = LUI.UIImage.new( 0.5, 0.5, -30, 30, 0.5, 0.5, -16, 16 ) --[[ @ 0]]
	TextBGImage:setAlpha( 0 ) --[[ @ 0]]
	TextBGImage:setImage( RegisterImage( @"uie_pc_igrevent_progression_time_background" ) ) --[[ @ 0]]
	self:addElement( TextBGImage ) --[[ @ 0]]
	self.TextBGImage = TextBGImage --[[ @ 0]]
	
	local TextNumber = LUI.UIText.new( 0.5, 0.5, -30, 30, 0.5, 0.5, -7.5, 7.5 ) --[[ @ 0]]
	TextNumber:setRGB( ColorSet.T8__OCHRE.r, ColorSet.T8__OCHRE.g, ColorSet.T8__OCHRE.b ) --[[ @ 0]]
	TextNumber:setText( 0 ) --[[ @ 0]]
	TextNumber:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	TextNumber:setLetterSpacing( 2 ) --[[ @ 0]]
	TextNumber:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	TextNumber:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( TextNumber ) --[[ @ 0]]
	self.TextNumber = TextNumber --[[ @ 0]]
	
	local TextColorSound = LUI.UIElement.new( 0, 0, 14, 46, 0, 0, 32, 64 ) --[[ @ 0]]
	self:addElement( TextColorSound ) --[[ @ 0]]
	self.TextColorSound = TextColorSound --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.PC_Korea_Event_Day_Progression_Numbers.__resetProperties = function ( f2_arg0 )
	f2_arg0.TextBGImage:completeAnimation() --[[ @ 0]]
	f2_arg0.TextNumber:completeAnimation() --[[ @ 0]]
	f2_arg0.TextColorSound:completeAnimation() --[[ @ 0]]
	f2_arg0.TextBGImage:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f2_arg0.TextBGImage:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.TextBGImage:setScale( 1, 1 ) --[[ @ 0]]
	f2_arg0.TextBGImage:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_normal" ) ) --[[ @ 0]]
	f2_arg0.TextNumber:setRGB( ColorSet.T8__OCHRE.r, ColorSet.T8__OCHRE.g, ColorSet.T8__OCHRE.b ) --[[ @ 0]]
	f2_arg0.TextColorSound:setPlaySoundDirect( false ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.PC_Korea_Event_Day_Progression_Numbers.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		TimeCompleted = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f4_local0 = function ( f5_arg0 )
				local f5_local0 = function ( f6_arg0 )
					f6_arg0:beginAnimation( 50 ) --[[ @ 0]]
					f6_arg0:setAlpha( 1 ) --[[ @ 0]]
					f6_arg0:setScale( 1, 1 ) --[[ @ 0]]
					f6_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0.TextBGImage:beginAnimation( 130 ) --[[ @ 0]]
				f4_arg0.TextBGImage:setAlpha( 0.72 ) --[[ @ 0]]
				f4_arg0.TextBGImage:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.TextBGImage:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.TextBGImage:completeAnimation() --[[ @ 0]]
			f4_arg0.TextBGImage:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.TextBGImage:setScale( 1.2, 1.4 ) --[[ @ 0]]
			f4_local0( f4_arg0.TextBGImage ) --[[ @ 0]]
			local f4_local1 = function ( f7_arg0 )
				f4_arg0.TextNumber:beginAnimation( 180 ) --[[ @ 0]]
				f4_arg0.TextNumber:setRGB( 0, 0, 0 ) --[[ @ 0]]
				f4_arg0.TextNumber:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.TextNumber:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.TextNumber:completeAnimation() --[[ @ 0]]
			f4_arg0.TextNumber:setRGB( ColorSet.T8__OCHRE.r, ColorSet.T8__OCHRE.g, ColorSet.T8__OCHRE.b ) --[[ @ 0]]
			f4_local1( f4_arg0.TextNumber ) --[[ @ 0]]
		end
	},
	TimeCompleted = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f8_arg0.TextBGImage:completeAnimation() --[[ @ 0]]
			f8_arg0.TextBGImage:setAlpha( 1 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.TextBGImage ) --[[ @ 0]]
			f8_arg0.TextNumber:completeAnimation() --[[ @ 0]]
			f8_arg0.TextNumber:setRGB( 0, 0, 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.TextNumber ) --[[ @ 0]]
		end
	},
	TimeCompletedTransition = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f9_local0 = function ( f10_arg0 )
				local f10_local0 = function ( f11_arg0 )
					local f11_local0 = function ( f12_arg0 )
						f12_arg0:beginAnimation( 640 ) --[[ @ 0]]
						f12_arg0:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f11_arg0:beginAnimation( 460 ) --[[ @ 0]]
					f11_arg0:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f10_arg0:beginAnimation( 130 ) --[[ @ 0]]
				f10_arg0:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.TextBGImage:beginAnimation( 490 ) --[[ @ 0]]
			f9_arg0.TextBGImage:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f9_arg0.TextBGImage:setAlpha( 1 ) --[[ @ 0]]
			f9_arg0.TextBGImage:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_glint_reveal" ) ) --[[ @ 0]]
			f9_arg0.TextBGImage:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
			f9_arg0.TextBGImage:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
			local f9_local1 = function ( f13_arg0 )
				f13_arg0:beginAnimation( 100 ) --[[ @ 0]]
				f13_arg0:setRGB( 0, 0, 0 ) --[[ @ 0]]
				f13_arg0:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.TextNumber:beginAnimation( 980 ) --[[ @ 0]]
			f9_arg0.TextNumber:setRGB( ColorSet.T8__OCHRE.r, ColorSet.T8__OCHRE.g, ColorSet.T8__OCHRE.b ) --[[ @ 0]]
			f9_arg0.TextNumber:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
			f9_arg0.TextNumber:registerEventHandler( "transition_complete_keyframe", f9_local1 ) --[[ @ 0]]
			local f9_local2 = function ( f14_arg0 )
				f9_arg0.TextColorSound:beginAnimation( 490 ) --[[ @ 0]]
				f9_arg0.TextColorSound:setPlaySoundDirect( true ) --[[ @ 0]]
				f9_arg0.TextColorSound:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.TextColorSound:registerEventHandler( "transition_complete_keyframe", function ( element, event )
					element:playSound( "uin_igr_rewardslider", f9_arg1 ) --[[ @ 0]]
					f9_arg0.clipFinished( element, event ) --[[ @ 0]]
				end ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.TextColorSound:completeAnimation() --[[ @ 0]]
			f9_arg0.TextColorSound:setPlaySoundDirect( false ) --[[ @ 0]]
			f9_local2( f9_arg0.TextColorSound ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
