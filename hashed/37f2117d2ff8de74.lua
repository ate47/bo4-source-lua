-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.ScoreboardRowBase = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ScoreboardRowBase.__defaultWidth = 272 --[[ @ 0]]
CoD.ScoreboardRowBase.__defaultHeight = 60 --[[ @ 0]]
CoD.ScoreboardRowBase.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ScoreboardRowBase ) --[[ @ 0]]
	self.id = "ScoreboardRowBase" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local BaseMid = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( BaseMid ) --[[ @ 0]]
	self.BaseMid = BaseMid --[[ @ 0]]
	
	local BaseTip = LUI.UIImage.new( 0, 0, -48, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BaseTip:setImage( RegisterImage( @"uie_zm_hud_inventory_backing_tip_solid" ) ) --[[ @ 0]]
	self:addElement( BaseTip ) --[[ @ 0]]
	self.BaseTip = BaseTip --[[ @ 0]]
	
	local BaseEnd = LUI.UIImage.new( 1, 1, 0, 48, 0, 1, 0, 0 ) --[[ @ 0]]
	BaseEnd:setYRot( 180 ) --[[ @ 0]]
	BaseEnd:setImage( RegisterImage( @"uie_zm_hud_inventory_backing_tip_solid" ) ) --[[ @ 0]]
	self:addElement( BaseEnd ) --[[ @ 0]]
	self.BaseEnd = BaseEnd --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
