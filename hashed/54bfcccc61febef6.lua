-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.zm_LaboratoryDescriptionDivider = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.zm_LaboratoryDescriptionDivider.__defaultWidth = 512 --[[ @ 0]]
CoD.zm_LaboratoryDescriptionDivider.__defaultHeight = 32 --[[ @ 0]]
CoD.zm_LaboratoryDescriptionDivider.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.zm_LaboratoryDescriptionDivider ) --[[ @ 0]]
	self.id = "zm_LaboratoryDescriptionDivider" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	
	local StrokeCenter = LUI.UIImage.new( 0, 1, 0, 0, 0.15, 0.85, 0, 0 ) --[[ @ 0]]
	StrokeCenter:setImage( RegisterImage( @"hash_6A2435D4CA7897C6" ) ) --[[ @ 0]]
	self:addElement( StrokeCenter ) --[[ @ 0]]
	self.StrokeCenter = StrokeCenter --[[ @ 0]]
	
	local Center = LUI.UIImage.new( 0.5, 0.5, -75, 75, 0.5, 0.5, -7, 12 ) --[[ @ 0]]
	Center:setScale( 1.05, 1.05 ) --[[ @ 0]]
	Center:setImage( RegisterImage( @"uie_ui_zm_laboratory_ornamentbar" ) ) --[[ @ 0]]
	self:addElement( Center ) --[[ @ 0]]
	self.Center = Center --[[ @ 0]]
	
	local R = LUI.UIImage.new( 1, 1, -5, 5, 0.5, 0.5, -5, 5 ) --[[ @ 0]]
	R:setImage( RegisterImage( @"hash_61EC82771A88A0E6" ) ) --[[ @ 0]]
	self:addElement( R ) --[[ @ 0]]
	self.R = R --[[ @ 0]]
	
	local L = LUI.UIImage.new( 0, 0, -5, 5, 0.5, 0.5, -5, 5 ) --[[ @ 0]]
	L:setImage( RegisterImage( @"hash_61EC82771A88A0E6" ) ) --[[ @ 0]]
	self:addElement( L ) --[[ @ 0]]
	self.L = L --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
