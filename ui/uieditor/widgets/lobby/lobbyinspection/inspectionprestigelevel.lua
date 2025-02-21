-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.InspectionPrestigeLevel = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.InspectionPrestigeLevel.__defaultWidth = 400 --[[ @ 0]]
CoD.InspectionPrestigeLevel.__defaultHeight = 21 --[[ @ 0]]
CoD.InspectionPrestigeLevel.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.InspectionPrestigeLevel ) --[[ @ 0]]
	self.id = "InspectionPrestigeLevel" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local PrestigeText = LUI.UIText.new( 0, 0, 0, 200, 0, 0, 0, 21 ) --[[ @ 0]]
	PrestigeText:setRGB( 0.13, 0.78, 1 ) --[[ @ 0]]
	PrestigeText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/new" ) ) --[[ @ 0]]
	PrestigeText:setTTF( "dinnext_regular" ) --[[ @ 0]]
	PrestigeText:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
	PrestigeText:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( PrestigeText ) --[[ @ 0]]
	self.PrestigeText = PrestigeText --[[ @ 0]]
	
	local PrestigeLevelNum = LUI.UIText.new( 0, 0, 200, 400, 0, 0, 0, 21 ) --[[ @ 0]]
	PrestigeLevelNum:setRGB( 0.13, 0.78, 1 ) --[[ @ 0]]
	PrestigeLevelNum:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/new" ) ) --[[ @ 0]]
	PrestigeLevelNum:setTTF( "dinnext_regular" ) --[[ @ 0]]
	PrestigeLevelNum:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	PrestigeLevelNum:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( PrestigeLevelNum ) --[[ @ 0]]
	self.PrestigeLevelNum = PrestigeLevelNum --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
