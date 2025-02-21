-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.LOOT_ToastFrameBackground = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.LOOT_ToastFrameBackground.__defaultWidth = 520 --[[ @ 0]]
CoD.LOOT_ToastFrameBackground.__defaultHeight = 169 --[[ @ 0]]
CoD.LOOT_ToastFrameBackground.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.LOOT_ToastFrameBackground ) --[[ @ 0]]
	self.id = "LOOT_ToastFrameBackground" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local bot = LUI.UIImage.new( 0, 1, 0, 0, 1, 1, -74, -1 ) --[[ @ 0]]
	bot:setImage( RegisterImage( @"uie_t7_toast_backer_bottom" ) ) --[[ @ 0]]
	self:addElement( bot ) --[[ @ 0]]
	self.bot = bot --[[ @ 0]]
	
	local mod = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 72, -74 ) --[[ @ 0]]
	mod:setImage( RegisterImage( @"uie_t7_toast_backer_middle" ) ) --[[ @ 0]]
	self:addElement( mod ) --[[ @ 0]]
	self.mod = mod --[[ @ 0]]
	
	local top = LUI.UIImage.new( 0, 1, 0, 0, 0, 0, 1, 72 ) --[[ @ 0]]
	top:setImage( RegisterImage( @"uie_t7_toast_backer_top" ) ) --[[ @ 0]]
	self:addElement( top ) --[[ @ 0]]
	self.top = top --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
