-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:49505c06d12eccc1" ) --[[ @ 0]]
require( "x64:2b211c35aaad19f5" ) --[[ @ 0]]

CoD.genericVHUDHealthAndRadar = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.genericVHUDHealthAndRadar.__defaultWidth = 293 --[[ @ 0]]
CoD.genericVHUDHealthAndRadar.__defaultHeight = 749 --[[ @ 0]]
CoD.genericVHUDHealthAndRadar.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.genericVHUDHealthAndRadar ) --[[ @ 0]]
	self.id = "genericVHUDHealthAndRadar" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local BlurMask = LUI.UIImage.new( 1, 1, -366, -86, 1, 1, -308, -28 ) --[[ @ 0]]
	BlurMask:setImage( RegisterImage( @"uie_hud_minimap_outer_ring" ) ) --[[ @ 0]]
	BlurMask:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	BlurMask:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( BlurMask ) --[[ @ 0]]
	self.BlurMask = BlurMask --[[ @ 0]]
	
	local vehicleRadar = CoD.vehicleRadar.new( f1_arg0, f1_arg1, 1, 1, -366, -86, 1, 1, -308, -28 ) --[[ @ 0]]
	vehicleRadar:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "enableRadar" )
			end
		}
	} ) --[[ @ 0]]
	vehicleRadar:linkToElementModel( vehicleRadar, "enableRadar", true, function ( model )
		f1_arg0:updateElementState( vehicleRadar, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "enableRadar"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	vehicleRadar:linkToElementModel( self, nil, false, function ( model )
		vehicleRadar:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( vehicleRadar ) --[[ @ 0]]
	self.vehicleRadar = vehicleRadar --[[ @ 0]]
	
	local PooledVehicleHealthWidget = CoD.genericPooledVehicleHealthWidget.new( f1_arg0, f1_arg1, 1, 1, -125, -31, 0.5, 0.5, 85.5, 301.5 ) --[[ @ 0]]
	PooledVehicleHealthWidget:linkToElementModel( self, nil, false, function ( model )
		PooledVehicleHealthWidget:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( PooledVehicleHealthWidget ) --[[ @ 0]]
	self.PooledVehicleHealthWidget = PooledVehicleHealthWidget --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "HideRadarBlur",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "enableRadar" )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "enableRadar", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "enableRadar"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.genericVHUDHealthAndRadar.__resetProperties = function ( f8_arg0 )
	f8_arg0.BlurMask:completeAnimation() --[[ @ 0]]
	f8_arg0.BlurMask:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.genericVHUDHealthAndRadar.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	HideRadarBlur = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f10_arg0.BlurMask:completeAnimation() --[[ @ 0]]
			f10_arg0.BlurMask:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.BlurMask ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.genericVHUDHealthAndRadar.__onClose = function ( f11_arg0 )
	f11_arg0.vehicleRadar:close() --[[ @ 0]]
	f11_arg0.PooledVehicleHealthWidget:close() --[[ @ 0]]
end
 --[[ @ 0]]
