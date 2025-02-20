-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
CoD.PlayerStatsMerits = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PlayerStatsMerits.__defaultWidth = 500 --[[ @ 0]]
CoD.PlayerStatsMerits.__defaultHeight = 18 --[[ @ 0]]
CoD.PlayerStatsMerits.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PlayerStatsMerits ) --[[ @ 0]]
	self.id = "PlayerStatsMerits" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local TypeText = LUI.UIText.new( 0, 0, 0, 116, 0, 0, 0, 18 ) --[[ @ 0]]
	TypeText:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	TypeText:setText( "" ) --[[ @ 0]]
	TypeText:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	TypeText:setLetterSpacing( 1 ) --[[ @ 0]]
	TypeText:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	self:addElement( TypeText ) --[[ @ 0]]
	self.TypeText = TypeText --[[ @ 0]]
	
	local MeritsValue = LUI.UIText.new( 0, 0, 191, 390, 0, 0, 0, 18 ) --[[ @ 0]]
	MeritsValue:setRGB( 0.69, 0.56, 0.04 ) --[[ @ 0]]
	MeritsValue:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	MeritsValue:setLetterSpacing( 1 ) --[[ @ 0]]
	MeritsValue:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	MeritsValue:linkToElementModel( self, "statMerits", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			MeritsValue:setText( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( MeritsValue ) --[[ @ 0]]
	self.MeritsValue = MeritsValue --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.PlayerStatsMerits.__onClose = function ( f3_arg0 )
	f3_arg0.MeritsValue:close() --[[ @ 0]]
end
 --[[ @ 0]]
