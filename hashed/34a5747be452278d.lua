-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:f2d4920f28ccd3c" ) --[[ @ 0]]

CoD.MultiItemPickupWaypoint_NavigationPrompt = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.MultiItemPickupWaypoint_NavigationPrompt.__defaultWidth = 64 --[[ @ 0]]
CoD.MultiItemPickupWaypoint_NavigationPrompt.__defaultHeight = 64 --[[ @ 0]]
CoD.MultiItemPickupWaypoint_NavigationPrompt.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.MultiItemPickupWaypoint_NavigationPrompt ) --[[ @ 0]]
	self.id = "MultiItemPickupWaypoint_NavigationPrompt" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local BackingImage = LUI.UIImage.new( 0.5, 0.5, -32, 32, 0.5, 0.5, -32, 32 ) --[[ @ 0]]
	BackingImage:setAlpha( 0 ) --[[ @ 0]]
	BackingImage:subscribeToGlobalModel( f1_arg1, "Controller", "dpad_all_button_image", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			BackingImage:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( BackingImage ) --[[ @ 0]]
	self.BackingImage = BackingImage --[[ @ 0]]
	
	local Backer2 = LUI.UIImage.new( 0, 0, 0, 64, 0, 0, 0, 64 ) --[[ @ 0]]
	Backer2:setRGB( 0, 0, 0 ) --[[ @ 0]]
	Backer2:setAlpha( 0.9 ) --[[ @ 0]]
	Backer2:setImage( RegisterImage( @"uie_ui_hud_wz_hud_core_qe_dpad_backer" ) ) --[[ @ 0]]
	self:addElement( Backer2 ) --[[ @ 0]]
	self.Backer2 = Backer2 --[[ @ 0]]
	
	local Backer = LUI.UIImage.new( 0, 0, 0, 64, 0, 0, 0, 64 ) --[[ @ 0]]
	Backer:setImage( RegisterImage( @"uie_ui_hud_wz_hud_core_qe_dpad_down" ) ) --[[ @ 0]]
	self:addElement( Backer ) --[[ @ 0]]
	self.Backer = Backer --[[ @ 0]]
	
	local LeftImage = CoD.WarzoneDpadButton.new( f1_arg0, f1_arg1, 0.5, 0.5, -32, 32, 0.5, 0.5, -32, 32 ) --[[ @ 0]]
	LeftImage:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return AlwaysTrue()
			end
		}
	} ) --[[ @ 0]]
	LeftImage:setZRot( 90 ) --[[ @ 0]]
	self:addElement( LeftImage ) --[[ @ 0]]
	self.LeftImage = LeftImage --[[ @ 0]]
	
	local RightImage = CoD.WarzoneDpadButton.new( f1_arg0, f1_arg1, 0.5, 0.5, -32, 32, 0.5, 0.5, -32, 32 ) --[[ @ 0]]
	RightImage:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return AlwaysTrue()
			end
		}
	} ) --[[ @ 0]]
	RightImage:setZRot( 270 ) --[[ @ 0]]
	self:addElement( RightImage ) --[[ @ 0]]
	self.RightImage = RightImage --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.MultiItemPickupWaypoint_NavigationPrompt.__resetProperties = function ( f5_arg0 )
	f5_arg0.RightImage:completeAnimation() --[[ @ 0]]
	f5_arg0.LeftImage:completeAnimation() --[[ @ 0]]
	f5_arg0.RightImage:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.LeftImage:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.MultiItemPickupWaypoint_NavigationPrompt.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	AtLeftAndRight = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f7_arg0.LeftImage:completeAnimation() --[[ @ 0]]
			f7_arg0.LeftImage:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.LeftImage ) --[[ @ 0]]
			f7_arg0.RightImage:completeAnimation() --[[ @ 0]]
			f7_arg0.RightImage:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.RightImage ) --[[ @ 0]]
		end
	},
	AtLeft = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f8_arg0.LeftImage:completeAnimation() --[[ @ 0]]
			f8_arg0.LeftImage:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.LeftImage ) --[[ @ 0]]
		end
	},
	AtRight = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f9_arg0.RightImage:completeAnimation() --[[ @ 0]]
			f9_arg0.RightImage:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.RightImage ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.MultiItemPickupWaypoint_NavigationPrompt.__onClose = function ( f10_arg0 )
	f10_arg0.BackingImage:close() --[[ @ 0]]
	f10_arg0.LeftImage:close() --[[ @ 0]]
	f10_arg0.RightImage:close() --[[ @ 0]]
end
 --[[ @ 0]]
