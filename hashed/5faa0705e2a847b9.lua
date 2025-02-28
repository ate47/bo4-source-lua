-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/director/directorselectbuttonlines" ) --[[ @ 0]]
require( "ui/uieditor/widgets/hud/corner9slice" ) --[[ @ 0]]
require( "ui/uieditor/widgets/store/storecommontextbacking" ) --[[ @ 0]]

CoD.FTUEWZProgressionWidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.FTUEWZProgressionWidget.__defaultWidth = 277 --[[ @ 0]]
CoD.FTUEWZProgressionWidget.__defaultHeight = 300 --[[ @ 0]]
CoD.FTUEWZProgressionWidget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.FTUEWZProgressionWidget ) --[[ @ 0]]
	self.id = "FTUEWZProgressionWidget" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local Background = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Background:setRGB( 0.23, 0.23, 0.23 ) --[[ @ 0]]
	self:addElement( Background ) --[[ @ 0]]
	self.Background = Background --[[ @ 0]]
	
	local NoiseTiledBacking = LUI.UIImage.new( 0, 0, 0, 277, 0.09, 0.09, -26, 274 ) --[[ @ 0]]
	NoiseTiledBacking:setAlpha( 0.7 ) --[[ @ 0]]
	NoiseTiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	NoiseTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBacking ) --[[ @ 0]]
	self.NoiseTiledBacking = NoiseTiledBacking --[[ @ 0]]
	
	local DotTiledBacking = CoD.StoreCommonTextBacking.new( f1_arg0, f1_arg1, 0, 0, 0, 277, 0, 0, 218, 300 ) --[[ @ 0]]
	DotTiledBacking:setAlpha( 0.69 ) --[[ @ 0]]
	self:addElement( DotTiledBacking ) --[[ @ 0]]
	self.DotTiledBacking = DotTiledBacking --[[ @ 0]]
	
	local DotCorner9Slice = CoD.Corner9Slice.new( f1_arg0, f1_arg1, 0, 0, 0, 277, 0, 0, 218, 300 ) --[[ @ 0]]
	DotCorner9Slice:setAlpha( 0.72 ) --[[ @ 0]]
	self:addElement( DotCorner9Slice ) --[[ @ 0]]
	self.DotCorner9Slice = DotCorner9Slice --[[ @ 0]]
	
	local EchelonImage = LUI.UIImage.new( 0, 0, 46, 231, 0, 0, 19.5, 204.5 ) --[[ @ 0]]
	self:addElement( EchelonImage ) --[[ @ 0]]
	self.EchelonImage = EchelonImage --[[ @ 0]]
	
	local EchelonTitle = LUI.UIText.new( 0, 0, 0, 277, 0, 0, 233, 262 ) --[[ @ 0]]
	EchelonTitle:setRGB( ColorSet.GroupName.r, ColorSet.GroupName.g, ColorSet.GroupName.b ) --[[ @ 0]]
	EchelonTitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/new" ) ) --[[ @ 0]]
	EchelonTitle:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	EchelonTitle:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	EchelonTitle:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( EchelonTitle ) --[[ @ 0]]
	self.EchelonTitle = EchelonTitle --[[ @ 0]]
	
	local EchelonIndex = LUI.UIText.new( 0, 0, 0, 277, 0, 0, 261, 284 ) --[[ @ 0]]
	EchelonIndex:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	EchelonIndex:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/new" ) ) --[[ @ 0]]
	EchelonIndex:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	EchelonIndex:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	EchelonIndex:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( EchelonIndex ) --[[ @ 0]]
	self.EchelonIndex = EchelonIndex --[[ @ 0]]
	
	local Lines = CoD.DirectorSelectButtonLines.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 1, -1 ) --[[ @ 0]]
	Lines:setRGB( 0.64, 0.71, 0.78 ) --[[ @ 0]]
	self:addElement( Lines ) --[[ @ 0]]
	self.Lines = Lines --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.FTUEWZProgressionWidget.__onClose = function ( f2_arg0 )
	f2_arg0.DotTiledBacking:close() --[[ @ 0]]
	f2_arg0.DotCorner9Slice:close() --[[ @ 0]]
	f2_arg0.Lines:close() --[[ @ 0]]
end
 --[[ @ 0]]
