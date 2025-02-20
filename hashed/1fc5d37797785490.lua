-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "x64:4934d3e795785e73" ) --[[ @ 0]]
require( "x64:793945e49af17e9d" ) --[[ @ 0]]
require( "x64:2012d3c45495393" ) --[[ @ 0]]
require( "x64:1e7022b38d489ba3" ) --[[ @ 0]]
require( "x64:35c14ad695a9a1a8" ) --[[ @ 0]]
require( "x64:69679faabe7638d9" ) --[[ @ 0]]
require( "ui/uieditor/widgets/vehiclehuds/hellstorm/vhud_hellstorm_altwidget" ) --[[ @ 0]]
require( "ui/uieditor/widgets/vehiclehuds/hellstorm/vhud_hellstorm_speedwidget" ) --[[ @ 0]]
require( "x64:760f4c9ffefbf94f" ) --[[ @ 0]]
require( "x64:b9c6f6499cb39da" ) --[[ @ 0]]
require( "x64:48819c673a5c0a5c" ) --[[ @ 0]]

CoD.vhud_gunship_recticle = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.vhud_gunship_recticle.__defaultWidth = 1920 --[[ @ 0]]
CoD.vhud_gunship_recticle.__defaultHeight = 1080 --[[ @ 0]]
CoD.vhud_gunship_recticle.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.vhud_gunship_recticle ) --[[ @ 0]]
	self.id = "vhud_gunship_recticle" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local vehicleHudCommonLayout = CoD.vhud_layoutFuiElements.new( f1_arg0, f1_arg1, 0.5, 1.47, -935, -935, 0.5, 0.5, -506, 376 ) --[[ @ 0]]
	self:addElement( vehicleHudCommonLayout ) --[[ @ 0]]
	self.vehicleHudCommonLayout = vehicleHudCommonLayout --[[ @ 0]]
	
	local layoutPlusGrid = CoD.vhud_layoutPlusGridLarge.new( f1_arg0, f1_arg1, 0.5, 0.5, -441.5, 441.5, 0.5, 0.5, -332.5, 334.5 ) --[[ @ 0]]
	self:addElement( layoutPlusGrid ) --[[ @ 0]]
	self.layoutPlusGrid = layoutPlusGrid --[[ @ 0]]
	
	local CommonCenterFrame = CoD.vhud_CenterFrame.new( f1_arg0, f1_arg1, 0.5, 1.5, -958.5, -958.5, 0.5, 0.5, -458, 462 ) --[[ @ 0]]
	self:addElement( CommonCenterFrame ) --[[ @ 0]]
	self.CommonCenterFrame = CommonCenterFrame --[[ @ 0]]
	
	local VehicleHp = CoD.vhud_gunship_health.new( f1_arg0, f1_arg1, 1, 1, -335.5, 17.5, 0.5, 0.5, 253, 486 ) --[[ @ 0]]
	VehicleHp:linkToElementModel( self, nil, false, function ( model )
		VehicleHp:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( VehicleHp ) --[[ @ 0]]
	self.VehicleHp = VehicleHp --[[ @ 0]]
	
	local ButtonElements = CoD.vhud_gunship_button_all.new( f1_arg0, f1_arg1, 0.5, 0.5, -529, 529, 1, 1, -328, 0 ) --[[ @ 0]]
	self:addElement( ButtonElements ) --[[ @ 0]]
	self.ButtonElements = ButtonElements --[[ @ 0]]
	
	local MessageBox = CoD.vhud_gunship_message.new( f1_arg0, f1_arg1, 0.5, 0.5, -249.5, 252.5, 1, 1, -256, 2 ) --[[ @ 0]]
	self:addElement( MessageBox ) --[[ @ 0]]
	self.MessageBox = MessageBox --[[ @ 0]]
	
	local AltMeterL = CoD.vhud_hellstorm_AltWidget.new( f1_arg0, f1_arg1, 0.5, 0.5, 182, 402, 0.5, 0.5, -21.5, 11.5 ) --[[ @ 0]]
	AltMeterL:setYRot( 6 ) --[[ @ 0]]
	AltMeterL:linkToElementModel( self, nil, false, function ( model )
		AltMeterL:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( AltMeterL ) --[[ @ 0]]
	self.AltMeterL = AltMeterL --[[ @ 0]]
	
	local Speed = CoD.vhud_hellstorm_SpeedWidget.new( f1_arg0, f1_arg1, 0.5, 0.5, -398, -178, 0.5, 0.5, -16.5, 16.5 ) --[[ @ 0]]
	Speed:linkToElementModel( self, nil, false, function ( model )
		Speed:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Speed ) --[[ @ 0]]
	self.Speed = Speed --[[ @ 0]]
	
	local FlareCounter = CoD.vhud_gunship_flare_dock.new( f1_arg0, f1_arg1, 0, 0, 394.5, 650.5, 0.5, 0.5, 12.5, 146.5 ) --[[ @ 0]]
	FlareCounter:linkToElementModel( self, nil, false, function ( model )
		FlareCounter:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( FlareCounter ) --[[ @ 0]]
	self.FlareCounter = FlareCounter --[[ @ 0]]
	
	local MultiReticle = CoD.vhud_gunship_multi_reticle.new( f1_arg0, f1_arg1, 0.5, 0.5, -100, 100, 0.5, 0.5, -100, 100 ) --[[ @ 0]]
	MultiReticle:mergeStateConditions( {
		{
			stateName = "Ammo40mm",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "selectedWeapon", 2 )
			end
		},
		{
			stateName = "Ammo25mm",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "selectedWeapon", 3 )
			end
		}
	} ) --[[ @ 0]]
	MultiReticle:linkToElementModel( MultiReticle, "selectedWeapon", true, function ( model )
		f1_arg0:updateElementState( MultiReticle, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "selectedWeapon"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	MultiReticle:linkToElementModel( self, nil, false, function ( model )
		MultiReticle:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( MultiReticle ) --[[ @ 0]]
	self.MultiReticle = MultiReticle --[[ @ 0]]
	
	local AmmoDock = CoD.vhud_gunship_ammo_dock.new( f1_arg0, f1_arg1, 1, 1, -646, -390, 0.5, 0.5, 12.5, 146.5 ) --[[ @ 0]]
	AmmoDock:mergeStateConditions( {
		{
			stateName = "Ammo40mm",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "selectedWeapon", 2 )
			end
		},
		{
			stateName = "Ammo25mm",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "selectedWeapon", 3 )
			end
		}
	} ) --[[ @ 0]]
	AmmoDock:linkToElementModel( AmmoDock, "selectedWeapon", true, function ( model )
		f1_arg0:updateElementState( AmmoDock, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "selectedWeapon"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	AmmoDock:linkToElementModel( self, nil, false, function ( model )
		AmmoDock:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( AmmoDock ) --[[ @ 0]]
	self.AmmoDock = AmmoDock --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "HiddenCodCaster",
			condition = function ( menu, element, event )
				return IsCodCaster( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	local f1_local12 = self --[[ @ 0]]
	local f1_local13 = self.subscribeToModel --[[ @ 0]]
	local f1_local14 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local13( f1_local12, f1_local14["factions.isCoDCaster"], function ( f15_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f15_arg0:get(),
			modelName = "factions.isCoDCaster"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PreLoadFunc then
		PreLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	f1_local13 = self --[[ @ 0]]
	if IsPC() then
		SizeToHudArea( self.CommonCenterFrame, f1_arg1 ) --[[ @ 0]]
	end
	f1_local13 = VehicleHp --[[ @ 0]]
	if IsPC() then
		SizeToHudArea( f1_local13, f1_arg1 ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.vhud_gunship_recticle.__resetProperties = function ( f16_arg0 )
	f16_arg0.MultiReticle:completeAnimation() --[[ @ 0]]
	f16_arg0.layoutPlusGrid:completeAnimation() --[[ @ 0]]
	f16_arg0.AmmoDock:completeAnimation() --[[ @ 0]]
	f16_arg0.FlareCounter:completeAnimation() --[[ @ 0]]
	f16_arg0.vehicleHudCommonLayout:completeAnimation() --[[ @ 0]]
	f16_arg0.ButtonElements:completeAnimation() --[[ @ 0]]
	f16_arg0.MultiReticle:setAlpha( 1 ) --[[ @ 0]]
	f16_arg0.layoutPlusGrid:setAlpha( 1 ) --[[ @ 0]]
	f16_arg0.AmmoDock:setAlpha( 1 ) --[[ @ 0]]
	f16_arg0.FlareCounter:setAlpha( 1 ) --[[ @ 0]]
	f16_arg0.vehicleHudCommonLayout:setAlpha( 1 ) --[[ @ 0]]
	f16_arg0.ButtonElements:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.vhud_gunship_recticle.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			local f17_local0 = function ( f18_arg0 )
				local f18_local0 = function ( f19_arg0 )
					local f19_local0 = function ( f20_arg0 )
						local f20_local0 = function ( f21_arg0 )
							local f21_local0 = function ( f22_arg0 )
								local f22_local0 = function ( f23_arg0 )
									f23_arg0:beginAnimation( 19 ) --[[ @ 0]]
									f23_arg0:setAlpha( 1 ) --[[ @ 0]]
									f23_arg0:registerEventHandler( "transition_complete_keyframe", f17_arg0.clipFinished ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f22_arg0:beginAnimation( 20 ) --[[ @ 0]]
								f22_arg0:setAlpha( 0 ) --[[ @ 0]]
								f22_arg0:registerEventHandler( "transition_complete_keyframe", f22_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f21_arg0:beginAnimation( 19 ) --[[ @ 0]]
							f21_arg0:setAlpha( 0.9 ) --[[ @ 0]]
							f21_arg0:registerEventHandler( "transition_complete_keyframe", f21_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f20_arg0:beginAnimation( 20 ) --[[ @ 0]]
						f20_arg0:setAlpha( 0 ) --[[ @ 0]]
						f20_arg0:registerEventHandler( "transition_complete_keyframe", f20_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f19_arg0:beginAnimation( 19 ) --[[ @ 0]]
					f19_arg0:setAlpha( 0.9 ) --[[ @ 0]]
					f19_arg0:registerEventHandler( "transition_complete_keyframe", f19_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f17_arg0.vehicleHudCommonLayout:beginAnimation( 100 ) --[[ @ 0]]
				f17_arg0.vehicleHudCommonLayout:registerEventHandler( "interrupted_keyframe", f17_arg0.clipInterrupted ) --[[ @ 0]]
				f17_arg0.vehicleHudCommonLayout:registerEventHandler( "transition_complete_keyframe", f18_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f17_arg0.vehicleHudCommonLayout:completeAnimation() --[[ @ 0]]
			f17_arg0.vehicleHudCommonLayout:setAlpha( 0 ) --[[ @ 0]]
			f17_local0( f17_arg0.vehicleHudCommonLayout ) --[[ @ 0]]
			local f17_local1 = function ( f24_arg0 )
				local f24_local0 = function ( f25_arg0 )
					f25_arg0:beginAnimation( 100 ) --[[ @ 0]]
					f25_arg0:setAlpha( 1 ) --[[ @ 0]]
					f25_arg0:registerEventHandler( "transition_complete_keyframe", f17_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f17_arg0.layoutPlusGrid:beginAnimation( 100 ) --[[ @ 0]]
				f17_arg0.layoutPlusGrid:registerEventHandler( "interrupted_keyframe", f17_arg0.clipInterrupted ) --[[ @ 0]]
				f17_arg0.layoutPlusGrid:registerEventHandler( "transition_complete_keyframe", f24_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f17_arg0.layoutPlusGrid:completeAnimation() --[[ @ 0]]
			f17_arg0.layoutPlusGrid:setAlpha( 0 ) --[[ @ 0]]
			f17_local1( f17_arg0.layoutPlusGrid ) --[[ @ 0]]
			local f17_local2 = function ( f26_arg0 )
				local f26_local0 = function ( f27_arg0 )
					f27_arg0:beginAnimation( 100 ) --[[ @ 0]]
					f27_arg0:setAlpha( 1 ) --[[ @ 0]]
					f27_arg0:registerEventHandler( "transition_complete_keyframe", f17_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f17_arg0.FlareCounter:beginAnimation( 100 ) --[[ @ 0]]
				f17_arg0.FlareCounter:registerEventHandler( "interrupted_keyframe", f17_arg0.clipInterrupted ) --[[ @ 0]]
				f17_arg0.FlareCounter:registerEventHandler( "transition_complete_keyframe", f26_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f17_arg0.FlareCounter:completeAnimation() --[[ @ 0]]
			f17_arg0.FlareCounter:setAlpha( 0 ) --[[ @ 0]]
			f17_local2( f17_arg0.FlareCounter ) --[[ @ 0]]
			local f17_local3 = function ( f28_arg0 )
				local f28_local0 = function ( f29_arg0 )
					f29_arg0:beginAnimation( 50 ) --[[ @ 0]]
					f29_arg0:setAlpha( 1 ) --[[ @ 0]]
					f29_arg0:registerEventHandler( "transition_complete_keyframe", f17_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f17_arg0.MultiReticle:beginAnimation( 250 ) --[[ @ 0]]
				f17_arg0.MultiReticle:registerEventHandler( "interrupted_keyframe", f17_arg0.clipInterrupted ) --[[ @ 0]]
				f17_arg0.MultiReticle:registerEventHandler( "transition_complete_keyframe", f28_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f17_arg0.MultiReticle:completeAnimation() --[[ @ 0]]
			f17_arg0.MultiReticle:setAlpha( 0 ) --[[ @ 0]]
			f17_local3( f17_arg0.MultiReticle ) --[[ @ 0]]
			local f17_local4 = function ( f30_arg0 )
				local f30_local0 = function ( f31_arg0 )
					f31_arg0:beginAnimation( 100 ) --[[ @ 0]]
					f31_arg0:setAlpha( 1 ) --[[ @ 0]]
					f31_arg0:registerEventHandler( "transition_complete_keyframe", f17_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f17_arg0.AmmoDock:beginAnimation( 100 ) --[[ @ 0]]
				f17_arg0.AmmoDock:registerEventHandler( "interrupted_keyframe", f17_arg0.clipInterrupted ) --[[ @ 0]]
				f17_arg0.AmmoDock:registerEventHandler( "transition_complete_keyframe", f30_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f17_arg0.AmmoDock:completeAnimation() --[[ @ 0]]
			f17_arg0.AmmoDock:setAlpha( 0 ) --[[ @ 0]]
			f17_local4( f17_arg0.AmmoDock ) --[[ @ 0]]
		end
	},
	HiddenCodCaster = {
		DefaultClip = function ( f32_arg0, f32_arg1 )
			f32_arg0:__resetProperties() --[[ @ 0]]
			f32_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f32_arg0.ButtonElements:completeAnimation() --[[ @ 0]]
			f32_arg0.ButtonElements:setAlpha( 0 ) --[[ @ 0]]
			f32_arg0.clipFinished( f32_arg0.ButtonElements ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.vhud_gunship_recticle.__onClose = function ( f33_arg0 )
	f33_arg0.vehicleHudCommonLayout:close() --[[ @ 0]]
	f33_arg0.layoutPlusGrid:close() --[[ @ 0]]
	f33_arg0.CommonCenterFrame:close() --[[ @ 0]]
	f33_arg0.VehicleHp:close() --[[ @ 0]]
	f33_arg0.ButtonElements:close() --[[ @ 0]]
	f33_arg0.MessageBox:close() --[[ @ 0]]
	f33_arg0.AltMeterL:close() --[[ @ 0]]
	f33_arg0.Speed:close() --[[ @ 0]]
	f33_arg0.FlareCounter:close() --[[ @ 0]]
	f33_arg0.MultiReticle:close() --[[ @ 0]]
	f33_arg0.AmmoDock:close() --[[ @ 0]]
end
 --[[ @ 0]]
