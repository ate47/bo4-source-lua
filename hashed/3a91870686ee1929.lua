-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.CallingCards_Asset_future_car = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CallingCards_Asset_future_car.__defaultWidth = 720 --[[ @ 0]]
CoD.CallingCards_Asset_future_car.__defaultHeight = 180 --[[ @ 0]]
CoD.CallingCards_Asset_future_car.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CallingCards_Asset_future_car ) --[[ @ 0]]
	self.id = "CallingCards_Asset_future_car" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local car = LUI.UIImage.new( 0, 0, 0, 720, 0, 0, 0, 180 ) --[[ @ 0]]
	car:setImage( RegisterImage( @"uie_future_car" ) ) --[[ @ 0]]
	self:addElement( car ) --[[ @ 0]]
	self.car = car --[[ @ 0]]
	
	local carWhite2 = LUI.UIImage.new( 0, 0, 0, 720, 0, 0, 0, 180 ) --[[ @ 0]]
	carWhite2:setAlpha( 0.8 ) --[[ @ 0]]
	carWhite2:setImage( RegisterImage( @"uie_future_car_white" ) ) --[[ @ 0]]
	carWhite2:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_spotlight" ) ) --[[ @ 0]]
	carWhite2:setShaderVector( 0, 1.02, 0.67, 0, 0 ) --[[ @ 0]]
	carWhite2:setShaderVector( 1, 1.6, 0, 0, 0 ) --[[ @ 0]]
	carWhite2:setShaderVector( 2, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( carWhite2 ) --[[ @ 0]]
	self.carWhite2 = carWhite2 --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CallingCards_Asset_future_car.__resetProperties = function ( f2_arg0 )
	f2_arg0.carWhite2:completeAnimation() --[[ @ 0]]
	f2_arg0.car:completeAnimation() --[[ @ 0]]
	f2_arg0.carWhite2:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f2_arg0.carWhite2:setAlpha( 0.8 ) --[[ @ 0]]
	f2_arg0.carWhite2:setShaderVector( 0, 1.02, 0.67, 0, 0 ) --[[ @ 0]]
	f2_arg0.carWhite2:setShaderVector( 1, 1.6, 0, 0, 0 ) --[[ @ 0]]
	f2_arg0.carWhite2:setShaderVector( 2, 1, 0, 0, 0 ) --[[ @ 0]]
	f2_arg0.car:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.car:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_normal" ) ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CallingCards_Asset_future_car.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f3_arg0.car:completeAnimation() --[[ @ 0]]
			f3_arg0.car:setAlpha( 1 ) --[[ @ 0]]
			f3_arg0.car:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_normal" ) ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.car ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					local f5_local0 = function ( f6_arg0 )
						local f6_local0 = function ( f7_arg0 )
							local f7_local0 = function ( f8_arg0 )
								local f8_local0 = function ( f9_arg0 )
									local f9_local0 = function ( f10_arg0 )
										local f10_local0 = function ( f11_arg0 )
											f11_arg0:beginAnimation( 470 ) --[[ @ 0]]
											f11_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
										end
										 --[[ @ 0]]
										f10_arg0:beginAnimation( 520 ) --[[ @ 0]]
										f10_arg0:setShaderVector( 0, -0.51, 0.15, 0, 0 ) --[[ @ 0]]
										f10_arg0:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f9_arg0:beginAnimation( 530 ) --[[ @ 0]]
									f9_arg0:setShaderVector( 0, 0.13, 0.24, 0, 0 ) --[[ @ 0]]
									f9_arg0:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f8_arg0:beginAnimation( 510 ) --[[ @ 0]]
								f8_arg0:setShaderVector( 0, 0.29, 0.24, 0, 0 ) --[[ @ 0]]
								f8_arg0:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f7_arg0:beginAnimation( 450 ) --[[ @ 0]]
							f7_arg0:setShaderVector( 0, 0.44, 0.25, 0, 0 ) --[[ @ 0]]
							f7_arg0:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f6_arg0:beginAnimation( 729 ) --[[ @ 0]]
						f6_arg0:setShaderVector( 0, 0.61, 0.34, 0, 0 ) --[[ @ 0]]
						f6_arg0:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f5_arg0:beginAnimation( 400 ) --[[ @ 0]]
					f5_arg0:setShaderVector( 0, 0.85, 0.57, 0, 0 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.carWhite2:beginAnimation( 400 ) --[[ @ 0]]
				f3_arg0.carWhite2:setShaderVector( 0, 1.02, 0.67, 0, 0 ) --[[ @ 0]]
				f3_arg0.carWhite2:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.carWhite2:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.carWhite2:completeAnimation() --[[ @ 0]]
			f3_arg0.carWhite2:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f3_arg0.carWhite2:setAlpha( 0.35 ) --[[ @ 0]]
			f3_arg0.carWhite2:setShaderVector( 0, 1.67, 0.82, 0, 0 ) --[[ @ 0]]
			f3_arg0.carWhite2:setShaderVector( 1, 1.6, 0, 0, 0 ) --[[ @ 0]]
			f3_arg0.carWhite2:setShaderVector( 2, 1, 0, 0, 0 ) --[[ @ 0]]
			f3_local0( f3_arg0.carWhite2 ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
