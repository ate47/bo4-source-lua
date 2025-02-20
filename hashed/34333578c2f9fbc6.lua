-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
CoD.AmmoWidget_CurrentClipPip = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AmmoWidget_CurrentClipPip.__defaultWidth = 30 --[[ @ 0]]
CoD.AmmoWidget_CurrentClipPip.__defaultHeight = 112 --[[ @ 0]]
CoD.AmmoWidget_CurrentClipPip.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AmmoWidget_CurrentClipPip ) --[[ @ 0]]
	self.id = "AmmoWidget_CurrentClipPip" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local GlowLeak = LUI.UIImage.new( 0, 0, -3.5, 33.5, 0, 0, 14, 122 ) --[[ @ 0]]
	GlowLeak:setRGB( 0.76, 0.76, 0.73 ) --[[ @ 0]]
	GlowLeak:setAlpha( 0.2 ) --[[ @ 0]]
	GlowLeak:setImage( RegisterImage( @"hash_1DA3FD465AC2534" ) ) --[[ @ 0]]
	GlowLeak:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	GlowLeak:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( GlowLeak ) --[[ @ 0]]
	self.GlowLeak = GlowLeak --[[ @ 0]]
	
	local backing = LUI.UIImage.new( 0, 0, 0, 28, 0.46, 0.46, -10.5, 45.5 ) --[[ @ 0]]
	backing:setRGB( 0.81, 0.79, 0.69 ) --[[ @ 0]]
	backing:setImage( RegisterImage( @"hash_6FCD1D5879D11559" ) ) --[[ @ 0]]
	self:addElement( backing ) --[[ @ 0]]
	self.backing = backing --[[ @ 0]]
	
	local GlowOuter = LUI.UIImage.new( 0, 0, 0, 28, 0, 0, 24, 78 ) --[[ @ 0]]
	GlowOuter:setRGB( 0.76, 0.76, 0.73 ) --[[ @ 0]]
	GlowOuter:setAlpha( 0.2 ) --[[ @ 0]]
	GlowOuter:setImage( RegisterImage( @"hash_1949918ED1F03E4F" ) ) --[[ @ 0]]
	GlowOuter:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( GlowOuter ) --[[ @ 0]]
	self.GlowOuter = GlowOuter --[[ @ 0]]
	
	local slots = LUI.UIImage.new( 0, 0, 0, 28, 0.46, 0.46, -9.5, 44.5 ) --[[ @ 0]]
	slots:setRGB( 0, 0, 0 ) --[[ @ 0]]
	slots:setImage( RegisterImage( @"hash_5F6D4695EB6ADF24" ) ) --[[ @ 0]]
	self:addElement( slots ) --[[ @ 0]]
	self.slots = slots --[[ @ 0]]
	
	local fill = LUI.UIImage.new( 0.1, 0.1, -2, 26, 0.5, 0.5, -11.5, 34.5 ) --[[ @ 0]]
	fill:setAlpha( 0.85 ) --[[ @ 0]]
	fill:setZRot( 180 ) --[[ @ 0]]
	fill:setImage( RegisterImage( @"hash_205768316A400E7D" ) ) --[[ @ 0]]
	fill:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe" ) ) --[[ @ 0]]
	fill:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	fill:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	fill.__Y_Fraction = function ()
		fill:setShaderVector( 2, AdjustStartEnd( 0.09, 0.84, CoD.HUDUtility.GetCurrentAmmoPipWipeValue( f1_arg1, 0.7, 0, 0, 0 ) ) ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	fill.__Y_Fraction() --[[ @ 0]]
	fill:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	fill:setShaderVector( 4, 1, 0, 1, 0.01 ) --[[ @ 0]]
	self:addElement( fill ) --[[ @ 0]]
	self.fill = fill --[[ @ 0]]
	
	local f1_local6 = fill --[[ @ 0]]
	local f1_local7 = fill.subscribeToModel --[[ @ 0]]
	local f1_local8 = DataSources.CurrentWeapon.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local7( f1_local6, f1_local8.ammoInClip, fill.__Y_Fraction ) --[[ @ 0]]
	f1_local6 = fill --[[ @ 0]]
	f1_local7 = fill.subscribeToModel --[[ @ 0]]
	f1_local8 = DataSources.CurrentWeapon.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local7( f1_local6, f1_local8.clipMaxAmmo, fill.__Y_Fraction ) --[[ @ 0]]
	self:mergeStateConditions( {
		{
			stateName = "LowAmmo",
			condition = function ( menu, element, event )
				return IsLowAmmoClip( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	f1_local6 = self --[[ @ 0]]
	f1_local7 = self.subscribeToModel --[[ @ 0]]
	f1_local8 = DataSources.CurrentWeapon.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local7( f1_local6, f1_local8.ammoLow, function ( f4_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f4_arg0:get(),
			modelName = "ammoLow"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.AmmoWidget_CurrentClipPip.__resetProperties = function ( f5_arg0 )
	f5_arg0.fill:completeAnimation() --[[ @ 0]]
	f5_arg0.fill:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f5_arg0.fill:setAlpha( 0.85 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.AmmoWidget_CurrentClipPip.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f6_arg0.fill:completeAnimation() --[[ @ 0]]
			f6_arg0.fill:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.fill ) --[[ @ 0]]
		end
	},
	LowAmmo = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f7_local0 = function ( f8_arg0 )
				local f8_local0 = function ( f9_arg0 )
					local f9_local0 = function ( f10_arg0 )
						local f10_local0 = function ( f11_arg0 )
							f11_arg0:beginAnimation( 1100 ) --[[ @ 0]]
							f11_arg0:registerEventHandler( "transition_complete_keyframe", f7_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f10_arg0:beginAnimation( 399, Enum[@"hash_1F50FFF429AB1890"][@"hash_15193EA7825DC097"] ) --[[ @ 0]]
						f10_arg0:setAlpha( 1 ) --[[ @ 0]]
						f10_arg0:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f9_arg0:beginAnimation( 90 ) --[[ @ 0]]
					f9_arg0:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f7_arg0.fill:beginAnimation( 410, Enum[@"hash_1F50FFF429AB1890"][@"hash_15193EA7825DC097"] ) --[[ @ 0]]
				f7_arg0.fill:setAlpha( 0.3 ) --[[ @ 0]]
				f7_arg0.fill:registerEventHandler( "interrupted_keyframe", f7_arg0.clipInterrupted ) --[[ @ 0]]
				f7_arg0.fill:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f7_arg0.fill:completeAnimation() --[[ @ 0]]
			f7_arg0.fill:setRGB( 1, 0, 0 ) --[[ @ 0]]
			f7_arg0.fill:setAlpha( 1 ) --[[ @ 0]]
			f7_local0( f7_arg0.fill ) --[[ @ 0]]
			f7_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.AmmoWidget_CurrentClipPip.__onClose = function ( f12_arg0 )
	f12_arg0.fill:close() --[[ @ 0]]
end
 --[[ @ 0]]
