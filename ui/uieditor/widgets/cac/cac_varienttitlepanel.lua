-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.CAC_varientTitlePanel = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CAC_varientTitlePanel.__defaultWidth = 463 --[[ @ 0]]
CoD.CAC_varientTitlePanel.__defaultHeight = 54 --[[ @ 0]]
CoD.CAC_varientTitlePanel.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CAC_varientTitlePanel ) --[[ @ 0]]
	self.id = "CAC_varientTitlePanel" --[[ @ 0]]
	self.soundSet = "CAC_EditLoadout" --[[ @ 0]]
	
	local Image0 = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Image0:setRGB( 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Image0 ) --[[ @ 0]]
	self.Image0 = Image0 --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
