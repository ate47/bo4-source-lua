-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.ai_tank_health_bar = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ai_tank_health_bar.__defaultWidth = 409 --[[ @ 0]]
CoD.ai_tank_health_bar.__defaultHeight = 45 --[[ @ 0]]
CoD.ai_tank_health_bar.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ai_tank_health_bar ) --[[ @ 0]]
	self.id = "ai_tank_health_bar" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Background = LUI.UIImage.new( 0, 0, 0, 409, 0, 0, 0, 45 ) --[[ @ 0]]
	Background:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( Background ) --[[ @ 0]]
	self.Background = Background --[[ @ 0]]
	
	local EmptyBars = LUI.UIImage.new( 0, 0, 15.5, 393.5, 1, 1, -26, 0 ) --[[ @ 0]]
	EmptyBars:setRGB( 0, 0, 0 ) --[[ @ 0]]
	EmptyBars:setImage( RegisterImage( @"uie_hud_common_core_ammo_healthbar" ) ) --[[ @ 0]]
	EmptyBars:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_6E9593DF28749F2" ) ) --[[ @ 0]]
	EmptyBars:setShaderVector( 0, 20, 1, 0, 0 ) --[[ @ 0]]
	EmptyBars:setShaderVector( 1, SetVectorComponent( 4, 1, SetVectorComponent( 2, 1, 0, 1, 0, 1 ) ) ) --[[ @ 0]]
	self:addElement( EmptyBars ) --[[ @ 0]]
	self.EmptyBars = EmptyBars --[[ @ 0]]
	
	local LowHealthGlow = LUI.UIImage.new( 0, 0, 15.5, 393.5, 1, 1, -26, 0 ) --[[ @ 0]]
	LowHealthGlow:setAlpha( 0 ) --[[ @ 0]]
	LowHealthGlow:setImage( RegisterImage( @"uie_t7_core_hud_mapwidget_panelglow" ) ) --[[ @ 0]]
	self:addElement( LowHealthGlow ) --[[ @ 0]]
	self.LowHealthGlow = LowHealthGlow --[[ @ 0]]
	
	local FillBars = LUI.UIImage.new( 0, 0, 15.5, 393.5, 1, 1, -26, 0 ) --[[ @ 0]]
	FillBars:setImage( RegisterImage( @"uie_hud_common_core_ammo_healthbar" ) ) --[[ @ 0]]
	FillBars:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_6E9593DF28749F2" ) ) --[[ @ 0]]
	FillBars:setShaderVector( 0, 20, 1, 0, 0 ) --[[ @ 0]]
	FillBars:setShaderVector( 1, SetVectorComponent( 4, 1, SetVectorComponent( 2, 1, 0, 1, 0, 1 ) ) ) --[[ @ 0]]
	self:addElement( FillBars ) --[[ @ 0]]
	self.FillBars = FillBars --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "showPooledHealthBar" )
			end
		},
		{
			stateName = "LowHealth",
			condition = function ( menu, element, event )
				return CoD.VehicleUtility.VehicleLowHealth( self, 0.2 )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "showPooledHealthBar", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "showPooledHealthBar"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "damage", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "damage"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local5 = self --[[ @ 0]]
	f1_local5 = FillBars --[[ @ 0]]
	CoD.VehicleUtility.SetupTankWipeValue( self, f1_arg1 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.ai_tank_health_bar.__resetProperties = function ( f6_arg0 )
	f6_arg0.LowHealthGlow:completeAnimation() --[[ @ 0]]
	f6_arg0.FillBars:completeAnimation() --[[ @ 0]]
	f6_arg0.EmptyBars:completeAnimation() --[[ @ 0]]
	f6_arg0.Background:completeAnimation() --[[ @ 0]]
	f6_arg0.LowHealthGlow:setLeftRight( 0, 0, 15.5, 393.5 ) --[[ @ 0]]
	f6_arg0.LowHealthGlow:setTopBottom( 1, 1, -26, 0 ) --[[ @ 0]]
	f6_arg0.LowHealthGlow:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f6_arg0.LowHealthGlow:setAlpha( 0 ) --[[ @ 0]]
	f6_arg0.FillBars:setAlpha( 1 ) --[[ @ 0]]
	f6_arg0.EmptyBars:setAlpha( 1 ) --[[ @ 0]]
	f6_arg0.Background:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ai_tank_health_bar.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		LowHealth = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f8_local0 = function ( f9_arg0 )
				f8_arg0.LowHealthGlow:beginAnimation( 200 ) --[[ @ 0]]
				f8_arg0.LowHealthGlow:setAlpha( 1 ) --[[ @ 0]]
				f8_arg0.LowHealthGlow:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.LowHealthGlow:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.LowHealthGlow:completeAnimation() --[[ @ 0]]
			f8_arg0.LowHealthGlow:setAlpha( 0 ) --[[ @ 0]]
			f8_local0( f8_arg0.LowHealthGlow ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f10_arg0.Background:completeAnimation() --[[ @ 0]]
			f10_arg0.Background:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.Background ) --[[ @ 0]]
			f10_arg0.EmptyBars:completeAnimation() --[[ @ 0]]
			f10_arg0.EmptyBars:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.EmptyBars ) --[[ @ 0]]
			f10_arg0.LowHealthGlow:completeAnimation() --[[ @ 0]]
			f10_arg0.LowHealthGlow:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.LowHealthGlow ) --[[ @ 0]]
			f10_arg0.FillBars:completeAnimation() --[[ @ 0]]
			f10_arg0.FillBars:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.FillBars ) --[[ @ 0]]
		end,
		LowHealth = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f11_local0 = function ( f12_arg0 )
				f11_arg0.LowHealthGlow:beginAnimation( 200 ) --[[ @ 0]]
				f11_arg0.LowHealthGlow:setAlpha( 1 ) --[[ @ 0]]
				f11_arg0.LowHealthGlow:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.LowHealthGlow:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.LowHealthGlow:completeAnimation() --[[ @ 0]]
			f11_arg0.LowHealthGlow:setAlpha( 0 ) --[[ @ 0]]
			f11_local0( f11_arg0.LowHealthGlow ) --[[ @ 0]]
		end
	},
	LowHealth = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f13_arg0.LowHealthGlow:completeAnimation() --[[ @ 0]]
			f13_arg0.LowHealthGlow:setLeftRight( 0, 0, -123, 532 ) --[[ @ 0]]
			f13_arg0.LowHealthGlow:setTopBottom( 1, 1, -28, 2 ) --[[ @ 0]]
			f13_arg0.LowHealthGlow:setRGB( 0.99, 0.11, 0.11 ) --[[ @ 0]]
			f13_arg0.LowHealthGlow:setAlpha( 0.7 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.LowHealthGlow ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ai_tank_health_bar.__onClose = function ( f14_arg0 )
	f14_arg0.FillBars:close() --[[ @ 0]]
end
 --[[ @ 0]]
