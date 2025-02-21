-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.outofbounds_alert_icon = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.outofbounds_alert_icon.__defaultWidth = 64 --[[ @ 0]]
CoD.outofbounds_alert_icon.__defaultHeight = 58 --[[ @ 0]]
CoD.outofbounds_alert_icon.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.outofbounds_alert_icon ) --[[ @ 0]]
	self.id = "outofbounds_alert_icon" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local AlertIcon = LUI.UIImage.new( 0, 0, 0, 64, 0, 0, 0, 58 ) --[[ @ 0]]
	AlertIcon:setImage( RegisterImage( @"hash_49E47106ADFC5151" ) ) --[[ @ 0]]
	AlertIcon:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_F755127C95CF5B6" ) ) --[[ @ 0]]
	AlertIcon:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( AlertIcon ) --[[ @ 0]]
	self.AlertIcon = AlertIcon --[[ @ 0]]
	
	local AlertIconAdd = LUI.UIImage.new( 0, 0, 0, 64, 0, 0, 0, 58 ) --[[ @ 0]]
	AlertIconAdd:setImage( RegisterImage( @"hash_49E47106ADFC5151" ) ) --[[ @ 0]]
	AlertIconAdd:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	AlertIconAdd:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( AlertIconAdd ) --[[ @ 0]]
	self.AlertIconAdd = AlertIconAdd --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.outofbounds_alert_icon.__resetProperties = function ( f2_arg0 )
	f2_arg0.AlertIcon:completeAnimation() --[[ @ 0]]
	f2_arg0.AlertIconAdd:completeAnimation() --[[ @ 0]]
	f2_arg0.AlertIcon:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.AlertIcon:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_F755127C95CF5B6" ) ) --[[ @ 0]]
	f2_arg0.AlertIcon:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	f2_arg0.AlertIconAdd:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.AlertIconAdd:setZoom( 0 ) --[[ @ 0]]
	f2_arg0.AlertIconAdd:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	f2_arg0.AlertIconAdd:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.outofbounds_alert_icon.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f3_arg0.AlertIcon:completeAnimation() --[[ @ 0]]
			f3_arg0.AlertIcon:setAlpha( 1 ) --[[ @ 0]]
			f3_arg0.AlertIcon:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_F755127C95CF5B6" ) ) --[[ @ 0]]
			f3_arg0.AlertIcon:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.AlertIcon ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					f5_arg0:beginAnimation( 500, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
					f5_arg0:setZoom( 0 ) --[[ @ 0]]
					f5_arg0:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.AlertIconAdd:beginAnimation( 500, Enum[@"luitween"][@"luitween_bounce"] | Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f3_arg0.AlertIconAdd:setZoom( 20 ) --[[ @ 0]]
				f3_arg0.AlertIconAdd:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
				f3_arg0.AlertIconAdd:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.AlertIconAdd:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.AlertIconAdd:completeAnimation() --[[ @ 0]]
			f3_arg0.AlertIconAdd:setAlpha( 1 ) --[[ @ 0]]
			f3_arg0.AlertIconAdd:setZoom( 0 ) --[[ @ 0]]
			f3_arg0.AlertIconAdd:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
			f3_arg0.AlertIconAdd:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
			f3_local0( f3_arg0.AlertIconAdd ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
