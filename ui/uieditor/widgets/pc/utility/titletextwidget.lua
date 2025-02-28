-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/cac/cac_itemtitleglow" ) --[[ @ 0]]

CoD.TitleTextWidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.TitleTextWidget.__defaultWidth = 600 --[[ @ 0]]
CoD.TitleTextWidget.__defaultHeight = 51 --[[ @ 0]]
CoD.TitleTextWidget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.TitleTextWidget ) --[[ @ 0]]
	self.id = "TitleTextWidget" --[[ @ 0]]
	self.soundSet = "CAC_EditLoadout" --[[ @ 0]]
	
	local titleGlow = CoD.cac_ItemTitleGlow.new( f1_arg0, f1_arg1, 0, 1, -3, 5, 0, 1, -4, 4 ) --[[ @ 0]]
	titleGlow:setRGB( 0.9, 0.9, 0.9 ) --[[ @ 0]]
	self:addElement( titleGlow ) --[[ @ 0]]
	self.titleGlow = titleGlow --[[ @ 0]]
	
	local itemName = LUI.UIText.new( 0, 0, 4, 109, 0.5, 0.5, -22, 26 ) --[[ @ 0]]
	itemName:setRGB( 0, 0, 0 ) --[[ @ 0]]
	itemName:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/new" ) ) --[[ @ 0]]
	itemName:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	itemName:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_2AE166D9BA8C6907" ) ) --[[ @ 0]]
	itemName:setShaderVector( 0, 0.06, 0, 0, 0 ) --[[ @ 0]]
	itemName:setShaderVector( 1, 0.02, 0, 0, 0 ) --[[ @ 0]]
	itemName:setShaderVector( 2, 1, 0, 0, 0 ) --[[ @ 0]]
	itemName:setLetterSpacing( 0.6 ) --[[ @ 0]]
	itemName:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( itemName, "setText", function ( element, controller )
		ScaleWidgetToLabel( self, element, 5 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( itemName ) --[[ @ 0]]
	self.itemName = itemName --[[ @ 0]]
	
	local Glow = LUI.UIImage.new( 0, 1, -80, 74, 0.5, 0.5, -45, 65 ) --[[ @ 0]]
	Glow:setAlpha( 0.14 ) --[[ @ 0]]
	Glow:setImage( RegisterImage( @"uie_t7_menu_cac_glow" ) ) --[[ @ 0]]
	Glow:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Glow ) --[[ @ 0]]
	self.Glow = Glow --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.TitleTextWidget.__onClose = function ( f3_arg0 )
	f3_arg0.titleGlow:close() --[[ @ 0]]
end
 --[[ @ 0]]
