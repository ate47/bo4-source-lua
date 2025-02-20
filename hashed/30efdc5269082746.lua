-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
CoD.ZM_ReviveBleedoutRedEyeGlow = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ZM_ReviveBleedoutRedEyeGlow.__defaultWidth = 25 --[[ @ 0]]
CoD.ZM_ReviveBleedoutRedEyeGlow.__defaultHeight = 27 --[[ @ 0]]
CoD.ZM_ReviveBleedoutRedEyeGlow.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ZM_ReviveBleedoutRedEyeGlow ) --[[ @ 0]]
	self.id = "ZM_ReviveBleedoutRedEyeGlow" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local GlowOrangeOver0 = LUI.UIImage.new( 0, 0, 0, 26, 0, 0, 0, 27 ) --[[ @ 0]]
	GlowOrangeOver0:setRGB( 1, 0, 0.03 ) --[[ @ 0]]
	GlowOrangeOver0:setAlpha( 0.46 ) --[[ @ 0]]
	GlowOrangeOver0:setZRot( 90 ) --[[ @ 0]]
	GlowOrangeOver0:setImage( RegisterImage( @"uie_t7_core_hud_mapwidget_panelglow" ) ) --[[ @ 0]]
	GlowOrangeOver0:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( GlowOrangeOver0 ) --[[ @ 0]]
	self.GlowOrangeOver0 = GlowOrangeOver0 --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ZM_ReviveBleedoutRedEyeGlow.__resetProperties = function ( f2_arg0 )
	f2_arg0.GlowOrangeOver0:completeAnimation() --[[ @ 0]]
	f2_arg0.GlowOrangeOver0:setAlpha( 0.46 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ZM_ReviveBleedoutRedEyeGlow.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					local f5_local0 = function ( f6_arg0 )
						local f6_local0 = function ( f7_arg0 )
							local f7_local0 = function ( f8_arg0 )
								local f8_local0 = function ( f9_arg0 )
									local f9_local0 = function ( f10_arg0 )
										local f10_local0 = function ( f11_arg0 )
											local f11_local0 = function ( f12_arg0 )
												local f12_local0 = function ( f13_arg0 )
													f13_arg0:beginAnimation( 200 ) --[[ @ 0]]
													f13_arg0:setAlpha( 0 ) --[[ @ 0]]
													f13_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
												end
												 --[[ @ 0]]
												f12_arg0:beginAnimation( 209 ) --[[ @ 0]]
												f12_arg0:setAlpha( 0.17 ) --[[ @ 0]]
												f12_arg0:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
											end
											 --[[ @ 0]]
											f11_arg0:beginAnimation( 300 ) --[[ @ 0]]
											f11_arg0:setAlpha( 0 ) --[[ @ 0]]
											f11_arg0:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
										end
										 --[[ @ 0]]
										f10_arg0:beginAnimation( 299 ) --[[ @ 0]]
										f10_arg0:setAlpha( 0.3 ) --[[ @ 0]]
										f10_arg0:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f9_arg0:beginAnimation( 300 ) --[[ @ 0]]
									f9_arg0:setAlpha( 0 ) --[[ @ 0]]
									f9_arg0:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f8_arg0:beginAnimation( 199 ) --[[ @ 0]]
								f8_arg0:setAlpha( 0.29 ) --[[ @ 0]]
								f8_arg0:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f7_arg0:beginAnimation( 229 ) --[[ @ 0]]
							f7_arg0:setAlpha( 0.2 ) --[[ @ 0]]
							f7_arg0:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f6_arg0:beginAnimation( 90 ) --[[ @ 0]]
						f6_arg0:setAlpha( 0.54 ) --[[ @ 0]]
						f6_arg0:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f5_arg0:beginAnimation( 70 ) --[[ @ 0]]
					f5_arg0:setAlpha( 0.11 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.GlowOrangeOver0:beginAnimation( 110 ) --[[ @ 0]]
				f3_arg0.GlowOrangeOver0:setAlpha( 0.19 ) --[[ @ 0]]
				f3_arg0.GlowOrangeOver0:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.GlowOrangeOver0:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.GlowOrangeOver0:completeAnimation() --[[ @ 0]]
			f3_arg0.GlowOrangeOver0:setAlpha( 0 ) --[[ @ 0]]
			f3_local0( f3_arg0.GlowOrangeOver0 ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end,
		BleedingOut = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
