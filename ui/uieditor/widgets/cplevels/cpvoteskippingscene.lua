-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.CPVoteSkippingScene = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CPVoteSkippingScene.__defaultWidth = 280 --[[ @ 0]]
CoD.CPVoteSkippingScene.__defaultHeight = 37 --[[ @ 0]]
CoD.CPVoteSkippingScene.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CPVoteSkippingScene ) --[[ @ 0]]
	self.id = "CPVoteSkippingScene" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local Label0 = LUI.UIText.new( 0, 1, 21, -21, 0, 1, 0.5, 0.5 ) --[[ @ 0]]
	Label0:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_11AB825AF710768" ) ) --[[ @ 0]]
	Label0:setTTF( "default" ) --[[ @ 0]]
	Label0:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( Label0 ) --[[ @ 0]]
	self.Label0 = Label0 --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
