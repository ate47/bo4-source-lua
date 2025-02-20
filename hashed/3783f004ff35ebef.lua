-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
CoD.AmmoWidget_PowerWeaponDrain = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AmmoWidget_PowerWeaponDrain.__defaultWidth = 165 --[[ @ 0]]
CoD.AmmoWidget_PowerWeaponDrain.__defaultHeight = 61 --[[ @ 0]]
CoD.AmmoWidget_PowerWeaponDrain.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AmmoWidget_PowerWeaponDrain ) --[[ @ 0]]
	self.id = "AmmoWidget_PowerWeaponDrain" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local ReadyGlow1b = LUI.UIImage.new( 0.16, 0.92, 1, 1, 0.46, 1.03, 0, 0 ) --[[ @ 0]]
	ReadyGlow1b:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
	ReadyGlow1b:setAlpha( 0 ) --[[ @ 0]]
	ReadyGlow1b:setImage( RegisterImage( @"uie_ui_hud_core_player_widget_led_health" ) ) --[[ @ 0]]
	ReadyGlow1b:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta_normal" ) ) --[[ @ 0]]
	ReadyGlow1b:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	ReadyGlow1b:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	ReadyGlow1b:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	ReadyGlow1b:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	ReadyGlow1b:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( ReadyGlow1b ) --[[ @ 0]]
	self.ReadyGlow1b = ReadyGlow1b --[[ @ 0]]
	
	local Empty = LUI.UIImage.new( 0, 0, 20, 164, 0, 0, 29, 61 ) --[[ @ 0]]
	Empty:setImage( RegisterImage( @"hash_3168181C6D890BDD" ) ) --[[ @ 0]]
	Empty:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Empty ) --[[ @ 0]]
	self.Empty = Empty --[[ @ 0]]
	
	local Fill2 = LUI.UIImage.new( 0.21, 0.21, -14.5, 129.5, 0.56, 0.56, -5, 27 ) --[[ @ 0]]
	Fill2:setAlpha( 0.4 ) --[[ @ 0]]
	Fill2:setImage( RegisterImage( @"hash_54DEA7FE15F6129D" ) ) --[[ @ 0]]
	Fill2:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta" ) ) --[[ @ 0]]
	Fill2:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Fill2:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	Fill2:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	Fill2:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	Fill2:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Fill2 ) --[[ @ 0]]
	self.Fill2 = Fill2 --[[ @ 0]]
	
	local Fill = LUI.UIImage.new( 0.21, 0.21, -16.5, 127.5, 0.56, 0.56, -7, 25 ) --[[ @ 0]]
	Fill:setImage( RegisterImage( @"hash_54DEA7FE15F6129D" ) ) --[[ @ 0]]
	Fill:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta" ) ) --[[ @ 0]]
	Fill:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Fill:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	Fill:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	Fill:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	Fill:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Fill ) --[[ @ 0]]
	self.Fill = Fill --[[ @ 0]]
	
	local Fill3 = LUI.UIImage.new( 0.21, 0.21, -16.5, 127.5, 0.56, 0.56, -7, 25 ) --[[ @ 0]]
	Fill3:setAlpha( 0.5 ) --[[ @ 0]]
	Fill3:setImage( RegisterImage( @"hash_54DEA7FE15F6129D" ) ) --[[ @ 0]]
	Fill3:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta" ) ) --[[ @ 0]]
	Fill3:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Fill3:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	Fill3:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	Fill3:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	Fill3:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Fill3 ) --[[ @ 0]]
	self.Fill3 = Fill3 --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local6 = self --[[ @ 0]]
	CoD.HUDUtility.InitWeaponPowerDrainBar( self, ReadyGlow1b, f1_arg1, 200, false ) --[[ @ 0]]
	CoD.HUDUtility.InitWeaponPowerDrainBar( self, Fill2, f1_arg1, 200, true ) --[[ @ 0]]
	CoD.HUDUtility.InitWeaponPowerDrainBar( self, Fill, f1_arg1, 200, true ) --[[ @ 0]]
	CoD.HUDUtility.InitWeaponPowerDrainBar( self, Fill3, f1_arg1, 200, true ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.AmmoWidget_PowerWeaponDrain.__resetProperties = function ( f3_arg0 )
	f3_arg0.ReadyGlow1b:completeAnimation() --[[ @ 0]]
	f3_arg0.Fill:completeAnimation() --[[ @ 0]]
	f3_arg0.Empty:completeAnimation() --[[ @ 0]]
	f3_arg0.Fill2:completeAnimation() --[[ @ 0]]
	f3_arg0.Fill3:completeAnimation() --[[ @ 0]]
	f3_arg0.ReadyGlow1b:setAlpha( 0 ) --[[ @ 0]]
	f3_arg0.Fill:setAlpha( 1 ) --[[ @ 0]]
	f3_arg0.Empty:setAlpha( 1 ) --[[ @ 0]]
	f3_arg0.Fill2:setAlpha( 0.4 ) --[[ @ 0]]
	f3_arg0.Fill3:setAlpha( 0.5 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.AmmoWidget_PowerWeaponDrain.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f4_arg0.ReadyGlow1b:completeAnimation() --[[ @ 0]]
			f4_arg0.ReadyGlow1b:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.ReadyGlow1b ) --[[ @ 0]]
			f4_arg0.Empty:completeAnimation() --[[ @ 0]]
			f4_arg0.Empty:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.Empty ) --[[ @ 0]]
			f4_arg0.Fill2:completeAnimation() --[[ @ 0]]
			f4_arg0.Fill2:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.Fill2 ) --[[ @ 0]]
			f4_arg0.Fill:completeAnimation() --[[ @ 0]]
			f4_arg0.Fill:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.Fill ) --[[ @ 0]]
			f4_arg0.Fill3:completeAnimation() --[[ @ 0]]
			f4_arg0.Fill3:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.Fill3 ) --[[ @ 0]]
		end,
		Visible = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f5_arg0.ReadyGlow1b:completeAnimation() --[[ @ 0]]
			f5_arg0.ReadyGlow1b:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.ReadyGlow1b ) --[[ @ 0]]
			local f5_local0 = function ( f6_arg0 )
				f5_arg0.Empty:beginAnimation( 200 ) --[[ @ 0]]
				f5_arg0.Empty:setAlpha( 1 ) --[[ @ 0]]
				f5_arg0.Empty:registerEventHandler( "interrupted_keyframe", f5_arg0.clipInterrupted ) --[[ @ 0]]
				f5_arg0.Empty:registerEventHandler( "transition_complete_keyframe", f5_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f5_arg0.Empty:completeAnimation() --[[ @ 0]]
			f5_arg0.Empty:setAlpha( 0 ) --[[ @ 0]]
			f5_local0( f5_arg0.Empty ) --[[ @ 0]]
			local f5_local1 = function ( f7_arg0 )
				f5_arg0.Fill2:beginAnimation( 200 ) --[[ @ 0]]
				f5_arg0.Fill2:setAlpha( 0.4 ) --[[ @ 0]]
				f5_arg0.Fill2:registerEventHandler( "interrupted_keyframe", f5_arg0.clipInterrupted ) --[[ @ 0]]
				f5_arg0.Fill2:registerEventHandler( "transition_complete_keyframe", f5_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f5_arg0.Fill2:completeAnimation() --[[ @ 0]]
			f5_arg0.Fill2:setAlpha( 0 ) --[[ @ 0]]
			f5_local1( f5_arg0.Fill2 ) --[[ @ 0]]
			local f5_local2 = function ( f8_arg0 )
				f5_arg0.Fill:beginAnimation( 200 ) --[[ @ 0]]
				f5_arg0.Fill:setAlpha( 1 ) --[[ @ 0]]
				f5_arg0.Fill:registerEventHandler( "interrupted_keyframe", f5_arg0.clipInterrupted ) --[[ @ 0]]
				f5_arg0.Fill:registerEventHandler( "transition_complete_keyframe", f5_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f5_arg0.Fill:completeAnimation() --[[ @ 0]]
			f5_arg0.Fill:setAlpha( 0 ) --[[ @ 0]]
			f5_local2( f5_arg0.Fill ) --[[ @ 0]]
			local f5_local3 = function ( f9_arg0 )
				f5_arg0.Fill3:beginAnimation( 200 ) --[[ @ 0]]
				f5_arg0.Fill3:setAlpha( 0.5 ) --[[ @ 0]]
				f5_arg0.Fill3:registerEventHandler( "interrupted_keyframe", f5_arg0.clipInterrupted ) --[[ @ 0]]
				f5_arg0.Fill3:registerEventHandler( "transition_complete_keyframe", f5_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f5_arg0.Fill3:completeAnimation() --[[ @ 0]]
			f5_arg0.Fill3:setAlpha( 0 ) --[[ @ 0]]
			f5_local3( f5_arg0.Fill3 ) --[[ @ 0]]
		end
	},
	Visible = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f10_arg0.ReadyGlow1b:completeAnimation() --[[ @ 0]]
			f10_arg0.ReadyGlow1b:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.ReadyGlow1b ) --[[ @ 0]]
		end,
		DefaultState = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f11_arg0.ReadyGlow1b:completeAnimation() --[[ @ 0]]
			f11_arg0.ReadyGlow1b:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.ReadyGlow1b ) --[[ @ 0]]
			local f11_local0 = function ( f12_arg0 )
				f11_arg0.Empty:beginAnimation( 200 ) --[[ @ 0]]
				f11_arg0.Empty:setAlpha( 0 ) --[[ @ 0]]
				f11_arg0.Empty:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.Empty:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.Empty:completeAnimation() --[[ @ 0]]
			f11_arg0.Empty:setAlpha( 1 ) --[[ @ 0]]
			f11_local0( f11_arg0.Empty ) --[[ @ 0]]
			local f11_local1 = function ( f13_arg0 )
				f11_arg0.Fill2:beginAnimation( 200 ) --[[ @ 0]]
				f11_arg0.Fill2:setAlpha( 0 ) --[[ @ 0]]
				f11_arg0.Fill2:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.Fill2:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.Fill2:completeAnimation() --[[ @ 0]]
			f11_arg0.Fill2:setAlpha( 0.4 ) --[[ @ 0]]
			f11_local1( f11_arg0.Fill2 ) --[[ @ 0]]
			local f11_local2 = function ( f14_arg0 )
				f11_arg0.Fill:beginAnimation( 200 ) --[[ @ 0]]
				f11_arg0.Fill:setAlpha( 0 ) --[[ @ 0]]
				f11_arg0.Fill:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.Fill:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.Fill:completeAnimation() --[[ @ 0]]
			f11_arg0.Fill:setAlpha( 1 ) --[[ @ 0]]
			f11_local2( f11_arg0.Fill ) --[[ @ 0]]
			local f11_local3 = function ( f15_arg0 )
				f11_arg0.Fill3:beginAnimation( 200 ) --[[ @ 0]]
				f11_arg0.Fill3:setAlpha( 0 ) --[[ @ 0]]
				f11_arg0.Fill3:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.Fill3:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.Fill3:completeAnimation() --[[ @ 0]]
			f11_arg0.Fill3:setAlpha( 0.5 ) --[[ @ 0]]
			f11_local3( f11_arg0.Fill3 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.AmmoWidget_PowerWeaponDrain.__onClose = function ( f16_arg0 )
	f16_arg0.ReadyGlow1b:close() --[[ @ 0]]
	f16_arg0.Fill2:close() --[[ @ 0]]
	f16_arg0.Fill:close() --[[ @ 0]]
	f16_arg0.Fill3:close() --[[ @ 0]]
end
 --[[ @ 0]]
