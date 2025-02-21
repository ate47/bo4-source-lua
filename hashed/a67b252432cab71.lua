-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.HVOCardTitle = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.HVOCardTitle.__defaultWidth = 481 --[[ @ 0]]
CoD.HVOCardTitle.__defaultHeight = 46 --[[ @ 0]]
CoD.HVOCardTitle.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.HVOCardTitle ) --[[ @ 0]]
	self.id = "HVOCardTitle" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local PlayerName = LUI.UIText.new( 0, 0, 137, 481, 0, 0, 6, 46 ) --[[ @ 0]]
	PlayerName:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	PlayerName:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	PlayerName:setLetterSpacing( 4 ) --[[ @ 0]]
	PlayerName:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	PlayerName:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	PlayerName.__String_Reference = function ( f2_arg0 )
		local f2_local0 = f2_arg0:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			PlayerName:setText( f2_local0 ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	PlayerName:linkToElementModel( self, "perClient", true, function ( model, f3_arg1 )
		if f3_arg1["__PlayerName.__String_Reference_perClient->playerName"] then
			f3_arg1:removeSubscription( f3_arg1["__PlayerName.__String_Reference_perClient->playerName"] ) --[[ @ 0]]
			f3_arg1["__PlayerName.__String_Reference_perClient->playerName"] = nil --[[ @ 0]]
		end
		if model then
			local f3_local0 = model:get() --[[ @ 0]]
			local f3_local1 = model:get() --[[ @ 0]]
			model = f3_local0 and f3_local1.playerName --[[ @ 0]]
		end
		if model then
			f3_arg1["__PlayerName.__String_Reference_perClient->playerName"] = f3_arg1:subscribeToModel( model, PlayerName.__String_Reference ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( PlayerName ) --[[ @ 0]]
	self.PlayerName = PlayerName --[[ @ 0]]
	
	local RankIcon = LUI.UIImage.new( 0, 0, 82, 128, 0, 0, 0, 46 ) --[[ @ 0]]
	RankIcon.__Image = function ( f4_arg0 )
		local f4_local0 = f4_arg0:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			RankIcon:setImage( RegisterImage( f4_local0 ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	RankIcon:linkToElementModel( self, "perClient", true, function ( model, f5_arg1 )
		if f5_arg1["__RankIcon.__Image_perClient->rankIcon"] then
			f5_arg1:removeSubscription( f5_arg1["__RankIcon.__Image_perClient->rankIcon"] ) --[[ @ 0]]
			f5_arg1["__RankIcon.__Image_perClient->rankIcon"] = nil --[[ @ 0]]
		end
		if model then
			local f5_local0 = model:get() --[[ @ 0]]
			local f5_local1 = model:get() --[[ @ 0]]
			model = f5_local0 and f5_local1.rankIcon --[[ @ 0]]
		end
		if model then
			f5_arg1["__RankIcon.__Image_perClient->rankIcon"] = f5_arg1:subscribeToModel( model, RankIcon.__Image ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( RankIcon ) --[[ @ 0]]
	self.RankIcon = RankIcon --[[ @ 0]]
	
	local RankLevel = LUI.UIText.new( 0, 0, 0, 72, 0, 0, 6, 46 ) --[[ @ 0]]
	RankLevel:setRGB( ColorSet.T8__OCHRE.r, ColorSet.T8__OCHRE.g, ColorSet.T8__OCHRE.b ) --[[ @ 0]]
	RankLevel:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	RankLevel:setLetterSpacing( 4 ) --[[ @ 0]]
	RankLevel:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
	RankLevel:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	RankLevel.__String_Reference = function ( f6_arg0 )
		local f6_local0 = f6_arg0:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			RankLevel:setText( f6_local0 ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	RankLevel:linkToElementModel( self, "perClient", true, function ( model, f7_arg1 )
		if f7_arg1["__RankLevel.__String_Reference_perClient->rank"] then
			f7_arg1:removeSubscription( f7_arg1["__RankLevel.__String_Reference_perClient->rank"] ) --[[ @ 0]]
			f7_arg1["__RankLevel.__String_Reference_perClient->rank"] = nil --[[ @ 0]]
		end
		if model then
			local f7_local0 = model:get() --[[ @ 0]]
			local f7_local1 = model:get() --[[ @ 0]]
			model = f7_local0 and f7_local1.rank --[[ @ 0]]
		end
		if model then
			f7_arg1["__RankLevel.__String_Reference_perClient->rank"] = f7_arg1:subscribeToModel( model, RankLevel.__String_Reference ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( RankLevel ) --[[ @ 0]]
	self.RankLevel = RankLevel --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.HVOCardTitle.__onClose = function ( f8_arg0 )
	f8_arg0.PlayerName:close() --[[ @ 0]]
	f8_arg0.RankIcon:close() --[[ @ 0]]
	f8_arg0.RankLevel:close() --[[ @ 0]]
end
 --[[ @ 0]]
