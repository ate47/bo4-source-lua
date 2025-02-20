-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "ui/uieditor/widgets/common/commonrankiconandranklarge" ) --[[ @ 0]]

CoD.Social_RankIconAndRankLargeContainer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Social_RankIconAndRankLargeContainer.__defaultWidth = 349 --[[ @ 0]]
CoD.Social_RankIconAndRankLargeContainer.__defaultHeight = 135 --[[ @ 0]]
CoD.Social_RankIconAndRankLargeContainer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.Social_RankIconAndRankLargeContainer ) --[[ @ 0]]
	self.id = "Social_RankIconAndRankLargeContainer" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local CommonRankIconAndRankLarge = CoD.CommonRankIconAndRankLarge.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	CommonRankIconAndRankLarge:linkToElementModel( self, "rankInfo", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			CommonRankIconAndRankLarge:setModel( f2_local0, f1_arg1 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	CommonRankIconAndRankLarge:linkToElementModel( self, nil, false, function ( model )
		CommonRankIconAndRankLarge.arenaRubiesUnlocked:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( CommonRankIconAndRankLarge ) --[[ @ 0]]
	self.CommonRankIconAndRankLarge = CommonRankIconAndRankLarge --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.Social_RankIconAndRankLargeContainer.__onClose = function ( f4_arg0 )
	f4_arg0.CommonRankIconAndRankLarge:close() --[[ @ 0]]
end
 --[[ @ 0]]
