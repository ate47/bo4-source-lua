-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
CoD.ButtonFrame_MaxLevelNotify = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ButtonFrame_MaxLevelNotify.__defaultWidth = 600 --[[ @ 0]]
CoD.ButtonFrame_MaxLevelNotify.__defaultHeight = 100 --[[ @ 0]]
CoD.ButtonFrame_MaxLevelNotify.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ButtonFrame_MaxLevelNotify ) --[[ @ 0]]
	self.id = "ButtonFrame_MaxLevelNotify" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	
	local PrestigeIcon = LUI.UIImage.new( 0, 0, 0, 100, 0, 0, 0, 100 ) --[[ @ 0]]
	PrestigeIcon:subscribeToGlobalModel( f1_arg1, "PrestigeMenuInfo", "hasPrestiged", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			PrestigeIcon:setImage( RegisterImage( CoD.PlayerStatsUtility.GetNextPrestigeIcon( f1_arg0, true, f2_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( PrestigeIcon ) --[[ @ 0]]
	self.PrestigeIcon = PrestigeIcon --[[ @ 0]]
	
	local MaxLevel = LUI.UIText.new( 0.5, 0.5, -199.5, 239.5, 1, 1, -80, -59 ) --[[ @ 0]]
	MaxLevel:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	MaxLevel:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_53266CB6BCE7419E" ) ) --[[ @ 0]]
	MaxLevel:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	MaxLevel:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_90D57B1E92D39D7" ) ) --[[ @ 0]]
	MaxLevel:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	MaxLevel:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	MaxLevel:setShaderVector( 2, 0, 0, 0, 0.5 ) --[[ @ 0]]
	MaxLevel:setLetterSpacing( 2 ) --[[ @ 0]]
	MaxLevel:setLineSpacing( 1 ) --[[ @ 0]]
	MaxLevel:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	self:addElement( MaxLevel ) --[[ @ 0]]
	self.MaxLevel = MaxLevel --[[ @ 0]]
	
	local PrestigeAvailable = LUI.UIText.new( 0.5, 0.5, -200.5, 239.5, 1, 1, -50, -20 ) --[[ @ 0]]
	PrestigeAvailable:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	PrestigeAvailable:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_10AAAEEE2695C5F4" ) ) --[[ @ 0]]
	PrestigeAvailable:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	PrestigeAvailable:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_90D57B1E92D39D7" ) ) --[[ @ 0]]
	PrestigeAvailable:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	PrestigeAvailable:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	PrestigeAvailable:setShaderVector( 2, 0, 0, 0, 0.5 ) --[[ @ 0]]
	PrestigeAvailable:setLetterSpacing( 2 ) --[[ @ 0]]
	PrestigeAvailable:setLineSpacing( 1 ) --[[ @ 0]]
	PrestigeAvailable:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	self:addElement( PrestigeAvailable ) --[[ @ 0]]
	self.PrestigeAvailable = PrestigeAvailable --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ButtonFrame_MaxLevelNotify.__onClose = function ( f3_arg0 )
	f3_arg0.PrestigeIcon:close() --[[ @ 0]]
end
 --[[ @ 0]]
