-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/entitylockon/rocketlauncherlockon_internal" ) --[[ @ 0]]

CoD.rocketLauncherLockon = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.rocketLauncherLockon.__defaultWidth = 105 --[[ @ 0]]
CoD.rocketLauncherLockon.__defaultHeight = 105 --[[ @ 0]]
CoD.rocketLauncherLockon.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.rocketLauncherLockon ) --[[ @ 0]]
	self.id = "rocketLauncherLockon" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local rocketLauncherLockonInternal0 = CoD.rocketLauncherLockon_Internal.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	rocketLauncherLockonInternal0:mergeStateConditions( {
		{
			stateName = "LockedOn",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEnumBitSet( element, f1_arg1, "status", Enum[@"rocketlaunchertargetstatesflags"][@"rocket_launcher_target_locked"] )
			end
		},
		{
			stateName = "AcquiringLock",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEnumBitSet( element, f1_arg1, "status", Enum[@"rocketlaunchertargetstatesflags"][@"rocket_launcher_target_locking"] )
			end
		}
	} ) --[[ @ 0]]
	rocketLauncherLockonInternal0:linkToElementModel( rocketLauncherLockonInternal0, "status", true, function ( model )
		f1_arg0:updateElementState( rocketLauncherLockonInternal0, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "status"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	rocketLauncherLockonInternal0:linkToElementModel( self, nil, false, function ( model )
		rocketLauncherLockonInternal0:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( rocketLauncherLockonInternal0 ) --[[ @ 0]]
	self.rocketLauncherLockonInternal0 = rocketLauncherLockonInternal0 --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalFirst( self, "setModel", function ( element, controller )
		CallCustomElementFunction_Element( element, "setupRocketLauncherTarget", f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.rocketLauncherLockon.__onClose = function ( f7_arg0 )
	f7_arg0.rocketLauncherLockonInternal0:close() --[[ @ 0]]
end
 --[[ @ 0]]
