-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "ui/uieditor/widgets/cac/cac_lock" ) --[[ @ 0]]

CoD.WZAARTierLock = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WZAARTierLock.__defaultWidth = 228 --[[ @ 0]]
CoD.WZAARTierLock.__defaultHeight = 37 --[[ @ 0]]
CoD.WZAARTierLock.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIHorizontalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 0, true ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Center ) --[[ @ 0]]
	self:setClass( CoD.WZAARTierLock ) --[[ @ 0]]
	self.id = "WZAARTierLock" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local Backing = LUI.UIImage.new( 0, 1.06, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Backing:setRGB( 0, 0, 0 ) --[[ @ 0]]
	Backing:setAlpha( 0.94 ) --[[ @ 0]]
	self:addElement( Backing ) --[[ @ 0]]
	self.Backing = Backing --[[ @ 0]]
	
	local LockedIcon = CoD.cac_lock.new( f1_arg0, f1_arg1, 0, 0, 0, 28, 0, 0, 4.5, 32.5 ) --[[ @ 0]]
	self:addElement( LockedIcon ) --[[ @ 0]]
	self.LockedIcon = LockedIcon --[[ @ 0]]
	
	local LockedTier = LUI.UIText.new( 0, 0, 28, 228, 0, 0, 7.5, 29.5 ) --[[ @ 0]]
	LockedTier:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	LockedTier:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	LockedTier:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	LockedTier:linkToElementModel( self, "maxTier", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			LockedTier:setText( CoD.ChallengesUtility.MakeChallengeTierString( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( LockedTier ) --[[ @ 0]]
	self.LockedTier = LockedTier --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.WZAARTierLock.__onClose = function ( f3_arg0 )
	f3_arg0.LockedIcon:close() --[[ @ 0]]
	f3_arg0.LockedTier:close() --[[ @ 0]]
end
 --[[ @ 0]]
