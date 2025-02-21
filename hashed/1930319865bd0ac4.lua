-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
CoD.MPScr_PlusPoints = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.MPScr_PlusPoints.__defaultWidth = 75 --[[ @ 0]]
CoD.MPScr_PlusPoints.__defaultHeight = 27 --[[ @ 0]]
CoD.MPScr_PlusPoints.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.MPScr_PlusPoints ) --[[ @ 0]]
	self.id = "MPScr_PlusPoints" --[[ @ 0]]
	self.soundSet = "HUD" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Score = LUI.UIText.new( 0, 0, 0, 75, 0, 0, 0, 27 ) --[[ @ 0]]
	Score:setAlpha( 0 ) --[[ @ 0]]
	Score:setText( "" ) --[[ @ 0]]
	Score:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	Score:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( Score ) --[[ @ 0]]
	self.Score = Score --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.MPScr_PlusPoints.__resetProperties = function ( f2_arg0 )
	f2_arg0.Score:completeAnimation() --[[ @ 0]]
	f2_arg0.Score:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f2_arg0.Score:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.MPScr_PlusPoints.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		GoldenScore = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f4_local0 = function ( f5_arg0 )
				local f5_local0 = function ( f6_arg0 )
					f6_arg0:beginAnimation( 250 ) --[[ @ 0]]
					f6_arg0:setAlpha( 0 ) --[[ @ 0]]
					f6_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0.Score:beginAnimation( 500 ) --[[ @ 0]]
				f4_arg0.Score:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.Score:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.Score:completeAnimation() --[[ @ 0]]
			f4_arg0.Score:setRGB( ColorSet.PlayerYellow.r, ColorSet.PlayerYellow.g, ColorSet.PlayerYellow.b ) --[[ @ 0]]
			f4_arg0.Score:setAlpha( 1 ) --[[ @ 0]]
			f4_local0( f4_arg0.Score ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
