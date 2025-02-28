-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.ui_icon_callingcards_stpatricks_speedlines = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ui_icon_callingcards_stpatricks_speedlines.__defaultWidth = 1230 --[[ @ 0]]
CoD.ui_icon_callingcards_stpatricks_speedlines.__defaultHeight = 728 --[[ @ 0]]
CoD.ui_icon_callingcards_stpatricks_speedlines.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ui_icon_callingcards_stpatricks_speedlines ) --[[ @ 0]]
	self.id = "ui_icon_callingcards_stpatricks_speedlines" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local speedlines = LUI.UIImage.new( 0, 0, 0, 1230, 0, 0, 0, 728 ) --[[ @ 0]]
	speedlines:setImage( RegisterImage( @"uie_ui_menu_callingcards_stpatricks_f1_speedlines1" ) ) --[[ @ 0]]
	self:addElement( speedlines ) --[[ @ 0]]
	self.speedlines = speedlines --[[ @ 0]]
	
	local speedlines2 = LUI.UIImage.new( 0, 0, 0, 1230, 0, 0, 0, 728 ) --[[ @ 0]]
	speedlines2:setImage( RegisterImage( @"uie_ui_menu_callingcards_stpatricks_f1_speedlines2" ) ) --[[ @ 0]]
	self:addElement( speedlines2 ) --[[ @ 0]]
	self.speedlines2 = speedlines2 --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ui_icon_callingcards_stpatricks_speedlines.__resetProperties = function ( f2_arg0 )
	f2_arg0.speedlines2:completeAnimation() --[[ @ 0]]
	f2_arg0.speedlines:completeAnimation() --[[ @ 0]]
	f2_arg0.speedlines2:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.speedlines2:setScale( 1, 1 ) --[[ @ 0]]
	f2_arg0.speedlines:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.speedlines:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ui_icon_callingcards_stpatricks_speedlines.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					f5_arg0:beginAnimation( 500, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
					f5_arg0:setAlpha( 0 ) --[[ @ 0]]
					f5_arg0:setScale( 1, 1 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.speedlines:beginAnimation( 500, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f3_arg0.speedlines:setAlpha( 1 ) --[[ @ 0]]
				f3_arg0.speedlines:setScale( 0.9, 0.9 ) --[[ @ 0]]
				f3_arg0.speedlines:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.speedlines:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.speedlines:completeAnimation() --[[ @ 0]]
			f3_arg0.speedlines:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.speedlines:setScale( 1, 1 ) --[[ @ 0]]
			f3_local0( f3_arg0.speedlines ) --[[ @ 0]]
			local f3_local1 = function ( f6_arg0 )
				local f6_local0 = function ( f7_arg0 )
					f7_arg0:beginAnimation( 500, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
					f7_arg0:setAlpha( 1 ) --[[ @ 0]]
					f7_arg0:setScale( 0.9, 0.9 ) --[[ @ 0]]
					f7_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.speedlines2:beginAnimation( 500, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f3_arg0.speedlines2:setAlpha( 0 ) --[[ @ 0]]
				f3_arg0.speedlines2:setScale( 1, 1 ) --[[ @ 0]]
				f3_arg0.speedlines2:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.speedlines2:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.speedlines2:completeAnimation() --[[ @ 0]]
			f3_arg0.speedlines2:setAlpha( 1 ) --[[ @ 0]]
			f3_arg0.speedlines2:setScale( 0.9, 0.9 ) --[[ @ 0]]
			f3_local1( f3_arg0.speedlines2 ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
