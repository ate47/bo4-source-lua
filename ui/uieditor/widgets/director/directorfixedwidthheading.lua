-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.DirectorFixedWidthHeading = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DirectorFixedWidthHeading.__defaultWidth = 486 --[[ @ 0]]
CoD.DirectorFixedWidthHeading.__defaultHeight = 30 --[[ @ 0]]
CoD.DirectorFixedWidthHeading.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.DirectorFixedWidthHeading ) --[[ @ 0]]
	self.id = "DirectorFixedWidthHeading" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local Backing = LUI.UIImage.new( 0, 1, 0, 0, 0.93, 0.93, -2, 2 ) --[[ @ 0]]
	Backing:setRGB( 0.29, 0.29, 0.29 ) --[[ @ 0]]
	self:addElement( Backing ) --[[ @ 0]]
	self.Backing = Backing --[[ @ 0]]
	
	local Label = LUI.UIText.new( -0.01, 1.01, 5, -5, 0.5, 0.5, -15, 7 ) --[[ @ 0]]
	Label:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_7700AE5902F5ECF7" ) ) --[[ @ 0]]
	Label:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	Label:setLetterSpacing( 0.1 ) --[[ @ 0]]
	Label:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Label:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( Label ) --[[ @ 0]]
	self.Label = Label --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
