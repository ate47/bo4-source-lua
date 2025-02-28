-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.Toast_Container_ClansTeams_Checkmark = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Toast_Container_ClansTeams_Checkmark.__defaultWidth = 28 --[[ @ 0]]
CoD.Toast_Container_ClansTeams_Checkmark.__defaultHeight = 52 --[[ @ 0]]
CoD.Toast_Container_ClansTeams_Checkmark.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.Toast_Container_ClansTeams_Checkmark ) --[[ @ 0]]
	self.id = "Toast_Container_ClansTeams_Checkmark" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local CheckmarkBaking = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	CheckmarkBaking:setRGB( ColorSet.SelectedGreen.r, ColorSet.SelectedGreen.g, ColorSet.SelectedGreen.b ) --[[ @ 0]]
	CheckmarkBaking:setAlpha( 0.8 ) --[[ @ 0]]
	self:addElement( CheckmarkBaking ) --[[ @ 0]]
	self.CheckmarkBaking = CheckmarkBaking --[[ @ 0]]
	
	local CheckmarkBackingOutline = LUI.UIImage.new( 0, 1, 2, -2, 0, 1, 2, -2 ) --[[ @ 0]]
	CheckmarkBackingOutline:setRGB( 0, 0, 0 ) --[[ @ 0]]
	CheckmarkBackingOutline:setImage( RegisterImage( @"uie_highlight_border_line" ) ) --[[ @ 0]]
	CheckmarkBackingOutline:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_normal" ) ) --[[ @ 0]]
	CheckmarkBackingOutline:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	CheckmarkBackingOutline:setupNineSliceShader( 6, 6 ) --[[ @ 0]]
	self:addElement( CheckmarkBackingOutline ) --[[ @ 0]]
	self.CheckmarkBackingOutline = CheckmarkBackingOutline --[[ @ 0]]
	
	local CheckmarkIcon = LUI.UIImage.new( 0.5, 0.5, -14, 14, 0.5, 0.5, -15, 15 ) --[[ @ 0]]
	CheckmarkIcon:setRGB( 0, 0, 0 ) --[[ @ 0]]
	CheckmarkIcon:setImage( RegisterImage( @"uie_success_icon" ) ) --[[ @ 0]]
	self:addElement( CheckmarkIcon ) --[[ @ 0]]
	self.CheckmarkIcon = CheckmarkIcon --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
