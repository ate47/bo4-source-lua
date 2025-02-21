-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.PC_Prestige_Arrow = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PC_Prestige_Arrow.__defaultWidth = 18 --[[ @ 0]]
CoD.PC_Prestige_Arrow.__defaultHeight = 22 --[[ @ 0]]
CoD.PC_Prestige_Arrow.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PC_Prestige_Arrow ) --[[ @ 0]]
	self.id = "PC_Prestige_Arrow" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local arrow = LUI.UIImage.new( 0, 0, 0, 18, 0.01, 0.01, 0, 22 ) --[[ @ 0]]
	arrow:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
	arrow:setAlpha( 0.8 ) --[[ @ 0]]
	arrow:setImage( RegisterImage( @"uie_ui_arrow_up" ) ) --[[ @ 0]]
	self:addElement( arrow ) --[[ @ 0]]
	self.arrow = arrow --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.PC_Prestige_Arrow.__resetProperties = function ( f2_arg0 )
	f2_arg0.arrow:completeAnimation() --[[ @ 0]]
	f2_arg0.arrow:setAlpha( 0.8 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.PC_Prestige_Arrow.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Focus = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f4_arg0.arrow:completeAnimation() --[[ @ 0]]
			f4_arg0.arrow:setAlpha( 1 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.arrow ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
