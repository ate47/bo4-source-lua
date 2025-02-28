-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/vehiclehuds/ground/vehicleground_vignetteback" ) --[[ @ 0]]
require( "x64:386230ebb093d3d7" ) --[[ @ 0]]

CoD.VehicleGround_VignetteContainer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.VehicleGround_VignetteContainer.__defaultWidth = 1920 --[[ @ 0]]
CoD.VehicleGround_VignetteContainer.__defaultHeight = 1080 --[[ @ 0]]
CoD.VehicleGround_VignetteContainer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.VehicleGround_VignetteContainer ) --[[ @ 0]]
	self.id = "VehicleGround_VignetteContainer" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local VignetteBack = CoD.VehicleGround_VignetteBack.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	VignetteBack:setAlpha( 0.2 ) --[[ @ 0]]
	self:addElement( VignetteBack ) --[[ @ 0]]
	self.VignetteBack = VignetteBack --[[ @ 0]]
	
	local VignetteFore = CoD.VehicleGround_VignetteFore.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	VignetteFore:setAlpha( 0.6 ) --[[ @ 0]]
	self:addElement( VignetteFore ) --[[ @ 0]]
	self.VignetteFore = VignetteFore --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.VehicleGround_VignetteContainer.__resetProperties = function ( f2_arg0 )
	f2_arg0.VignetteBack:completeAnimation() --[[ @ 0]]
	f2_arg0.VignetteFore:completeAnimation() --[[ @ 0]]
	f2_arg0.VignetteBack:setAlpha( 0.2 ) --[[ @ 0]]
	f2_arg0.VignetteFore:setAlpha( 0.6 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.VehicleGround_VignetteContainer.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				f3_arg0.VignetteBack:beginAnimation( 3930 ) --[[ @ 0]]
				f3_arg0.VignetteBack:setAlpha( 0.2 ) --[[ @ 0]]
				f3_arg0.VignetteBack:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.VignetteBack:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.VignetteBack:completeAnimation() --[[ @ 0]]
			f3_arg0.VignetteBack:setAlpha( 0 ) --[[ @ 0]]
			f3_local0( f3_arg0.VignetteBack ) --[[ @ 0]]
			local f3_local1 = function ( f5_arg0 )
				f3_arg0.VignetteFore:beginAnimation( 3030 ) --[[ @ 0]]
				f3_arg0.VignetteFore:setAlpha( 0.6 ) --[[ @ 0]]
				f3_arg0.VignetteFore:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.VignetteFore:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.VignetteFore:completeAnimation() --[[ @ 0]]
			f3_arg0.VignetteFore:setAlpha( 0 ) --[[ @ 0]]
			f3_local1( f3_arg0.VignetteFore ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.VehicleGround_VignetteContainer.__onClose = function ( f6_arg0 )
	f6_arg0.VignetteBack:close() --[[ @ 0]]
	f6_arg0.VignetteFore:close() --[[ @ 0]]
end
 --[[ @ 0]]
