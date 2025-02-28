-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.BM_ContractDifficultyIndicator = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.BM_ContractDifficultyIndicator.__defaultWidth = 400 --[[ @ 0]]
CoD.BM_ContractDifficultyIndicator.__defaultHeight = 400 --[[ @ 0]]
CoD.BM_ContractDifficultyIndicator.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.BM_ContractDifficultyIndicator ) --[[ @ 0]]
	self.id = "BM_ContractDifficultyIndicator" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Hard = LUI.UIText.new( 0.5, 0.5, -188, 203, 1, 1, -354, -330 ) --[[ @ 0]]
	Hard:setRGB( 0, 0, 0 ) --[[ @ 0]]
	Hard:setAlpha( 0 ) --[[ @ 0]]
	Hard:setText( LocalizeToUpperString( @"menu/hard" ) ) --[[ @ 0]]
	Hard:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	Hard:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
	Hard:setBackingType( 3 ) --[[ @ 0]]
	Hard:setBackingXPadding( 12 ) --[[ @ 0]]
	Hard:setBackingYPadding( 6 ) --[[ @ 0]]
	Hard:setBackingImage( RegisterImage( @"uie_ui_menu_contracts_gold_bar" ) ) --[[ @ 0]]
	Hard:setBackingMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_normal" ) ) --[[ @ 0]]
	Hard:setBackingShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	Hard:setupBackingNineSliceShader( 16, 16 ) --[[ @ 0]]
	self:addElement( Hard ) --[[ @ 0]]
	self.Hard = Hard --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.BM_ContractDifficultyIndicator.__resetProperties = function ( f2_arg0 )
	f2_arg0.Hard:completeAnimation() --[[ @ 0]]
	f2_arg0.Hard:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.BM_ContractDifficultyIndicator.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Hard = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f4_arg0.Hard:completeAnimation() --[[ @ 0]]
			f4_arg0.Hard:setAlpha( 1 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.Hard ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
