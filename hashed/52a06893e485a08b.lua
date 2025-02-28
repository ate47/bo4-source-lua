-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.ContractSeasonalOverlay_PreviewButton = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ContractSeasonalOverlay_PreviewButton.__defaultWidth = 225 --[[ @ 0]]
CoD.ContractSeasonalOverlay_PreviewButton.__defaultHeight = 309 --[[ @ 0]]
CoD.ContractSeasonalOverlay_PreviewButton.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ContractSeasonalOverlay_PreviewButton ) --[[ @ 0]]
	self.id = "ContractSeasonalOverlay_PreviewButton" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Border2 = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Border2:setRGB( 0.67, 0.67, 0.67 ) --[[ @ 0]]
	Border2:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_3E7BDCB879A5176D" ) ) --[[ @ 0]]
	Border2:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	Border2:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	Border2:setupNineSliceShader( 1, 1 ) --[[ @ 0]]
	self:addElement( Border2 ) --[[ @ 0]]
	self.Border2 = Border2 --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ContractSeasonalOverlay_PreviewButton.__resetProperties = function ( f2_arg0 )
	f2_arg0.Border2:completeAnimation() --[[ @ 0]]
	f2_arg0.Border2:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ContractSeasonalOverlay_PreviewButton.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f3_arg0.Border2:completeAnimation() --[[ @ 0]]
			f3_arg0.Border2:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.Border2 ) --[[ @ 0]]
		end
	},
	Show = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f4_arg0.Border2:completeAnimation() --[[ @ 0]]
			f4_arg0.Border2:setAlpha( 1 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.Border2 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
