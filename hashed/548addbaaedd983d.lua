-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "x64:524cdc10be6c29c3" ) --[[ @ 0]]

CoD.PositionDraft_CountdownTimerFUI = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PositionDraft_CountdownTimerFUI.__defaultWidth = 800 --[[ @ 0]]
CoD.PositionDraft_CountdownTimerFUI.__defaultHeight = 320 --[[ @ 0]]
CoD.PositionDraft_CountdownTimerFUI.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PositionDraft_CountdownTimerFUI ) --[[ @ 0]]
	self.id = "PositionDraft_CountdownTimerFUI" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local microtext = LUI.UIImage.new( 0, 0, 669, 705, 0, 0, 150.5, 158.5 ) --[[ @ 0]]
	microtext:setRGB( ColorSet.T8__GREEN.r, ColorSet.T8__GREEN.g, ColorSet.T8__GREEN.b ) --[[ @ 0]]
	microtext:setAlpha( 0.2 ) --[[ @ 0]]
	microtext:setImage( RegisterImage( @"hash_116C3274D8031268" ) ) --[[ @ 0]]
	self:addElement( microtext ) --[[ @ 0]]
	self.microtext = microtext --[[ @ 0]]
	
	local microtext2 = LUI.UIImage.new( 0, 0, 127, 91, 0, 0, 150.5, 158.5 ) --[[ @ 0]]
	microtext2:setRGB( ColorSet.T8__GREEN.r, ColorSet.T8__GREEN.g, ColorSet.T8__GREEN.b ) --[[ @ 0]]
	microtext2:setAlpha( 0.2 ) --[[ @ 0]]
	microtext2:setImage( RegisterImage( @"hash_116C3274D8031268" ) ) --[[ @ 0]]
	self:addElement( microtext2 ) --[[ @ 0]]
	self.microtext2 = microtext2 --[[ @ 0]]
	
	local ArrowRight = CoD.GameEndScoreCenterArrow.new( f1_arg0, f1_arg1, 0, 0, 482.5, 642.5, 0, 0, 118, 191 ) --[[ @ 0]]
	self:addElement( ArrowRight ) --[[ @ 0]]
	self.ArrowRight = ArrowRight --[[ @ 0]]
	
	local ArrowRight2 = CoD.GameEndScoreCenterArrow.new( f1_arg0, f1_arg1, 0, 0, 153.5, 313.5, 0, 0, 118, 191 ) --[[ @ 0]]
	ArrowRight2:setZRot( 180 ) --[[ @ 0]]
	self:addElement( ArrowRight2 ) --[[ @ 0]]
	self.ArrowRight2 = ArrowRight2 --[[ @ 0]]
	
	local f1_local5 = nil --[[ @ 0]]
	self.BotArrow03 = LUI.UIElement.createFake() --[[ @ 0]]
	local f1_local6 = nil --[[ @ 0]]
	self.BotArrow02 = LUI.UIElement.createFake() --[[ @ 0]]
	local f1_local7 = nil --[[ @ 0]]
	self.BotArrow01 = LUI.UIElement.createFake() --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.PositionDraft_CountdownTimerFUI.__resetProperties = function ( f2_arg0 )
	f2_arg0.ArrowRight2:completeAnimation() --[[ @ 0]]
	f2_arg0.ArrowRight:completeAnimation() --[[ @ 0]]
	f2_arg0.microtext2:completeAnimation() --[[ @ 0]]
	f2_arg0.microtext:completeAnimation() --[[ @ 0]]
	f2_arg0.BotArrow01:completeAnimation() --[[ @ 0]]
	f2_arg0.BotArrow03:completeAnimation() --[[ @ 0]]
	f2_arg0.BotArrow02:completeAnimation() --[[ @ 0]]
	f2_arg0.ArrowRight2:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f2_arg0.ArrowRight2:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.ArrowRight:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f2_arg0.ArrowRight:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.microtext2:setAlpha( 0.2 ) --[[ @ 0]]
	f2_arg0.microtext:setAlpha( 0.2 ) --[[ @ 0]]
	f2_arg0.BotArrow01:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	f2_arg0.BotArrow01:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.BotArrow03:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	f2_arg0.BotArrow03:setAlpha( 0.2 ) --[[ @ 0]]
	f2_arg0.BotArrow02:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	f2_arg0.BotArrow02:setAlpha( 0.5 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.PositionDraft_CountdownTimerFUI.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					local f5_local0 = function ( f6_arg0 )
						f6_arg0:beginAnimation( 500 ) --[[ @ 0]]
						f6_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f5_arg0:beginAnimation( 300 ) --[[ @ 0]]
					f5_arg0:setAlpha( 0.5 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.microtext:beginAnimation( 200 ) --[[ @ 0]]
				f3_arg0.microtext:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.microtext:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.microtext:completeAnimation() --[[ @ 0]]
			f3_arg0.microtext:setAlpha( 0 ) --[[ @ 0]]
			f3_local0( f3_arg0.microtext ) --[[ @ 0]]
			local f3_local1 = function ( f7_arg0 )
				local f7_local0 = function ( f8_arg0 )
					local f8_local0 = function ( f9_arg0 )
						f9_arg0:beginAnimation( 500 ) --[[ @ 0]]
						f9_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f8_arg0:beginAnimation( 300 ) --[[ @ 0]]
					f8_arg0:setAlpha( 0.5 ) --[[ @ 0]]
					f8_arg0:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.microtext2:beginAnimation( 200 ) --[[ @ 0]]
				f3_arg0.microtext2:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.microtext2:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.microtext2:completeAnimation() --[[ @ 0]]
			f3_arg0.microtext2:setAlpha( 0 ) --[[ @ 0]]
			f3_local1( f3_arg0.microtext2 ) --[[ @ 0]]
			local f3_local2 = function ( f10_arg0 )
				local f10_local0 = function ( f11_arg0 )
					f11_arg0:beginAnimation( 700 ) --[[ @ 0]]
					f11_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.ArrowRight:beginAnimation( 300, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
				f3_arg0.ArrowRight:setAlpha( 1 ) --[[ @ 0]]
				f3_arg0.ArrowRight:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.ArrowRight:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.ArrowRight:completeAnimation() --[[ @ 0]]
			f3_arg0.ArrowRight:setRGB( ColorSet.T8__GREEN.r, ColorSet.T8__GREEN.g, ColorSet.T8__GREEN.b ) --[[ @ 0]]
			f3_arg0.ArrowRight:setAlpha( 0 ) --[[ @ 0]]
			f3_local2( f3_arg0.ArrowRight ) --[[ @ 0]]
			local f3_local3 = function ( f12_arg0 )
				local f12_local0 = function ( f13_arg0 )
					f13_arg0:beginAnimation( 700 ) --[[ @ 0]]
					f13_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.ArrowRight2:beginAnimation( 300, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
				f3_arg0.ArrowRight2:setAlpha( 1 ) --[[ @ 0]]
				f3_arg0.ArrowRight2:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.ArrowRight2:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.ArrowRight2:completeAnimation() --[[ @ 0]]
			f3_arg0.ArrowRight2:setRGB( ColorSet.T8__GREEN.r, ColorSet.T8__GREEN.g, ColorSet.T8__GREEN.b ) --[[ @ 0]]
			f3_arg0.ArrowRight2:setAlpha( 0 ) --[[ @ 0]]
			f3_local3( f3_arg0.ArrowRight2 ) --[[ @ 0]]
			local f3_local4 = function ( f14_arg0 )
				local f14_local0 = function ( f15_arg0 )
					f15_arg0:beginAnimation( 200, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
					f15_arg0:setAlpha( 0.4 ) --[[ @ 0]]
					f15_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.BotArrow03:beginAnimation( 100 ) --[[ @ 0]]
				f3_arg0.BotArrow03:setAlpha( 0.2 ) --[[ @ 0]]
				f3_arg0.BotArrow03:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.BotArrow03:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.BotArrow03:completeAnimation() --[[ @ 0]]
			f3_arg0.BotArrow03:setRGB( ColorSet.T8__GREEN.r, ColorSet.T8__GREEN.g, ColorSet.T8__GREEN.b ) --[[ @ 0]]
			f3_arg0.BotArrow03:setAlpha( 0 ) --[[ @ 0]]
			f3_local4( f3_arg0.BotArrow03 ) --[[ @ 0]]
			local f3_local5 = function ( f16_arg0 )
				local f16_local0 = function ( f17_arg0 )
					local f17_local0 = function ( f18_arg0 )
						local f18_local0 = function ( f19_arg0 )
							f19_arg0:beginAnimation( 199 ) --[[ @ 0]]
							f19_arg0:setAlpha( 0.6 ) --[[ @ 0]]
							f19_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f18_arg0:beginAnimation( 199, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
						f18_arg0:setAlpha( 0.7 ) --[[ @ 0]]
						f18_arg0:registerEventHandler( "transition_complete_keyframe", f18_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f17_arg0:beginAnimation( 200 ) --[[ @ 0]]
					f17_arg0:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.BotArrow02:beginAnimation( 100 ) --[[ @ 0]]
				f3_arg0.BotArrow02:setAlpha( 0.2 ) --[[ @ 0]]
				f3_arg0.BotArrow02:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.BotArrow02:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.BotArrow02:completeAnimation() --[[ @ 0]]
			f3_arg0.BotArrow02:setRGB( ColorSet.T8__GREEN.r, ColorSet.T8__GREEN.g, ColorSet.T8__GREEN.b ) --[[ @ 0]]
			f3_arg0.BotArrow02:setAlpha( 0 ) --[[ @ 0]]
			f3_local5( f3_arg0.BotArrow02 ) --[[ @ 0]]
			local f3_local6 = function ( f20_arg0 )
				local f20_local0 = function ( f21_arg0 )
					local f21_local0 = function ( f22_arg0 )
						f22_arg0:beginAnimation( 199, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
						f22_arg0:setAlpha( 1 ) --[[ @ 0]]
						f22_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f21_arg0:beginAnimation( 400 ) --[[ @ 0]]
					f21_arg0:registerEventHandler( "transition_complete_keyframe", f21_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.BotArrow01:beginAnimation( 100 ) --[[ @ 0]]
				f3_arg0.BotArrow01:setAlpha( 0.2 ) --[[ @ 0]]
				f3_arg0.BotArrow01:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.BotArrow01:registerEventHandler( "transition_complete_keyframe", f20_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.BotArrow01:completeAnimation() --[[ @ 0]]
			f3_arg0.BotArrow01:setRGB( ColorSet.T8__GREEN.r, ColorSet.T8__GREEN.g, ColorSet.T8__GREEN.b ) --[[ @ 0]]
			f3_arg0.BotArrow01:setAlpha( 0 ) --[[ @ 0]]
			f3_local6( f3_arg0.BotArrow01 ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.PositionDraft_CountdownTimerFUI.__onClose = function ( f23_arg0 )
	f23_arg0.ArrowRight:close() --[[ @ 0]]
	f23_arg0.ArrowRight2:close() --[[ @ 0]]
end
 --[[ @ 0]]
