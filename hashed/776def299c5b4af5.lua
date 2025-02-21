-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/vehiclehuds/mothership/vhud_ms_missile" ) --[[ @ 0]]

CoD.vhud_ms_missilesWidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.vhud_ms_missilesWidget.__defaultWidth = 93 --[[ @ 0]]
CoD.vhud_ms_missilesWidget.__defaultHeight = 85 --[[ @ 0]]
CoD.vhud_ms_missilesWidget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.vhud_ms_missilesWidget ) --[[ @ 0]]
	self.id = "vhud_ms_missilesWidget" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local vhudmsmissile = CoD.vhud_ms_missile.new( f1_arg0, f1_arg1, 0.5, 0.5, -46, 26, 0.5, 0.5, -42.5, -15.5 ) --[[ @ 0]]
	vhudmsmissile:mergeStateConditions( {
		{
			stateName = "Armed",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueGreaterThanOrEqualTo( element, f1_arg1, "ammoReady", 1 )
			end
		}
	} ) --[[ @ 0]]
	vhudmsmissile:linkToElementModel( vhudmsmissile, "ammoReady", true, function ( model )
		f1_arg0:updateElementState( vhudmsmissile, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "ammoReady"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	vhudmsmissile:setZRot( -90 ) --[[ @ 0]]
	vhudmsmissile:linkToElementModel( self, nil, false, function ( model )
		vhudmsmissile:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( vhudmsmissile ) --[[ @ 0]]
	self.vhudmsmissile = vhudmsmissile --[[ @ 0]]
	
	local vhudmsmissile0 = CoD.vhud_ms_missile.new( f1_arg0, f1_arg1, 0.5, 0.5, -25, 47, 0.5, 0.5, -42.5, -15.5 ) --[[ @ 0]]
	vhudmsmissile0:mergeStateConditions( {
		{
			stateName = "Armed",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueGreaterThanOrEqualTo( element, f1_arg1, "ammoReady", 1 )
			end
		}
	} ) --[[ @ 0]]
	vhudmsmissile0:linkToElementModel( vhudmsmissile0, "ammoReady", true, function ( model )
		f1_arg0:updateElementState( vhudmsmissile0, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "ammoReady"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	vhudmsmissile0:setZRot( -90 ) --[[ @ 0]]
	vhudmsmissile0:linkToElementModel( self, nil, false, function ( model )
		vhudmsmissile0:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( vhudmsmissile0 ) --[[ @ 0]]
	self.vhudmsmissile0 = vhudmsmissile0 --[[ @ 0]]
	
	local vhudmsmissile1 = CoD.vhud_ms_missile.new( f1_arg0, f1_arg1, 0.5, 0.5, -46, 26, 0.5, 0.5, 15.5, 42.5 ) --[[ @ 0]]
	vhudmsmissile1:mergeStateConditions( {
		{
			stateName = "Armed",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueGreaterThanOrEqualTo( element, f1_arg1, "ammoReady", 1 )
			end
		}
	} ) --[[ @ 0]]
	vhudmsmissile1:linkToElementModel( vhudmsmissile1, "ammoReady", true, function ( model )
		f1_arg0:updateElementState( vhudmsmissile1, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "ammoReady"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	vhudmsmissile1:setZRot( -90 ) --[[ @ 0]]
	vhudmsmissile1:linkToElementModel( self, nil, false, function ( model )
		vhudmsmissile1:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( vhudmsmissile1 ) --[[ @ 0]]
	self.vhudmsmissile1 = vhudmsmissile1 --[[ @ 0]]
	
	local vhudmsmissile2 = CoD.vhud_ms_missile.new( f1_arg0, f1_arg1, 0.5, 0.5, -25, 47, 0.5, 0.5, 15.5, 42.5 ) --[[ @ 0]]
	vhudmsmissile2:mergeStateConditions( {
		{
			stateName = "Armed",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueGreaterThanOrEqualTo( element, f1_arg1, "ammoReady", 1 )
			end
		}
	} ) --[[ @ 0]]
	vhudmsmissile2:linkToElementModel( vhudmsmissile2, "ammoReady", true, function ( model )
		f1_arg0:updateElementState( vhudmsmissile2, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "ammoReady"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	vhudmsmissile2:setZRot( -90 ) --[[ @ 0]]
	vhudmsmissile2:linkToElementModel( self, nil, false, function ( model )
		vhudmsmissile2:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( vhudmsmissile2 ) --[[ @ 0]]
	self.vhudmsmissile2 = vhudmsmissile2 --[[ @ 0]]
	
	local Bar = LUI.UIImage.new( 0.5, 0.5, -25, 25, 0.5, 0.5, 61, 68 ) --[[ @ 0]]
	Bar:setRGB( 0.74, 0.94, 0.99 ) --[[ @ 0]]
	Bar:setImage( RegisterImage( @"uie_t7_cp_hud_vehicle_mothership_timebar" ) ) --[[ @ 0]]
	Bar:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Bar ) --[[ @ 0]]
	self.Bar = Bar --[[ @ 0]]
	
	local solidbar = LUI.UIImage.new( 0.5, 0.5, -25, 25, 0.5, 0.5, 61, 68 ) --[[ @ 0]]
	solidbar:setRGB( 0.74, 0.94, 0.99 ) --[[ @ 0]]
	solidbar:setImage( RegisterImage( @"uie_t7_cp_hud_vehicle_mothership_timebarsolid" ) ) --[[ @ 0]]
	solidbar:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe" ) ) --[[ @ 0]]
	solidbar:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	solidbar:setShaderVector( 2, 1, 0, 0, 0 ) --[[ @ 0]]
	solidbar:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	solidbar:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	solidbar:linkToElementModel( self, "ammoReady", true, function ( model )
		local f14_local0 = model:get() --[[ @ 0]]
		if f14_local0 ~= nil then
			solidbar:setShaderVector( 0, CoD.GetVectorComponentFromString( f14_local0, 1 ), CoD.GetVectorComponentFromString( f14_local0, 2 ), CoD.GetVectorComponentFromString( f14_local0, 3 ), CoD.GetVectorComponentFromString( f14_local0, 4 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( solidbar ) --[[ @ 0]]
	self.solidbar = solidbar --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Charging",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueLessThan( element, f1_arg1, "ammoReady", 1 )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "ammoReady", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "ammoReady"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.vhud_ms_missilesWidget.__onClose = function ( f17_arg0 )
	f17_arg0.vhudmsmissile:close() --[[ @ 0]]
	f17_arg0.vhudmsmissile0:close() --[[ @ 0]]
	f17_arg0.vhudmsmissile1:close() --[[ @ 0]]
	f17_arg0.vhudmsmissile2:close() --[[ @ 0]]
	f17_arg0.solidbar:close() --[[ @ 0]]
end
 --[[ @ 0]]
