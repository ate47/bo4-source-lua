-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "ui/uieditor/widgets/emptyfocusable" ) --[[ @ 0]]
require( "x64:48be685c4f3b19a0" ) --[[ @ 0]]

CoD.PC_GridHorizontalScrollbar = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PC_GridHorizontalScrollbar.__defaultWidth = 714 --[[ @ 0]]
CoD.PC_GridHorizontalScrollbar.__defaultHeight = 34 --[[ @ 0]]
CoD.PC_GridHorizontalScrollbar.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PC_GridHorizontalScrollbar ) --[[ @ 0]]
	self.id = "PC_GridHorizontalScrollbar" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local background = CoD.emptyFocusable.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( background ) --[[ @ 0]]
	self.background = background --[[ @ 0]]
	
	local slider = CoD.PC_Scrollbar.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 1, 1, -12, 0 ) --[[ @ 0]]
	self:addElement( slider ) --[[ @ 0]]
	self.slider = slider --[[ @ 0]]
	
	background.id = "background" --[[ @ 0]]
	slider.id = "slider" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local3 = self --[[ @ 0]]
	CoD.GridAndListUtility.SetupDraggableScrollbar( f1_arg0, f1_local3, f1_arg1, false ) --[[ @ 0]]
	SetElementCanBeNavigatedTo( f1_local3, false ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.PC_GridHorizontalScrollbar.__resetProperties = function ( f2_arg0 )
	f2_arg0.slider:completeAnimation() --[[ @ 0]]
	f2_arg0.slider:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.PC_GridHorizontalScrollbar.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f3_arg0.slider:completeAnimation() --[[ @ 0]]
			f3_arg0.slider:setAlpha( 0.6 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.slider ) --[[ @ 0]]
		end,
		ChildFocus = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f4_arg0.slider:completeAnimation() --[[ @ 0]]
			f4_arg0.slider:setAlpha( 1 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.slider ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f5_local0 = function ( f6_arg0 )
				f5_arg0.slider:beginAnimation( 80 ) --[[ @ 0]]
				f5_arg0.slider:setAlpha( 1 ) --[[ @ 0]]
				f5_arg0.slider:registerEventHandler( "interrupted_keyframe", f5_arg0.clipInterrupted ) --[[ @ 0]]
				f5_arg0.slider:registerEventHandler( "transition_complete_keyframe", f5_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f5_arg0.slider:completeAnimation() --[[ @ 0]]
			f5_arg0.slider:setAlpha( 0.6 ) --[[ @ 0]]
			f5_local0( f5_arg0.slider ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f7_local0 = function ( f8_arg0 )
				f7_arg0.slider:beginAnimation( 80 ) --[[ @ 0]]
				f7_arg0.slider:setAlpha( 0.6 ) --[[ @ 0]]
				f7_arg0.slider:registerEventHandler( "interrupted_keyframe", f7_arg0.clipInterrupted ) --[[ @ 0]]
				f7_arg0.slider:registerEventHandler( "transition_complete_keyframe", f7_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f7_arg0.slider:completeAnimation() --[[ @ 0]]
			f7_arg0.slider:setAlpha( 1 ) --[[ @ 0]]
			f7_local0( f7_arg0.slider ) --[[ @ 0]]
		end
	},
	AtLeft = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f9_arg0.slider:completeAnimation() --[[ @ 0]]
			f9_arg0.slider:setAlpha( 0.6 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.slider ) --[[ @ 0]]
		end,
		ChildFocus = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f10_arg0.slider:completeAnimation() --[[ @ 0]]
			f10_arg0.slider:setAlpha( 1 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.slider ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f11_local0 = function ( f12_arg0 )
				f11_arg0.slider:beginAnimation( 80 ) --[[ @ 0]]
				f11_arg0.slider:setAlpha( 1 ) --[[ @ 0]]
				f11_arg0.slider:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.slider:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.slider:completeAnimation() --[[ @ 0]]
			f11_arg0.slider:setAlpha( 0.6 ) --[[ @ 0]]
			f11_local0( f11_arg0.slider ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f13_local0 = function ( f14_arg0 )
				f13_arg0.slider:beginAnimation( 80 ) --[[ @ 0]]
				f13_arg0.slider:setAlpha( 0.6 ) --[[ @ 0]]
				f13_arg0.slider:registerEventHandler( "interrupted_keyframe", f13_arg0.clipInterrupted ) --[[ @ 0]]
				f13_arg0.slider:registerEventHandler( "transition_complete_keyframe", f13_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f13_arg0.slider:completeAnimation() --[[ @ 0]]
			f13_arg0.slider:setAlpha( 1 ) --[[ @ 0]]
			f13_local0( f13_arg0.slider ) --[[ @ 0]]
		end
	},
	AtRight = {
		DefaultClip = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f15_arg0.slider:completeAnimation() --[[ @ 0]]
			f15_arg0.slider:setAlpha( 0.6 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.slider ) --[[ @ 0]]
		end,
		ChildFocus = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f16_arg0.slider:completeAnimation() --[[ @ 0]]
			f16_arg0.slider:setAlpha( 1 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.slider ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f17_local0 = function ( f18_arg0 )
				f17_arg0.slider:beginAnimation( 80 ) --[[ @ 0]]
				f17_arg0.slider:setAlpha( 1 ) --[[ @ 0]]
				f17_arg0.slider:registerEventHandler( "interrupted_keyframe", f17_arg0.clipInterrupted ) --[[ @ 0]]
				f17_arg0.slider:registerEventHandler( "transition_complete_keyframe", f17_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f17_arg0.slider:completeAnimation() --[[ @ 0]]
			f17_arg0.slider:setAlpha( 0.6 ) --[[ @ 0]]
			f17_local0( f17_arg0.slider ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f19_local0 = function ( f20_arg0 )
				f19_arg0.slider:beginAnimation( 80 ) --[[ @ 0]]
				f19_arg0.slider:setAlpha( 0.6 ) --[[ @ 0]]
				f19_arg0.slider:registerEventHandler( "interrupted_keyframe", f19_arg0.clipInterrupted ) --[[ @ 0]]
				f19_arg0.slider:registerEventHandler( "transition_complete_keyframe", f19_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f19_arg0.slider:completeAnimation() --[[ @ 0]]
			f19_arg0.slider:setAlpha( 1 ) --[[ @ 0]]
			f19_local0( f19_arg0.slider ) --[[ @ 0]]
		end
	},
	AtLeftAndRight = {
		DefaultClip = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f21_arg0.slider:completeAnimation() --[[ @ 0]]
			f21_arg0.slider:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.slider ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.PC_GridHorizontalScrollbar.__onClose = function ( f22_arg0 )
	f22_arg0.background:close() --[[ @ 0]]
	f22_arg0.slider:close() --[[ @ 0]]
end
 --[[ @ 0]]
