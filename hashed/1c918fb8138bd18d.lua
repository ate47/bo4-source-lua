-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
CoD.Social_ManagePartyPlayerRealName = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Social_ManagePartyPlayerRealName.__defaultWidth = 289 --[[ @ 0]]
CoD.Social_ManagePartyPlayerRealName.__defaultHeight = 30 --[[ @ 0]]
CoD.Social_ManagePartyPlayerRealName.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIHorizontalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 15, false ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Left ) --[[ @ 0]]
	self:setClass( CoD.Social_ManagePartyPlayerRealName ) --[[ @ 0]]
	self.id = "Social_ManagePartyPlayerRealName" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local clanTag = LUI.UIText.new( 0, 0, 0, 132, 0.5, 0.5, -15, 15 ) --[[ @ 0]]
	clanTag:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	clanTag:setTTF( "notosans_regular" ) --[[ @ 0]]
	clanTag:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	clanTag:setBackingType( 2 ) --[[ @ 0]]
	clanTag:setBackingColor( 0, 0, 0 ) --[[ @ 0]]
	clanTag:setBackingAlpha( 0.6 ) --[[ @ 0]]
	clanTag:setBackingXPadding( 3 ) --[[ @ 0]]
	clanTag:linkToElementModel( self, "identityBadge.clantag", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			clanTag:setText( StringAsClanTag( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( clanTag ) --[[ @ 0]]
	self.clanTag = clanTag --[[ @ 0]]
	
	local realName = LUI.UIText.new( 0, 0, 147, 436, 0.5, 0.5, -15, 15 ) --[[ @ 0]]
	realName:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	realName:setTTF( "notosans_regular" ) --[[ @ 0]]
	realName:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	realName:setBackingType( 2 ) --[[ @ 0]]
	realName:setBackingColor( 0, 0, 0 ) --[[ @ 0]]
	realName:setBackingAlpha( 0.6 ) --[[ @ 0]]
	realName:setBackingXPadding( 3 ) --[[ @ 0]]
	realName:linkToElementModel( self, "identityBadge.realName", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			realName:setText( f3_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( realName ) --[[ @ 0]]
	self.realName = realName --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.Social_ManagePartyPlayerRealName.__onClose = function ( f4_arg0 )
	f4_arg0.clanTag:close() --[[ @ 0]]
	f4_arg0.realName:close() --[[ @ 0]]
end
 --[[ @ 0]]
