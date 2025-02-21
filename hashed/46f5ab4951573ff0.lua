-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.outofbounds_timerframedots = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.outofbounds_timerframedots.__defaultWidth = 600 --[[ @ 0]]
CoD.outofbounds_timerframedots.__defaultHeight = 128 --[[ @ 0]]
CoD.outofbounds_timerframedots.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.outofbounds_timerframedots ) --[[ @ 0]]
	self.id = "outofbounds_timerframedots" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local TimerFrameElement04 = LUI.UIImage.new( 0, 0, 0, 600, 0, 0, 0, 132 ) --[[ @ 0]]
	TimerFrameElement04:setAlpha( 0.4 ) --[[ @ 0]]
	TimerFrameElement04:setZoom( -20 ) --[[ @ 0]]
	TimerFrameElement04:setImage( RegisterImage( @"hash_176DF8BCE8362508" ) ) --[[ @ 0]]
	self:addElement( TimerFrameElement04 ) --[[ @ 0]]
	self.TimerFrameElement04 = TimerFrameElement04 --[[ @ 0]]
	
	local TimerFrameElementAdd02 = LUI.UIImage.new( 0, 0, 0, 600, 0, 0, 0, 132 ) --[[ @ 0]]
	TimerFrameElementAdd02:setScale( 1.08, 1.08 ) --[[ @ 0]]
	TimerFrameElementAdd02:setImage( RegisterImage( @"hash_176DF8BCE8362508" ) ) --[[ @ 0]]
	TimerFrameElementAdd02:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( TimerFrameElementAdd02 ) --[[ @ 0]]
	self.TimerFrameElementAdd02 = TimerFrameElementAdd02 --[[ @ 0]]
	
	local TimerFrameElement01 = LUI.UIImage.new( 0, 0, 0, 600, 0, 0, 0, 132 ) --[[ @ 0]]
	TimerFrameElement01:setAlpha( 0.8 ) --[[ @ 0]]
	TimerFrameElement01:setImage( RegisterImage( @"hash_176DF8BCE8362508" ) ) --[[ @ 0]]
	TimerFrameElement01:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( TimerFrameElement01 ) --[[ @ 0]]
	self.TimerFrameElement01 = TimerFrameElement01 --[[ @ 0]]
	
	local TimerFrameElementAdd01 = LUI.UIImage.new( 0, 0, 0, 600, 0, 0, 0, 132 ) --[[ @ 0]]
	TimerFrameElementAdd01:setAlpha( 0.1 ) --[[ @ 0]]
	TimerFrameElementAdd01:setImage( RegisterImage( @"hash_176DF8BCE8362508" ) ) --[[ @ 0]]
	TimerFrameElementAdd01:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	TimerFrameElementAdd01:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( TimerFrameElementAdd01 ) --[[ @ 0]]
	self.TimerFrameElementAdd01 = TimerFrameElementAdd01 --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.outofbounds_timerframedots.__resetProperties = function ( f2_arg0 )
	f2_arg0.TimerFrameElementAdd01:completeAnimation() --[[ @ 0]]
	f2_arg0.TimerFrameElement01:completeAnimation() --[[ @ 0]]
	f2_arg0.TimerFrameElement04:completeAnimation() --[[ @ 0]]
	f2_arg0.TimerFrameElementAdd02:completeAnimation() --[[ @ 0]]
	f2_arg0.TimerFrameElementAdd01:setAlpha( 0.1 ) --[[ @ 0]]
	f2_arg0.TimerFrameElementAdd01:setZoom( 0 ) --[[ @ 0]]
	f2_arg0.TimerFrameElement01:setAlpha( 0.8 ) --[[ @ 0]]
	f2_arg0.TimerFrameElement01:setZoom( 0 ) --[[ @ 0]]
	f2_arg0.TimerFrameElement04:setAlpha( 0.4 ) --[[ @ 0]]
	f2_arg0.TimerFrameElement04:setZoom( -20 ) --[[ @ 0]]
	f2_arg0.TimerFrameElementAdd02:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.TimerFrameElementAdd02:setZoom( 0 ) --[[ @ 0]]
	f2_arg0.TimerFrameElementAdd02:setScale( 1.08, 1.08 ) --[[ @ 0]]
	f2_arg0.TimerFrameElementAdd02:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.outofbounds_timerframedots.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f3_arg0.TimerFrameElement04:completeAnimation() --[[ @ 0]]
			f3_arg0.TimerFrameElement04:setAlpha( 0.4 ) --[[ @ 0]]
			f3_arg0.TimerFrameElement04:setZoom( -20 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.TimerFrameElement04 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					local f5_local0 = function ( f6_arg0 )
						f6_arg0:beginAnimation( 300, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
						f6_arg0:setZoom( 0 ) --[[ @ 0]]
						f6_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f5_arg0:beginAnimation( 299, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
					f5_arg0:setAlpha( 0 ) --[[ @ 0]]
					f5_arg0:setZoom( 10 ) --[[ @ 0]]
					f5_arg0:setScale( 1.1, 1.1 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.TimerFrameElementAdd02:beginAnimation( 400 ) --[[ @ 0]]
				f3_arg0.TimerFrameElementAdd02:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.TimerFrameElementAdd02:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.TimerFrameElementAdd02:completeAnimation() --[[ @ 0]]
			f3_arg0.TimerFrameElementAdd02:setAlpha( 1 ) --[[ @ 0]]
			f3_arg0.TimerFrameElementAdd02:setZoom( 0 ) --[[ @ 0]]
			f3_arg0.TimerFrameElementAdd02:setScale( 1, 1 ) --[[ @ 0]]
			f3_arg0.TimerFrameElementAdd02:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
			f3_local0( f3_arg0.TimerFrameElementAdd02 ) --[[ @ 0]]
			local f3_local1 = function ( f7_arg0 )
				local f7_local0 = function ( f8_arg0 )
					f8_arg0:beginAnimation( 300, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
					f8_arg0:setAlpha( 0.8 ) --[[ @ 0]]
					f8_arg0:setZoom( 0 ) --[[ @ 0]]
					f8_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.TimerFrameElement01:beginAnimation( 700, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f3_arg0.TimerFrameElement01:setAlpha( 1 ) --[[ @ 0]]
				f3_arg0.TimerFrameElement01:setZoom( 10 ) --[[ @ 0]]
				f3_arg0.TimerFrameElement01:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.TimerFrameElement01:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.TimerFrameElement01:completeAnimation() --[[ @ 0]]
			f3_arg0.TimerFrameElement01:setAlpha( 0.8 ) --[[ @ 0]]
			f3_arg0.TimerFrameElement01:setZoom( 0 ) --[[ @ 0]]
			f3_local1( f3_arg0.TimerFrameElement01 ) --[[ @ 0]]
			local f3_local2 = function ( f9_arg0 )
				local f9_local0 = function ( f10_arg0 )
					f10_arg0:beginAnimation( 300 ) --[[ @ 0]]
					f10_arg0:setAlpha( 0.1 ) --[[ @ 0]]
					f10_arg0:setZoom( 0 ) --[[ @ 0]]
					f10_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.TimerFrameElementAdd01:beginAnimation( 700, Enum[@"luitween"][@"luitween_bounce"] | Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f3_arg0.TimerFrameElementAdd01:setAlpha( 1 ) --[[ @ 0]]
				f3_arg0.TimerFrameElementAdd01:setZoom( 30 ) --[[ @ 0]]
				f3_arg0.TimerFrameElementAdd01:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.TimerFrameElementAdd01:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.TimerFrameElementAdd01:completeAnimation() --[[ @ 0]]
			f3_arg0.TimerFrameElementAdd01:setAlpha( 0.1 ) --[[ @ 0]]
			f3_arg0.TimerFrameElementAdd01:setZoom( 0 ) --[[ @ 0]]
			f3_local2( f3_arg0.TimerFrameElementAdd01 ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
