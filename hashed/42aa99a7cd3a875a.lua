-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.arenaLeaguePlayRuby = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.arenaLeaguePlayRuby.__defaultWidth = 40 --[[ @ 0]]
CoD.arenaLeaguePlayRuby.__defaultHeight = 40 --[[ @ 0]]
CoD.arenaLeaguePlayRuby.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.arenaLeaguePlayRuby ) --[[ @ 0]]
	self.id = "arenaLeaguePlayRuby" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	
	local Ruby = LUI.UIImage.new( 0.5, 0.5, -20, 20, 0.5, 0.5, -20, 20 ) --[[ @ 0]]
	Ruby:setAlpha( 0.2 ) --[[ @ 0]]
	Ruby:setImage( RegisterImage( @"uie_ui_menu_arena_ruby" ) ) --[[ @ 0]]
	self:addElement( Ruby ) --[[ @ 0]]
	self.Ruby = Ruby --[[ @ 0]]
	
	local RubyAnim = LUI.UIImage.new( 0.5, 0.5, -26.5, 26.5, 0.5, 0.5, -28, 25 ) --[[ @ 0]]
	RubyAnim:setImage( RegisterImage( @"uie_ui_menu_arena_ruby_flipbook" ) ) --[[ @ 0]]
	RubyAnim:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_flipbook_add" ) ) --[[ @ 0]]
	RubyAnim:setShaderVector( 0, 4, 4, 0, 0 ) --[[ @ 0]]
	RubyAnim:setShaderVector( 1, 5, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( RubyAnim ) --[[ @ 0]]
	self.RubyAnim = RubyAnim --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
