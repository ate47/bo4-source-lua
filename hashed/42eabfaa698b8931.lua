-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "ui/uieditor/widgets/startmenu/options/startmenuoptionsmainframe" ) --[[ @ 0]]

CoD.GameEndScore_HeaderBarTip = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.GameEndScore_HeaderBarTip.__defaultWidth = 130 --[[ @ 0]]
CoD.GameEndScore_HeaderBarTip.__defaultHeight = 80 --[[ @ 0]]
CoD.GameEndScore_HeaderBarTip.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.GameEndScore_HeaderBarTip ) --[[ @ 0]]
	self.id = "GameEndScore_HeaderBarTip" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	
	local BackingBlur = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BackingBlur:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BackingBlur:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	BackingBlur:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( BackingBlur ) --[[ @ 0]]
	self.BackingBlur = BackingBlur --[[ @ 0]]
	
	local BaseBacking = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BaseBacking:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BaseBacking:setAlpha( 0.93 ) --[[ @ 0]]
	self:addElement( BaseBacking ) --[[ @ 0]]
	self.BaseBacking = BaseBacking --[[ @ 0]]
	
	local Grid = LUI.UIImage.new( 0, 0.89, 0, 0, -0, 1, 0, 0 ) --[[ @ 0]]
	Grid:setRGB( 0, 0, 0 ) --[[ @ 0]]
	Grid:setAlpha( 0.25 ) --[[ @ 0]]
	Grid:setImage( RegisterImage( @"uie_ui_hud_vehicle_lightstrike_grid" ) ) --[[ @ 0]]
	Grid:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	Grid:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	Grid:setupNineSliceShader( 22, 20 ) --[[ @ 0]]
	self:addElement( Grid ) --[[ @ 0]]
	self.Grid = Grid --[[ @ 0]]
	
	local BlackStripBot = LUI.UIImage.new( 0, 1, 0, 0, 1, 1, -10, 0 ) --[[ @ 0]]
	BlackStripBot:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BlackStripBot:setAlpha( 0.9 ) --[[ @ 0]]
	self:addElement( BlackStripBot ) --[[ @ 0]]
	self.BlackStripBot = BlackStripBot --[[ @ 0]]
	
	local BlackStripTop = LUI.UIImage.new( 0, 1, 0, 0, 0, 0, 0, 10 ) --[[ @ 0]]
	BlackStripTop:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BlackStripTop:setAlpha( 0.9 ) --[[ @ 0]]
	self:addElement( BlackStripTop ) --[[ @ 0]]
	self.BlackStripTop = BlackStripTop --[[ @ 0]]
	
	local Arrow = LUI.UIImage.new( 1, 1, -15, 0, 0.5, 0.5, -30, 30 ) --[[ @ 0]]
	Arrow:setRGB( 0, 0, 0 ) --[[ @ 0]]
	Arrow:setAlpha( 0.85 ) --[[ @ 0]]
	Arrow:setYRot( 180 ) --[[ @ 0]]
	Arrow:setImage( RegisterImage( @"uie_ui_hud_wz_endgame_end_arrow" ) ) --[[ @ 0]]
	self:addElement( Arrow ) --[[ @ 0]]
	self.Arrow = Arrow --[[ @ 0]]
	
	local CrossMarkTop = LUI.UIImage.new( 0, 0, 34.5, 53.5, 0, 0, 3, 22 ) --[[ @ 0]]
	CrossMarkTop:setRGB( 0, 0, 0 ) --[[ @ 0]]
	CrossMarkTop:setAlpha( 0.25 ) --[[ @ 0]]
	CrossMarkTop:setImage( RegisterImage( @"hash_5D89B11EC41D18DF" ) ) --[[ @ 0]]
	self:addElement( CrossMarkTop ) --[[ @ 0]]
	self.CrossMarkTop = CrossMarkTop --[[ @ 0]]
	
	local CrossMarkBot = LUI.UIImage.new( 0, 0, 34.5, 53.5, 0, 0, 59, 78 ) --[[ @ 0]]
	CrossMarkBot:setRGB( 0, 0, 0 ) --[[ @ 0]]
	CrossMarkBot:setAlpha( 0.25 ) --[[ @ 0]]
	CrossMarkBot:setImage( RegisterImage( @"hash_5D89B11EC41D18DF" ) ) --[[ @ 0]]
	self:addElement( CrossMarkBot ) --[[ @ 0]]
	self.CrossMarkBot = CrossMarkBot --[[ @ 0]]
	
	local StartMenuOptionsMainFrame = CoD.StartMenuOptionsMainFrame.new( f1_arg0, f1_arg1, 0, 0, 2.5, 32.5, 0, 0, 32.5, 47.5 ) --[[ @ 0]]
	StartMenuOptionsMainFrame:setRGB( 0, 0, 0 ) --[[ @ 0]]
	StartMenuOptionsMainFrame:setAlpha( 0.3 ) --[[ @ 0]]
	self:addElement( StartMenuOptionsMainFrame ) --[[ @ 0]]
	self.StartMenuOptionsMainFrame = StartMenuOptionsMainFrame --[[ @ 0]]
	
	local StartMenuOptionsMainFrame2 = CoD.StartMenuOptionsMainFrame.new( f1_arg0, f1_arg1, 0.6, 0.6, -22.5, 7.5, 0.5, 0.5, -7.5, 7.5 ) --[[ @ 0]]
	StartMenuOptionsMainFrame2:setRGB( 0, 0, 0 ) --[[ @ 0]]
	StartMenuOptionsMainFrame2:setAlpha( 0.3 ) --[[ @ 0]]
	self:addElement( StartMenuOptionsMainFrame2 ) --[[ @ 0]]
	self.StartMenuOptionsMainFrame2 = StartMenuOptionsMainFrame2 --[[ @ 0]]
	
	local CrossMarkMid = LUI.UIImage.new( 0, 0, 34.5, 53.5, 0, 0, 30.5, 49.5 ) --[[ @ 0]]
	CrossMarkMid:setRGB( 0, 0, 0 ) --[[ @ 0]]
	CrossMarkMid:setAlpha( 0.6 ) --[[ @ 0]]
	CrossMarkMid:setImage( RegisterImage( @"hash_5D89B11EC41D18DF" ) ) --[[ @ 0]]
	self:addElement( CrossMarkMid ) --[[ @ 0]]
	self.CrossMarkMid = CrossMarkMid --[[ @ 0]]
	
	local FrameTop2 = LUI.UIImage.new( 0, 1, 0, 0, 0, 0, -1, 15 ) --[[ @ 0]]
	FrameTop2:setImage( RegisterImage( @"uie_ui_hud_wz_endgame_frame_short" ) ) --[[ @ 0]]
	self:addElement( FrameTop2 ) --[[ @ 0]]
	self.FrameTop2 = FrameTop2 --[[ @ 0]]
	
	local FrameBot = LUI.UIImage.new( 0, 1, 0, 0, 1, 1, -15, 1 ) --[[ @ 0]]
	FrameBot:setXRot( 180 ) --[[ @ 0]]
	FrameBot:setImage( RegisterImage( @"uie_ui_hud_wz_endgame_frame_short" ) ) --[[ @ 0]]
	self:addElement( FrameBot ) --[[ @ 0]]
	self.FrameBot = FrameBot --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.GameEndScore_HeaderBarTip.__onClose = function ( f2_arg0 )
	f2_arg0.StartMenuOptionsMainFrame:close() --[[ @ 0]]
	f2_arg0.StartMenuOptionsMainFrame2:close() --[[ @ 0]]
end
 --[[ @ 0]]
