-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
CoD.GameEndScoreTitleFrame = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.GameEndScoreTitleFrame.__defaultWidth = 648 --[[ @ 0]]
CoD.GameEndScoreTitleFrame.__defaultHeight = 156 --[[ @ 0]]
CoD.GameEndScoreTitleFrame.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.GameEndScoreTitleFrame ) --[[ @ 0]]
	self.id = "GameEndScoreTitleFrame" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local BgBlurL = LUI.UIImage.new( 0.5, 0.5, -320, 0, 0, 0, 4, 152 ) --[[ @ 0]]
	BgBlurL:setAlpha( 0.8 ) --[[ @ 0]]
	BgBlurL:setImage( RegisterImage( @"hash_1D63D8122A1F6E1" ) ) --[[ @ 0]]
	BgBlurL:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	BgBlurL:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( BgBlurL ) --[[ @ 0]]
	self.BgBlurL = BgBlurL --[[ @ 0]]
	
	local BgBlurR = LUI.UIImage.new( 0.5, 0.5, -1.5, 318.5, 0, 0, 4, 152 ) --[[ @ 0]]
	BgBlurR:setAlpha( 0.8 ) --[[ @ 0]]
	BgBlurR:setYRot( 180 ) --[[ @ 0]]
	BgBlurR:setImage( RegisterImage( @"hash_1D63D8122A1F6E1" ) ) --[[ @ 0]]
	BgBlurR:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	BgBlurR:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( BgBlurR ) --[[ @ 0]]
	self.BgBlurR = BgBlurR --[[ @ 0]]
	
	local NoiseTiledBacking = LUI.UIImage.new( 0.5, 0.5, -315.5, 315.5, 0.09, 0.09, 83, 104 ) --[[ @ 0]]
	NoiseTiledBacking:setAlpha( 0.8 ) --[[ @ 0]]
	NoiseTiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	NoiseTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBacking ) --[[ @ 0]]
	self.NoiseTiledBacking = NoiseTiledBacking --[[ @ 0]]
	
	local f1_local4 = nil --[[ @ 0]]
	self.BgTintR = LUI.UIElement.createFake() --[[ @ 0]]
	local f1_local5 = nil --[[ @ 0]]
	self.BgTintL = LUI.UIElement.createFake() --[[ @ 0]]
	local BgTint = nil --[[ @ 0]]
	
	BgTint = LUI.UIImage.new( 0.5, 0.5, -324, 324, 0, 0, 4, 152 ) --[[ @ 0]]
	BgTint:setImage( RegisterImage( @"hash_34602EAD5BB5D6F" ) ) --[[ @ 0]]
	self:addElement( BgTint ) --[[ @ 0]]
	self.BgTint = BgTint --[[ @ 0]]
	
	local PixelGridTiledBacking = LUI.UIImage.new( 0.02, 0.02, -1, 629, 0.31, 0.31, -40.5, 47.5 ) --[[ @ 0]]
	PixelGridTiledBacking:setAlpha( 0.1 ) --[[ @ 0]]
	PixelGridTiledBacking:setImage( RegisterImage( @"uie_ui_hud_notifications_pixelpattern" ) ) --[[ @ 0]]
	PixelGridTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	PixelGridTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	PixelGridTiledBacking:setupNineSliceShader( 128, 128 ) --[[ @ 0]]
	self:addElement( PixelGridTiledBacking ) --[[ @ 0]]
	self.PixelGridTiledBacking = PixelGridTiledBacking --[[ @ 0]]
	
	local PixelGridTiledBacking2 = LUI.UIImage.new( 0.02, 0.02, -1, 629, 0.31, 0.31, 68.5, 98.5 ) --[[ @ 0]]
	PixelGridTiledBacking2:setAlpha( 0.1 ) --[[ @ 0]]
	PixelGridTiledBacking2:setImage( RegisterImage( @"uie_ui_hud_notifications_pixelpattern" ) ) --[[ @ 0]]
	PixelGridTiledBacking2:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	PixelGridTiledBacking2:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	PixelGridTiledBacking2:setupNineSliceShader( 128, 128 ) --[[ @ 0]]
	self:addElement( PixelGridTiledBacking2 ) --[[ @ 0]]
	self.PixelGridTiledBacking2 = PixelGridTiledBacking2 --[[ @ 0]]
	
	local InnerFrameL = LUI.UIImage.new( 0.5, 0.5, -320, 0, 0, 0, 4, 152 ) --[[ @ 0]]
	InnerFrameL:setImage( RegisterImage( @"hash_5CE823BC468EF7DC" ) ) --[[ @ 0]]
	self:addElement( InnerFrameL ) --[[ @ 0]]
	self.InnerFrameL = InnerFrameL --[[ @ 0]]
	
	local InnerFrameR = LUI.UIImage.new( 0.5, 0.5, 319, -1, 0, 0, 4, 152 ) --[[ @ 0]]
	InnerFrameR:setImage( RegisterImage( @"hash_5CE823BC468EF7DC" ) ) --[[ @ 0]]
	self:addElement( InnerFrameR ) --[[ @ 0]]
	self.InnerFrameR = InnerFrameR --[[ @ 0]]
	
	local OuterFrameR = LUI.UIImage.new( 0.5, 0.5, 323, -1, 0, 0, 0, 156 ) --[[ @ 0]]
	OuterFrameR:setImage( RegisterImage( @"hash_62287A6449CD8CB7" ) ) --[[ @ 0]]
	self:addElement( OuterFrameR ) --[[ @ 0]]
	self.OuterFrameR = OuterFrameR --[[ @ 0]]
	
	local OuterFrameL = LUI.UIImage.new( 0.5, 0.5, -324, 0, 0, 0, 0, 156 ) --[[ @ 0]]
	OuterFrameL:setImage( RegisterImage( @"hash_62287A6449CD8CB7" ) ) --[[ @ 0]]
	self:addElement( OuterFrameL ) --[[ @ 0]]
	self.OuterFrameL = OuterFrameL --[[ @ 0]]
	
	local arrow01 = LUI.UIImage.new( 0, 0, 538.5, 543.5, 0, 0, 6.5, 11.5 ) --[[ @ 0]]
	arrow01:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	arrow01:setAlpha( 0.05 ) --[[ @ 0]]
	arrow01:setImage( RegisterImage( @"uie_ui_hud_common_line_arrow" ) ) --[[ @ 0]]
	arrow01:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( arrow01 ) --[[ @ 0]]
	self.arrow01 = arrow01 --[[ @ 0]]
	
	local arrow02 = LUI.UIImage.new( 0, 0, 105.5, 110.5, 0, 0, 6.5, 11.5 ) --[[ @ 0]]
	arrow02:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	arrow02:setAlpha( 0.05 ) --[[ @ 0]]
	arrow02:setImage( RegisterImage( @"uie_ui_hud_common_line_arrow" ) ) --[[ @ 0]]
	arrow02:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( arrow02 ) --[[ @ 0]]
	self.arrow02 = arrow02 --[[ @ 0]]
	
	local microtext = LUI.UIImage.new( 0, 0, 611.5, 629.5, 0, 0, 6, 10 ) --[[ @ 0]]
	microtext:setAlpha( 0.1 ) --[[ @ 0]]
	microtext:setZRot( 180 ) --[[ @ 0]]
	microtext:setImage( RegisterImage( @"hash_116C3274D8031268" ) ) --[[ @ 0]]
	self:addElement( microtext ) --[[ @ 0]]
	self.microtext = microtext --[[ @ 0]]
	
	local microtext3 = LUI.UIImage.new( 0, 0, 27.5, 45.5, 0, 0, 6.5, 10.5 ) --[[ @ 0]]
	microtext3:setAlpha( 0.1 ) --[[ @ 0]]
	microtext3:setZRot( 180 ) --[[ @ 0]]
	microtext3:setImage( RegisterImage( @"hash_116C3274D8031268" ) ) --[[ @ 0]]
	self:addElement( microtext3 ) --[[ @ 0]]
	self.microtext3 = microtext3 --[[ @ 0]]
	
	local microtext4 = LUI.UIImage.new( 0, 0, 18.5, 36.5, 0, 0, 7, 11 ) --[[ @ 0]]
	microtext4:setAlpha( 0.1 ) --[[ @ 0]]
	microtext4:setImage( RegisterImage( @"hash_116C3274D8031268" ) ) --[[ @ 0]]
	microtext4:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta_normal" ) ) --[[ @ 0]]
	microtext4:setShaderVector( 0, 0, 0.38, 0, 0 ) --[[ @ 0]]
	microtext4:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	microtext4:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	microtext4:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	microtext4:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( microtext4 ) --[[ @ 0]]
	self.microtext4 = microtext4 --[[ @ 0]]
	
	local microtext2 = LUI.UIImage.new( 0, 0, 600.5, 618.5, 0, 0, 6.5, 10.5 ) --[[ @ 0]]
	microtext2:setAlpha( 0.1 ) --[[ @ 0]]
	microtext2:setImage( RegisterImage( @"hash_116C3274D8031268" ) ) --[[ @ 0]]
	microtext2:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta_normal" ) ) --[[ @ 0]]
	microtext2:setShaderVector( 0, 0, 0.38, 0, 0 ) --[[ @ 0]]
	microtext2:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	microtext2:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	microtext2:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	microtext2:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( microtext2 ) --[[ @ 0]]
	self.microtext2 = microtext2 --[[ @ 0]]
	
	local TiledPlusGrid03 = LUI.UIImage.new( 0.5, 0.5, -861, 849, 0, 0, -61.5, 295.5 ) --[[ @ 0]]
	TiledPlusGrid03:setRGB( 0, 0, 0 ) --[[ @ 0]]
	TiledPlusGrid03:setScale( 0.4, 0.4 ) --[[ @ 0]]
	TiledPlusGrid03:setImage( RegisterImage( @"uie_ui_hud_vehicle_hellstorm_repeat_plusgrid" ) ) --[[ @ 0]]
	TiledPlusGrid03:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	TiledPlusGrid03:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	TiledPlusGrid03:setupNineSliceShader( 220, 220 ) --[[ @ 0]]
	self:addElement( TiledPlusGrid03 ) --[[ @ 0]]
	self.TiledPlusGrid03 = TiledPlusGrid03 --[[ @ 0]]
	
	local TiledPlusGrid02 = LUI.UIImage.new( 0.5, 0.5, -861, 849, 0, 0, -113, 244 ) --[[ @ 0]]
	TiledPlusGrid02:setRGB( 0, 0, 0 ) --[[ @ 0]]
	TiledPlusGrid02:setScale( 0.4, 0.4 ) --[[ @ 0]]
	TiledPlusGrid02:setImage( RegisterImage( @"uie_ui_hud_vehicle_hellstorm_repeat_plusgrid" ) ) --[[ @ 0]]
	TiledPlusGrid02:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	TiledPlusGrid02:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	TiledPlusGrid02:setupNineSliceShader( 220, 220 ) --[[ @ 0]]
	self:addElement( TiledPlusGrid02 ) --[[ @ 0]]
	self.TiledPlusGrid02 = TiledPlusGrid02 --[[ @ 0]]
	
	local TiledPlusGrid01 = LUI.UIImage.new( 0.5, 0.5, -861, 849, 0, 0, -162, 195 ) --[[ @ 0]]
	TiledPlusGrid01:setRGB( 0, 0, 0 ) --[[ @ 0]]
	TiledPlusGrid01:setScale( 0.4, 0.4 ) --[[ @ 0]]
	TiledPlusGrid01:setImage( RegisterImage( @"uie_ui_hud_vehicle_hellstorm_repeat_plusgrid" ) ) --[[ @ 0]]
	TiledPlusGrid01:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	TiledPlusGrid01:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	TiledPlusGrid01:setupNineSliceShader( 220, 220 ) --[[ @ 0]]
	self:addElement( TiledPlusGrid01 ) --[[ @ 0]]
	self.TiledPlusGrid01 = TiledPlusGrid01 --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
