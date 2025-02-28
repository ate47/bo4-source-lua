-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:51cd7f68136f9cc0" ) --[[ @ 0]]

CoD.LaboratoryOffersHeader = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.LaboratoryOffersHeader.__defaultWidth = 480 --[[ @ 0]]
CoD.LaboratoryOffersHeader.__defaultHeight = 24 --[[ @ 0]]
CoD.LaboratoryOffersHeader.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.LaboratoryOffersHeader ) --[[ @ 0]]
	self.id = "LaboratoryOffersHeader" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	
	local SceneBlur = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	SceneBlur:setRGB( 0, 0, 0 ) --[[ @ 0]]
	SceneBlur:setAlpha( 0 ) --[[ @ 0]]
	SceneBlur:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	SceneBlur:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( SceneBlur ) --[[ @ 0]]
	self.SceneBlur = SceneBlur --[[ @ 0]]
	
	local Divider = CoD.zm_LaboratoryDescriptionDividerSecondary.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 1, 1, -14.5, 14.5 ) --[[ @ 0]]
	Divider.R:setScale( 0.6, 0.6 ) --[[ @ 0]]
	Divider.L:setScale( 0.6, 0.6 ) --[[ @ 0]]
	self:addElement( Divider ) --[[ @ 0]]
	self.Divider = Divider --[[ @ 0]]
	
	local Smoke = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Smoke:setRGB( 0.58, 0.85, 1 ) --[[ @ 0]]
	Smoke:setAlpha( 0.2 ) --[[ @ 0]]
	Smoke:setImage( RegisterImage( @"uie_zm_hud_inventory_objectivesmoke" ) ) --[[ @ 0]]
	Smoke:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_1A02C44161370F6D" ) ) --[[ @ 0]]
	Smoke:setShaderVector( 0, 0.47, 0.36, 0, 0 ) --[[ @ 0]]
	Smoke:setShaderVector( 1, 1, 1, 0, 0 ) --[[ @ 0]]
	Smoke:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Smoke ) --[[ @ 0]]
	self.Smoke = Smoke --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.LaboratoryOffersHeader.__onClose = function ( f2_arg0 )
	f2_arg0.Divider:close() --[[ @ 0]]
end
 --[[ @ 0]]
