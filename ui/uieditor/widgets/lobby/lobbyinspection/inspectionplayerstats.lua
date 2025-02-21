-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.InspectionPlayerStats = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.InspectionPlayerStats.__defaultWidth = 200 --[[ @ 0]]
CoD.InspectionPlayerStats.__defaultHeight = 89 --[[ @ 0]]
CoD.InspectionPlayerStats.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.InspectionPlayerStats ) --[[ @ 0]]
	self.id = "InspectionPlayerStats" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local TotalKill = LUI.UIText.new( 0, 0, 0, 200, 0, 0, 6, 27 ) --[[ @ 0]]
	TotalKill:setAlpha( 0.1 ) --[[ @ 0]]
	TotalKill:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/new" ) ) --[[ @ 0]]
	TotalKill:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	TotalKill:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	TotalKill:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( TotalKill ) --[[ @ 0]]
	self.TotalKill = TotalKill --[[ @ 0]]
	
	local TextBox = LUI.UIText.new( 0, 0, 0, 200, 0, 0, 30.5, 78.5 ) --[[ @ 0]]
	TextBox:setRGB( 0.9, 0.89, 0.78 ) --[[ @ 0]]
	TextBox:setAlpha( 0.5 ) --[[ @ 0]]
	TextBox:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/new" ) ) --[[ @ 0]]
	TextBox:setTTF( "dinnext_regular" ) --[[ @ 0]]
	TextBox:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	TextBox:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( TextBox ) --[[ @ 0]]
	self.TextBox = TextBox --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
