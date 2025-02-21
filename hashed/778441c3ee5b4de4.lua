-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.SpecialEventRewardWidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.SpecialEventRewardWidget.__defaultWidth = 150 --[[ @ 0]]
CoD.SpecialEventRewardWidget.__defaultHeight = 56 --[[ @ 0]]
CoD.SpecialEventRewardWidget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIHorizontalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 2, false ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Left ) --[[ @ 0]]
	self:setClass( CoD.SpecialEventRewardWidget ) --[[ @ 0]]
	self.id = "SpecialEventRewardWidget" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local RewardIcon = LUI.UIImage.new( 0, 0, 0, 56, 0, 0, 0, 56 ) --[[ @ 0]]
	RewardIcon:linkToElementModel( self, "rewardImage", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			RewardIcon:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( RewardIcon ) --[[ @ 0]]
	self.RewardIcon = RewardIcon --[[ @ 0]]
	
	local RewardQuantityText = LUI.UIText.new( 0, 0, 58, 144, 0, 0, 22, 36 ) --[[ @ 0]]
	RewardQuantityText:setTTF( "dinnext_regular" ) --[[ @ 0]]
	RewardQuantityText:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	RewardQuantityText:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	RewardQuantityText:linkToElementModel( self, "rewardText", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			RewardQuantityText:setText( Engine[@"hash_4F9F1239CFD921FE"]( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( RewardQuantityText ) --[[ @ 0]]
	self.RewardQuantityText = RewardQuantityText --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.SpecialEventRewardWidget.__onClose = function ( f4_arg0 )
	f4_arg0.RewardIcon:close() --[[ @ 0]]
	f4_arg0.RewardQuantityText:close() --[[ @ 0]]
end
 --[[ @ 0]]
