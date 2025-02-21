-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.ArenaRubyUnit = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ArenaRubyUnit.__defaultWidth = 50 --[[ @ 0]]
CoD.ArenaRubyUnit.__defaultHeight = 50 --[[ @ 0]]
CoD.ArenaRubyUnit.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ArenaRubyUnit ) --[[ @ 0]]
	self.id = "ArenaRubyUnit" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local RubyFrame = LUI.UIImage.new( 0, 0, 0, 50, 0, 0, 0, 50 ) --[[ @ 0]]
	RubyFrame:setImage( RegisterImage( @"ui_menu_arena_rubyframe" ) ) --[[ @ 0]]
	self:addElement( RubyFrame ) --[[ @ 0]]
	self.RubyFrame = RubyFrame --[[ @ 0]]
	
	local Ruby = LUI.UIImage.new( 0, 0, 0, 50, 0, 0, 0, 50 ) --[[ @ 0]]
	Ruby:setImage( RegisterImage( @"uie_ui_menu_arena_ruby" ) ) --[[ @ 0]]
	self:addElement( Ruby ) --[[ @ 0]]
	self.Ruby = Ruby --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
