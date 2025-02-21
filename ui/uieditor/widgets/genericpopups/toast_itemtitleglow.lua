-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.Toast_ItemTitleGlow = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Toast_ItemTitleGlow.__defaultWidth = 144 --[[ @ 0]]
CoD.Toast_ItemTitleGlow.__defaultHeight = 60 --[[ @ 0]]
CoD.Toast_ItemTitleGlow.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.Toast_ItemTitleGlow ) --[[ @ 0]]
	self.id = "Toast_ItemTitleGlow" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local Image1 = LUI.UIImage.new( 0, 0, 0, 12, 0, 0, 0, 12 ) --[[ @ 0]]
	Image1:setImage( RegisterImage( @"uie_t7_menu_cac_itemtitleglowul" ) ) --[[ @ 0]]
	Image1:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Image1 ) --[[ @ 0]]
	self.Image1 = Image1 --[[ @ 0]]
	
	local Image2 = LUI.UIImage.new( 0, 1, 12, -12, 0, 0, 0, 12 ) --[[ @ 0]]
	Image2:setImage( RegisterImage( @"uie_t7_menu_cac_itemtitleglowum" ) ) --[[ @ 0]]
	Image2:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Image2 ) --[[ @ 0]]
	self.Image2 = Image2 --[[ @ 0]]
	
	local Image3 = LUI.UIImage.new( 1, 1, -12, 0, 0, 0, 0, 12 ) --[[ @ 0]]
	Image3:setImage( RegisterImage( @"uie_t7_menu_cac_itemtitleglowur" ) ) --[[ @ 0]]
	Image3:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Image3 ) --[[ @ 0]]
	self.Image3 = Image3 --[[ @ 0]]
	
	local Image4 = LUI.UIImage.new( 0, 0, 0, 12, 0, 1, 12, -12 ) --[[ @ 0]]
	Image4:setImage( RegisterImage( @"uie_t7_menu_cac_itemtitleglowml" ) ) --[[ @ 0]]
	Image4:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Image4 ) --[[ @ 0]]
	self.Image4 = Image4 --[[ @ 0]]
	
	local Image5 = LUI.UIImage.new( 0, 1, 12, -12, 0, 1, 12, -12 ) --[[ @ 0]]
	Image5:setImage( RegisterImage( @"uie_t7_menu_cac_itemtitleglowmm" ) ) --[[ @ 0]]
	Image5:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Image5 ) --[[ @ 0]]
	self.Image5 = Image5 --[[ @ 0]]
	
	local Image6 = LUI.UIImage.new( 1, 1, -12, 0, 0, 1, 12, -12 ) --[[ @ 0]]
	Image6:setImage( RegisterImage( @"uie_t7_menu_cac_itemtitleglowmr" ) ) --[[ @ 0]]
	Image6:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Image6 ) --[[ @ 0]]
	self.Image6 = Image6 --[[ @ 0]]
	
	local Image7 = LUI.UIImage.new( 0, 0, 0, 12, 1, 1, -12, 0 ) --[[ @ 0]]
	Image7:setImage( RegisterImage( @"uie_t7_menu_cac_itemtitleglowll" ) ) --[[ @ 0]]
	Image7:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Image7 ) --[[ @ 0]]
	self.Image7 = Image7 --[[ @ 0]]
	
	local Image8 = LUI.UIImage.new( 0, 1, 12, -12, 1, 1, -12, 0 ) --[[ @ 0]]
	Image8:setImage( RegisterImage( @"uie_t7_menu_cac_itemtitleglowlm" ) ) --[[ @ 0]]
	Image8:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Image8 ) --[[ @ 0]]
	self.Image8 = Image8 --[[ @ 0]]
	
	local Image9 = LUI.UIImage.new( 1, 1, -12, 0, 1, 1, -12, 0 ) --[[ @ 0]]
	Image9:setImage( RegisterImage( @"uie_t7_menu_cac_itemtitleglowlr" ) ) --[[ @ 0]]
	Image9:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Image9 ) --[[ @ 0]]
	self.Image9 = Image9 --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
