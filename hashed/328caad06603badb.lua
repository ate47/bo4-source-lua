-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "ui/uieditor/widgets/pc/hud/keypromptbacking" ) --[[ @ 0]]

CoD.HUD_VehiclePrompt_Container = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.HUD_VehiclePrompt_Container.__defaultWidth = 100 --[[ @ 0]]
CoD.HUD_VehiclePrompt_Container.__defaultHeight = 50 --[[ @ 0]]
CoD.HUD_VehiclePrompt_Container.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.HUD_VehiclePrompt_Container ) --[[ @ 0]]
	self.id = "HUD_VehiclePrompt_Container" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	
	local Blur = LUI.UIImage.new( 0, 1, 4, -4, 0, 1, 4, -4 ) --[[ @ 0]]
	Blur:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	Blur:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Blur ) --[[ @ 0]]
	self.Blur = Blur --[[ @ 0]]
	
	local Panel = LUI.UIImage.new( 0, 1, 4, -4, 0, 1, 4, -4 ) --[[ @ 0]]
	Panel:setRGB( 0.11, 0.11, 0.11 ) --[[ @ 0]]
	Panel:setAlpha( 0.88 ) --[[ @ 0]]
	self:addElement( Panel ) --[[ @ 0]]
	self.Panel = Panel --[[ @ 0]]
	
	local LED = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	LED:setAlpha( 0.02 ) --[[ @ 0]]
	LED:setImage( RegisterImage( @"uie_vehicleprompt_led" ) ) --[[ @ 0]]
	self:addElement( LED ) --[[ @ 0]]
	self.LED = LED --[[ @ 0]]
	
	local Frame = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Frame:setImage( RegisterImage( @"uie_vehicleprompt_frame" ) ) --[[ @ 0]]
	self:addElement( Frame ) --[[ @ 0]]
	self.Frame = Frame --[[ @ 0]]
	
	local KBMText = nil --[[ @ 0]]
	
	KBMText = LUI.UIText.new( 0.05, 0.95, 0, 0, 0.27, 0.27, -1, 22 ) --[[ @ 0]]
	KBMText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/new" ) ) --[[ @ 0]]
	KBMText:setTTF( "notosans_bold" ) --[[ @ 0]]
	KBMText:setLetterSpacing( -2 ) --[[ @ 0]]
	KBMText:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	KBMText:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	self:addElement( KBMText ) --[[ @ 0]]
	self.KBMText = KBMText --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
