-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.FE_LabelSubHeadingD = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.FE_LabelSubHeadingD.__defaultWidth = 183 --[[ @ 0]]
CoD.FE_LabelSubHeadingD.__defaultHeight = 48 --[[ @ 0]]
CoD.FE_LabelSubHeadingD.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.FE_LabelSubHeadingD ) --[[ @ 0]]
	self.id = "FE_LabelSubHeadingD" --[[ @ 0]]
	self.soundSet = "ModeSelection" --[[ @ 0]]
	
	local Label0 = LUI.UIText.new( 0, 0, 0, 183, 0, 0, 4, 43 ) --[[ @ 0]]
	Label0:setText( "" ) --[[ @ 0]]
	Label0:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	Label0:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( Label0 ) --[[ @ 0]]
	self.Label0 = Label0 --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
