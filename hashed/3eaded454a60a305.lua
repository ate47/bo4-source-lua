-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:13f31dd4f77d0b44" ) --[[ @ 0]]
require( "ui/uieditor/widgets/vehiclehuds/ground/vehicleground_vignettecontainer" ) --[[ @ 0]]

CoD.vhud_sentinel_iris = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.vhud_sentinel_iris.__defaultWidth = 2527 --[[ @ 0]]
CoD.vhud_sentinel_iris.__defaultHeight = 1425 --[[ @ 0]]
CoD.vhud_sentinel_iris.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.vhud_sentinel_iris ) --[[ @ 0]]
	self.id = "vhud_sentinel_iris" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local vignetteCenter = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	vignetteCenter:setAlpha( 0.3 ) --[[ @ 0]]
	vignetteCenter:setImage( RegisterImage( @"uie_t7_cp_hud_vehicle_agr_backgroundtint" ) ) --[[ @ 0]]
	self:addElement( vignetteCenter ) --[[ @ 0]]
	self.vignetteCenter = vignetteCenter --[[ @ 0]]
	
	local VignetteR1 = LUI.UIImage.new( 1, 1, -870, -383, 0.5, 0.5, -540, 540 ) --[[ @ 0]]
	VignetteR1:setAlpha( 0.15 ) --[[ @ 0]]
	VignetteR1:setImage( RegisterImage( @"uie_t7_cp_hud_vehicle_wasp_reticlevignetteblackblur" ) ) --[[ @ 0]]
	self:addElement( VignetteR1 ) --[[ @ 0]]
	self.VignetteR1 = VignetteR1 --[[ @ 0]]
	
	local VignetteL1 = LUI.UIImage.new( 0, 0, 379, 866, 0.5, 0.5, -540, 540 ) --[[ @ 0]]
	VignetteL1:setAlpha( 0.15 ) --[[ @ 0]]
	VignetteL1:setZRot( 180 ) --[[ @ 0]]
	VignetteL1:setImage( RegisterImage( @"uie_t7_cp_hud_vehicle_wasp_reticlevignetteblackblur" ) ) --[[ @ 0]]
	self:addElement( VignetteL1 ) --[[ @ 0]]
	self.VignetteL1 = VignetteL1 --[[ @ 0]]
	
	local VignetteR2 = LUI.UIImage.new( 1, 1, -835, -228, 0.5, 0.5, -673.5, 673.5 ) --[[ @ 0]]
	VignetteR2:setAlpha( 0.5 ) --[[ @ 0]]
	VignetteR2:setImage( RegisterImage( @"uie_t7_cp_hud_vehicle_wasp_reticlevignetteblackblur" ) ) --[[ @ 0]]
	self:addElement( VignetteR2 ) --[[ @ 0]]
	self.VignetteR2 = VignetteR2 --[[ @ 0]]
	
	local VignetteL2 = LUI.UIImage.new( 0, 0, 226, 833, 0.5, 0.5, -673.5, 673.5 ) --[[ @ 0]]
	VignetteL2:setAlpha( 0.5 ) --[[ @ 0]]
	VignetteL2:setZRot( 180 ) --[[ @ 0]]
	VignetteL2:setImage( RegisterImage( @"uie_t7_cp_hud_vehicle_wasp_reticlevignetteblackblur" ) ) --[[ @ 0]]
	self:addElement( VignetteL2 ) --[[ @ 0]]
	self.VignetteL2 = VignetteL2 --[[ @ 0]]
	
	local VignetteContainer = CoD.VehicleGround_VignetteContainer.new( f1_arg0, f1_arg1, 0, 1, 304, -304, 0, 1, 172, -172 ) --[[ @ 0]]
	VignetteContainer:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( VignetteContainer ) --[[ @ 0]]
	self.VignetteContainer = VignetteContainer --[[ @ 0]]
	
	local VehicleGroundIris = CoD.VehicleGround_Iris.new( f1_arg0, f1_arg1, 0.5, 0.5, -960, 960, 0.5, 0.5, -540, 540 ) --[[ @ 0]]
	VehicleGroundIris:mergeStateConditions( {
		{
			stateName = "Zoom",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "zoomed" )
			end
		}
	} ) --[[ @ 0]]
	VehicleGroundIris:linkToElementModel( VehicleGroundIris, "zoomed", true, function ( model )
		f1_arg0:updateElementState( VehicleGroundIris, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "zoomed"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	VehicleGroundIris:setRGB( 1, 0.35, 0.35 ) --[[ @ 0]]
	VehicleGroundIris:setAlpha( 0 ) --[[ @ 0]]
	VehicleGroundIris:linkToElementModel( self, nil, false, function ( model )
		VehicleGroundIris:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	VehicleGroundIris:registerEventHandler( "menu_loaded", function ( element, event )
		local f5_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f5_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f5_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		PlayClipOnElement( self, {
			elementName = "VehicleGroundIris",
			clipName = "StartUp"
		}, f1_arg1 ) --[[ @ 0]]
		if not f5_local0 then
			f5_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f5_local0
	end ) --[[ @ 0]]
	self:addElement( VehicleGroundIris ) --[[ @ 0]]
	self.VehicleGroundIris = VehicleGroundIris --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "LeavingOperationZone_CP",
			condition = function ( menu, element, event )
				return IsCampaign() and CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "outOfRange" )
			end
		},
		{
			stateName = "Campaign",
			condition = function ( menu, element, event )
				return IsCampaign()
			end
		}
	} ) --[[ @ 0]]
	local f1_local8 = self --[[ @ 0]]
	local f1_local9 = self.subscribeToModel --[[ @ 0]]
	local f1_local10 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local9( f1_local8, f1_local10["lobbyRoot.lobbyNav"], function ( f8_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f8_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:linkToElementModel( self, "outOfRange", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "outOfRange"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.vhud_sentinel_iris.__resetProperties = function ( f10_arg0 )
	f10_arg0.VehicleGroundIris:completeAnimation() --[[ @ 0]]
	f10_arg0.VignetteContainer:completeAnimation() --[[ @ 0]]
	f10_arg0.VignetteL2:completeAnimation() --[[ @ 0]]
	f10_arg0.VignetteR2:completeAnimation() --[[ @ 0]]
	f10_arg0.VignetteL1:completeAnimation() --[[ @ 0]]
	f10_arg0.VignetteR1:completeAnimation() --[[ @ 0]]
	f10_arg0.vignetteCenter:completeAnimation() --[[ @ 0]]
	f10_arg0.VehicleGroundIris:setAlpha( 0 ) --[[ @ 0]]
	f10_arg0.VignetteContainer:setAlpha( 0 ) --[[ @ 0]]
	f10_arg0.VignetteL2:setAlpha( 0.5 ) --[[ @ 0]]
	f10_arg0.VignetteR2:setAlpha( 0.5 ) --[[ @ 0]]
	f10_arg0.VignetteL1:setAlpha( 0.15 ) --[[ @ 0]]
	f10_arg0.VignetteR1:setAlpha( 0.15 ) --[[ @ 0]]
	f10_arg0.vignetteCenter:setAlpha( 0.3 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.vhud_sentinel_iris.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	LeavingOperationZone_CP = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f12_local0 = function ( f13_arg0 )
				local f13_local0 = function ( f14_arg0 )
					local f14_local0 = function ( f15_arg0 )
						f15_arg0:beginAnimation( 590 ) --[[ @ 0]]
						f15_arg0:setAlpha( 0.7 ) --[[ @ 0]]
						f15_arg0:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f14_arg0:beginAnimation( 919 ) --[[ @ 0]]
					f14_arg0:setAlpha( 0.63 ) --[[ @ 0]]
					f14_arg0:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f12_arg0.VignetteContainer:beginAnimation( 490 ) --[[ @ 0]]
				f12_arg0.VignetteContainer:setAlpha( 0.8 ) --[[ @ 0]]
				f12_arg0.VignetteContainer:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.VignetteContainer:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.VignetteContainer:completeAnimation() --[[ @ 0]]
			f12_arg0.VignetteContainer:setAlpha( 0.7 ) --[[ @ 0]]
			f12_local0( f12_arg0.VignetteContainer ) --[[ @ 0]]
			local f12_local1 = function ( f16_arg0 )
				local f16_local0 = function ( f17_arg0 )
					local f17_local0 = function ( f18_arg0 )
						local f18_local0 = function ( f19_arg0 )
							local f19_local0 = function ( f20_arg0 )
								local f20_local0 = function ( f21_arg0 )
									local f21_local0 = function ( f22_arg0 )
										f22_arg0:beginAnimation( 460 ) --[[ @ 0]]
										f22_arg0:setAlpha( 0.8 ) --[[ @ 0]]
										f22_arg0:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f21_arg0:beginAnimation( 49 ) --[[ @ 0]]
									f21_arg0:setAlpha( 0.58 ) --[[ @ 0]]
									f21_arg0:registerEventHandler( "transition_complete_keyframe", f21_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f20_arg0:beginAnimation( 180 ) --[[ @ 0]]
								f20_arg0:setAlpha( 0.52 ) --[[ @ 0]]
								f20_arg0:registerEventHandler( "transition_complete_keyframe", f20_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f19_arg0:beginAnimation( 209 ) --[[ @ 0]]
							f19_arg0:setAlpha( 0.67 ) --[[ @ 0]]
							f19_arg0:registerEventHandler( "transition_complete_keyframe", f19_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f18_arg0:beginAnimation( 420 ) --[[ @ 0]]
						f18_arg0:setAlpha( 0.92 ) --[[ @ 0]]
						f18_arg0:registerEventHandler( "transition_complete_keyframe", f18_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f17_arg0:beginAnimation( 60 ) --[[ @ 0]]
					f17_arg0:setAlpha( 0.86 ) --[[ @ 0]]
					f17_arg0:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f12_arg0.VehicleGroundIris:beginAnimation( 620 ) --[[ @ 0]]
				f12_arg0.VehicleGroundIris:setAlpha( 0.59 ) --[[ @ 0]]
				f12_arg0.VehicleGroundIris:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.VehicleGroundIris:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.VehicleGroundIris:completeAnimation() --[[ @ 0]]
			f12_arg0.VehicleGroundIris:setAlpha( 0.8 ) --[[ @ 0]]
			f12_local1( f12_arg0.VehicleGroundIris ) --[[ @ 0]]
			f12_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	},
	Campaign = {
		DefaultClip = function ( f23_arg0, f23_arg1 )
			f23_arg0:__resetProperties() --[[ @ 0]]
			f23_arg0:setupElementClipCounter( 7 ) --[[ @ 0]]
			f23_arg0.vignetteCenter:completeAnimation() --[[ @ 0]]
			f23_arg0.vignetteCenter:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.vignetteCenter ) --[[ @ 0]]
			f23_arg0.VignetteR1:completeAnimation() --[[ @ 0]]
			f23_arg0.VignetteR1:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.VignetteR1 ) --[[ @ 0]]
			f23_arg0.VignetteL1:completeAnimation() --[[ @ 0]]
			f23_arg0.VignetteL1:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.VignetteL1 ) --[[ @ 0]]
			f23_arg0.VignetteR2:completeAnimation() --[[ @ 0]]
			f23_arg0.VignetteR2:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.VignetteR2 ) --[[ @ 0]]
			f23_arg0.VignetteL2:completeAnimation() --[[ @ 0]]
			f23_arg0.VignetteL2:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.VignetteL2 ) --[[ @ 0]]
			f23_arg0.VignetteContainer:completeAnimation() --[[ @ 0]]
			f23_arg0.VignetteContainer:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.VignetteContainer ) --[[ @ 0]]
			f23_arg0.VehicleGroundIris:completeAnimation() --[[ @ 0]]
			f23_arg0.VehicleGroundIris:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.VehicleGroundIris ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.vhud_sentinel_iris.__onClose = function ( f24_arg0 )
	f24_arg0.VignetteContainer:close() --[[ @ 0]]
	f24_arg0.VehicleGroundIris:close() --[[ @ 0]]
end
 --[[ @ 0]]
