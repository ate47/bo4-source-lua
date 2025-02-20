-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
require( "x64:2cde4eb6b60deb3a" ) --[[ @ 0]]

CoD.WarzoneUseTimerUsing = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WarzoneUseTimerUsing.__defaultWidth = 600 --[[ @ 0]]
CoD.WarzoneUseTimerUsing.__defaultHeight = 36 --[[ @ 0]]
CoD.WarzoneUseTimerUsing.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setUseCylinderMapping( false ) --[[ @ 0]]
	self:setClass( CoD.WarzoneUseTimerUsing ) --[[ @ 0]]
	self.id = "WarzoneUseTimerUsing" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local ItemName = LUI.UIText.new( 0, 0, 41.5, 558.5, 0, 0, 3, 33 ) --[[ @ 0]]
	ItemName:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	ItemName:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	ItemName:setBackingType( 1 ) --[[ @ 0]]
	ItemName:setBackingWidget( CoD.WarzoneUseTimerRevivePlayerBG, f1_arg0, f1_arg1 ) --[[ @ 0]]
	ItemName:setBackingXPadding( 8 ) --[[ @ 0]]
	ItemName:setBackingYPadding( 2 ) --[[ @ 0]]
	ItemName:subscribeToGlobalModel( f1_arg1, "PlayerAbilities", "playerGadget1.name", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			ItemName:setText( LocalizeIntoStringIfNotEmpty( @"hash_72F42EC88F0ED2EC", f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ItemName ) --[[ @ 0]]
	self.ItemName = ItemName --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.WarzoneUseTimerUsing.__onClose = function ( f3_arg0 )
	f3_arg0.ItemName:close() --[[ @ 0]]
end
 --[[ @ 0]]
