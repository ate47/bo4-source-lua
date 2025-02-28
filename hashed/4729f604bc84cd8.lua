-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.vhud_ms_missile = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.vhud_ms_missile.__defaultWidth = 72 --[[ @ 0]]
CoD.vhud_ms_missile.__defaultHeight = 27 --[[ @ 0]]
CoD.vhud_ms_missile.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.vhud_ms_missile ) --[[ @ 0]]
	self.id = "vhud_ms_missile" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local agrIconMissileLine1 = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	agrIconMissileLine1:setRGB( 0.74, 0.94, 0.99 ) --[[ @ 0]]
	agrIconMissileLine1:setImage( RegisterImage( @"uie_t7_cp_hud_vehicle_ms_notificationiconmissileoutline" ) ) --[[ @ 0]]
	agrIconMissileLine1:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( agrIconMissileLine1 ) --[[ @ 0]]
	self.agrIconMissileLine1 = agrIconMissileLine1 --[[ @ 0]]
	
	local agrIconMissile1 = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	agrIconMissile1:setRGB( 0.74, 0.94, 0.99 ) --[[ @ 0]]
	agrIconMissile1:setAlpha( 0 ) --[[ @ 0]]
	agrIconMissile1:setImage( RegisterImage( @"uie_t7_cp_hud_vehicle_ms_notificationiconmissile1" ) ) --[[ @ 0]]
	agrIconMissile1:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( agrIconMissile1 ) --[[ @ 0]]
	self.agrIconMissile1 = agrIconMissile1 --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.vhud_ms_missile.__resetProperties = function ( f2_arg0 )
	f2_arg0.agrIconMissile1:completeAnimation() --[[ @ 0]]
	f2_arg0.agrIconMissile1:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.vhud_ms_missile.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Armed = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f4_local0 = function ( f5_arg0 )
				local f5_local0 = function ( f6_arg0 )
					local f6_local0 = function ( f7_arg0 )
						f7_arg0:beginAnimation( 50 ) --[[ @ 0]]
						f7_arg0:setAlpha( 1 ) --[[ @ 0]]
						f7_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f6_arg0:beginAnimation( 49 ) --[[ @ 0]]
					f6_arg0:setAlpha( 0.6 ) --[[ @ 0]]
					f6_arg0:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0.agrIconMissile1:beginAnimation( 200 ) --[[ @ 0]]
				f4_arg0.agrIconMissile1:setAlpha( 1 ) --[[ @ 0]]
				f4_arg0.agrIconMissile1:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.agrIconMissile1:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.agrIconMissile1:completeAnimation() --[[ @ 0]]
			f4_arg0.agrIconMissile1:setAlpha( 0 ) --[[ @ 0]]
			f4_local0( f4_arg0.agrIconMissile1 ) --[[ @ 0]]
		end
	},
	Armed = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f8_arg0.agrIconMissile1:completeAnimation() --[[ @ 0]]
			f8_arg0.agrIconMissile1:setAlpha( 1 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.agrIconMissile1 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
