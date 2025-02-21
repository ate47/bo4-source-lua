-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "ui/uieditor/widgets/vehiclehuds/genericvhuddamagearea" ) --[[ @ 0]]

CoD.vhud_sentinel_DamageIconWidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.vhud_sentinel_DamageIconWidget.__defaultWidth = 237 --[[ @ 0]]
CoD.vhud_sentinel_DamageIconWidget.__defaultHeight = 106 --[[ @ 0]]
CoD.vhud_sentinel_DamageIconWidget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.vhud_sentinel_DamageIconWidget ) --[[ @ 0]]
	self.id = "vhud_sentinel_DamageIconWidget" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local DamageIconLine0 = LUI.UIImage.new( 0.5, 0.5, -119, 119, 0.5, 0.5, -53.5, 53.5 ) --[[ @ 0]]
	DamageIconLine0:setRGB( 0.6, 0.82, 0.91 ) --[[ @ 0]]
	DamageIconLine0:setAlpha( 0.3 ) --[[ @ 0]]
	DamageIconLine0:setZoom( -20 ) --[[ @ 0]]
	DamageIconLine0:setImage( RegisterImage( @"uie_t7_cp_hud_vehicle_wasp_damageiconline" ) ) --[[ @ 0]]
	DamageIconLine0:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( DamageIconLine0 ) --[[ @ 0]]
	self.DamageIconLine0 = DamageIconLine0 --[[ @ 0]]
	
	local DamageIconRed = LUI.UIImage.new( 0.5, 0.5, -119, 119, 0.5, 0.5, -53.5, 53.5 ) --[[ @ 0]]
	DamageIconRed:setImage( RegisterImage( @"uie_t7_cp_hud_vehicle_wasp_damageiconred" ) ) --[[ @ 0]]
	DamageIconRed:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe" ) ) --[[ @ 0]]
	DamageIconRed:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	DamageIconRed:setShaderVector( 2, 1, 0, 0, 0 ) --[[ @ 0]]
	DamageIconRed:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	DamageIconRed:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	DamageIconRed:linkToElementModel( self, "damage", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			DamageIconRed:setShaderVector( 0, CoD.GetVectorComponentFromString( f2_local0, 1 ), CoD.GetVectorComponentFromString( f2_local0, 2 ), CoD.GetVectorComponentFromString( f2_local0, 3 ), CoD.GetVectorComponentFromString( f2_local0, 4 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( DamageIconRed ) --[[ @ 0]]
	self.DamageIconRed = DamageIconRed --[[ @ 0]]
	
	local DamageIconLine = LUI.UIImage.new( 0.5, 0.5, -119, 119, 0.5, 0.5, -53.5, 53.5 ) --[[ @ 0]]
	DamageIconLine:setRGB( 0.6, 0.82, 0.91 ) --[[ @ 0]]
	DamageIconLine:setImage( RegisterImage( @"uie_t7_cp_hud_vehicle_wasp_damageiconline" ) ) --[[ @ 0]]
	DamageIconLine:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( DamageIconLine ) --[[ @ 0]]
	self.DamageIconLine = DamageIconLine --[[ @ 0]]
	
	local DamageIconDots = LUI.UIImage.new( 0.5, 0.5, -119, 119, 0.5, 0.5, -53.5, 53.5 ) --[[ @ 0]]
	DamageIconDots:setRGB( 0.6, 0.82, 0.91 ) --[[ @ 0]]
	DamageIconDots:setImage( RegisterImage( @"uie_t7_cp_hud_vehicle_wasp_damageicondots" ) ) --[[ @ 0]]
	DamageIconDots:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( DamageIconDots ) --[[ @ 0]]
	self.DamageIconDots = DamageIconDots --[[ @ 0]]
	
	local genericVHUDdamageArea0 = CoD.genericVHUDdamageArea.new( f1_arg0, f1_arg1, 0, 0, 43, 193, 0, 0, -22, 128 ) --[[ @ 0]]
	genericVHUDdamageArea0:setAlpha( 0 ) --[[ @ 0]]
	genericVHUDdamageArea0:linkToElementModel( self, nil, false, function ( model )
		genericVHUDdamageArea0:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( genericVHUDdamageArea0 ) --[[ @ 0]]
	self.genericVHUDdamageArea0 = genericVHUDdamageArea0 --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "RAPS",
			condition = function ( menu, element, event )
				return IsCampaign() and IsVehicleOfType( f1_arg1, "raps" )
			end
		}
	} ) --[[ @ 0]]
	local f1_local6 = self --[[ @ 0]]
	local f1_local7 = self.subscribeToModel --[[ @ 0]]
	local f1_local8 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local7( f1_local6, f1_local8["lobbyRoot.lobbyNav"], function ( f5_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local6 = self --[[ @ 0]]
	f1_local7 = self.subscribeToModel --[[ @ 0]]
	f1_local8 = DataSources.VehicleInfo.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local7( f1_local6, f1_local8.vehicleType, function ( f6_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f6_arg0:get(),
			modelName = "vehicleType"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.vhud_sentinel_DamageIconWidget.__resetProperties = function ( f7_arg0 )
	f7_arg0.DamageIconLine0:completeAnimation() --[[ @ 0]]
	f7_arg0.DamageIconRed:completeAnimation() --[[ @ 0]]
	f7_arg0.DamageIconLine:completeAnimation() --[[ @ 0]]
	f7_arg0.DamageIconDots:completeAnimation() --[[ @ 0]]
	f7_arg0.genericVHUDdamageArea0:completeAnimation() --[[ @ 0]]
	f7_arg0.DamageIconLine0:setAlpha( 0.3 ) --[[ @ 0]]
	f7_arg0.DamageIconRed:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.DamageIconLine:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.DamageIconDots:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.genericVHUDdamageArea0:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.vhud_sentinel_DamageIconWidget.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	RAPS = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f9_arg0.DamageIconLine0:completeAnimation() --[[ @ 0]]
			f9_arg0.DamageIconLine0:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.DamageIconLine0 ) --[[ @ 0]]
			f9_arg0.DamageIconRed:completeAnimation() --[[ @ 0]]
			f9_arg0.DamageIconRed:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.DamageIconRed ) --[[ @ 0]]
			f9_arg0.DamageIconLine:completeAnimation() --[[ @ 0]]
			f9_arg0.DamageIconLine:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.DamageIconLine ) --[[ @ 0]]
			f9_arg0.DamageIconDots:completeAnimation() --[[ @ 0]]
			f9_arg0.DamageIconDots:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.DamageIconDots ) --[[ @ 0]]
			f9_arg0.genericVHUDdamageArea0:completeAnimation() --[[ @ 0]]
			f9_arg0.genericVHUDdamageArea0:setAlpha( 1 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.genericVHUDdamageArea0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.vhud_sentinel_DamageIconWidget.__onClose = function ( f10_arg0 )
	f10_arg0.DamageIconRed:close() --[[ @ 0]]
	f10_arg0.genericVHUDdamageArea0:close() --[[ @ 0]]
end
 --[[ @ 0]]
