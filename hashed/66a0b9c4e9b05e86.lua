-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
CoD.ScoreInfo_ScoreBarRoundPip = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ScoreInfo_ScoreBarRoundPip.__defaultWidth = 12 --[[ @ 0]]
CoD.ScoreInfo_ScoreBarRoundPip.__defaultHeight = 3 --[[ @ 0]]
CoD.ScoreInfo_ScoreBarRoundPip.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ScoreInfo_ScoreBarRoundPip ) --[[ @ 0]]
	self.id = "ScoreInfo_ScoreBarRoundPip" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	
	local Pip = LUI.UIImage.new( 0, 0, 74, 86, 0, 0, -2, 8 ) --[[ @ 0]]
	Pip:setAlpha( 0 ) --[[ @ 0]]
	Pip:setImage( RegisterImage( @"hash_127061B9C57E7AD7" ) ) --[[ @ 0]]
	Pip:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_feather_add" ) ) --[[ @ 0]]
	self:addElement( Pip ) --[[ @ 0]]
	self.Pip = Pip --[[ @ 0]]
	
	local Pip2 = LUI.UIImage.new( 0, 0, -4.5, 7.5, 0, 0, -2, 8 ) --[[ @ 0]]
	Pip2:setAlpha( 0 ) --[[ @ 0]]
	Pip2:setZRot( 180 ) --[[ @ 0]]
	Pip2:setImage( RegisterImage( @"hash_127061B9C57E7AD7" ) ) --[[ @ 0]]
	Pip2:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_feather_add" ) ) --[[ @ 0]]
	self:addElement( Pip2 ) --[[ @ 0]]
	self.Pip2 = Pip2 --[[ @ 0]]
	
	local FUI = LUI.UIImage.new( 0, 0, -4.5, 87.5, 0, 0, -2, 8 ) --[[ @ 0]]
	FUI:setAlpha( 0.6 ) --[[ @ 0]]
	FUI:setImage( RegisterImage( @"hash_110FA8D08A06BD3B" ) ) --[[ @ 0]]
	self:addElement( FUI ) --[[ @ 0]]
	self.FUI = FUI --[[ @ 0]]
	
	local Half2 = LUI.UIImage.new( 0, 0, -13.5, -1.5, 0, 0, -2.5, 7.5 ) --[[ @ 0]]
	Half2:setImage( RegisterImage( @"hash_7F3E81C52AE39D91" ) ) --[[ @ 0]]
	Half2:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Half2 ) --[[ @ 0]]
	self.Half2 = Half2 --[[ @ 0]]
	
	local Half = LUI.UIImage.new( 0, 0, 82, 94, 0, 0, -2.5, 7.5 ) --[[ @ 0]]
	Half:setImage( RegisterImage( @"hash_7F3E81C52AE39D91" ) ) --[[ @ 0]]
	Half:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Half ) --[[ @ 0]]
	self.Half = Half --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
