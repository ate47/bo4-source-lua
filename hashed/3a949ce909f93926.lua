-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
CoD.systemOverlay_PrestigeRewardItem = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.systemOverlay_PrestigeRewardItem.__defaultWidth = 160 --[[ @ 0]]
CoD.systemOverlay_PrestigeRewardItem.__defaultHeight = 175 --[[ @ 0]]
CoD.systemOverlay_PrestigeRewardItem.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.systemOverlay_PrestigeRewardItem ) --[[ @ 0]]
	self.id = "systemOverlay_PrestigeRewardItem" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local RewardImage = LUI.UIImage.new( 0, 0, 10, 150, 0, 0, 0, 140 ) --[[ @ 0]]
	RewardImage:linkToElementModel( self, "rewardImage", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			RewardImage:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( RewardImage ) --[[ @ 0]]
	self.RewardImage = RewardImage --[[ @ 0]]
	
	local RewardLabel = LUI.UIText.new( 0, 1, 0, 0, 0, 0, 142, 160 ) --[[ @ 0]]
	RewardLabel:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	RewardLabel:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	RewardLabel:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	RewardLabel:linkToElementModel( self, "rewardText", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			RewardLabel:setText( LocalizeToUpperString( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( RewardLabel ) --[[ @ 0]]
	self.RewardLabel = RewardLabel --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.systemOverlay_PrestigeRewardItem.__onClose = function ( f4_arg0 )
	f4_arg0.RewardImage:close() --[[ @ 0]]
	f4_arg0.RewardLabel:close() --[[ @ 0]]
end
 --[[ @ 0]]
