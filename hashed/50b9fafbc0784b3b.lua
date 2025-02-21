-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/buttonprogressring" ) --[[ @ 0]]

CoD.VehicleHoldSwitchSeat = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.VehicleHoldSwitchSeat.__defaultWidth = 200 --[[ @ 0]]
CoD.VehicleHoldSwitchSeat.__defaultHeight = 48 --[[ @ 0]]
CoD.VehicleHoldSwitchSeat.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.VehicleHoldSwitchSeat ) --[[ @ 0]]
	self.id = "VehicleHoldSwitchSeat" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local label = LUI.UIText.new( 0, 0, 46, 200, 0, 0, 17, 31 ) --[[ @ 0]]
	label:setText( LocalizeToUpperString( @"menu/driver_seat" ) ) --[[ @ 0]]
	label:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	label:setLetterSpacing( 2 ) --[[ @ 0]]
	label:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( label, "setState", function ( element, controller, f2_arg2, f2_arg3, f2_arg4 )
		ScaleWidgetToLabel( self, element, -35 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( label ) --[[ @ 0]]
	self.label = label --[[ @ 0]]
	
	local progressRing = CoD.ButtonProgressRing.new( f1_arg0, f1_arg1, 0, 0, 0, 42, 0, 0, 3, 45 ) --[[ @ 0]]
	progressRing:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueNilOrZero( element, f1_arg1, "holdToExitProgress" )
			end
		}
	} ) --[[ @ 0]]
	progressRing:linkToElementModel( progressRing, "holdToExitProgress", true, function ( model )
		f1_arg0:updateElementState( progressRing, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "holdToExitProgress"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	progressRing:linkToElementModel( self, "progress", true, function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			progressRing.progressRing:setShaderVector( 0, CoD.GetVectorComponentFromString( f5_local0, 1 ), CoD.GetVectorComponentFromString( f5_local0, 2 ), CoD.GetVectorComponentFromString( f5_local0, 3 ), CoD.GetVectorComponentFromString( f5_local0, 4 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( progressRing ) --[[ @ 0]]
	self.progressRing = progressRing --[[ @ 0]]
	
	local BtnLabel = LUI.UIText.new( 0, 0, 6, 36, 0, 0, 9, 39 ) --[[ @ 0]]
	BtnLabel:setText( LocalizeToUpperString( @"hash_44E0796B86F15082" ) ) --[[ @ 0]]
	BtnLabel:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	BtnLabel:setLetterSpacing( 2 ) --[[ @ 0]]
	BtnLabel:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( BtnLabel ) --[[ @ 0]]
	self.BtnLabel = BtnLabel --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "showSwitchToDriverPrompt" ) and IsGamepad( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "showSwitchToDriverPrompt", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "showSwitchToDriverPrompt"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:appendEventHandler( "input_source_changed", function ( f8_arg0, f8_arg1 )
		f8_arg1.menu = f8_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( self, f8_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local4 = self --[[ @ 0]]
	local f1_local5 = self.subscribeToModel --[[ @ 0]]
	local f1_local6 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6.LastInput, function ( f9_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f9_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "setState", function ( element, controller, f10_arg2, f10_arg3, f10_arg4 )
		if IsSelfInState( self, "Visible" ) then
			ShowWidget( element ) --[[ @ 0]]
		else
			HideWidget( element ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.VehicleHoldSwitchSeat.__resetProperties = function ( f11_arg0 )
	f11_arg0.BtnLabel:completeAnimation() --[[ @ 0]]
	f11_arg0.progressRing:completeAnimation() --[[ @ 0]]
	f11_arg0.label:completeAnimation() --[[ @ 0]]
	f11_arg0.BtnLabel:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.progressRing:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.label:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.VehicleHoldSwitchSeat.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f12_arg0.label:completeAnimation() --[[ @ 0]]
			f12_arg0.label:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.label ) --[[ @ 0]]
			f12_arg0.progressRing:completeAnimation() --[[ @ 0]]
			f12_arg0.progressRing:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.progressRing ) --[[ @ 0]]
			f12_arg0.BtnLabel:completeAnimation() --[[ @ 0]]
			f12_arg0.BtnLabel:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.BtnLabel ) --[[ @ 0]]
		end
	},
	Visible = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.VehicleHoldSwitchSeat.__onClose = function ( f14_arg0 )
	f14_arg0.progressRing:close() --[[ @ 0]]
end
 --[[ @ 0]]
