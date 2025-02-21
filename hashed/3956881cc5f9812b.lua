-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.PC_Korea_Menus_15ContentDescriptors_Icons = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PC_Korea_Menus_15ContentDescriptors_Icons.__defaultWidth = 189 --[[ @ 0]]
CoD.PC_Korea_Menus_15ContentDescriptors_Icons.__defaultHeight = 336 --[[ @ 0]]
CoD.PC_Korea_Menus_15ContentDescriptors_Icons.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PC_Korea_Menus_15ContentDescriptors_Icons ) --[[ @ 0]]
	self.id = "PC_Korea_Menus_15ContentDescriptors_Icons" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local KoreaDrugReferenceIcon = LUI.UIImage.new( 0, 0, 5, 90, 0, 0, 230, 331 ) --[[ @ 0]]
	KoreaDrugReferenceIcon:setAlpha( 0 ) --[[ @ 0]]
	KoreaDrugReferenceIcon:setImage( RegisterImage( @"uie_korea_drugreference_icon" ) ) --[[ @ 0]]
	self:addElement( KoreaDrugReferenceIcon ) --[[ @ 0]]
	self.KoreaDrugReferenceIcon = KoreaDrugReferenceIcon --[[ @ 0]]
	
	local KoreaCurrencyIcon = LUI.UIImage.new( 0, 0, 98, 183, 0, 0, 230, 331 ) --[[ @ 0]]
	KoreaCurrencyIcon:setAlpha( 0 ) --[[ @ 0]]
	KoreaCurrencyIcon:setImage( RegisterImage( @"uie_korea_currency_icon" ) ) --[[ @ 0]]
	self:addElement( KoreaCurrencyIcon ) --[[ @ 0]]
	self.KoreaCurrencyIcon = KoreaCurrencyIcon --[[ @ 0]]
	
	local KoreaViolenceIcon = LUI.UIImage.new( 0, 0, 5, 90, 0, 0, 120, 221 ) --[[ @ 0]]
	KoreaViolenceIcon:setImage( RegisterImage( @"uie_korea_violence_icon" ) ) --[[ @ 0]]
	self:addElement( KoreaViolenceIcon ) --[[ @ 0]]
	self.KoreaViolenceIcon = KoreaViolenceIcon --[[ @ 0]]
	
	local KoreaRating15Logo = LUI.UIImage.new( 0, 0, 5, 90, 0, 0, 10, 111 ) --[[ @ 0]]
	KoreaRating15Logo:setImage( RegisterImage( @"uie_korea_ratinglogo_15" ) ) --[[ @ 0]]
	self:addElement( KoreaRating15Logo ) --[[ @ 0]]
	self.KoreaRating15Logo = KoreaRating15Logo --[[ @ 0]]
	
	local KoreaRating18Logo = LUI.UIImage.new( 0, 0, 98, 183, 0, 0, 10, 111 ) --[[ @ 0]]
	KoreaRating18Logo:setImage( RegisterImage( @"uie_korea_ratinglogo_18" ) ) --[[ @ 0]]
	self:addElement( KoreaRating18Logo ) --[[ @ 0]]
	self.KoreaRating18Logo = KoreaRating18Logo --[[ @ 0]]
	
	local KoreaStrongLanguageIcon = LUI.UIImage.new( 0, 0, 98, 183, 0, 0, 120, 221 ) --[[ @ 0]]
	KoreaStrongLanguageIcon:setAlpha( 0 ) --[[ @ 0]]
	KoreaStrongLanguageIcon:setImage( RegisterImage( @"uie_korea_stronglanguage" ) ) --[[ @ 0]]
	self:addElement( KoreaStrongLanguageIcon ) --[[ @ 0]]
	self.KoreaStrongLanguageIcon = KoreaStrongLanguageIcon --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
