-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "x64:205150cdf5affac6" ) --[[ @ 0]]

CoD.PlayOfTheMatchGamertag = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PlayOfTheMatchGamertag.__defaultWidth = 1600 --[[ @ 0]]
CoD.PlayOfTheMatchGamertag.__defaultHeight = 106 --[[ @ 0]]
CoD.PlayOfTheMatchGamertag.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PlayOfTheMatchGamertag ) --[[ @ 0]]
	self.id = "PlayOfTheMatchGamertag" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local Gamertag = LUI.UIText.new( 1, 1, -1600, -4, 0, 0, 10, 95 ) --[[ @ 0]]
	Gamertag:setText( "" ) --[[ @ 0]]
	Gamertag:setTTF( "notosans_regular" ) --[[ @ 0]]
	Gamertag:setLetterSpacing( 6 ) --[[ @ 0]]
	Gamertag:setAlignment( Enum[@"LUIAlignment"][@"hash_3830CFD395E6AA0A"] ) --[[ @ 0]]
	Gamertag:setBackingType( 1 ) --[[ @ 0]]
	Gamertag:setBackingWidget( CoD.PlayOfTheMatchGamertagBacking, f1_arg0, f1_arg1 ) --[[ @ 0]]
	Gamertag:setBackingXPadding( 14 ) --[[ @ 0]]
	self:addElement( Gamertag ) --[[ @ 0]]
	self.Gamertag = Gamertag --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
