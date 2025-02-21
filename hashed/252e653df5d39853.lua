-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "x64:1c7393046816f760" ) --[[ @ 0]]

CoD.ArenaSkillEvaluationBg = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ArenaSkillEvaluationBg.__defaultWidth = 1202 --[[ @ 0]]
CoD.ArenaSkillEvaluationBg.__defaultHeight = 602 --[[ @ 0]]
CoD.ArenaSkillEvaluationBg.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ArenaSkillEvaluationBg ) --[[ @ 0]]
	self.id = "ArenaSkillEvaluationBg" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local BGDotPatternLarge = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BGDotPatternLarge:setAlpha( 0.05 ) --[[ @ 0]]
	BGDotPatternLarge:setImage( RegisterImage( @"hash_7FC21A8215EA012B" ) ) --[[ @ 0]]
	BGDotPatternLarge:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	BGDotPatternLarge:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	BGDotPatternLarge:setupNineSliceShader( 4, 4 ) --[[ @ 0]]
	self:addElement( BGDotPatternLarge ) --[[ @ 0]]
	self.BGDotPatternLarge = BGDotPatternLarge --[[ @ 0]]
	
	local AnalysingBackingL = LUI.UIImage.new( 0, 0, 249, 1, 1, 1, -28, 0 ) --[[ @ 0]]
	AnalysingBackingL:setAlpha( 0.1 ) --[[ @ 0]]
	AnalysingBackingL:setImage( RegisterImage( @"uie_ui_menu_inspection_analysing_stripe" ) ) --[[ @ 0]]
	self:addElement( AnalysingBackingL ) --[[ @ 0]]
	self.AnalysingBackingL = AnalysingBackingL --[[ @ 0]]
	
	local AnalysingBackingR = LUI.UIImage.new( 1, 1, -248, 0, 1, 1, -28, 0 ) --[[ @ 0]]
	AnalysingBackingR:setAlpha( 0.1 ) --[[ @ 0]]
	AnalysingBackingR:setImage( RegisterImage( @"uie_ui_menu_inspection_analysing_stripe" ) ) --[[ @ 0]]
	self:addElement( AnalysingBackingR ) --[[ @ 0]]
	self.AnalysingBackingR = AnalysingBackingR --[[ @ 0]]
	
	local AARLevelCommonBoxes = CoD.AARLevelCommonBoxes.new( f1_arg0, f1_arg1, 1, 1, -68, -20, 0, 0, 16, 29 ) --[[ @ 0]]
	AARLevelCommonBoxes:setAlpha( 0.2 ) --[[ @ 0]]
	self:addElement( AARLevelCommonBoxes ) --[[ @ 0]]
	self.AARLevelCommonBoxes = AARLevelCommonBoxes --[[ @ 0]]
	
	local NoiseTiledBacking = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setAlpha( 0.05 ) --[[ @ 0]]
	NoiseTiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	NoiseTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBacking ) --[[ @ 0]]
	self.NoiseTiledBacking = NoiseTiledBacking --[[ @ 0]]
	
	local TiledwhiteNoiseBacking = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	TiledwhiteNoiseBacking:setAlpha( 0.02 ) --[[ @ 0]]
	TiledwhiteNoiseBacking:setImage( RegisterImage( @"uie_ui_menu_aar_repeat_white_bg" ) ) --[[ @ 0]]
	TiledwhiteNoiseBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	TiledwhiteNoiseBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	TiledwhiteNoiseBacking:setupNineSliceShader( 64, 64 ) --[[ @ 0]]
	self:addElement( TiledwhiteNoiseBacking ) --[[ @ 0]]
	self.TiledwhiteNoiseBacking = TiledwhiteNoiseBacking --[[ @ 0]]
	
	local infoBracketBot = LUI.UIImage.new( 0, 0, -0.5, 1202.5, 1, 1, -7, 1 ) --[[ @ 0]]
	infoBracketBot:setAlpha( 0.2 ) --[[ @ 0]]
	infoBracketBot:setImage( RegisterImage( @"hash_4C325BED3F226657" ) ) --[[ @ 0]]
	infoBracketBot:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	infoBracketBot:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	infoBracketBot:setupNineSliceShader( 16, 4 ) --[[ @ 0]]
	self:addElement( infoBracketBot ) --[[ @ 0]]
	self.infoBracketBot = infoBracketBot --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ArenaSkillEvaluationBg.__onClose = function ( f2_arg0 )
	f2_arg0.AARLevelCommonBoxes:close() --[[ @ 0]]
end
 --[[ @ 0]]
