-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "x64:3d53c55f7b188cae" ) --[[ @ 0]]

CoD.ScoreInfo_ScoreBarWidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ScoreInfo_ScoreBarWidget.__defaultWidth = 100 --[[ @ 0]]
CoD.ScoreInfo_ScoreBarWidget.__defaultHeight = 56 --[[ @ 0]]
CoD.ScoreInfo_ScoreBarWidget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ScoreInfo_ScoreBarWidget ) --[[ @ 0]]
	self.id = "ScoreInfo_ScoreBarWidget" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local Container2 = LUI.UIImage.new( 0, 0, -16.5, 5.5, 0, 0, -38, 26 ) --[[ @ 0]]
	Container2:setRGB( 0, 0, 0 ) --[[ @ 0]]
	Container2:setAlpha( 0 ) --[[ @ 0]]
	Container2:setImage( RegisterImage( @"hash_1279D91DE9A75004" ) ) --[[ @ 0]]
	self:addElement( Container2 ) --[[ @ 0]]
	self.Container2 = Container2 --[[ @ 0]]
	
	local MeterEmpty2 = LUI.UIImage.new( 0, 0, -11.5, 0.5, 0, 0, -38, 26 ) --[[ @ 0]]
	MeterEmpty2:setRGB( 0.18, 0.18, 0.18 ) --[[ @ 0]]
	MeterEmpty2:setAlpha( 0 ) --[[ @ 0]]
	MeterEmpty2:setImage( RegisterImage( @"hash_E473F6EB0F70028" ) ) --[[ @ 0]]
	self:addElement( MeterEmpty2 ) --[[ @ 0]]
	self.MeterEmpty2 = MeterEmpty2 --[[ @ 0]]
	
	local MeterFill2 = LUI.UIImage.new( 0, 0, -11.5, 0.5, 0, 0, -30, 18 ) --[[ @ 0]]
	MeterFill2:setAlpha( 0 ) --[[ @ 0]]
	MeterFill2:setZRot( 180 ) --[[ @ 0]]
	MeterFill2:setImage( RegisterImage( @"hash_6EDB0531AD63E82A" ) ) --[[ @ 0]]
	MeterFill2:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_3FF505FE6AFC47D5" ) ) --[[ @ 0]]
	MeterFill2:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	MeterFill2:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	MeterFill2:setShaderVector( 2, 0.25, 0, 0, 0 ) --[[ @ 0]]
	MeterFill2:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	MeterFill2:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( MeterFill2 ) --[[ @ 0]]
	self.MeterFill2 = MeterFill2 --[[ @ 0]]
	
	local CapBottom2 = LUI.UIImage.new( 0.02, 0.02, -13.5, -2.5, 0, 0, 13, 23 ) --[[ @ 0]]
	CapBottom2:setAlpha( 0 ) --[[ @ 0]]
	CapBottom2:setImage( RegisterImage( @"hash_7F3E81C52AE39D91" ) ) --[[ @ 0]]
	self:addElement( CapBottom2 ) --[[ @ 0]]
	self.CapBottom2 = CapBottom2 --[[ @ 0]]
	
	local CapTop2 = LUI.UIImage.new( 0.02, 0.02, -13.5, -1.5, 0, 0, -35.5, -25.5 ) --[[ @ 0]]
	CapTop2:setAlpha( 0 ) --[[ @ 0]]
	CapTop2:setImage( RegisterImage( @"hash_7F3E81C52AE39D91" ) ) --[[ @ 0]]
	self:addElement( CapTop2 ) --[[ @ 0]]
	self.CapTop2 = CapTop2 --[[ @ 0]]
	
	local Container = LUI.UIImage.new( 0, 0, 79, 101, 0, 0, -38, 26 ) --[[ @ 0]]
	Container:setRGB( 0, 0, 0 ) --[[ @ 0]]
	Container:setAlpha( 0.9 ) --[[ @ 0]]
	Container:setImage( RegisterImage( @"hash_1279D91DE9A75004" ) ) --[[ @ 0]]
	self:addElement( Container ) --[[ @ 0]]
	self.Container = Container --[[ @ 0]]
	
	local MeterEmpty = LUI.UIImage.new( 0, 0, 84, 96, 0, 0, -38, 26 ) --[[ @ 0]]
	MeterEmpty:setRGB( 0.18, 0.18, 0.18 ) --[[ @ 0]]
	MeterEmpty:setImage( RegisterImage( @"hash_E473F6EB0F70028" ) ) --[[ @ 0]]
	self:addElement( MeterEmpty ) --[[ @ 0]]
	self.MeterEmpty = MeterEmpty --[[ @ 0]]
	
	local MeterFill = LUI.UIImage.new( 0, 0, 84, 96, 0, 0, -30, 18 ) --[[ @ 0]]
	MeterFill:setZRot( 180 ) --[[ @ 0]]
	MeterFill:setImage( RegisterImage( @"hash_6EDB0531AD63E82A" ) ) --[[ @ 0]]
	MeterFill:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_3FF505FE6AFC47D5" ) ) --[[ @ 0]]
	MeterFill:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	MeterFill:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	MeterFill:setShaderVector( 2, 0.25, 0, 0, 0 ) --[[ @ 0]]
	MeterFill:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	MeterFill:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( MeterFill ) --[[ @ 0]]
	self.MeterFill = MeterFill --[[ @ 0]]
	
	local CapBottom = LUI.UIImage.new( 0.02, 0.02, 82, 94, 0, 0, 13, 23 ) --[[ @ 0]]
	CapBottom:setImage( RegisterImage( @"hash_7F3E81C52AE39D91" ) ) --[[ @ 0]]
	self:addElement( CapBottom ) --[[ @ 0]]
	self.CapBottom = CapBottom --[[ @ 0]]
	
	local CapTop = LUI.UIImage.new( 0.02, 0.02, 82, 94, 0, 0, -35.5, -25.5 ) --[[ @ 0]]
	CapTop:setImage( RegisterImage( @"hash_7F3E81C52AE39D91" ) ) --[[ @ 0]]
	self:addElement( CapTop ) --[[ @ 0]]
	self.CapTop = CapTop --[[ @ 0]]
	
	local RoundPipLeft = CoD.ScoreInfo_ScoreBarRoundPip.new( f1_arg0, f1_arg1, 0, 0, 2, 14, 0.5, 0.5, -37, -34 ) --[[ @ 0]]
	self:addElement( RoundPipLeft ) --[[ @ 0]]
	self.RoundPipLeft = RoundPipLeft --[[ @ 0]]
	
	local ScoreText2 = LUI.UIText.new( 0, 0, 0, 80, 0.5, 0.5, -46, -20 ) --[[ @ 0]]
	ScoreText2:setAlpha( 0 ) --[[ @ 0]]
	ScoreText2:setText( 888 ) --[[ @ 0]]
	ScoreText2:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	ScoreText2:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_90D57B1E92D39D7" ) ) --[[ @ 0]]
	ScoreText2:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	ScoreText2:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	ScoreText2:setShaderVector( 2, 1, 1, 1, 1 ) --[[ @ 0]]
	ScoreText2:setLetterSpacing( 2 ) --[[ @ 0]]
	ScoreText2:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	ScoreText2:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( ScoreText2 ) --[[ @ 0]]
	self.ScoreText2 = ScoreText2 --[[ @ 0]]
	
	local ScoreText = LUI.UIText.new( 0, 0, 2, 82, 0.5, 0.5, -48, -22 ) --[[ @ 0]]
	ScoreText:setText( 888 ) --[[ @ 0]]
	ScoreText:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	ScoreText:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_90D57B1E92D39D7" ) ) --[[ @ 0]]
	ScoreText:setShaderVector( 0, 0.68, 0, 0, 0 ) --[[ @ 0]]
	ScoreText:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	ScoreText:setShaderVector( 2, 1, 1, 1, 0.4 ) --[[ @ 0]]
	ScoreText:setLetterSpacing( 2 ) --[[ @ 0]]
	ScoreText:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	ScoreText:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( ScoreText ) --[[ @ 0]]
	self.ScoreText = ScoreText --[[ @ 0]]
	
	local RuleTop = LUI.UIImage.new( 0, 0, 0, 84, 0, 0, -30, -14 ) --[[ @ 0]]
	RuleTop:setAlpha( 0 ) --[[ @ 0]]
	RuleTop:setImage( RegisterImage( @"hash_71FFA4BFF3B7CFF7" ) ) --[[ @ 0]]
	self:addElement( RuleTop ) --[[ @ 0]]
	self.RuleTop = RuleTop --[[ @ 0]]
	
	local RuleBottom = LUI.UIImage.new( 0, 0, 0, 84, 0, 0, -2, 14 ) --[[ @ 0]]
	RuleBottom:setAlpha( 0 ) --[[ @ 0]]
	RuleBottom:setImage( RegisterImage( @"hash_71FFA4BFF3B7CFF7" ) ) --[[ @ 0]]
	self:addElement( RuleBottom ) --[[ @ 0]]
	self.RuleBottom = RuleBottom --[[ @ 0]]
	
	local BarStripes = LUI.UIImage.new( 0, 0, 1, 85, 0, 0, -37.5, -21.5 ) --[[ @ 0]]
	BarStripes:setAlpha( 0 ) --[[ @ 0]]
	BarStripes:setImage( RegisterImage( @"hash_70CCFDD0786DB12E" ) ) --[[ @ 0]]
	BarStripes:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( BarStripes ) --[[ @ 0]]
	self.BarStripes = BarStripes --[[ @ 0]]
	
	local BarStripes2 = LUI.UIImage.new( 0, 0, 1, 85, 0, 0, 7.5, 23.5 ) --[[ @ 0]]
	BarStripes2:setAlpha( 0 ) --[[ @ 0]]
	BarStripes2:setImage( RegisterImage( @"hash_70CCFDD0786DB12E" ) ) --[[ @ 0]]
	BarStripes2:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( BarStripes2 ) --[[ @ 0]]
	self.BarStripes2 = BarStripes2 --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ScoreInfo_ScoreBarWidget.__onClose = function ( f2_arg0 )
	f2_arg0.RoundPipLeft:close() --[[ @ 0]]
end
 --[[ @ 0]]
