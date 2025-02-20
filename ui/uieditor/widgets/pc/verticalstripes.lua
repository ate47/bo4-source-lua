-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
CoD.VerticalStripes = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.VerticalStripes.__defaultWidth = 602 --[[ @ 0]]
CoD.VerticalStripes.__defaultHeight = 24 --[[ @ 0]]
CoD.VerticalStripes.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.VerticalStripes ) --[[ @ 0]]
	self.id = "VerticalStripes" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local MapLayoutStripe = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	MapLayoutStripe:setAlpha( 0.12 ) --[[ @ 0]]
	MapLayoutStripe:setImage( RegisterImage( @"hash_6E188316C34F5BAA" ) ) --[[ @ 0]]
	MapLayoutStripe:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( MapLayoutStripe ) --[[ @ 0]]
	self.MapLayoutStripe = MapLayoutStripe --[[ @ 0]]
	
	local MapLayoutStripeAdd = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	MapLayoutStripeAdd:setAlpha( 0.5 ) --[[ @ 0]]
	MapLayoutStripeAdd:setImage( RegisterImage( @"hash_6E188316C34F5BAA" ) ) --[[ @ 0]]
	MapLayoutStripeAdd:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta" ) ) --[[ @ 0]]
	MapLayoutStripeAdd:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	MapLayoutStripeAdd:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	MapLayoutStripeAdd:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	MapLayoutStripeAdd:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	MapLayoutStripeAdd:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( MapLayoutStripeAdd ) --[[ @ 0]]
	self.MapLayoutStripeAdd = MapLayoutStripeAdd --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.VerticalStripes.__resetProperties = function ( f2_arg0 )
	f2_arg0.MapLayoutStripeAdd:completeAnimation() --[[ @ 0]]
	f2_arg0.MapLayoutStripeAdd:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	f2_arg0.MapLayoutStripeAdd:setAlpha( 0.5 ) --[[ @ 0]]
	f2_arg0.MapLayoutStripeAdd:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta" ) ) --[[ @ 0]]
	f2_arg0.MapLayoutStripeAdd:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	f2_arg0.MapLayoutStripeAdd:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	f2_arg0.MapLayoutStripeAdd:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	f2_arg0.MapLayoutStripeAdd:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	f2_arg0.MapLayoutStripeAdd:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.VerticalStripes.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					local f5_local0 = function ( f6_arg0 )
						local f6_local0 = function ( f7_arg0 )
							local f7_local0 = function ( f8_arg0 )
								f8_arg0:beginAnimation( 1849 ) --[[ @ 0]]
								f8_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f7_arg0:beginAnimation( 490 ) --[[ @ 0]]
							f7_arg0:setAlpha( 0.45 ) --[[ @ 0]]
							f7_arg0:setShaderVector( 0, 1, 1, 0, 0 ) --[[ @ 0]]
							f7_arg0:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
							f7_arg0:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f6_arg0:beginAnimation( 500 ) --[[ @ 0]]
						f6_arg0:setAlpha( 0.55 ) --[[ @ 0]]
						f6_arg0:setShaderVector( 0, 0.33, 1, 0, 0 ) --[[ @ 0]]
						f6_arg0:setShaderVector( 1, 0.5, 0, 0, 0 ) --[[ @ 0]]
						f6_arg0:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f5_arg0:beginAnimation( 409 ) --[[ @ 0]]
					f5_arg0:setAlpha( 0.65 ) --[[ @ 0]]
					f5_arg0:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
					f5_arg0:setShaderVector( 1, 1, 0, 0, 0 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.MapLayoutStripeAdd:beginAnimation( 370 ) --[[ @ 0]]
				f3_arg0.MapLayoutStripeAdd:setAlpha( 0.54 ) --[[ @ 0]]
				f3_arg0.MapLayoutStripeAdd:setShaderVector( 0, 0, 0.48, 0, 0 ) --[[ @ 0]]
				f3_arg0.MapLayoutStripeAdd:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.MapLayoutStripeAdd:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.MapLayoutStripeAdd:completeAnimation() --[[ @ 0]]
			f3_arg0.MapLayoutStripeAdd:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
			f3_arg0.MapLayoutStripeAdd:setAlpha( 0.45 ) --[[ @ 0]]
			f3_arg0.MapLayoutStripeAdd:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta" ) ) --[[ @ 0]]
			f3_arg0.MapLayoutStripeAdd:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
			f3_arg0.MapLayoutStripeAdd:setShaderVector( 1, 0.5, 0, 0, 0 ) --[[ @ 0]]
			f3_arg0.MapLayoutStripeAdd:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
			f3_arg0.MapLayoutStripeAdd:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
			f3_arg0.MapLayoutStripeAdd:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
			f3_local0( f3_arg0.MapLayoutStripeAdd ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
