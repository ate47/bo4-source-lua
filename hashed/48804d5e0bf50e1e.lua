-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "ui/uieditor/widgets/mphudwidgets/waypointicontimer" ) --[[ @ 0]]

CoD.WaypointIconSimple = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WaypointIconSimple.__defaultWidth = 76 --[[ @ 0]]
CoD.WaypointIconSimple.__defaultHeight = 76 --[[ @ 0]]
CoD.WaypointIconSimple.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WaypointIconSimple ) --[[ @ 0]]
	self.id = "WaypointIconSimple" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local waypointCenterImage = LUI.UIImage.new( 0, 0, 0, 76, 0, 0, 0, 76 ) --[[ @ 0]]
	waypointCenterImage:linkToElementModel( self, "color", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			waypointCenterImage:setRGB( CoD.WaypointUtility.ConvertToBaseColor( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	waypointCenterImage:linkToElementModel( self, "icon", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			waypointCenterImage:setImage( RegisterImage( BlackTransparentIfNilOrEmpty( f3_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( waypointCenterImage ) --[[ @ 0]]
	self.waypointCenterImage = waypointCenterImage --[[ @ 0]]
	
	local waypointLowProgressPulse = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	waypointLowProgressPulse:setAlpha( 0 ) --[[ @ 0]]
	waypointLowProgressPulse:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta_normal" ) ) --[[ @ 0]]
	waypointLowProgressPulse:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	waypointLowProgressPulse:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	waypointLowProgressPulse:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	waypointLowProgressPulse:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	waypointLowProgressPulse:linkToElementModel( self, "color", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			waypointLowProgressPulse:setRGB( CoD.WaypointUtility.ConvertToBaseColor( f4_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	waypointLowProgressPulse:linkToElementModel( self, "progress", true, function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			waypointLowProgressPulse:setShaderVector( 2, CoD.WaypointUtility.SetIconProgressMeter( f1_arg1, true, CoD.GetVectorComponentFromString( f5_local0, 1 ), CoD.GetVectorComponentFromString( f5_local0, 2 ), CoD.GetVectorComponentFromString( f5_local0, 3 ), CoD.GetVectorComponentFromString( f5_local0, 4 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( waypointLowProgressPulse ) --[[ @ 0]]
	self.waypointLowProgressPulse = waypointLowProgressPulse --[[ @ 0]]
	
	local waypointCenterImageDarkWipe = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	waypointCenterImageDarkWipe:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta_normal" ) ) --[[ @ 0]]
	waypointCenterImageDarkWipe:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	waypointCenterImageDarkWipe:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	waypointCenterImageDarkWipe:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	waypointCenterImageDarkWipe:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	waypointCenterImageDarkWipe:linkToElementModel( self, "color", true, function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			waypointCenterImageDarkWipe:setRGB( ColorMultiply( 0.5, CoD.WaypointUtility.ConvertToBaseColor( f6_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	waypointCenterImageDarkWipe:linkToElementModel( self, "icon", true, function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			waypointCenterImageDarkWipe:setImage( RegisterImage( BlackTransparentIfNilOrEmpty( f7_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	waypointCenterImageDarkWipe:linkToElementModel( self, "progress", true, function ( model )
		local f8_local0 = model:get() --[[ @ 0]]
		if f8_local0 ~= nil then
			waypointCenterImageDarkWipe:setShaderVector( 2, CoD.WaypointUtility.SetIconProgressMeter( f1_arg1, false, CoD.GetVectorComponentFromString( f8_local0, 1 ), CoD.GetVectorComponentFromString( f8_local0, 2 ), CoD.GetVectorComponentFromString( f8_local0, 3 ), CoD.GetVectorComponentFromString( f8_local0, 4 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( waypointCenterImageDarkWipe ) --[[ @ 0]]
	self.waypointCenterImageDarkWipe = waypointCenterImageDarkWipe --[[ @ 0]]
	
	local waypointCenterImageDarkClock = CoD.WaypointIconTimer.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	waypointCenterImageDarkClock:linkToElementModel( self, "radialTimer", true, function ( model )
		local f9_local0 = model:get() --[[ @ 0]]
		if f9_local0 ~= nil then
			waypointCenterImageDarkClock:setModel( f9_local0, f1_arg1 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	waypointCenterImageDarkClock:linkToElementModel( self, "color", true, function ( model )
		local f10_local0 = model:get() --[[ @ 0]]
		if f10_local0 ~= nil then
			waypointCenterImageDarkClock.waypointCenterImageDarkClock:setRGB( ColorMultiply( 0.5, CoD.WaypointUtility.ConvertToBaseColor( f10_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	waypointCenterImageDarkClock:linkToElementModel( self, "icon", true, function ( model )
		local f11_local0 = model:get() --[[ @ 0]]
		if f11_local0 ~= nil then
			waypointCenterImageDarkClock.waypointCenterImageDarkClock:setImage( RegisterImage( BlackTransparentIfNilOrEmpty( f11_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( waypointCenterImageDarkClock ) --[[ @ 0]]
	self.waypointCenterImageDarkClock = waypointCenterImageDarkClock --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "LowProgressPulse",
			condition = function ( menu, element, event )
				return CoD.WaypointUtility.ShouldShowPulsingProgressOnIcon( f1_arg1, self )
			end
		},
		{
			stateName = "ShowProgress",
			condition = function ( menu, element, event )
				return CoD.WaypointUtility.ShouldShowProgressOnIcon( f1_arg1, self )
			end
		},
		{
			stateName = "RadialTimer",
			condition = function ( menu, element, event )
				return CoD.WaypointUtility.ShouldShowRadialTimerOnIcon( f1_arg1, self )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "objId", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "objId"
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
	local f1_local5 = self --[[ @ 0]]
	local f1_local6 = self.subscribeToModel --[[ @ 0]]
	local f1_local7 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local5, f1_local7["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_bomb_timer_a"]], function ( f17_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f17_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_bomb_timer_a"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local5 = self --[[ @ 0]]
	f1_local6 = self.subscribeToModel --[[ @ 0]]
	f1_local7 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local5, f1_local7["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_bomb_timer_b"]], function ( f18_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f18_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_bomb_timer_b"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.WaypointIconSimple.__resetProperties = function ( f19_arg0 )
	f19_arg0.waypointCenterImageDarkWipe:completeAnimation() --[[ @ 0]]
	f19_arg0.waypointLowProgressPulse:completeAnimation() --[[ @ 0]]
	f19_arg0.waypointCenterImageDarkClock:completeAnimation() --[[ @ 0]]
	f19_arg0.waypointCenterImageDarkWipe:setAlpha( 1 ) --[[ @ 0]]
	f19_arg0.waypointLowProgressPulse:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	f19_arg0.waypointLowProgressPulse:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	f19_arg0.waypointLowProgressPulse:setAlpha( 0 ) --[[ @ 0]]
	f19_arg0.waypointCenterImageDarkClock:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.WaypointIconSimple.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f20_arg0, f20_arg1 )
			f20_arg0:__resetProperties() --[[ @ 0]]
			f20_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f20_arg0.waypointLowProgressPulse:completeAnimation() --[[ @ 0]]
			f20_arg0.waypointLowProgressPulse:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.waypointLowProgressPulse ) --[[ @ 0]]
			f20_arg0.waypointCenterImageDarkWipe:completeAnimation() --[[ @ 0]]
			f20_arg0.waypointCenterImageDarkWipe:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.waypointCenterImageDarkWipe ) --[[ @ 0]]
			f20_arg0.waypointCenterImageDarkClock:completeAnimation() --[[ @ 0]]
			f20_arg0.waypointCenterImageDarkClock:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.waypointCenterImageDarkClock ) --[[ @ 0]]
		end
	},
	LowProgressPulse = {
		DefaultClip = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f21_local0 = function ( f22_arg0 )
				local f22_local0 = function ( f23_arg0 )
					f23_arg0:beginAnimation( 250 ) --[[ @ 0]]
					f23_arg0:registerEventHandler( "transition_complete_keyframe", f21_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f21_arg0.waypointLowProgressPulse:beginAnimation( 750 ) --[[ @ 0]]
				f21_arg0.waypointLowProgressPulse:setLeftRight( -0.25, 1.25, 0, 0 ) --[[ @ 0]]
				f21_arg0.waypointLowProgressPulse:setAlpha( 0 ) --[[ @ 0]]
				f21_arg0.waypointLowProgressPulse:registerEventHandler( "interrupted_keyframe", f21_arg0.clipInterrupted ) --[[ @ 0]]
				f21_arg0.waypointLowProgressPulse:registerEventHandler( "transition_complete_keyframe", f22_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f21_arg0.waypointLowProgressPulse:completeAnimation() --[[ @ 0]]
			f21_arg0.waypointLowProgressPulse:setLeftRight( 0.5, 0.5, 0, 0 ) --[[ @ 0]]
			f21_arg0.waypointLowProgressPulse:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
			f21_arg0.waypointLowProgressPulse:setAlpha( 1 ) --[[ @ 0]]
			f21_local0( f21_arg0.waypointLowProgressPulse ) --[[ @ 0]]
			f21_arg0.waypointCenterImageDarkWipe:completeAnimation() --[[ @ 0]]
			f21_arg0.waypointCenterImageDarkWipe:setAlpha( 1 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.waypointCenterImageDarkWipe ) --[[ @ 0]]
			f21_arg0.waypointCenterImageDarkClock:completeAnimation() --[[ @ 0]]
			f21_arg0.waypointCenterImageDarkClock:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.waypointCenterImageDarkClock ) --[[ @ 0]]
			f21_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	},
	ShowProgress = {
		DefaultClip = function ( f24_arg0, f24_arg1 )
			f24_arg0:__resetProperties() --[[ @ 0]]
			f24_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f24_arg0.waypointLowProgressPulse:completeAnimation() --[[ @ 0]]
			f24_arg0.waypointLowProgressPulse:setAlpha( 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.waypointLowProgressPulse ) --[[ @ 0]]
			f24_arg0.waypointCenterImageDarkWipe:completeAnimation() --[[ @ 0]]
			f24_arg0.waypointCenterImageDarkWipe:setAlpha( 1 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.waypointCenterImageDarkWipe ) --[[ @ 0]]
			f24_arg0.waypointCenterImageDarkClock:completeAnimation() --[[ @ 0]]
			f24_arg0.waypointCenterImageDarkClock:setAlpha( 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.waypointCenterImageDarkClock ) --[[ @ 0]]
		end
	},
	RadialTimer = {
		DefaultClip = function ( f25_arg0, f25_arg1 )
			f25_arg0:__resetProperties() --[[ @ 0]]
			f25_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f25_arg0.waypointLowProgressPulse:completeAnimation() --[[ @ 0]]
			f25_arg0.waypointLowProgressPulse:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.waypointLowProgressPulse ) --[[ @ 0]]
			f25_arg0.waypointCenterImageDarkWipe:completeAnimation() --[[ @ 0]]
			f25_arg0.waypointCenterImageDarkWipe:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.waypointCenterImageDarkWipe ) --[[ @ 0]]
			f25_arg0.waypointCenterImageDarkClock:completeAnimation() --[[ @ 0]]
			f25_arg0.waypointCenterImageDarkClock:setAlpha( 1 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.waypointCenterImageDarkClock ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.WaypointIconSimple.__onClose = function ( f26_arg0 )
	f26_arg0.waypointCenterImage:close() --[[ @ 0]]
	f26_arg0.waypointLowProgressPulse:close() --[[ @ 0]]
	f26_arg0.waypointCenterImageDarkWipe:close() --[[ @ 0]]
	f26_arg0.waypointCenterImageDarkClock:close() --[[ @ 0]]
end
 --[[ @ 0]]
