-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:6e539eb3c3e1e639" ) --[[ @ 0]]
require( "x64:909a1c8890f8571" ) --[[ @ 0]]

CoD.ZMInvChallengesInternal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ZMInvChallengesInternal.__defaultWidth = 320 --[[ @ 0]]
CoD.ZMInvChallengesInternal.__defaultHeight = 40 --[[ @ 0]]
CoD.ZMInvChallengesInternal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIVerticalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 2, true ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Top ) --[[ @ 0]]
	self:setClass( CoD.ZMInvChallengesInternal ) --[[ @ 0]]
	self.id = "ZMInvChallengesInternal" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local Backing = CoD.ZMInvChallengesBackingInternal.new( f1_arg0, f1_arg1, 0.5, 0.5, -137.5, 137.5, 0.5, 0.5, -35, 35 ) --[[ @ 0]]
	self:addElement( Backing ) --[[ @ 0]]
	self.Backing = Backing --[[ @ 0]]
	
	local ZMInvChallenges2 = CoD.ZMInvChallengeProgress.new( f1_arg0, f1_arg1, 0, 0, 9, 329, 0, 0, 0, 19 ) --[[ @ 0]]
	ZMInvChallenges2:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	ZMInvChallenges2:linkToElementModel( self, nil, false, function ( model )
		ZMInvChallenges2:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ZMInvChallenges2 ) --[[ @ 0]]
	self.ZMInvChallenges2 = ZMInvChallenges2 --[[ @ 0]]
	
	local ZMInvChallenges = LUI.UIText.new( -0.06, 1.07, 0, 0, 0, 0, 21, 40 ) --[[ @ 0]]
	ZMInvChallenges:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	ZMInvChallenges:setTTF( "dinnext_regular" ) --[[ @ 0]]
	ZMInvChallenges:setLetterSpacing( 1 ) --[[ @ 0]]
	ZMInvChallenges:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	ZMInvChallenges:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	ZMInvChallenges:linkToElementModel( self, "description", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			ZMInvChallenges:setText( Engine[@"hash_4F9F1239CFD921FE"]( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ZMInvChallenges ) --[[ @ 0]]
	self.ZMInvChallenges = ZMInvChallenges --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ZMInvChallengesInternal.__onClose = function ( f4_arg0 )
	f4_arg0.Backing:close() --[[ @ 0]]
	f4_arg0.ZMInvChallenges2:close() --[[ @ 0]]
	f4_arg0.ZMInvChallenges:close() --[[ @ 0]]
end
 --[[ @ 0]]
