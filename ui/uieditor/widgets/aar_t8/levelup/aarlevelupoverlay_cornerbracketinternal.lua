-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
CoD.AARLevelUpOverlay_CornerBracketInternal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AARLevelUpOverlay_CornerBracketInternal.__defaultWidth = 360 --[[ @ 0]]
CoD.AARLevelUpOverlay_CornerBracketInternal.__defaultHeight = 360 --[[ @ 0]]
CoD.AARLevelUpOverlay_CornerBracketInternal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AARLevelUpOverlay_CornerBracketInternal ) --[[ @ 0]]
	self.id = "AARLevelUpOverlay_CornerBracketInternal" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local Corner4 = LUI.UIImage.new( 0, 0, 0, 32, 1, 1, -32, 0 ) --[[ @ 0]]
	Corner4:setZRot( 90 ) --[[ @ 0]]
	Corner4:setImage( RegisterImage( @"uie_ui_menu_aar_common_corner_blur" ) ) --[[ @ 0]]
	Corner4:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	Corner4:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Corner4 ) --[[ @ 0]]
	self.Corner4 = Corner4 --[[ @ 0]]
	
	local Corner3 = LUI.UIImage.new( 1, 1, -32, 0, 1, 1, -32, 0 ) --[[ @ 0]]
	Corner3:setZRot( 180 ) --[[ @ 0]]
	Corner3:setImage( RegisterImage( @"uie_ui_menu_aar_common_corner_blur" ) ) --[[ @ 0]]
	Corner3:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	Corner3:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Corner3 ) --[[ @ 0]]
	self.Corner3 = Corner3 --[[ @ 0]]
	
	local Corner2 = LUI.UIImage.new( 1, 1, -32, 0, 0, 0, 0, 32 ) --[[ @ 0]]
	Corner2:setZRot( -90 ) --[[ @ 0]]
	Corner2:setImage( RegisterImage( @"uie_ui_menu_aar_common_corner_blur" ) ) --[[ @ 0]]
	Corner2:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	Corner2:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Corner2 ) --[[ @ 0]]
	self.Corner2 = Corner2 --[[ @ 0]]
	
	local Corner1 = LUI.UIImage.new( 0, 0, 0, 32, 0, 0, 0, 32 ) --[[ @ 0]]
	Corner1:setImage( RegisterImage( @"uie_ui_menu_aar_common_corner_blur" ) ) --[[ @ 0]]
	Corner1:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	Corner1:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Corner1 ) --[[ @ 0]]
	self.Corner1 = Corner1 --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
