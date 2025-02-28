-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.CallingCards_Asset_TruckWheelAnimation = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CallingCards_Asset_TruckWheelAnimation.__defaultWidth = 168 --[[ @ 0]]
CoD.CallingCards_Asset_TruckWheelAnimation.__defaultHeight = 168 --[[ @ 0]]
CoD.CallingCards_Asset_TruckWheelAnimation.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CallingCards_Asset_TruckWheelAnimation ) --[[ @ 0]]
	self.id = "CallingCards_Asset_TruckWheelAnimation" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local wheel = LUI.UIImage.new( 0, 0, 0, 168, 0, 0, 0, 168 ) --[[ @ 0]]
	wheel:setImage( RegisterImage( @"uie_code_wheel" ) ) --[[ @ 0]]
	self:addElement( wheel ) --[[ @ 0]]
	self.wheel = wheel --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CallingCards_Asset_TruckWheelAnimation.__resetProperties = function ( f2_arg0 )
	f2_arg0.wheel:completeAnimation() --[[ @ 0]]
	f2_arg0.wheel:setZRot( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CallingCards_Asset_TruckWheelAnimation.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					local f5_local0 = function ( f6_arg0 )
						f6_arg0:beginAnimation( 50 ) --[[ @ 0]]
						f6_arg0:setZRot( -360 ) --[[ @ 0]]
						f6_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f5_arg0:beginAnimation( 50 ) --[[ @ 0]]
					f5_arg0:setZRot( -180 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.wheel:beginAnimation( 50 ) --[[ @ 0]]
				f3_arg0.wheel:setZRot( -90 ) --[[ @ 0]]
				f3_arg0.wheel:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.wheel:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.wheel:completeAnimation() --[[ @ 0]]
			f3_arg0.wheel:setZRot( 0 ) --[[ @ 0]]
			f3_local0( f3_arg0.wheel ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
