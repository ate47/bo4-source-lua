-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
CoD.KillcamWidgetNumbers = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.KillcamWidgetNumbers.__defaultWidth = 240 --[[ @ 0]]
CoD.KillcamWidgetNumbers.__defaultHeight = 105 --[[ @ 0]]
CoD.KillcamWidgetNumbers.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.KillcamWidgetNumbers ) --[[ @ 0]]
	self.id = "KillcamWidgetNumbers" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Numbers = LUI.UIText.new( 0.5, 0.5, -120, 120, 0, 1, 0, 0 ) --[[ @ 0]]
	Numbers:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	Numbers:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_4323579690CF719" ) ) --[[ @ 0]]
	Numbers:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	Numbers:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Numbers:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( Numbers ) --[[ @ 0]]
	self.Numbers = Numbers --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.KillcamWidgetNumbers.__resetProperties = function ( f2_arg0 )
	f2_arg0.Numbers:completeAnimation() --[[ @ 0]]
	f2_arg0.Numbers:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	f2_arg0.Numbers:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.KillcamWidgetNumbers.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Start = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f4_local0 = function ( f5_arg0 )
				f4_arg0.Numbers:beginAnimation( 260 ) --[[ @ 0]]
				f4_arg0.Numbers:setAlpha( 1 ) --[[ @ 0]]
				f4_arg0.Numbers:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.Numbers:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.Numbers:completeAnimation() --[[ @ 0]]
			f4_arg0.Numbers:setAlpha( 0 ) --[[ @ 0]]
			f4_local0( f4_arg0.Numbers ) --[[ @ 0]]
		end
	},
	WinTime = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f6_arg0.Numbers:completeAnimation() --[[ @ 0]]
			f6_arg0.Numbers:setRGB( 0.05, 1, 0 ) --[[ @ 0]]
			f6_arg0.Numbers:setAlpha( 0.7 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.Numbers ) --[[ @ 0]]
		end
	},
	LossTime = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f7_arg0.Numbers:completeAnimation() --[[ @ 0]]
			f7_arg0.Numbers:setRGB( 1, 0.01, 0 ) --[[ @ 0]]
			f7_arg0.Numbers:setAlpha( 0.7 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.Numbers ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
