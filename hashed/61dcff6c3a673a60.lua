-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.PositionDraft_GametypeAndMap = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PositionDraft_GametypeAndMap.__defaultWidth = 700 --[[ @ 0]]
CoD.PositionDraft_GametypeAndMap.__defaultHeight = 100 --[[ @ 0]]
CoD.PositionDraft_GametypeAndMap.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PositionDraft_GametypeAndMap ) --[[ @ 0]]
	self.id = "PositionDraft_GametypeAndMap" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	
	local Backer = LUI.UIImage.new( 0, 0, 45, 578, 0, 0, 27, 80 ) --[[ @ 0]]
	Backer:setRGB( 0, 0, 0 ) --[[ @ 0]]
	Backer:setAlpha( 0.7 ) --[[ @ 0]]
	Backer:setImage( RegisterImage( @"hash_5D16B33E79A589C5" ) ) --[[ @ 0]]
	Backer:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_feather_edges" ) ) --[[ @ 0]]
	Backer:setShaderVector( 0, 0, 0, 0.05, 0 ) --[[ @ 0]]
	self:addElement( Backer ) --[[ @ 0]]
	self.Backer = Backer --[[ @ 0]]
	
	local Line = LUI.UIImage.new( 0, 0, 49, 533, 0, 0, 27, 28 ) --[[ @ 0]]
	Line:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	Line:setAlpha( 0.5 ) --[[ @ 0]]
	Line:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_feather_edges" ) ) --[[ @ 0]]
	Line:setShaderVector( 0, 0, 0, 0.2, 0 ) --[[ @ 0]]
	self:addElement( Line ) --[[ @ 0]]
	self.Line = Line --[[ @ 0]]
	
	local Gametype = LUI.UIText.new( 0, 0, 103, 494, 0, 0, 52, 76 ) --[[ @ 0]]
	Gametype:setRGB( ColorSet.T8__BUTTON_UNSELECTED_MAIN.r, ColorSet.T8__BUTTON_UNSELECTED_MAIN.g, ColorSet.T8__BUTTON_UNSELECTED_MAIN.b ) --[[ @ 0]]
	Gametype:setAlpha( 0.8 ) --[[ @ 0]]
	Gametype:setText( LocalizeToUpperString( LocalizedGameType() ) ) --[[ @ 0]]
	Gametype:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	Gametype:setLetterSpacing( 5 ) --[[ @ 0]]
	Gametype:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Gametype:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	self:addElement( Gametype ) --[[ @ 0]]
	self.Gametype = Gametype --[[ @ 0]]
	
	local MapName = LUI.UIText.new( 0, 0, 103, 491, 0, 0, 33, 51 ) --[[ @ 0]]
	MapName:setRGB( ColorSet.T8__GREEN.r, ColorSet.T8__GREEN.g, ColorSet.T8__GREEN.b ) --[[ @ 0]]
	MapName:setText( ToUpper( GetMapName() ) ) --[[ @ 0]]
	MapName:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	MapName:setLetterSpacing( 5 ) --[[ @ 0]]
	MapName:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	MapName:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( MapName ) --[[ @ 0]]
	self.MapName = MapName --[[ @ 0]]
	
	local GametypeImage = LUI.UIImage.new( 0, 0, -30, 119, 0, 0, -22.5, 126.5 ) --[[ @ 0]]
	GametypeImage:setScale( 0.66, 0.66 ) --[[ @ 0]]
	GametypeImage:setImage( RegisterImage( GetGametypeImage( @"playlist_tdm" ) ) ) --[[ @ 0]]
	self:addElement( GametypeImage ) --[[ @ 0]]
	self.GametypeImage = GametypeImage --[[ @ 0]]
	
	local LED = LUI.UIImage.new( 0, 0, 36.5, 588.5, 0, 0, 24, 84 ) --[[ @ 0]]
	LED:setAlpha( 0.2 ) --[[ @ 0]]
	LED:setImage( RegisterImage( @"uie_ui_hud_core_draft_header_led" ) ) --[[ @ 0]]
	LED:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( LED ) --[[ @ 0]]
	self.LED = LED --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
