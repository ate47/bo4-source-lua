-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.VehicleGround_IrisOutterDigi = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.VehicleGround_IrisOutterDigi.__defaultWidth = 1920 --[[ @ 0]]
CoD.VehicleGround_IrisOutterDigi.__defaultHeight = 1080 --[[ @ 0]]
CoD.VehicleGround_IrisOutterDigi.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.VehicleGround_IrisOutterDigi ) --[[ @ 0]]
	self.id = "VehicleGround_IrisOutterDigi" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local IrisOutterDigiL = LUI.UIImage.new( 0, 0, 0, 600, 0, 1, 0, 0 ) --[[ @ 0]]
	IrisOutterDigiL:setImage( RegisterImage( @"uie_t7_cp_hud_vehicle_ground_irisoutterdigil" ) ) --[[ @ 0]]
	IrisOutterDigiL:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( IrisOutterDigiL ) --[[ @ 0]]
	self.IrisOutterDigiL = IrisOutterDigiL --[[ @ 0]]
	
	local IrisOutterDigiR = LUI.UIImage.new( 1, 1, -540, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	IrisOutterDigiR:setImage( RegisterImage( @"uie_t7_cp_hud_vehicle_ground_irisoutterdigir" ) ) --[[ @ 0]]
	IrisOutterDigiR:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( IrisOutterDigiR ) --[[ @ 0]]
	self.IrisOutterDigiR = IrisOutterDigiR --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "LeavingOperationalZone",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "outOfRange" )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "outOfRange", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "outOfRange"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
