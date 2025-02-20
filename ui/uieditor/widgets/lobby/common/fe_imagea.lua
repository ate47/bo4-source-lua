-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
CoD.FE_ImageA = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.FE_ImageA.__defaultWidth = 144 --[[ @ 0]]
CoD.FE_ImageA.__defaultHeight = 144 --[[ @ 0]]
CoD.FE_ImageA.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.FE_ImageA ) --[[ @ 0]]
	self.id = "FE_ImageA" --[[ @ 0]]
	self.soundSet = "ModeSelection" --[[ @ 0]]
	
	local imgSolid = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	imgSolid:setRGB( 0, 0, 0 ) --[[ @ 0]]
	imgSolid:setAlpha( 0.3 ) --[[ @ 0]]
	imgSolid:setZoom( -5 ) --[[ @ 0]]
	imgSolid:setImage( RegisterImage( @"uie_t7_menu_frontend_slideemblemph" ) ) --[[ @ 0]]
	self:addElement( imgSolid ) --[[ @ 0]]
	self.imgSolid = imgSolid --[[ @ 0]]
	
	local imgAdd = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	imgAdd:setImage( RegisterImage( @"uie_t7_menu_frontend_slideemblemph" ) ) --[[ @ 0]]
	imgAdd:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( imgAdd ) --[[ @ 0]]
	self.imgAdd = imgAdd --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
