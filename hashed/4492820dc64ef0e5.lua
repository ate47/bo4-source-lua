-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "ui/uieditor/widgets/vehiclehuds/buttons/vhud_generic_button_layout" ) --[[ @ 0]]
require( "ui/uieditor/widgets/vehiclehuds/ground/vehicleground_vignettecontainer" ) --[[ @ 0]]
require( "ui/uieditor/widgets/vehiclehuds/mothership/vhud_ms_iris" ) --[[ @ 0]]
require( "x64:8aedb8c71f568d4" ) --[[ @ 0]]
require( "x64:142a47e92dfaccef" ) --[[ @ 0]]

CoD.vhud_ms_Internal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.vhud_ms_Internal.__defaultWidth = 1920 --[[ @ 0]]
CoD.vhud_ms_Internal.__defaultHeight = 1080 --[[ @ 0]]
CoD.vhud_ms_Internal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.vhud_ms_Internal ) --[[ @ 0]]
	self.id = "vhud_ms_Internal" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local VignetteContainer = CoD.VehicleGround_VignetteContainer.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	VignetteContainer:setAlpha( 0.1 ) --[[ @ 0]]
	self:addElement( VignetteContainer ) --[[ @ 0]]
	self.VignetteContainer = VignetteContainer --[[ @ 0]]
	
	local VehicleGroundIris = CoD.vhud_ms_Iris.new( f1_arg0, f1_arg1, 0.5, 0.5, -960, 960, 0.5, 0.5, -540, 540 ) --[[ @ 0]]
	VehicleGroundIris:setRGB( 1, 0.35, 0.35 ) --[[ @ 0]]
	VehicleGroundIris:setAlpha( 0.8 ) --[[ @ 0]]
	VehicleGroundIris:linkToElementModel( self, nil, false, function ( model )
		VehicleGroundIris:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	VehicleGroundIris:registerEventHandler( "menu_loaded", function ( element, event )
		local f3_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f3_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f3_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		PlayClipOnElement( self, {
			elementName = "VehicleGroundIris",
			clipName = "StartUp"
		}, f1_arg1 ) --[[ @ 0]]
		if not f3_local0 then
			f3_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f3_local0
	end ) --[[ @ 0]]
	self:addElement( VehicleGroundIris ) --[[ @ 0]]
	self.VehicleGroundIris = VehicleGroundIris --[[ @ 0]]
	
	local dpsVehicleReticle = CoD.vhud_ms_Reticle.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	dpsVehicleReticle:mergeStateConditions( {
		{
			stateName = "Zoom",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "zoomed" )
			end
		}
	} ) --[[ @ 0]]
	dpsVehicleReticle:linkToElementModel( dpsVehicleReticle, "zoomed", true, function ( model )
		f1_arg0:updateElementState( dpsVehicleReticle, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "zoomed"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	dpsVehicleReticle:setRGB( 1, 0.59, 0.59 ) --[[ @ 0]]
	dpsVehicleReticle:setAlpha( 0.38 ) --[[ @ 0]]
	dpsVehicleReticle:linkToElementModel( self, nil, false, function ( model )
		dpsVehicleReticle:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	dpsVehicleReticle:registerEventHandler( "menu_loaded", function ( element, event )
		local f7_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f7_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f7_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		PlayClipOnElement( self, {
			elementName = "dpsVehicleReticle",
			clipName = "StartUp"
		}, f1_arg1 ) --[[ @ 0]]
		if not f7_local0 then
			f7_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f7_local0
	end ) --[[ @ 0]]
	self:addElement( dpsVehicleReticle ) --[[ @ 0]]
	self.dpsVehicleReticle = dpsVehicleReticle --[[ @ 0]]
	
	local vhudagrButtonContainer = CoD.vhud_generic_button_layout.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	vhudagrButtonContainer:linkToElementModel( self, "bindings", false, function ( model )
		vhudagrButtonContainer:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	vhudagrButtonContainer:registerEventHandler( "menu_loaded", function ( element, event )
		local f9_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f9_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f9_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		SizeToSafeArea( element, f1_arg1 ) --[[ @ 0]]
		if not f9_local0 then
			f9_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f9_local0
	end ) --[[ @ 0]]
	self:addElement( vhudagrButtonContainer ) --[[ @ 0]]
	self.vhudagrButtonContainer = vhudagrButtonContainer --[[ @ 0]]
	
	local vhudsentineloutOfRangeLabels0 = CoD.vhud_sentinel_outOfRangeLabels.new( f1_arg0, f1_arg1, 0.5, 0.5, -395, 395, 0.5, 0.5, -184.5, 184.5 ) --[[ @ 0]]
	vhudsentineloutOfRangeLabels0:linkToElementModel( self, nil, false, function ( model )
		vhudsentineloutOfRangeLabels0:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( vhudsentineloutOfRangeLabels0 ) --[[ @ 0]]
	self.vhudsentineloutOfRangeLabels0 = vhudsentineloutOfRangeLabels0 --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.vhud_ms_Internal.__resetProperties = function ( f11_arg0 )
	f11_arg0.dpsVehicleReticle:completeAnimation() --[[ @ 0]]
	f11_arg0.VehicleGroundIris:completeAnimation() --[[ @ 0]]
	f11_arg0.VignetteContainer:completeAnimation() --[[ @ 0]]
	f11_arg0.dpsVehicleReticle:setRGB( 1, 0.59, 0.59 ) --[[ @ 0]]
	f11_arg0.dpsVehicleReticle:setAlpha( 0.38 ) --[[ @ 0]]
	f11_arg0.VehicleGroundIris:setRGB( 1, 0.35, 0.35 ) --[[ @ 0]]
	f11_arg0.VehicleGroundIris:setAlpha( 0.8 ) --[[ @ 0]]
	f11_arg0.VignetteContainer:setAlpha( 0.1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.vhud_ms_Internal.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f12_arg0.VignetteContainer:completeAnimation() --[[ @ 0]]
			f12_arg0.VignetteContainer:setAlpha( 1 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.VignetteContainer ) --[[ @ 0]]
			f12_arg0.VehicleGroundIris:completeAnimation() --[[ @ 0]]
			f12_arg0.VehicleGroundIris:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f12_arg0.VehicleGroundIris:setAlpha( 1 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.VehicleGroundIris ) --[[ @ 0]]
			f12_arg0.dpsVehicleReticle:completeAnimation() --[[ @ 0]]
			f12_arg0.dpsVehicleReticle:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f12_arg0.dpsVehicleReticle:setAlpha( 1 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.dpsVehicleReticle ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.vhud_ms_Internal.__onClose = function ( f13_arg0 )
	f13_arg0.VignetteContainer:close() --[[ @ 0]]
	f13_arg0.VehicleGroundIris:close() --[[ @ 0]]
	f13_arg0.dpsVehicleReticle:close() --[[ @ 0]]
	f13_arg0.vhudagrButtonContainer:close() --[[ @ 0]]
	f13_arg0.vhudsentineloutOfRangeLabels0:close() --[[ @ 0]]
end
 --[[ @ 0]]
