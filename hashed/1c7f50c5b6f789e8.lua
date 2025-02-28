-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "x64:362eee6f7ab7e3b3" ) --[[ @ 0]]

CoD.ZMInventoryQuestBackingInternal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ZMInventoryQuestBackingInternal.__defaultWidth = 400 --[[ @ 0]]
CoD.ZMInventoryQuestBackingInternal.__defaultHeight = 80 --[[ @ 0]]
CoD.ZMInventoryQuestBackingInternal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ZMInventoryQuestBackingInternal ) --[[ @ 0]]
	self.id = "ZMInventoryQuestBackingInternal" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local SceneBlur = LUI.UIImage.new( -0.11, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	SceneBlur:setRGB( 0, 0, 0 ) --[[ @ 0]]
	SceneBlur:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_381EEB1F96D4BE0A" ) ) --[[ @ 0]]
	SceneBlur:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( SceneBlur ) --[[ @ 0]]
	self.SceneBlur = SceneBlur --[[ @ 0]]
	
	local SolidBase = LUI.UIImage.new( 0, 1, 0, 0, -0, 1, 0, 0 ) --[[ @ 0]]
	SolidBase:setRGB( 0, 0, 0 ) --[[ @ 0]]
	SolidBase:setAlpha( 0.25 ) --[[ @ 0]]
	self:addElement( SolidBase ) --[[ @ 0]]
	self.SolidBase = SolidBase --[[ @ 0]]
	
	local BaseGradient = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BaseGradient:setAlpha( 0.4 ) --[[ @ 0]]
	BaseGradient:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_gradient_normal" ) ) --[[ @ 0]]
	BaseGradient:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	BaseGradient:setShaderVector( 1, 0, 0, 0, 2.5 ) --[[ @ 0]]
	BaseGradient:setShaderVector( 2, 0.02, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( BaseGradient ) --[[ @ 0]]
	self.BaseGradient = BaseGradient --[[ @ 0]]
	
	local BGMid = LUI.UIImage.new( -0.11, 1, 0, 0, 0.5, 0.5, -40, 40 ) --[[ @ 0]]
	BGMid:setAlpha( 0.8 ) --[[ @ 0]]
	BGMid:setImage( RegisterImage( @"uie_zm_hud_inventory_backing_mid" ) ) --[[ @ 0]]
	BGMid:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_1A02C44161370F6D" ) ) --[[ @ 0]]
	BGMid:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	BGMid:setShaderVector( 1, 1, 0, 0, 0 ) --[[ @ 0]]
	BGMid:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( BGMid ) --[[ @ 0]]
	self.BGMid = BGMid --[[ @ 0]]
	
	local Tip = CoD.ZMInventoryListBackingInternalTip.new( f1_arg0, f1_arg1, 0, 0, -100, 0, 0.5, 0.5, -40, 40 ) --[[ @ 0]]
	Tip:setAlpha( 0.9 ) --[[ @ 0]]
	self:addElement( Tip ) --[[ @ 0]]
	self.Tip = Tip --[[ @ 0]]
	
	local BGTip = LUI.UIImage.new( 0, 0, -100, 0, 0, 0, -10, 90 ) --[[ @ 0]]
	BGTip:setAlpha( 0.08 ) --[[ @ 0]]
	BGTip:setImage( RegisterImage( @"uie_zm_hud_inventory_framedeco" ) ) --[[ @ 0]]
	self:addElement( BGTip ) --[[ @ 0]]
	self.BGTip = BGTip --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ZMInventoryQuestBackingInternal.__onClose = function ( f2_arg0 )
	f2_arg0.Tip:close() --[[ @ 0]]
end
 --[[ @ 0]]
