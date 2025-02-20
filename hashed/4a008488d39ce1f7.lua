-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "ui/uieditor/widgets/store/storecommontextbacking" ) --[[ @ 0]]

CoD.GameEndScoreMatchBonusTitle = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.GameEndScoreMatchBonusTitle.__defaultWidth = 400 --[[ @ 0]]
CoD.GameEndScoreMatchBonusTitle.__defaultHeight = 53 --[[ @ 0]]
CoD.GameEndScoreMatchBonusTitle.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.GameEndScoreMatchBonusTitle ) --[[ @ 0]]
	self.id = "GameEndScoreMatchBonusTitle" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local StoreCommonTextBacking = CoD.StoreCommonTextBacking.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 0, 0, 53 ) --[[ @ 0]]
	self:addElement( StoreCommonTextBacking ) --[[ @ 0]]
	self.StoreCommonTextBacking = StoreCommonTextBacking --[[ @ 0]]
	
	local MatchBonusTitle = LUI.UIText.new( 0.5, 0.5, -250, 250, 0, 0, 5, 50 ) --[[ @ 0]]
	MatchBonusTitle:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	MatchBonusTitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_6BDD551B4B6FFA4" ) ) --[[ @ 0]]
	MatchBonusTitle:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	MatchBonusTitle:setLetterSpacing( 2 ) --[[ @ 0]]
	MatchBonusTitle:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	MatchBonusTitle:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( MatchBonusTitle ) --[[ @ 0]]
	self.MatchBonusTitle = MatchBonusTitle --[[ @ 0]]
	
	local PipTL = LUI.UIImage.new( 0, 0, -4.5, 3.5, 0, 0, -4.5, 3.5 ) --[[ @ 0]]
	PipTL:setImage( RegisterImage( @"hash_6364778639313CE9" ) ) --[[ @ 0]]
	PipTL:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( PipTL ) --[[ @ 0]]
	self.PipTL = PipTL --[[ @ 0]]
	
	local PipBR = LUI.UIImage.new( 1, 1, -4.5, 3.5, 1, 1, -4.5, 3.5 ) --[[ @ 0]]
	PipBR:setImage( RegisterImage( @"hash_6364778639313CE9" ) ) --[[ @ 0]]
	PipBR:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( PipBR ) --[[ @ 0]]
	self.PipBR = PipBR --[[ @ 0]]
	
	local PipBL = LUI.UIImage.new( 0, 0, -4, 4, 1, 1, -4.5, 3.5 ) --[[ @ 0]]
	PipBL:setImage( RegisterImage( @"hash_6364778639313CE9" ) ) --[[ @ 0]]
	PipBL:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( PipBL ) --[[ @ 0]]
	self.PipBL = PipBL --[[ @ 0]]
	
	local PipTR = LUI.UIImage.new( 1, 1, -4.5, 3.5, 0, 0, -4.5, 3.5 ) --[[ @ 0]]
	PipTR:setImage( RegisterImage( @"hash_6364778639313CE9" ) ) --[[ @ 0]]
	PipTR:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( PipTR ) --[[ @ 0]]
	self.PipTR = PipTR --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.GameEndScoreMatchBonusTitle.__onClose = function ( f2_arg0 )
	f2_arg0.StoreCommonTextBacking:close() --[[ @ 0]]
end
 --[[ @ 0]]
