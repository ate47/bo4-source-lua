-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
CoD.GameEndScore_HeaderBarMid = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.GameEndScore_HeaderBarMid.__defaultWidth = 1656 --[[ @ 0]]
CoD.GameEndScore_HeaderBarMid.__defaultHeight = 80 --[[ @ 0]]
CoD.GameEndScore_HeaderBarMid.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.GameEndScore_HeaderBarMid ) --[[ @ 0]]
	self.id = "GameEndScore_HeaderBarMid" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
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
	
	local Grid = LUI.UIImage.new( 0, 1, 0, 0, -0, 1, 0, 0 ) --[[ @ 0]]
	Grid:setRGB( 0, 0, 0 ) --[[ @ 0]]
	Grid:setAlpha( 0.5 ) --[[ @ 0]]
	Grid:setImage( RegisterImage( @"uie_ui_hud_vehicle_lightstrike_grid" ) ) --[[ @ 0]]
	Grid:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	Grid:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	Grid:setupNineSliceShader( 22, 20 ) --[[ @ 0]]
	self:addElement( Grid ) --[[ @ 0]]
	self.Grid = Grid --[[ @ 0]]
	
	local BlackStripTop = LUI.UIImage.new( 0, 1, 0, 0, 0, 0, 0, 10 ) --[[ @ 0]]
	BlackStripTop:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BlackStripTop:setAlpha( 0.96 ) --[[ @ 0]]
	self:addElement( BlackStripTop ) --[[ @ 0]]
	self.BlackStripTop = BlackStripTop --[[ @ 0]]
	
	local BlackStripBot = LUI.UIImage.new( 0, 1, 0, 0, 1, 1, -10, 0 ) --[[ @ 0]]
	BlackStripBot:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BlackStripBot:setAlpha( 0.96 ) --[[ @ 0]]
	self:addElement( BlackStripBot ) --[[ @ 0]]
	self.BlackStripBot = BlackStripBot --[[ @ 0]]
	
	local BGDotPatternLarge = LUI.UIImage.new( 0, 1, 0, 0, 0.5, 0.5, -24, 24 ) --[[ @ 0]]
	BGDotPatternLarge:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BGDotPatternLarge:setAlpha( 0 ) --[[ @ 0]]
	BGDotPatternLarge:setImage( RegisterImage( @"hash_7FC21A8215EA012B" ) ) --[[ @ 0]]
	BGDotPatternLarge:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	BGDotPatternLarge:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	BGDotPatternLarge:setupNineSliceShader( 4, 4 ) --[[ @ 0]]
	self:addElement( BGDotPatternLarge ) --[[ @ 0]]
	self.BGDotPatternLarge = BGDotPatternLarge --[[ @ 0]]
	
	local CommonStripes01Tiled = LUI.UIImage.new( 0, 1, 0, 0, 0.5, 0.5, -24, 26 ) --[[ @ 0]]
	CommonStripes01Tiled:setRGB( 0, 0, 0 ) --[[ @ 0]]
	CommonStripes01Tiled:setImage( RegisterImage( @"uie_ui_menu_common_stripes01" ) ) --[[ @ 0]]
	CommonStripes01Tiled:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	CommonStripes01Tiled:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	CommonStripes01Tiled:setupNineSliceShader( 66, 48 ) --[[ @ 0]]
	self:addElement( CommonStripes01Tiled ) --[[ @ 0]]
	self.CommonStripes01Tiled = CommonStripes01Tiled --[[ @ 0]]
	
	local Barcode = LUI.UIImage.new( 0, 0, -1, 131, 0, 0, 83, 93 ) --[[ @ 0]]
	Barcode:setAlpha( 0 ) --[[ @ 0]]
	Barcode:setImage( RegisterImage( @"uie_ui_hud_wz_endgame_barcode_blur" ) ) --[[ @ 0]]
	self:addElement( Barcode ) --[[ @ 0]]
	self.Barcode = Barcode --[[ @ 0]]
	
	local FrameTop = LUI.UIImage.new( 0, 1, 0, 0, 0, 0, -1, 15 ) --[[ @ 0]]
	FrameTop:setImage( RegisterImage( @"uie_ui_hud_wz_endgame_frame" ) ) --[[ @ 0]]
	self:addElement( FrameTop ) --[[ @ 0]]
	self.FrameTop = FrameTop --[[ @ 0]]
	
	local FrameBot = LUI.UIImage.new( 0, 1, 0, 0, 1, 1, -15, 1 ) --[[ @ 0]]
	FrameBot:setXRot( 180 ) --[[ @ 0]]
	FrameBot:setImage( RegisterImage( @"uie_ui_hud_wz_endgame_frame" ) ) --[[ @ 0]]
	self:addElement( FrameBot ) --[[ @ 0]]
	self.FrameBot = FrameBot --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
