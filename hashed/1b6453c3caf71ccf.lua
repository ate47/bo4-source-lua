-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
CoD.outofbounds_timerwidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.outofbounds_timerwidget.__defaultWidth = 200 --[[ @ 0]]
CoD.outofbounds_timerwidget.__defaultHeight = 72 --[[ @ 0]]
CoD.outofbounds_timerwidget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.outofbounds_timerwidget ) --[[ @ 0]]
	self.id = "outofbounds_timerwidget" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Timer0 = LUI.UIText.new( 0.5, 0.5, -100, 100, 0.5, 0.5, -36, 36 ) --[[ @ 0]]
	Timer0:setAlpha( 0.9 ) --[[ @ 0]]
	Timer0:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	Timer0:setRFTMaterial( LUI.UIImage.GetCachedMaterial( @"uie_aberration_no_blur" ) ) --[[ @ 0]]
	Timer0:setShaderVector( 0, 0.1, 0, 0, 0 ) --[[ @ 0]]
	Timer0:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	Timer0:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	Timer0:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	Timer0:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	Timer0:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Timer0:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	Timer0:subscribeToGlobalModel( f1_arg1, "HUDItems", "outOfBoundsEndTime", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			Timer0:setupEndTimer( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Timer0 ) --[[ @ 0]]
	self.Timer0 = Timer0 --[[ @ 0]]
	
	local TimerPulseSmall = LUI.UIText.new( 0.5, 0.5, -100, 100, 0.5, 0.5, -36, 36 ) --[[ @ 0]]
	TimerPulseSmall:setRGB( 0.65, 0, 0 ) --[[ @ 0]]
	TimerPulseSmall:setAlpha( 0 ) --[[ @ 0]]
	TimerPulseSmall:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	TimerPulseSmall:setRFTMaterial( LUI.UIImage.GetCachedMaterial( @"uie_aberration_no_blur" ) ) --[[ @ 0]]
	TimerPulseSmall:setShaderVector( 0, 0.1, 0, 0, 0 ) --[[ @ 0]]
	TimerPulseSmall:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	TimerPulseSmall:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	TimerPulseSmall:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	TimerPulseSmall:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	TimerPulseSmall:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	TimerPulseSmall:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	TimerPulseSmall:subscribeToGlobalModel( f1_arg1, "HUDItems", "outOfBoundsEndTime", function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			TimerPulseSmall:setupEndTimer( f3_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( TimerPulseSmall ) --[[ @ 0]]
	self.TimerPulseSmall = TimerPulseSmall --[[ @ 0]]
	
	local TimerPulseLarge01 = LUI.UIText.new( 0.5, 0.5, -100, 100, 0.5, 0.5, -36, 36 ) --[[ @ 0]]
	TimerPulseLarge01:setRGB( 0.65, 0, 0 ) --[[ @ 0]]
	TimerPulseLarge01:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	TimerPulseLarge01:setRFTMaterial( LUI.UIImage.GetCachedMaterial( @"uie_aberration_no_blur" ) ) --[[ @ 0]]
	TimerPulseLarge01:setShaderVector( 0, 0.1, 0, 0, 0 ) --[[ @ 0]]
	TimerPulseLarge01:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	TimerPulseLarge01:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	TimerPulseLarge01:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	TimerPulseLarge01:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	TimerPulseLarge01:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	TimerPulseLarge01:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	TimerPulseLarge01:subscribeToGlobalModel( f1_arg1, "HUDItems", "outOfBoundsEndTime", function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			TimerPulseLarge01:setupEndTimer( f4_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( TimerPulseLarge01 ) --[[ @ 0]]
	self.TimerPulseLarge01 = TimerPulseLarge01 --[[ @ 0]]
	
	local TimerPulseLarge02 = LUI.UIText.new( 0.5, 0.5, -100, 100, 0.5, 0.5, -36, 36 ) --[[ @ 0]]
	TimerPulseLarge02:setRGB( 0.65, 0, 0 ) --[[ @ 0]]
	TimerPulseLarge02:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	TimerPulseLarge02:setRFTMaterial( LUI.UIImage.GetCachedMaterial( @"uie_aberration_no_blur" ) ) --[[ @ 0]]
	TimerPulseLarge02:setShaderVector( 0, 0.1, 0, 0, 0 ) --[[ @ 0]]
	TimerPulseLarge02:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	TimerPulseLarge02:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	TimerPulseLarge02:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	TimerPulseLarge02:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	TimerPulseLarge02:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	TimerPulseLarge02:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	TimerPulseLarge02:subscribeToGlobalModel( f1_arg1, "HUDItems", "outOfBoundsEndTime", function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			TimerPulseLarge02:setupEndTimer( f5_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( TimerPulseLarge02 ) --[[ @ 0]]
	self.TimerPulseLarge02 = TimerPulseLarge02 --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.outofbounds_timerwidget.__resetProperties = function ( f6_arg0 )
	f6_arg0.TimerPulseSmall:completeAnimation() --[[ @ 0]]
	f6_arg0.Timer0:completeAnimation() --[[ @ 0]]
	f6_arg0.TimerPulseLarge02:completeAnimation() --[[ @ 0]]
	f6_arg0.TimerPulseLarge01:completeAnimation() --[[ @ 0]]
	f6_arg0.TimerPulseSmall:setRGB( 0.65, 0, 0 ) --[[ @ 0]]
	f6_arg0.TimerPulseSmall:setAlpha( 0 ) --[[ @ 0]]
	f6_arg0.TimerPulseSmall:setZoom( 0 ) --[[ @ 0]]
	f6_arg0.TimerPulseSmall:setScale( 1, 1 ) --[[ @ 0]]
	f6_arg0.Timer0:setAlpha( 0.9 ) --[[ @ 0]]
	f6_arg0.TimerPulseLarge02:setAlpha( 1 ) --[[ @ 0]]
	f6_arg0.TimerPulseLarge02:setScale( 1, 1 ) --[[ @ 0]]
	f6_arg0.TimerPulseLarge01:setAlpha( 1 ) --[[ @ 0]]
	f6_arg0.TimerPulseLarge01:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.outofbounds_timerwidget.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f7_arg0.Timer0:completeAnimation() --[[ @ 0]]
			f7_arg0.Timer0:setAlpha( 1 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.Timer0 ) --[[ @ 0]]
			local f7_local0 = function ( f8_arg0 )
				local f8_local0 = function ( f9_arg0 )
					f9_arg0:beginAnimation( 300 ) --[[ @ 0]]
					f9_arg0:setAlpha( 0 ) --[[ @ 0]]
					f9_arg0:setZoom( 0 ) --[[ @ 0]]
					f9_arg0:registerEventHandler( "transition_complete_keyframe", f7_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f7_arg0.TimerPulseSmall:beginAnimation( 700, Enum[@"luitween"][@"luitween_bounce"] | Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f7_arg0.TimerPulseSmall:setZoom( 100 ) --[[ @ 0]]
				f7_arg0.TimerPulseSmall:registerEventHandler( "interrupted_keyframe", f7_arg0.clipInterrupted ) --[[ @ 0]]
				f7_arg0.TimerPulseSmall:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f7_arg0.TimerPulseSmall:completeAnimation() --[[ @ 0]]
			f7_arg0.TimerPulseSmall:setRGB( 0.65, 0, 0 ) --[[ @ 0]]
			f7_arg0.TimerPulseSmall:setAlpha( 1 ) --[[ @ 0]]
			f7_arg0.TimerPulseSmall:setZoom( 0 ) --[[ @ 0]]
			f7_arg0.TimerPulseSmall:setScale( 1, 1 ) --[[ @ 0]]
			f7_local0( f7_arg0.TimerPulseSmall ) --[[ @ 0]]
			local f7_local1 = function ( f10_arg0 )
				local f10_local0 = function ( f11_arg0 )
					local f11_local0 = function ( f12_arg0 )
						local f12_local0 = function ( f13_arg0 )
							local f13_local0 = function ( f14_arg0 )
								f14_arg0:beginAnimation( 100 ) --[[ @ 0]]
								f14_arg0:setScale( 1, 1 ) --[[ @ 0]]
								f14_arg0:registerEventHandler( "transition_complete_keyframe", f7_arg0.clipFinished ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f13_arg0:beginAnimation( 99, Enum[@"luitween"][@"luitween_ease_in"] ) --[[ @ 0]]
							f13_arg0:setAlpha( 0 ) --[[ @ 0]]
							f13_arg0:setScale( 1.4, 1.4 ) --[[ @ 0]]
							f13_arg0:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f12_arg0:beginAnimation( 300 ) --[[ @ 0]]
						f12_arg0:setAlpha( 0.25 ) --[[ @ 0]]
						f12_arg0:setScale( 1.8, 1.8 ) --[[ @ 0]]
						f12_arg0:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f11_arg0:beginAnimation( 99 ) --[[ @ 0]]
					f11_arg0:setScale( 1.2, 1.2 ) --[[ @ 0]]
					f11_arg0:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f7_arg0.TimerPulseLarge01:beginAnimation( 400 ) --[[ @ 0]]
				f7_arg0.TimerPulseLarge01:registerEventHandler( "interrupted_keyframe", f7_arg0.clipInterrupted ) --[[ @ 0]]
				f7_arg0.TimerPulseLarge01:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f7_arg0.TimerPulseLarge01:completeAnimation() --[[ @ 0]]
			f7_arg0.TimerPulseLarge01:setAlpha( 1 ) --[[ @ 0]]
			f7_arg0.TimerPulseLarge01:setScale( 1, 1 ) --[[ @ 0]]
			f7_local1( f7_arg0.TimerPulseLarge01 ) --[[ @ 0]]
			local f7_local2 = function ( f15_arg0 )
				local f15_local0 = function ( f16_arg0 )
					local f16_local0 = function ( f17_arg0 )
						local f17_local0 = function ( f18_arg0 )
							local f18_local0 = function ( f19_arg0 )
								f19_arg0:beginAnimation( 100 ) --[[ @ 0]]
								f19_arg0:setScale( 1, 1 ) --[[ @ 0]]
								f19_arg0:registerEventHandler( "transition_complete_keyframe", f7_arg0.clipFinished ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f18_arg0:beginAnimation( 99 ) --[[ @ 0]]
							f18_arg0:setAlpha( 0 ) --[[ @ 0]]
							f18_arg0:setScale( 1.4, 1.4 ) --[[ @ 0]]
							f18_arg0:registerEventHandler( "transition_complete_keyframe", f18_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f17_arg0:beginAnimation( 300 ) --[[ @ 0]]
						f17_arg0:setAlpha( 0.25 ) --[[ @ 0]]
						f17_arg0:setScale( 1.8, 1.8 ) --[[ @ 0]]
						f17_arg0:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f16_arg0:beginAnimation( 99 ) --[[ @ 0]]
					f16_arg0:setScale( 1.2, 1.2 ) --[[ @ 0]]
					f16_arg0:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f7_arg0.TimerPulseLarge02:beginAnimation( 400 ) --[[ @ 0]]
				f7_arg0.TimerPulseLarge02:registerEventHandler( "interrupted_keyframe", f7_arg0.clipInterrupted ) --[[ @ 0]]
				f7_arg0.TimerPulseLarge02:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f7_arg0.TimerPulseLarge02:completeAnimation() --[[ @ 0]]
			f7_arg0.TimerPulseLarge02:setAlpha( 1 ) --[[ @ 0]]
			f7_arg0.TimerPulseLarge02:setScale( 1, 1 ) --[[ @ 0]]
			f7_local2( f7_arg0.TimerPulseLarge02 ) --[[ @ 0]]
			f7_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.outofbounds_timerwidget.__onClose = function ( f20_arg0 )
	f20_arg0.Timer0:close() --[[ @ 0]]
	f20_arg0.TimerPulseSmall:close() --[[ @ 0]]
	f20_arg0.TimerPulseLarge01:close() --[[ @ 0]]
	f20_arg0.TimerPulseLarge02:close() --[[ @ 0]]
end
 --[[ @ 0]]
