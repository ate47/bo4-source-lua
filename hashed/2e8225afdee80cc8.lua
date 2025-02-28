-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.HealthBarWidgetZM = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.HealthBarWidgetZM.__defaultWidth = 152 --[[ @ 0]]
CoD.HealthBarWidgetZM.__defaultHeight = 12 --[[ @ 0]]
CoD.HealthBarWidgetZM.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.HealthBarWidgetZM ) --[[ @ 0]]
	self.id = "HealthBarWidgetZM" --[[ @ 0]]
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
	
	local WoundBarBGZM = LUI.UIImage.new( 0.5, 0.5, -76, 76, 0.5, 0.5, -95.5, 103.5 ) --[[ @ 0]]
	WoundBarBGZM:setRGB( 1, 0, 0 ) --[[ @ 0]]
	WoundBarBGZM:setAlpha( 0 ) --[[ @ 0]]
	WoundBarBGZM:setScale( 0.95, 1 ) --[[ @ 0]]
	WoundBarBGZM:setImage( RegisterImage( @"hash_2D5B703C3B0F386D" ) ) --[[ @ 0]]
	WoundBarBGZM:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_17EA4827662D4CD4" ) ) --[[ @ 0]]
	WoundBarBGZM:setShaderVector( 0, 3, 1, 0, 0 ) --[[ @ 0]]
	WoundBarBGZM:setShaderVector( 1, 0, 1, 0, 1 ) --[[ @ 0]]
	self:addElement( WoundBarBGZM ) --[[ @ 0]]
	self.WoundBarBGZM = WoundBarBGZM --[[ @ 0]]
	
	local HealthBackgroundZM = LUI.UIImage.new( 0.5, 0.5, -76, 76, 0, 0, 0, 16 ) --[[ @ 0]]
	HealthBackgroundZM:setRGB( 0.44, 0.44, 0.44 ) --[[ @ 0]]
	HealthBackgroundZM:setAlpha( 0 ) --[[ @ 0]]
	HealthBackgroundZM:setImage( RegisterImage( @"hash_3D2ED8639C87F2F6" ) ) --[[ @ 0]]
	HealthBackgroundZM:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_normal" ) ) --[[ @ 0]]
	HealthBackgroundZM:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	HealthBackgroundZM:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	HealthBackgroundZM:setShaderVector( 2, 1, 0, 0, 0 ) --[[ @ 0]]
	HealthBackgroundZM:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	HealthBackgroundZM:setShaderVector( 4, 3, 0.02, 1, 0 ) --[[ @ 0]]
	self:addElement( HealthBackgroundZM ) --[[ @ 0]]
	self.HealthBackgroundZM = HealthBackgroundZM --[[ @ 0]]
	
	local WoundBarZM = LUI.UIImage.new( 0.5, 0.5, -76, 76, 0, 0, 0, 16 ) --[[ @ 0]]
	WoundBarZM:setRGB( 1, 0.39, 0 ) --[[ @ 0]]
	WoundBarZM:setAlpha( 0 ) --[[ @ 0]]
	WoundBarZM:setImage( RegisterImage( @"hash_3D2ED8639C87F2F6" ) ) --[[ @ 0]]
	WoundBarZM:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_normal" ) ) --[[ @ 0]]
	WoundBarZM:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	WoundBarZM:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	WoundBarZM:setShaderVector( 2, 1, 0, 0, 0 ) --[[ @ 0]]
	WoundBarZM:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	WoundBarZM:setShaderVector( 4, 3, 0.02, 1, 0 ) --[[ @ 0]]
	self:addElement( WoundBarZM ) --[[ @ 0]]
	self.WoundBarZM = WoundBarZM --[[ @ 0]]
	
	local CleanseBarBGZM = LUI.UIImage.new( 0.5, 0.5, -76, 76, 0, 0, 0, 16 ) --[[ @ 0]]
	CleanseBarBGZM:setRGB( 1, 0.73, 0 ) --[[ @ 0]]
	CleanseBarBGZM:setAlpha( 0 ) --[[ @ 0]]
	CleanseBarBGZM:setImage( RegisterImage( @"hash_3D2ED8639C87F2F6" ) ) --[[ @ 0]]
	CleanseBarBGZM:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_normal" ) ) --[[ @ 0]]
	CleanseBarBGZM:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	CleanseBarBGZM:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	CleanseBarBGZM:setShaderVector( 2, 1, 0, 0, 0 ) --[[ @ 0]]
	CleanseBarBGZM:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	CleanseBarBGZM:setShaderVector( 4, 3, 0.02, 1, 0 ) --[[ @ 0]]
	self:addElement( CleanseBarBGZM ) --[[ @ 0]]
	self.CleanseBarBGZM = CleanseBarBGZM --[[ @ 0]]
	
	local HealthFillZM = LUI.UIImage.new( 0.5, 0.5, -76, 76, 0, 0, 0, 16 ) --[[ @ 0]]
	HealthFillZM:setAlpha( 0 ) --[[ @ 0]]
	HealthFillZM:setImage( RegisterImage( @"hash_3D2ED8639C87F2F6" ) ) --[[ @ 0]]
	HealthFillZM:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_normal" ) ) --[[ @ 0]]
	HealthFillZM:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	HealthFillZM:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	HealthFillZM:setShaderVector( 2, 1, 0, 0, 0 ) --[[ @ 0]]
	HealthFillZM:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	HealthFillZM:setShaderVector( 4, 3, 0.02, 1, 0 ) --[[ @ 0]]
	self:addElement( HealthFillZM ) --[[ @ 0]]
	self.HealthFillZM = HealthFillZM --[[ @ 0]]
	
	local CleanseBarZM = LUI.UIImage.new( 0.5, 0.5, -76, 76, 0, 0, 0, 16 ) --[[ @ 0]]
	CleanseBarZM:setRGB( 1, 0.73, 0 ) --[[ @ 0]]
	CleanseBarZM:setAlpha( 0 ) --[[ @ 0]]
	CleanseBarZM:setImage( RegisterImage( @"hash_3D2ED8639C87F2F6" ) ) --[[ @ 0]]
	CleanseBarZM:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_normal" ) ) --[[ @ 0]]
	CleanseBarZM:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	CleanseBarZM:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	CleanseBarZM:setShaderVector( 2, 1, 0, 0, 0 ) --[[ @ 0]]
	CleanseBarZM:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	CleanseBarZM:setShaderVector( 4, 3, 0.02, 1, 0 ) --[[ @ 0]]
	self:addElement( CleanseBarZM ) --[[ @ 0]]
	self.CleanseBarZM = CleanseBarZM --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
