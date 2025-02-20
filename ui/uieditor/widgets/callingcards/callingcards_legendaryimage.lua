-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
require( "ui/uieditor/widgets/callingcards/callingcards_goldframe" ) --[[ @ 0]]

CoD[@"hash_5AEBB28681A82F4D"] = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD[@"hash_5AEBB28681A82F4D"].__defaultWidth = 720 --[[ @ 0]]
CoD[@"hash_5AEBB28681A82F4D"].__defaultHeight = 180 --[[ @ 0]]
CoD[@"hash_5AEBB28681A82F4D"].new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD[@"hash_5AEBB28681A82F4D"] ) --[[ @ 0]]
	self.id = "CallingCards_LegendaryImage" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local CardIcon = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	CardIcon:setImage( RegisterImage( @"uie_t7_icon_callingcard_temp2_lrg" ) ) --[[ @ 0]]
	CardIcon:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_feather_blend" ) ) --[[ @ 0]]
	self:addElement( CardIcon ) --[[ @ 0]]
	self.CardIcon = CardIcon --[[ @ 0]]
	
	local CallingCardsGoldFrame = CoD.CallingCards_GoldFrame.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( CallingCardsGoldFrame ) --[[ @ 0]]
	self.CallingCardsGoldFrame = CallingCardsGoldFrame --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD[@"hash_5AEBB28681A82F4D"].__onClose = function ( f2_arg0 )
	f2_arg0.CallingCardsGoldFrame:close() --[[ @ 0]]
end
 --[[ @ 0]]
