-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
CoD.HealthBarWidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.HealthBarWidget.__defaultWidth = 152 --[[ @ 0]]
CoD.HealthBarWidget.__defaultHeight = 12 --[[ @ 0]]
CoD.HealthBarWidget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.HealthBarWidget ) --[[ @ 0]]
	self.id = "HealthBarWidget" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local HealthBackground = LUI.UIImage.new( 0.5, 0.5, -76, 76, 0, 0, 0, 12 ) --[[ @ 0]]
	HealthBackground:setRGB( 0.37, 0.4, 0.44 ) --[[ @ 0]]
	HealthBackground:setImage( RegisterImage( @"hash_75CDE8BCCBD6F24" ) ) --[[ @ 0]]
	HealthBackground:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_5BEEFD90021D3628" ) ) --[[ @ 0]]
	HealthBackground:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	HealthBackground:setShaderVector( 1, 4, 1, 0, 0 ) --[[ @ 0]]
	HealthBackground:setShaderVector( 2, 0, 1, 0, 1 ) --[[ @ 0]]
	HealthBackground:setupNineSliceShader( 6, 6 ) --[[ @ 0]]
	self:addElement( HealthBackground ) --[[ @ 0]]
	self.HealthBackground = HealthBackground --[[ @ 0]]
	
	local WoundBar = LUI.UIImage.new( 0.5, 0.5, -75, 75, 0.5, 0.5, -1, 1 ) --[[ @ 0]]
	WoundBar:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta_normal" ) ) --[[ @ 0]]
	WoundBar:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	WoundBar:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	WoundBar:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	WoundBar:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	WoundBar:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( WoundBar ) --[[ @ 0]]
	self.WoundBar = WoundBar --[[ @ 0]]
	
	local CleanseBarBG = LUI.UIImage.new( 0.5, 0.5, -76, 76, -0.07, -0.07, 0.5, 13.5 ) --[[ @ 0]]
	CleanseBarBG:setRGB( ColorSet.CleanseBar.r, ColorSet.CleanseBar.g, ColorSet.CleanseBar.b ) --[[ @ 0]]
	CleanseBarBG:setImage( RegisterImage( @"hash_475961ABECF3E11A" ) ) --[[ @ 0]]
	CleanseBarBG:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_17E89392B94A41DE" ) ) --[[ @ 0]]
	CleanseBarBG:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	CleanseBarBG:setShaderVector( 1, 4, 1, 0, 0 ) --[[ @ 0]]
	CleanseBarBG:setShaderVector( 2, 0, 1, 0, 1 ) --[[ @ 0]]
	CleanseBarBG:setupNineSliceShader( 6, 6 ) --[[ @ 0]]
	self:addElement( CleanseBarBG ) --[[ @ 0]]
	self.CleanseBarBG = CleanseBarBG --[[ @ 0]]
	
	local HealthFill = LUI.UIImage.new( 0.5, 0.5, -76, 76, 0, 0, 0, 12 ) --[[ @ 0]]
	HealthFill:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	HealthFill:setImage( RegisterImage( @"hash_5700B275CC09FEF2" ) ) --[[ @ 0]]
	HealthFill:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_5BEEFD90021D3628" ) ) --[[ @ 0]]
	HealthFill:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	HealthFill:setShaderVector( 1, 4, 1, 0, 0 ) --[[ @ 0]]
	HealthFill:setShaderVector( 2, 0, 1, 0, 1 ) --[[ @ 0]]
	HealthFill:setupNineSliceShader( 6, 6 ) --[[ @ 0]]
	self:addElement( HealthFill ) --[[ @ 0]]
	self.HealthFill = HealthFill --[[ @ 0]]
	
	local CleanseBar = LUI.UIImage.new( 0.5, 0.5, -76, 76, 0, 0, 0, 12 ) --[[ @ 0]]
	CleanseBar:setRGB( ColorSet.CleanseBar.r, ColorSet.CleanseBar.g, ColorSet.CleanseBar.b ) --[[ @ 0]]
	CleanseBar:setImage( RegisterImage( @"hash_5700B275CC09FEF2" ) ) --[[ @ 0]]
	CleanseBar:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_17E89392B94A41DE" ) ) --[[ @ 0]]
	CleanseBar:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	CleanseBar:setShaderVector( 1, 4, 1, 0, 0 ) --[[ @ 0]]
	CleanseBar:setShaderVector( 2, 0, 1, 0, 1 ) --[[ @ 0]]
	CleanseBar:setupNineSliceShader( 6, 6 ) --[[ @ 0]]
	self:addElement( CleanseBar ) --[[ @ 0]]
	self.CleanseBar = CleanseBar --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
