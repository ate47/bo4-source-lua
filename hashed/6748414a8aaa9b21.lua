-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.HealthBarWidgetPulse = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.HealthBarWidgetPulse.__defaultWidth = 156 --[[ @ 0]]
CoD.HealthBarWidgetPulse.__defaultHeight = 20 --[[ @ 0]]
CoD.HealthBarWidgetPulse.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.HealthBarWidgetPulse ) --[[ @ 0]]
	self.id = "HealthBarWidgetPulse" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local PulseBar = LUI.UIImage.new( 0.32, 0.32, -49, 107, 0.63, 0.63, -101.5, 97.5 ) --[[ @ 0]]
	PulseBar:setRGB( 1, 0, 0 ) --[[ @ 0]]
	PulseBar:setImage( RegisterImage( @"hash_2D5B703C3B0F386D" ) ) --[[ @ 0]]
	PulseBar:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_17EA4827662D4CD4" ) ) --[[ @ 0]]
	PulseBar:setShaderVector( 0, 4, 1, 0, 0 ) --[[ @ 0]]
	PulseBar:setShaderVector( 1, 0, 1, 0, 1 ) --[[ @ 0]]
	self:addElement( PulseBar ) --[[ @ 0]]
	self.PulseBar = PulseBar --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.HealthBarWidgetPulse.__resetProperties = function ( f2_arg0 )
	f2_arg0.PulseBar:completeAnimation() --[[ @ 0]]
	f2_arg0.PulseBar:setLeftRight( 0.32, 0.32, -49, 107 ) --[[ @ 0]]
	f2_arg0.PulseBar:setTopBottom( 0.63, 0.63, -101.5, 97.5 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.HealthBarWidgetPulse.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					f5_arg0:beginAnimation( 299 ) --[[ @ 0]]
					f5_arg0:setTopBottom( 0.63, 0.63, -12.5, 7.5 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.PulseBar:beginAnimation( 50 ) --[[ @ 0]]
				f3_arg0.PulseBar:setTopBottom( 0.63, 0.63, -502, 498 ) --[[ @ 0]]
				f3_arg0.PulseBar:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.PulseBar:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.PulseBar:completeAnimation() --[[ @ 0]]
			f3_arg0.PulseBar:setLeftRight( 0.32, 0.32, -49, 107 ) --[[ @ 0]]
			f3_arg0.PulseBar:setTopBottom( 0.63, 0.63, -12.5, 7.5 ) --[[ @ 0]]
			f3_local0( f3_arg0.PulseBar ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
