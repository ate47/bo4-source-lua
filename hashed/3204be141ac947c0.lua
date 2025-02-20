-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "ui/uieditor/widgets/mphudwidgets/waypoint_textbg" ) --[[ @ 0]]
require( "ui/uieditor/widgets/mphudwidgets/waypointarrowcontainer" ) --[[ @ 0]]
require( "ui/uieditor/widgets/mphudwidgets/waypointcenter" ) --[[ @ 0]]

CoD.WaypointObjective = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WaypointObjective.__defaultWidth = 120 --[[ @ 0]]
CoD.WaypointObjective.__defaultHeight = 180 --[[ @ 0]]
CoD.WaypointObjective.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WaypointObjective ) --[[ @ 0]]
	self.id = "WaypointObjective" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local ProgressMeterFrame = LUI.UIImage.new( 0.5, 0.5, -63, 65, 0.5, 0.5, -64, 64 ) --[[ @ 0]]
	ProgressMeterFrame:setImage( RegisterImage( @"hash_128E3C0049FF4CC9" ) ) --[[ @ 0]]
	self:addElement( ProgressMeterFrame ) --[[ @ 0]]
	self.ProgressMeterFrame = ProgressMeterFrame --[[ @ 0]]
	
	local WaypointArrowDownNotClampedContainer = CoD.WaypointArrowContainer.new( f1_arg0, f1_arg1, 0.5, 0.5, -21, 21, 0.5, 0.5, -25, 21 ) --[[ @ 0]]
	WaypointArrowDownNotClampedContainer:mergeStateConditions( {
		{
			stateName = "Show",
			condition = function ( menu, element, event )
				local f2_local0 --[[ @ 0]]
				if not ParentObjectivePropertyIsTrue( element, "hide_arrow" ) then
					f2_local0 = not CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "clamped" ) --[[ @ 0]]
				else
					f2_local0 = false --[[ @ 0]]
				end
				return f2_local0
			end
		}
	} ) --[[ @ 0]]
	WaypointArrowDownNotClampedContainer:linkToElementModel( WaypointArrowDownNotClampedContainer, "clamped", true, function ( model )
		f1_arg0:updateElementState( WaypointArrowDownNotClampedContainer, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "clamped"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	WaypointArrowDownNotClampedContainer:setAlpha( 0.95 ) --[[ @ 0]]
	WaypointArrowDownNotClampedContainer:linkToElementModel( self, nil, false, function ( model )
		WaypointArrowDownNotClampedContainer:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( WaypointArrowDownNotClampedContainer ) --[[ @ 0]]
	self.WaypointArrowDownNotClampedContainer = WaypointArrowDownNotClampedContainer --[[ @ 0]]
	
	local WaypointArrowContainer = CoD.WaypointArrowContainer.new( f1_arg0, f1_arg1, 0.5, 0.5, -21, 21, 0.5, 0.5, -25, 21 ) --[[ @ 0]]
	WaypointArrowContainer:setAlpha( 0.95 ) --[[ @ 0]]
	WaypointArrowContainer:linkToElementModel( self, "direction", true, function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			WaypointArrowContainer:setZRot( Add( 90, f5_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	WaypointArrowContainer:linkToElementModel( self, nil, false, function ( model )
		WaypointArrowContainer:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( WaypointArrowContainer ) --[[ @ 0]]
	self.WaypointArrowContainer = WaypointArrowContainer --[[ @ 0]]
	
	local progressMeter = LUI.UIImage.new( 0.5, 0.5, -63, 65, 0.5, 0.5, -65, 63 ) --[[ @ 0]]
	progressMeter:setAlpha( 0.9 ) --[[ @ 0]]
	progressMeter:setImage( RegisterImage( @"hash_7E72D91F1F5D8EA4" ) ) --[[ @ 0]]
	progressMeter:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_clock_normal" ) ) --[[ @ 0]]
	progressMeter:setShaderVector( 1, 0.5, 0, 0, 0 ) --[[ @ 0]]
	progressMeter:setShaderVector( 2, 0.43, 0, 0, 0 ) --[[ @ 0]]
	progressMeter:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	progressMeter:setShaderVector( 4, 1, 0.1, 0, 0 ) --[[ @ 0]]
	progressMeter:linkToElementModel( self, "progress", true, function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			progressMeter:setShaderVector( 0, CoD.GetVectorComponentFromString( f7_local0, 1 ), CoD.GetVectorComponentFromString( f7_local0, 2 ), CoD.GetVectorComponentFromString( f7_local0, 3 ), CoD.GetVectorComponentFromString( f7_local0, 4 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( progressMeter ) --[[ @ 0]]
	self.progressMeter = progressMeter --[[ @ 0]]
	
	local progressMeterContested = LUI.UIImage.new( 0.5, 0.5, -34, 36, 0.5, 0.5, -36, 34 ) --[[ @ 0]]
	progressMeterContested:setRGB( 1, 0.4, 0 ) --[[ @ 0]]
	progressMeterContested:setAlpha( 0 ) --[[ @ 0]]
	progressMeterContested:setImage( RegisterImage( @"uie_t7_hud_interact_meter_diamond" ) ) --[[ @ 0]]
	progressMeterContested:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_clock_normal" ) ) --[[ @ 0]]
	progressMeterContested:setShaderVector( 0, 1.03, 0.13, 0, 0 ) --[[ @ 0]]
	progressMeterContested:setShaderVector( 1, 0.5, 0, 0, 0 ) --[[ @ 0]]
	progressMeterContested:setShaderVector( 2, 0.5, 0, 0, 0 ) --[[ @ 0]]
	progressMeterContested:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	progressMeterContested:setShaderVector( 4, 3, 0.07, 0, 0 ) --[[ @ 0]]
	self:addElement( progressMeterContested ) --[[ @ 0]]
	self.progressMeterContested = progressMeterContested --[[ @ 0]]
	
	local WaypointText = CoD.Waypoint_TextBG.new( f1_arg0, f1_arg1, 0.5, 0.5, -60, 60, 0.5, 0.5, -68, -36 ) --[[ @ 0]]
	WaypointText:linkToElementModel( self, nil, false, function ( model )
		WaypointText:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	WaypointText:linkToElementModel( self, "text", true, function ( model )
		local f9_local0 = model:get() --[[ @ 0]]
		if f9_local0 ~= nil then
			WaypointText.WaypointTextWithBG.text:setText( Engine[@"hash_4F9F1239CFD921FE"]( f9_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	WaypointText:linkToElementModel( self, "distanceText", true, function ( model )
		local f10_local0 = model:get() --[[ @ 0]]
		if f10_local0 ~= nil then
			WaypointText.DistanceTextWithBG.text:setText( LocalizeIntoStringIfNotEmpty( @"hash_37235825812D46C6", f10_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( WaypointText ) --[[ @ 0]]
	self.WaypointText = WaypointText --[[ @ 0]]
	
	local WaypointCenter = CoD.WaypointCenter.new( f1_arg0, f1_arg1, 0.5, 0.5, -31.5, 32.5, 0.5, 0.5, -32.5, 31.5 ) --[[ @ 0]]
	WaypointCenter:setAlpha( 0.95 ) --[[ @ 0]]
	WaypointCenter:linkToElementModel( self, nil, false, function ( model )
		WaypointCenter:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( WaypointCenter ) --[[ @ 0]]
	self.WaypointCenter = WaypointCenter --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return CoD.WaypointUtility.ShouldHideWaypoint( element, f1_arg1 )
			end
		},
		{
			stateName = "NoIcon",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueNonEmptyString( element, f1_arg1, "icon" )
			end
		},
		{
			stateName = "NoFrame",
			condition = function ( menu, element, event )
				return not CoD.WaypointUtility.ShouldShowWaypointFrame( f1_arg1, self )
			end
		},
		{
			stateName = "Contested",
			condition = function ( menu, element, event )
				return CoD.WaypointUtility.ShouldShowWaypointAsContested( f1_arg1, self )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "team", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "team"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "clientUseMask", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "clientUseMask"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "state", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "state"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "teamMask", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "teamMask"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "isOffscreen", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "isOffscreen"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local8 = self --[[ @ 0]]
	local f1_local9 = self.subscribeToModel --[[ @ 0]]
	local f1_local10 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local9( f1_local8, f1_local10["interactivePrompt.activeObjectiveID"], function ( f21_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f21_arg0:get(),
			modelName = "interactivePrompt.activeObjectiveID"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local8 = self --[[ @ 0]]
	f1_local9 = self.subscribeToModel --[[ @ 0]]
	f1_local10 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local9( f1_local8, f1_local10["hudItems.hacked"], function ( f22_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f22_arg0:get(),
			modelName = "hudItems.hacked"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local8 = self --[[ @ 0]]
	f1_local9 = self.subscribeToModel --[[ @ 0]]
	f1_local10 = DataSources.CurrentPrimaryOffhand.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local9( f1_local8, f1_local10.ref, function ( f23_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f23_arg0:get(),
			modelName = "ref"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local8 = self --[[ @ 0]]
	f1_local9 = self.subscribeToModel --[[ @ 0]]
	f1_local10 = DataSources.LethalOffhands.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local9( f1_local8, f1_local10.activeIndex, function ( f24_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f24_arg0:get(),
			modelName = "activeIndex"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local8 = self --[[ @ 0]]
	f1_local9 = self.subscribeToModel --[[ @ 0]]
	f1_local10 = DataSources.CurrentPrimaryOffhand.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local9( f1_local8, f1_local10.count, function ( f25_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f25_arg0:get(),
			modelName = "count"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local8 = self --[[ @ 0]]
	f1_local9 = self.subscribeToModel --[[ @ 0]]
	f1_local10 = DataSources.CurrentSecondaryOffhand.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local9( f1_local8, f1_local10.secondaryOffhand, function ( f26_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f26_arg0:get(),
			modelName = "secondaryOffhand"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local8 = self --[[ @ 0]]
	f1_local9 = self.subscribeToModel --[[ @ 0]]
	f1_local10 = DataSources.CurrentSecondaryOffhand.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local9( f1_local8, f1_local10.secondaryOffhandCount, function ( f27_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f27_arg0:get(),
			modelName = "secondaryOffhandCount"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local8 = self --[[ @ 0]]
	f1_local9 = self.subscribeToModel --[[ @ 0]]
	f1_local10 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local9( f1_local8, f1_local10["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_66FFF566DCC09BBD"]], function ( f28_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f28_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_66FFF566DCC09BBD"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local8 = self --[[ @ 0]]
	f1_local9 = self.subscribeToModel --[[ @ 0]]
	f1_local10 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local9( f1_local8, f1_local10["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_7ADC477DDE486DD7"]], function ( f29_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f29_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_7ADC477DDE486DD7"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local8 = self --[[ @ 0]]
	f1_local9 = self.subscribeToModel --[[ @ 0]]
	f1_local10 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local9( f1_local8, f1_local10["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_59333FC97F7870"]], function ( f30_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f30_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_59333FC97F7870"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local8 = self --[[ @ 0]]
	f1_local9 = self.subscribeToModel --[[ @ 0]]
	f1_local10 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local9( f1_local8, f1_local10["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_1C630DB86D235A5"]], function ( f31_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f31_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_1C630DB86D235A5"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:linkToElementModel( self, "icon", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "icon"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "progress", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "progress"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local9 = self --[[ @ 0]]
	CoD.HUDUtility.UseHintTextForActiveButtonPromptText( self, f1_arg1 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.WaypointObjective.__resetProperties = function ( f34_arg0 )
	f34_arg0.WaypointArrowContainer:completeAnimation() --[[ @ 0]]
	f34_arg0.WaypointArrowDownNotClampedContainer:completeAnimation() --[[ @ 0]]
	f34_arg0.WaypointCenter:completeAnimation() --[[ @ 0]]
	f34_arg0.WaypointText:completeAnimation() --[[ @ 0]]
	f34_arg0.progressMeter:completeAnimation() --[[ @ 0]]
	f34_arg0.ProgressMeterFrame:completeAnimation() --[[ @ 0]]
	f34_arg0.progressMeterContested:completeAnimation() --[[ @ 0]]
	f34_arg0.WaypointArrowContainer:setAlpha( 0.95 ) --[[ @ 0]]
	f34_arg0.WaypointArrowDownNotClampedContainer:setAlpha( 0.95 ) --[[ @ 0]]
	f34_arg0.WaypointCenter:setLeftRight( 0.5, 0.5, -31.5, 32.5 ) --[[ @ 0]]
	f34_arg0.WaypointCenter:setTopBottom( 0.5, 0.5, -32.5, 31.5 ) --[[ @ 0]]
	f34_arg0.WaypointCenter:setAlpha( 0.95 ) --[[ @ 0]]
	f34_arg0.WaypointText:setLeftRight( 0.5, 0.5, -60, 60 ) --[[ @ 0]]
	f34_arg0.WaypointText:setTopBottom( 0.5, 0.5, -68, -36 ) --[[ @ 0]]
	f34_arg0.WaypointText:setAlpha( 1 ) --[[ @ 0]]
	f34_arg0.progressMeter:setAlpha( 0.9 ) --[[ @ 0]]
	f34_arg0.ProgressMeterFrame:setAlpha( 1 ) --[[ @ 0]]
	f34_arg0.progressMeterContested:setAlpha( 0 ) --[[ @ 0]]
	f34_arg0.progressMeterContested:setImage( RegisterImage( @"uie_t7_hud_interact_meter_diamond" ) ) --[[ @ 0]]
	f34_arg0.progressMeterContested:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_clock_normal" ) ) --[[ @ 0]]
	f34_arg0.progressMeterContested:setShaderVector( 0, 1.03, 0.13, 0, 0 ) --[[ @ 0]]
	f34_arg0.progressMeterContested:setShaderVector( 1, 0.5, 0, 0, 0 ) --[[ @ 0]]
	f34_arg0.progressMeterContested:setShaderVector( 2, 0.5, 0, 0, 0 ) --[[ @ 0]]
	f34_arg0.progressMeterContested:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	f34_arg0.progressMeterContested:setShaderVector( 4, 3, 0.07, 0, 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.WaypointObjective.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f35_arg0, f35_arg1 )
			f35_arg0:__resetProperties() --[[ @ 0]]
			f35_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f35_arg0.WaypointArrowDownNotClampedContainer:completeAnimation() --[[ @ 0]]
			f35_arg0.WaypointArrowDownNotClampedContainer:setAlpha( 0 ) --[[ @ 0]]
			f35_arg0.clipFinished( f35_arg0.WaypointArrowDownNotClampedContainer ) --[[ @ 0]]
			f35_arg0.WaypointArrowContainer:completeAnimation() --[[ @ 0]]
			f35_arg0.WaypointArrowContainer:setAlpha( 0 ) --[[ @ 0]]
			f35_arg0.clipFinished( f35_arg0.WaypointArrowContainer ) --[[ @ 0]]
			f35_arg0.WaypointCenter:completeAnimation() --[[ @ 0]]
			f35_arg0.WaypointCenter:setLeftRight( 0.5, 0.5, -31.5, 32.5 ) --[[ @ 0]]
			f35_arg0.WaypointCenter:setTopBottom( 0.5, 0.5, -32.5, 31.5 ) --[[ @ 0]]
			f35_arg0.clipFinished( f35_arg0.WaypointCenter ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f36_arg0, f36_arg1 )
			f36_arg0:__resetProperties() --[[ @ 0]]
			f36_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			f36_arg0.ProgressMeterFrame:completeAnimation() --[[ @ 0]]
			f36_arg0.ProgressMeterFrame:setAlpha( 0 ) --[[ @ 0]]
			f36_arg0.clipFinished( f36_arg0.ProgressMeterFrame ) --[[ @ 0]]
			f36_arg0.WaypointArrowDownNotClampedContainer:completeAnimation() --[[ @ 0]]
			f36_arg0.WaypointArrowDownNotClampedContainer:setAlpha( 0 ) --[[ @ 0]]
			f36_arg0.clipFinished( f36_arg0.WaypointArrowDownNotClampedContainer ) --[[ @ 0]]
			f36_arg0.WaypointArrowContainer:completeAnimation() --[[ @ 0]]
			f36_arg0.WaypointArrowContainer:setAlpha( 0 ) --[[ @ 0]]
			f36_arg0.clipFinished( f36_arg0.WaypointArrowContainer ) --[[ @ 0]]
			f36_arg0.progressMeter:completeAnimation() --[[ @ 0]]
			f36_arg0.progressMeter:setAlpha( 0 ) --[[ @ 0]]
			f36_arg0.clipFinished( f36_arg0.progressMeter ) --[[ @ 0]]
			f36_arg0.WaypointText:completeAnimation() --[[ @ 0]]
			f36_arg0.WaypointText:setAlpha( 0 ) --[[ @ 0]]
			f36_arg0.clipFinished( f36_arg0.WaypointText ) --[[ @ 0]]
			f36_arg0.WaypointCenter:completeAnimation() --[[ @ 0]]
			f36_arg0.WaypointCenter:setAlpha( 0 ) --[[ @ 0]]
			f36_arg0.clipFinished( f36_arg0.WaypointCenter ) --[[ @ 0]]
		end
	},
	NoIcon = {
		DefaultClip = function ( f37_arg0, f37_arg1 )
			f37_arg0:__resetProperties() --[[ @ 0]]
			f37_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f37_arg0.ProgressMeterFrame:completeAnimation() --[[ @ 0]]
			f37_arg0.ProgressMeterFrame:setAlpha( 0 ) --[[ @ 0]]
			f37_arg0.clipFinished( f37_arg0.ProgressMeterFrame ) --[[ @ 0]]
			f37_arg0.progressMeter:completeAnimation() --[[ @ 0]]
			f37_arg0.progressMeter:setAlpha( 0 ) --[[ @ 0]]
			f37_arg0.clipFinished( f37_arg0.progressMeter ) --[[ @ 0]]
			f37_arg0.WaypointText:completeAnimation() --[[ @ 0]]
			f37_arg0.WaypointText:setLeftRight( 0.5, 0.5, -60, 60 ) --[[ @ 0]]
			f37_arg0.WaypointText:setTopBottom( 0.5, 0.5, -14, 18 ) --[[ @ 0]]
			f37_arg0.clipFinished( f37_arg0.WaypointText ) --[[ @ 0]]
			f37_arg0.WaypointCenter:completeAnimation() --[[ @ 0]]
			f37_arg0.WaypointCenter:setAlpha( 0 ) --[[ @ 0]]
			f37_arg0.clipFinished( f37_arg0.WaypointCenter ) --[[ @ 0]]
		end
	},
	NoFrame = {
		DefaultClip = function ( f38_arg0, f38_arg1 )
			f38_arg0:__resetProperties() --[[ @ 0]]
			f38_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f38_arg0.ProgressMeterFrame:completeAnimation() --[[ @ 0]]
			f38_arg0.ProgressMeterFrame:setAlpha( 0 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.ProgressMeterFrame ) --[[ @ 0]]
			f38_arg0.progressMeter:completeAnimation() --[[ @ 0]]
			f38_arg0.progressMeter:setAlpha( 0 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.progressMeter ) --[[ @ 0]]
		end
	},
	Contested = {
		DefaultClip = function ( f39_arg0, f39_arg1 )
			f39_arg0:__resetProperties() --[[ @ 0]]
			f39_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f39_arg0.WaypointArrowDownNotClampedContainer:completeAnimation() --[[ @ 0]]
			f39_arg0.WaypointArrowDownNotClampedContainer:setAlpha( 0 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.WaypointArrowDownNotClampedContainer ) --[[ @ 0]]
			f39_arg0.WaypointArrowContainer:completeAnimation() --[[ @ 0]]
			f39_arg0.WaypointArrowContainer:setAlpha( 0 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.WaypointArrowContainer ) --[[ @ 0]]
			f39_arg0.progressMeter:completeAnimation() --[[ @ 0]]
			f39_arg0.progressMeter:setAlpha( 0 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.progressMeter ) --[[ @ 0]]
			f39_arg0.progressMeterContested:completeAnimation() --[[ @ 0]]
			f39_arg0.progressMeterContested:setAlpha( 0.9 ) --[[ @ 0]]
			f39_arg0.progressMeterContested:setImage( RegisterImage( @"uie_hud_mp_waypoint_objective_diamond" ) ) --[[ @ 0]]
			f39_arg0.progressMeterContested:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_clock_normal" ) ) --[[ @ 0]]
			f39_arg0.progressMeterContested:setShaderVector( 0, 1.03, 0.13, 0, 0 ) --[[ @ 0]]
			f39_arg0.progressMeterContested:setShaderVector( 1, 0.5, 0, 0, 0 ) --[[ @ 0]]
			f39_arg0.progressMeterContested:setShaderVector( 2, 0.5, 0, 0, 0 ) --[[ @ 0]]
			f39_arg0.progressMeterContested:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
			f39_arg0.progressMeterContested:setShaderVector( 4, 0, 0.07, 0, 0 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.progressMeterContested ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.WaypointObjective.__onClose = function ( f40_arg0 )
	f40_arg0.WaypointArrowDownNotClampedContainer:close() --[[ @ 0]]
	f40_arg0.WaypointArrowContainer:close() --[[ @ 0]]
	f40_arg0.progressMeter:close() --[[ @ 0]]
	f40_arg0.WaypointText:close() --[[ @ 0]]
	f40_arg0.WaypointCenter:close() --[[ @ 0]]
end
 --[[ @ 0]]
