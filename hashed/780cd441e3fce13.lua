-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.vhud_ModDNITime = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.vhud_ModDNITime.__defaultWidth = 78 --[[ @ 0]]
CoD.vhud_ModDNITime.__defaultHeight = 85 --[[ @ 0]]
CoD.vhud_ModDNITime.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.vhud_ModDNITime ) --[[ @ 0]]
	self.id = "vhud_ModDNITime" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local ModDNI = LUI.UIImage.new( 0, 0, 21, 57, 0, 0, 24, 60 ) --[[ @ 0]]
	ModDNI:setImage( RegisterImage( @"uie_t7_cp_hud_ms_modulesdni" ) ) --[[ @ 0]]
	ModDNI:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( ModDNI ) --[[ @ 0]]
	self.ModDNI = ModDNI --[[ @ 0]]
	
	local ModDNIBracketB = LUI.UIImage.new( 0, 0, 15, 63, 0, 0, 45, 69 ) --[[ @ 0]]
	ModDNIBracketB:setAlpha( 0.2 ) --[[ @ 0]]
	ModDNIBracketB:setImage( RegisterImage( @"uie_t7_cp_hud_vehicle_ground_modulesdnibracketb" ) ) --[[ @ 0]]
	ModDNIBracketB:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( ModDNIBracketB ) --[[ @ 0]]
	self.ModDNIBracketB = ModDNIBracketB --[[ @ 0]]
	
	local ModDNIBracketT = LUI.UIImage.new( 0, 0, 15, 63, 0, 0, 12, 36 ) --[[ @ 0]]
	ModDNIBracketT:setAlpha( 0.2 ) --[[ @ 0]]
	ModDNIBracketT:setImage( RegisterImage( @"uie_t7_cp_hud_vehicle_ground_modulesdnibrackett" ) ) --[[ @ 0]]
	ModDNIBracketT:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( ModDNIBracketT ) --[[ @ 0]]
	self.ModDNIBracketT = ModDNIBracketT --[[ @ 0]]
	
	local TextBox0 = LUI.UIText.new( 0.5, 0.5, -39, 39, 0.5, 0.5, 19, 33 ) --[[ @ 0]]
	TextBox0:setAlpha( 0 ) --[[ @ 0]]
	TextBox0:setText( "" ) --[[ @ 0]]
	TextBox0:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	TextBox0:setRFTMaterial( LUI.UIImage.GetCachedMaterial( @"uie_aberration_no_blur" ) ) --[[ @ 0]]
	TextBox0:setShaderVector( 0, 0.05, 0.4, 0, 0 ) --[[ @ 0]]
	TextBox0:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	TextBox0:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	TextBox0:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	TextBox0:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	TextBox0:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	TextBox0:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( TextBox0 ) --[[ @ 0]]
	self.TextBox0 = TextBox0 --[[ @ 0]]
	
	local ModDNI0 = LUI.UIImage.new( 0, 0, 14, 65, 0, 0, 16, 67 ) --[[ @ 0]]
	ModDNI0:setAlpha( 0 ) --[[ @ 0]]
	ModDNI0:setImage( RegisterImage( @"uie_t7_cp_hud_ms_modulesdni" ) ) --[[ @ 0]]
	ModDNI0:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( ModDNI0 ) --[[ @ 0]]
	self.ModDNI0 = ModDNI0 --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return HideVehicleReticle( self, f1_arg1, event )
			end
		}
	} ) --[[ @ 0]]
	local f1_local6 = self --[[ @ 0]]
	local f1_local7 = self.subscribeToModel --[[ @ 0]]
	local f1_local8 = DataSources.VehicleInfo.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local7( f1_local6, f1_local8.vehicleType, function ( f3_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f3_arg0:get(),
			modelName = "vehicleType"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.vhud_ModDNITime.__resetProperties = function ( f4_arg0 )
	f4_arg0.ModDNI:completeAnimation() --[[ @ 0]]
	f4_arg0.ModDNI0:completeAnimation() --[[ @ 0]]
	f4_arg0.ModDNIBracketT:completeAnimation() --[[ @ 0]]
	f4_arg0.ModDNIBracketB:completeAnimation() --[[ @ 0]]
	f4_arg0.ModDNI:setAlpha( 1 ) --[[ @ 0]]
	f4_arg0.ModDNI:setXRot( 0 ) --[[ @ 0]]
	f4_arg0.ModDNI:setYRot( 0 ) --[[ @ 0]]
	f4_arg0.ModDNI:setZRot( 0 ) --[[ @ 0]]
	f4_arg0.ModDNI:setZoom( 0 ) --[[ @ 0]]
	f4_arg0.ModDNI0:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f4_arg0.ModDNI0:setAlpha( 0 ) --[[ @ 0]]
	f4_arg0.ModDNI0:setXRot( 0 ) --[[ @ 0]]
	f4_arg0.ModDNI0:setYRot( 0 ) --[[ @ 0]]
	f4_arg0.ModDNI0:setZRot( 0 ) --[[ @ 0]]
	f4_arg0.ModDNIBracketT:setLeftRight( 0, 0, 15, 63 ) --[[ @ 0]]
	f4_arg0.ModDNIBracketT:setTopBottom( 0, 0, 12, 36 ) --[[ @ 0]]
	f4_arg0.ModDNIBracketT:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f4_arg0.ModDNIBracketT:setZRot( 0 ) --[[ @ 0]]
	f4_arg0.ModDNIBracketB:setLeftRight( 0, 0, 15, 63 ) --[[ @ 0]]
	f4_arg0.ModDNIBracketB:setTopBottom( 0, 0, 45, 69 ) --[[ @ 0]]
	f4_arg0.ModDNIBracketB:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f4_arg0.ModDNIBracketB:setZRot( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.vhud_ModDNITime.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			local f5_local0 = function ( f6_arg0 )
				local f6_local0 = function ( f7_arg0 )
					f7_arg0:beginAnimation( 1290 ) --[[ @ 0]]
					f7_arg0:registerEventHandler( "transition_complete_keyframe", f5_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f5_arg0.ModDNI:beginAnimation( 1210, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f5_arg0.ModDNI:setXRot( 360 ) --[[ @ 0]]
				f5_arg0.ModDNI:setYRot( 360 ) --[[ @ 0]]
				f5_arg0.ModDNI:setZRot( 360 ) --[[ @ 0]]
				f5_arg0.ModDNI:registerEventHandler( "interrupted_keyframe", f5_arg0.clipInterrupted ) --[[ @ 0]]
				f5_arg0.ModDNI:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f5_arg0.ModDNI:completeAnimation() --[[ @ 0]]
			f5_arg0.ModDNI:setAlpha( 1 ) --[[ @ 0]]
			f5_arg0.ModDNI:setXRot( 0 ) --[[ @ 0]]
			f5_arg0.ModDNI:setYRot( 0 ) --[[ @ 0]]
			f5_arg0.ModDNI:setZRot( 0 ) --[[ @ 0]]
			f5_arg0.ModDNI:setZoom( 0 ) --[[ @ 0]]
			f5_local0( f5_arg0.ModDNI ) --[[ @ 0]]
			local f5_local1 = function ( f8_arg0 )
				local f8_local0 = function ( f9_arg0 )
					local f9_local0 = function ( f10_arg0 )
						local f10_local0 = function ( f11_arg0 )
							local f11_local0 = function ( f12_arg0 )
								f12_arg0:beginAnimation( 320, Enum[@"luitween"][@"luitween_back"] | Enum[@"luitween"][@"luitween_ease_in"] ) --[[ @ 0]]
								f12_arg0:setLeftRight( 0, 0, 15, 63 ) --[[ @ 0]]
								f12_arg0:setTopBottom( 0, 0, 45, 69 ) --[[ @ 0]]
								f12_arg0:setZRot( 0 ) --[[ @ 0]]
								f12_arg0:registerEventHandler( "transition_complete_keyframe", f5_arg0.clipFinished ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f11_arg0:beginAnimation( 289 ) --[[ @ 0]]
							f11_arg0:setLeftRight( 0, 0, 24.08, 72.08 ) --[[ @ 0]]
							f11_arg0:setTopBottom( 0, 0, 50.3, 74.3 ) --[[ @ 0]]
							f11_arg0:setRGB( 1, 1, 1 ) --[[ @ 0]]
							f11_arg0:setZRot( 34 ) --[[ @ 0]]
							f11_arg0:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f10_arg0:beginAnimation( 360, Enum[@"luitween"][@"luitween_back"] | Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
						f10_arg0:setLeftRight( 0, 0, -9, 39 ) --[[ @ 0]]
						f10_arg0:setTopBottom( 0, 0, 31, 55 ) --[[ @ 0]]
						f10_arg0:setZRot( -90 ) --[[ @ 0]]
						f10_arg0:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f9_arg0:beginAnimation( 80 ) --[[ @ 0]]
					f9_arg0:setLeftRight( 0, 0, -17.51, 30.49 ) --[[ @ 0]]
					f9_arg0:setTopBottom( 0, 0, 26.04, 50.04 ) --[[ @ 0]]
					f9_arg0:setRGB( 0.8, 1, 0.98 ) --[[ @ 0]]
					f9_arg0:setZRot( -122 ) --[[ @ 0]]
					f9_arg0:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f5_arg0.ModDNIBracketB:beginAnimation( 160 ) --[[ @ 0]]
				f5_arg0.ModDNIBracketB:setLeftRight( 0, 0, -12.61, 35.39 ) --[[ @ 0]]
				f5_arg0.ModDNIBracketB:setTopBottom( 0, 0, 28.89, 52.89 ) --[[ @ 0]]
				f5_arg0.ModDNIBracketB:setZRot( -104 ) --[[ @ 0]]
				f5_arg0.ModDNIBracketB:registerEventHandler( "interrupted_keyframe", f5_arg0.clipInterrupted ) --[[ @ 0]]
				f5_arg0.ModDNIBracketB:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f5_arg0.ModDNIBracketB:completeAnimation() --[[ @ 0]]
			f5_arg0.ModDNIBracketB:setLeftRight( 0, 0, 15, 63 ) --[[ @ 0]]
			f5_arg0.ModDNIBracketB:setTopBottom( 0, 0, 45, 69 ) --[[ @ 0]]
			f5_arg0.ModDNIBracketB:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f5_arg0.ModDNIBracketB:setZRot( 0 ) --[[ @ 0]]
			f5_local1( f5_arg0.ModDNIBracketB ) --[[ @ 0]]
			local f5_local2 = function ( f13_arg0 )
				local f13_local0 = function ( f14_arg0 )
					local f14_local0 = function ( f15_arg0 )
						local f15_local0 = function ( f16_arg0 )
							f16_arg0:beginAnimation( 320, Enum[@"luitween"][@"luitween_back"] | Enum[@"luitween"][@"luitween_ease_in"] ) --[[ @ 0]]
							f16_arg0:setLeftRight( 0, 0, 15, 63 ) --[[ @ 0]]
							f16_arg0:setTopBottom( 0, 0, 12, 36 ) --[[ @ 0]]
							f16_arg0:setZRot( 0 ) --[[ @ 0]]
							f16_arg0:registerEventHandler( "transition_complete_keyframe", f5_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f15_arg0:beginAnimation( 289 ) --[[ @ 0]]
						f15_arg0:setLeftRight( 0, 0, 5.54, 53.54 ) --[[ @ 0]]
						f15_arg0:setTopBottom( 0, 0, 5.19, 29.19 ) --[[ @ 0]]
						f15_arg0:setRGB( 1, 1, 1 ) --[[ @ 0]]
						f15_arg0:setZRot( 34 ) --[[ @ 0]]
						f15_arg0:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f14_arg0:beginAnimation( 440, Enum[@"luitween"][@"luitween_back"] | Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
					f14_arg0:setLeftRight( 0, 0, 40, 88 ) --[[ @ 0]]
					f14_arg0:setTopBottom( 0, 0, 30, 54 ) --[[ @ 0]]
					f14_arg0:setRGB( 0.8, 1, 0.98 ) --[[ @ 0]]
					f14_arg0:setZRot( -90 ) --[[ @ 0]]
					f14_arg0:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f5_arg0.ModDNIBracketT:beginAnimation( 160 ) --[[ @ 0]]
				f5_arg0.ModDNIBracketT:setLeftRight( 0, 0, 43.77, 91.77 ) --[[ @ 0]]
				f5_arg0.ModDNIBracketT:setTopBottom( 0, 0, 32.71, 56.71 ) --[[ @ 0]]
				f5_arg0.ModDNIBracketT:setZRot( -104 ) --[[ @ 0]]
				f5_arg0.ModDNIBracketT:registerEventHandler( "interrupted_keyframe", f5_arg0.clipInterrupted ) --[[ @ 0]]
				f5_arg0.ModDNIBracketT:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f5_arg0.ModDNIBracketT:completeAnimation() --[[ @ 0]]
			f5_arg0.ModDNIBracketT:setLeftRight( 0, 0, 15, 63 ) --[[ @ 0]]
			f5_arg0.ModDNIBracketT:setTopBottom( 0, 0, 12, 36 ) --[[ @ 0]]
			f5_arg0.ModDNIBracketT:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f5_arg0.ModDNIBracketT:setZRot( 0 ) --[[ @ 0]]
			f5_local2( f5_arg0.ModDNIBracketT ) --[[ @ 0]]
			local f5_local3 = function ( f17_arg0 )
				local f17_local0 = function ( f18_arg0 )
					f18_arg0:beginAnimation( 610, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
					f18_arg0:setAlpha( 0 ) --[[ @ 0]]
					f18_arg0:setXRot( -360 ) --[[ @ 0]]
					f18_arg0:setYRot( -360 ) --[[ @ 0]]
					f18_arg0:setZRot( -360 ) --[[ @ 0]]
					f18_arg0:registerEventHandler( "transition_complete_keyframe", f5_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f5_arg0.ModDNI0:beginAnimation( 600 ) --[[ @ 0]]
				f5_arg0.ModDNI0:setAlpha( 0.55 ) --[[ @ 0]]
				f5_arg0.ModDNI0:setXRot( -178 ) --[[ @ 0]]
				f5_arg0.ModDNI0:setYRot( -178 ) --[[ @ 0]]
				f5_arg0.ModDNI0:setZRot( -178 ) --[[ @ 0]]
				f5_arg0.ModDNI0:registerEventHandler( "interrupted_keyframe", f5_arg0.clipInterrupted ) --[[ @ 0]]
				f5_arg0.ModDNI0:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f5_arg0.ModDNI0:completeAnimation() --[[ @ 0]]
			f5_arg0.ModDNI0:setRGB( 0.8, 1, 0.98 ) --[[ @ 0]]
			f5_arg0.ModDNI0:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.ModDNI0:setXRot( 0 ) --[[ @ 0]]
			f5_arg0.ModDNI0:setYRot( 0 ) --[[ @ 0]]
			f5_arg0.ModDNI0:setZRot( 0 ) --[[ @ 0]]
			f5_local3( f5_arg0.ModDNI0 ) --[[ @ 0]]
			f5_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
