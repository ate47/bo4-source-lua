-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "x64:3221a97cdde7b25d" ) --[[ @ 0]]
require( "x64:4f027a1f1c4219b3" ) --[[ @ 0]]
require( "ui/uieditor/widgets/vehiclehuds/hellstorm/vhud_hellstorm_altwidget" ) --[[ @ 0]]
require( "ui/uieditor/widgets/vehiclehuds/hellstorm/vhud_hellstorm_speedwidget" ) --[[ @ 0]]

CoD.VHUDHawkInternal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.VHUDHawkInternal.__defaultWidth = 1920 --[[ @ 0]]
CoD.VHUDHawkInternal.__defaultHeight = 1080 --[[ @ 0]]
CoD.VHUDHawkInternal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	CoD.BaseUtility.InitControllerModelIfNotSet( f1_arg1, "hudItems.hawkWeakSignal", 0 ) --[[ @ 0]]
	self:setClass( CoD.VHUDHawkInternal ) --[[ @ 0]]
	self.id = "VHUDHawkInternal" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local HawkReticle = CoD.VHUDHawkReticle.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	HawkReticle:linkToElementModel( self, nil, false, function ( model )
		HawkReticle:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( HawkReticle ) --[[ @ 0]]
	self.HawkReticle = HawkReticle --[[ @ 0]]
	
	local f1_local2 = nil --[[ @ 0]]
	self.FlyUpPrompt = LUI.UIElement.createFake() --[[ @ 0]]
	local f1_local3 = nil --[[ @ 0]]
	self.FlyDownPrompt = LUI.UIElement.createFake() --[[ @ 0]]
	
	local VHUDHawkWeakSignal = CoD.VHUDHawkWeakSignal.new( f1_arg0, f1_arg1, 0.5, 0.5, -97.5, 97.5, 1, 1, -243, -145 ) --[[ @ 0]]
	VHUDHawkWeakSignal:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( VHUDHawkWeakSignal ) --[[ @ 0]]
	self.VHUDHawkWeakSignal = VHUDHawkWeakSignal --[[ @ 0]]
	
	local Speed = CoD.vhud_hellstorm_SpeedWidget.new( f1_arg0, f1_arg1, 0.5, 0.5, -500, -280, 0.5, 0.5, -6.5, 26.5 ) --[[ @ 0]]
	Speed:linkToElementModel( self, nil, false, function ( model )
		Speed:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Speed ) --[[ @ 0]]
	self.Speed = Speed --[[ @ 0]]
	
	local AltMeterL = CoD.vhud_hellstorm_AltWidget.new( f1_arg0, f1_arg1, 0.5, 0.5, 288, 508, 0.5, 0.5, -6.5, 26.5 ) --[[ @ 0]]
	AltMeterL:linkToElementModel( self, nil, false, function ( model )
		AltMeterL:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( AltMeterL ) --[[ @ 0]]
	self.AltMeterL = AltMeterL --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "WeakSignal",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueGreaterThan( f1_arg1, "hudItems.hawkWeakSignal", 0 )
			end
		}
	} ) --[[ @ 0]]
	local f1_local7 = self --[[ @ 0]]
	local f1_local8 = self.subscribeToModel --[[ @ 0]]
	local f1_local9 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local8( f1_local7, f1_local9["hudItems.hawkWeakSignal"], function ( f6_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f6_arg0:get(),
			modelName = "hudItems.hawkWeakSignal"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PreLoadFunc then
		PreLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	f1_local8 = self --[[ @ 0]]
	if IsPC() then
		SizeToHudArea( self.HawkReticle, f1_arg1 ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.VHUDHawkInternal.__resetProperties = function ( f7_arg0 )
	f7_arg0.VHUDHawkWeakSignal:completeAnimation() --[[ @ 0]]
	f7_arg0.VHUDHawkWeakSignal:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.VHUDHawkInternal.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	WeakSignal = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f9_local0 = function ( f10_arg0 )
				f9_arg0.VHUDHawkWeakSignal:beginAnimation( 200 ) --[[ @ 0]]
				f9_arg0.VHUDHawkWeakSignal:setAlpha( 1 ) --[[ @ 0]]
				f9_arg0.VHUDHawkWeakSignal:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.VHUDHawkWeakSignal:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.VHUDHawkWeakSignal:completeAnimation() --[[ @ 0]]
			f9_arg0.VHUDHawkWeakSignal:setAlpha( 0 ) --[[ @ 0]]
			f9_local0( f9_arg0.VHUDHawkWeakSignal ) --[[ @ 0]]
		end,
		DefaultState = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f11_local0 = function ( f12_arg0 )
				f11_arg0.VHUDHawkWeakSignal:beginAnimation( 200 ) --[[ @ 0]]
				f11_arg0.VHUDHawkWeakSignal:setAlpha( 0 ) --[[ @ 0]]
				f11_arg0.VHUDHawkWeakSignal:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.VHUDHawkWeakSignal:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.VHUDHawkWeakSignal:completeAnimation() --[[ @ 0]]
			f11_arg0.VHUDHawkWeakSignal:setAlpha( 1 ) --[[ @ 0]]
			f11_local0( f11_arg0.VHUDHawkWeakSignal ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.VHUDHawkInternal.__onClose = function ( f13_arg0 )
	f13_arg0.HawkReticle:close() --[[ @ 0]]
	f13_arg0.FlyUpPrompt:close() --[[ @ 0]]
	f13_arg0.FlyDownPrompt:close() --[[ @ 0]]
	f13_arg0.VHUDHawkWeakSignal:close() --[[ @ 0]]
	f13_arg0.Speed:close() --[[ @ 0]]
	f13_arg0.AltMeterL:close() --[[ @ 0]]
end
 --[[ @ 0]]
