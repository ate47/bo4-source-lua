-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.BM_ActiveContractItemReward = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.BM_ActiveContractItemReward.__defaultWidth = 150 --[[ @ 0]]
CoD.BM_ActiveContractItemReward.__defaultHeight = 50 --[[ @ 0]]
CoD.BM_ActiveContractItemReward.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.BM_ActiveContractItemReward ) --[[ @ 0]]
	self.id = "BM_ActiveContractItemReward" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	
	local RewardIcon = LUI.UIImage.new( 0, 0, 0, 60, 0.5, 0.5, -23, 37 ) --[[ @ 0]]
	RewardIcon:setImage( RegisterImage( @"ui_icon_blackmarket_reserves_case_small" ) ) --[[ @ 0]]
	self:addElement( RewardIcon ) --[[ @ 0]]
	self.RewardIcon = RewardIcon --[[ @ 0]]
	
	local RewardsAmount = LUI.UIText.new( 0, 0, 63, 143, 0, 0, 13, 37 ) --[[ @ 0]]
	RewardsAmount:setText( "" ) --[[ @ 0]]
	RewardsAmount:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	RewardsAmount:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	RewardsAmount:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( RewardsAmount ) --[[ @ 0]]
	self.RewardsAmount = RewardsAmount --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
