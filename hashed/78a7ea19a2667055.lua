-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/vehiclehuds/mothership/vhud_ms_buttonwidget" ) --[[ @ 0]]

CoD.vhud_generic_gamepad_layout = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.vhud_generic_gamepad_layout.__defaultWidth = 1920 --[[ @ 0]]
CoD.vhud_generic_gamepad_layout.__defaultHeight = 1080 --[[ @ 0]]
CoD.vhud_generic_gamepad_layout.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.vhud_generic_gamepad_layout ) --[[ @ 0]]
	self.id = "vhud_generic_gamepad_layout" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local YTriangleButton = CoD.vhud_ms_ButtonWidget.new( f1_arg0, f1_arg1, 0, 0, 0, 129, 1, 1, -425, -261 ) --[[ @ 0]]
	YTriangleButton:setYRot( 30 ) --[[ @ 0]]
	YTriangleButton:setZRot( 4 ) --[[ @ 0]]
	YTriangleButton:subscribeToGlobalModel( f1_arg1, "VehicleController", "alt2_button_image", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			YTriangleButton.button0:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	YTriangleButton:subscribeToGlobalModel( f1_arg1, "VehicleController", "alt2_button_image", function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			YTriangleButton.button1:setImage( RegisterImage( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	YTriangleButton:subscribeToGlobalModel( f1_arg1, "VehicleController", "alt2_button_image", function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			YTriangleButton.button:setImage( RegisterImage( f4_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	YTriangleButton:linkToElementModel( self, "BUTTON_Y", false, function ( model )
		YTriangleButton:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( YTriangleButton ) --[[ @ 0]]
	self.YTriangleButton = YTriangleButton --[[ @ 0]]
	
	local XSquareButton = CoD.vhud_ms_ButtonWidget.new( f1_arg0, f1_arg1, 0, 0, 173, 302, 1, 1, -173, -9 ) --[[ @ 0]]
	XSquareButton:setYRot( 30 ) --[[ @ 0]]
	XSquareButton:setZRot( 4 ) --[[ @ 0]]
	XSquareButton:subscribeToGlobalModel( f1_arg1, "VehicleController", "alt1_button_image", function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			XSquareButton.button0:setImage( RegisterImage( f6_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	XSquareButton:subscribeToGlobalModel( f1_arg1, "VehicleController", "alt1_button_image", function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			XSquareButton.button1:setImage( RegisterImage( f7_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	XSquareButton:subscribeToGlobalModel( f1_arg1, "VehicleController", "alt1_button_image", function ( model )
		local f8_local0 = model:get() --[[ @ 0]]
		if f8_local0 ~= nil then
			XSquareButton.button:setImage( RegisterImage( f8_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	XSquareButton:linkToElementModel( self, "BUTTON_X", false, function ( model )
		XSquareButton:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( XSquareButton ) --[[ @ 0]]
	self.XSquareButton = XSquareButton --[[ @ 0]]
	
	local BCircleButton = CoD.vhud_ms_ButtonWidget.new( f1_arg0, f1_arg1, 1, 1, -334, -205, 1, 1, -173, -9 ) --[[ @ 0]]
	BCircleButton:setYRot( -30 ) --[[ @ 0]]
	BCircleButton:setZRot( -4 ) --[[ @ 0]]
	BCircleButton:subscribeToGlobalModel( f1_arg1, "VehicleController", "secondary_button_image", function ( model )
		local f10_local0 = model:get() --[[ @ 0]]
		if f10_local0 ~= nil then
			BCircleButton.button0:setImage( RegisterImage( f10_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	BCircleButton:subscribeToGlobalModel( f1_arg1, "VehicleController", "secondary_button_image", function ( model )
		local f11_local0 = model:get() --[[ @ 0]]
		if f11_local0 ~= nil then
			BCircleButton.button1:setImage( RegisterImage( f11_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	BCircleButton:subscribeToGlobalModel( f1_arg1, "VehicleController", "secondary_button_image", function ( model )
		local f12_local0 = model:get() --[[ @ 0]]
		if f12_local0 ~= nil then
			BCircleButton.button:setImage( RegisterImage( f12_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	BCircleButton:linkToElementModel( self, "BUTTON_B", false, function ( model )
		BCircleButton:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( BCircleButton ) --[[ @ 0]]
	self.BCircleButton = BCircleButton --[[ @ 0]]
	
	local AXButton = CoD.vhud_ms_ButtonWidget.new( f1_arg0, f1_arg1, 1, 1, -129, 0, 1, 1, -448, -284 ) --[[ @ 0]]
	AXButton:setYRot( -30 ) --[[ @ 0]]
	AXButton:setZRot( -4 ) --[[ @ 0]]
	AXButton:subscribeToGlobalModel( f1_arg1, "VehicleController", "primary_button_image", function ( model )
		local f14_local0 = model:get() --[[ @ 0]]
		if f14_local0 ~= nil then
			AXButton.button0:setImage( RegisterImage( f14_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	AXButton:subscribeToGlobalModel( f1_arg1, "VehicleController", "primary_button_image", function ( model )
		local f15_local0 = model:get() --[[ @ 0]]
		if f15_local0 ~= nil then
			AXButton.button1:setImage( RegisterImage( f15_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	AXButton:subscribeToGlobalModel( f1_arg1, "VehicleController", "primary_button_image", function ( model )
		local f16_local0 = model:get() --[[ @ 0]]
		if f16_local0 ~= nil then
			AXButton.button:setImage( RegisterImage( f16_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	AXButton:linkToElementModel( self, "BUTTON_A", false, function ( model )
		AXButton:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( AXButton ) --[[ @ 0]]
	self.AXButton = AXButton --[[ @ 0]]
	
	local R3Button = CoD.vhud_ms_ButtonWidget.new( f1_arg0, f1_arg1, 1, 1, -585, -456, 1, 1, -180, -16 ) --[[ @ 0]]
	R3Button:setYRot( -30 ) --[[ @ 0]]
	R3Button:setZRot( -4 ) --[[ @ 0]]
	R3Button:subscribeToGlobalModel( f1_arg1, "VehicleController", "right_stick_button_image", function ( model )
		local f18_local0 = model:get() --[[ @ 0]]
		if f18_local0 ~= nil then
			R3Button.button0:setImage( RegisterImage( f18_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	R3Button:subscribeToGlobalModel( f1_arg1, "VehicleController", "right_stick_button_image", function ( model )
		local f19_local0 = model:get() --[[ @ 0]]
		if f19_local0 ~= nil then
			R3Button.button1:setImage( RegisterImage( f19_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	R3Button:subscribeToGlobalModel( f1_arg1, "VehicleController", "right_stick_button_image", function ( model )
		local f20_local0 = model:get() --[[ @ 0]]
		if f20_local0 ~= nil then
			R3Button.button:setImage( RegisterImage( f20_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	R3Button:linkToElementModel( self, "BUTTON_RSTICK", false, function ( model )
		R3Button:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( R3Button ) --[[ @ 0]]
	self.R3Button = R3Button --[[ @ 0]]
	
	local L3Button = CoD.vhud_ms_ButtonWidget.new( f1_arg0, f1_arg1, 0, 0, 371, 500, 1, 1, -173, -9 ) --[[ @ 0]]
	L3Button:setYRot( 30 ) --[[ @ 0]]
	L3Button:setZRot( 4 ) --[[ @ 0]]
	L3Button:subscribeToGlobalModel( f1_arg1, "VehicleController", "left_stick_button_image", function ( model )
		local f22_local0 = model:get() --[[ @ 0]]
		if f22_local0 ~= nil then
			L3Button.button0:setImage( RegisterImage( f22_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	L3Button:subscribeToGlobalModel( f1_arg1, "VehicleController", "left_stick_button_image", function ( model )
		local f23_local0 = model:get() --[[ @ 0]]
		if f23_local0 ~= nil then
			L3Button.button1:setImage( RegisterImage( f23_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	L3Button:subscribeToGlobalModel( f1_arg1, "VehicleController", "left_stick_button_image", function ( model )
		local f24_local0 = model:get() --[[ @ 0]]
		if f24_local0 ~= nil then
			L3Button.button:setImage( RegisterImage( f24_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	L3Button:linkToElementModel( self, "BUTTON_LSTICK", false, function ( model )
		L3Button:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( L3Button ) --[[ @ 0]]
	self.L3Button = L3Button --[[ @ 0]]
	
	local LeftBumper = CoD.vhud_ms_ButtonWidget.new( f1_arg0, f1_arg1, 0, 0, 0, 129, 1, 1, -284, -120 ) --[[ @ 0]]
	LeftBumper:setYRot( 30 ) --[[ @ 0]]
	LeftBumper:setZRot( 4 ) --[[ @ 0]]
	LeftBumper:subscribeToGlobalModel( f1_arg1, "VehicleController", "left_shoulder_button_image", function ( model )
		local f26_local0 = model:get() --[[ @ 0]]
		if f26_local0 ~= nil then
			LeftBumper.button0:setImage( RegisterImage( f26_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	LeftBumper:subscribeToGlobalModel( f1_arg1, "VehicleController", "left_shoulder_button_image", function ( model )
		local f27_local0 = model:get() --[[ @ 0]]
		if f27_local0 ~= nil then
			LeftBumper.button1:setImage( RegisterImage( f27_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	LeftBumper:subscribeToGlobalModel( f1_arg1, "VehicleController", "left_shoulder_button_image", function ( model )
		local f28_local0 = model:get() --[[ @ 0]]
		if f28_local0 ~= nil then
			LeftBumper.button:setImage( RegisterImage( f28_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	LeftBumper:linkToElementModel( self, "BUTTON_LSHLDR", false, function ( model )
		LeftBumper:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( LeftBumper ) --[[ @ 0]]
	self.LeftBumper = LeftBumper --[[ @ 0]]
	
	local LeftTrigger = CoD.vhud_ms_ButtonWidget.new( f1_arg0, f1_arg1, 0, 0, 84, 213, 1, 1, -183, -19 ) --[[ @ 0]]
	LeftTrigger:setYRot( 30 ) --[[ @ 0]]
	LeftTrigger:setZRot( 4 ) --[[ @ 0]]
	LeftTrigger:subscribeToGlobalModel( f1_arg1, "VehicleController", "left_trigger_button_image", function ( model )
		local f30_local0 = model:get() --[[ @ 0]]
		if f30_local0 ~= nil then
			LeftTrigger.button0:setImage( RegisterImage( f30_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	LeftTrigger:subscribeToGlobalModel( f1_arg1, "VehicleController", "left_trigger_button_image", function ( model )
		local f31_local0 = model:get() --[[ @ 0]]
		if f31_local0 ~= nil then
			LeftTrigger.button1:setImage( RegisterImage( f31_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	LeftTrigger:subscribeToGlobalModel( f1_arg1, "VehicleController", "left_trigger_button_image", function ( model )
		local f32_local0 = model:get() --[[ @ 0]]
		if f32_local0 ~= nil then
			LeftTrigger.button:setImage( RegisterImage( f32_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	LeftTrigger:linkToElementModel( self, "BUTTON_LTRIG", false, function ( model )
		LeftTrigger:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( LeftTrigger ) --[[ @ 0]]
	self.LeftTrigger = LeftTrigger --[[ @ 0]]
	
	local LeftStick = CoD.vhud_ms_ButtonWidget.new( f1_arg0, f1_arg1, 0, 0, 275, 404, 1, 1, -164, 0 ) --[[ @ 0]]
	LeftStick:setYRot( 30 ) --[[ @ 0]]
	LeftStick:setZRot( 4 ) --[[ @ 0]]
	LeftStick:subscribeToGlobalModel( f1_arg1, "VehicleController", "left_stick_move_image", function ( model )
		local f34_local0 = model:get() --[[ @ 0]]
		if f34_local0 ~= nil then
			LeftStick.button0:setImage( RegisterImage( f34_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	LeftStick:subscribeToGlobalModel( f1_arg1, "VehicleController", "left_stick_move_image", function ( model )
		local f35_local0 = model:get() --[[ @ 0]]
		if f35_local0 ~= nil then
			LeftStick.button1:setImage( RegisterImage( f35_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	LeftStick:subscribeToGlobalModel( f1_arg1, "VehicleController", "left_stick_move_image", function ( model )
		local f36_local0 = model:get() --[[ @ 0]]
		if f36_local0 ~= nil then
			LeftStick.button:setImage( RegisterImage( f36_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	LeftStick:linkToElementModel( self, "L_STICK", false, function ( model )
		LeftStick:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( LeftStick ) --[[ @ 0]]
	self.LeftStick = LeftStick --[[ @ 0]]
	
	local RightBumper = CoD.vhud_ms_ButtonWidget.new( f1_arg0, f1_arg1, 1, 1, -129, 0, 1, 1, -285, -121 ) --[[ @ 0]]
	RightBumper:setYRot( -30 ) --[[ @ 0]]
	RightBumper:setZRot( -4 ) --[[ @ 0]]
	RightBumper:subscribeToGlobalModel( f1_arg1, "VehicleController", "right_shoulder_button_image", function ( model )
		local f38_local0 = model:get() --[[ @ 0]]
		if f38_local0 ~= nil then
			RightBumper.button0:setImage( RegisterImage( f38_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	RightBumper:subscribeToGlobalModel( f1_arg1, "VehicleController", "right_shoulder_button_image", function ( model )
		local f39_local0 = model:get() --[[ @ 0]]
		if f39_local0 ~= nil then
			RightBumper.button1:setImage( RegisterImage( f39_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	RightBumper:subscribeToGlobalModel( f1_arg1, "VehicleController", "right_shoulder_button_image", function ( model )
		local f40_local0 = model:get() --[[ @ 0]]
		if f40_local0 ~= nil then
			RightBumper.button:setImage( RegisterImage( f40_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	RightBumper:linkToElementModel( self, "BUTTON_RSHLDR", false, function ( model )
		RightBumper:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( RightBumper ) --[[ @ 0]]
	self.RightBumper = RightBumper --[[ @ 0]]
	
	local RightTrigger = CoD.vhud_ms_ButtonWidget.new( f1_arg0, f1_arg1, 1, 1, -210, -81, 1, 1, -180, -16 ) --[[ @ 0]]
	RightTrigger:setYRot( -30 ) --[[ @ 0]]
	RightTrigger:setZRot( -4 ) --[[ @ 0]]
	RightTrigger:subscribeToGlobalModel( f1_arg1, "VehicleController", "right_trigger_button_image", function ( model )
		local f42_local0 = model:get() --[[ @ 0]]
		if f42_local0 ~= nil then
			RightTrigger.button0:setImage( RegisterImage( f42_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	RightTrigger:subscribeToGlobalModel( f1_arg1, "VehicleController", "right_trigger_button_image", function ( model )
		local f43_local0 = model:get() --[[ @ 0]]
		if f43_local0 ~= nil then
			RightTrigger.button1:setImage( RegisterImage( f43_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	RightTrigger:subscribeToGlobalModel( f1_arg1, "VehicleController", "right_trigger_button_image", function ( model )
		local f44_local0 = model:get() --[[ @ 0]]
		if f44_local0 ~= nil then
			RightTrigger.button:setImage( RegisterImage( f44_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	RightTrigger:linkToElementModel( self, "BUTTON_RTRIG", false, function ( model )
		RightTrigger:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( RightTrigger ) --[[ @ 0]]
	self.RightTrigger = RightTrigger --[[ @ 0]]
	
	local RightStick = CoD.vhud_ms_ButtonWidget.new( f1_arg0, f1_arg1, 1, 1, -460, -331, 1, 1, -164, 0 ) --[[ @ 0]]
	RightStick:setYRot( -30 ) --[[ @ 0]]
	RightStick:setZRot( -4 ) --[[ @ 0]]
	RightStick:subscribeToGlobalModel( f1_arg1, "VehicleController", "right_stick_move_image", function ( model )
		local f46_local0 = model:get() --[[ @ 0]]
		if f46_local0 ~= nil then
			RightStick.button0:setImage( RegisterImage( f46_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	RightStick:subscribeToGlobalModel( f1_arg1, "VehicleController", "right_stick_move_image", function ( model )
		local f47_local0 = model:get() --[[ @ 0]]
		if f47_local0 ~= nil then
			RightStick.button1:setImage( RegisterImage( f47_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	RightStick:subscribeToGlobalModel( f1_arg1, "VehicleController", "right_stick_move_image", function ( model )
		local f48_local0 = model:get() --[[ @ 0]]
		if f48_local0 ~= nil then
			RightStick.button:setImage( RegisterImage( f48_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	RightStick:linkToElementModel( self, "R_STICK", false, function ( model )
		RightStick:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( RightStick ) --[[ @ 0]]
	self.RightStick = RightStick --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "SwapCircleCross",
			condition = function ( menu, element, event )
				return ShouldSwapCircleAndCross()
			end
		}
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.vhud_generic_gamepad_layout.__resetProperties = function ( f51_arg0 )
	f51_arg0.BCircleButton:completeAnimation() --[[ @ 0]]
	f51_arg0.AXButton:completeAnimation() --[[ @ 0]]
	f51_arg0.BCircleButton:setLeftRight( 1, 1, -334, -205 ) --[[ @ 0]]
	f51_arg0.BCircleButton:setTopBottom( 1, 1, -173, -9 ) --[[ @ 0]]
	f51_arg0.AXButton:setLeftRight( 1, 1, -129, 0 ) --[[ @ 0]]
	f51_arg0.AXButton:setTopBottom( 1, 1, -448, -284 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.vhud_generic_gamepad_layout.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f52_arg0, f52_arg1 )
			f52_arg0:__resetProperties() --[[ @ 0]]
			f52_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	SwapCircleCross = {
		DefaultClip = function ( f53_arg0, f53_arg1 )
			f53_arg0:__resetProperties() --[[ @ 0]]
			f53_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f53_arg0.BCircleButton:completeAnimation() --[[ @ 0]]
			f53_arg0.BCircleButton:setLeftRight( 1, 1, -129.5, -0.5 ) --[[ @ 0]]
			f53_arg0.BCircleButton:setTopBottom( 1, 1, -448, -284 ) --[[ @ 0]]
			f53_arg0.clipFinished( f53_arg0.BCircleButton ) --[[ @ 0]]
			f53_arg0.AXButton:completeAnimation() --[[ @ 0]]
			f53_arg0.AXButton:setLeftRight( 1, 1, -334.5, -205.5 ) --[[ @ 0]]
			f53_arg0.AXButton:setTopBottom( 1, 1, -173, -9 ) --[[ @ 0]]
			f53_arg0.clipFinished( f53_arg0.AXButton ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.vhud_generic_gamepad_layout.__onClose = function ( f54_arg0 )
	f54_arg0.YTriangleButton:close() --[[ @ 0]]
	f54_arg0.XSquareButton:close() --[[ @ 0]]
	f54_arg0.BCircleButton:close() --[[ @ 0]]
	f54_arg0.AXButton:close() --[[ @ 0]]
	f54_arg0.R3Button:close() --[[ @ 0]]
	f54_arg0.L3Button:close() --[[ @ 0]]
	f54_arg0.LeftBumper:close() --[[ @ 0]]
	f54_arg0.LeftTrigger:close() --[[ @ 0]]
	f54_arg0.LeftStick:close() --[[ @ 0]]
	f54_arg0.RightBumper:close() --[[ @ 0]]
	f54_arg0.RightTrigger:close() --[[ @ 0]]
	f54_arg0.RightStick:close() --[[ @ 0]]
end
 --[[ @ 0]]
