-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "ui/uieditor/widgets/director/directorselectbuttonlines" ) --[[ @ 0]]
require( "ui/uieditor/widgets/hud/corner9slice" ) --[[ @ 0]]
require( "ui/uieditor/widgets/store/storecommontextbacking" ) --[[ @ 0]]

CoD.FTUEWZProgressionLargeWidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.FTUEWZProgressionLargeWidget.__defaultWidth = 500 --[[ @ 0]]
CoD.FTUEWZProgressionLargeWidget.__defaultHeight = 800 --[[ @ 0]]
CoD.FTUEWZProgressionLargeWidget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.FTUEWZProgressionLargeWidget ) --[[ @ 0]]
	self.id = "FTUEWZProgressionLargeWidget" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local Background = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Background:setRGB( 0.23, 0.23, 0.23 ) --[[ @ 0]]
	self:addElement( Background ) --[[ @ 0]]
	self.Background = Background --[[ @ 0]]
	
	local NoiseTiledBacking = LUI.UIImage.new( 0, 0, 0, 500, 0.09, 0.09, -68, 732 ) --[[ @ 0]]
	NoiseTiledBacking:setAlpha( 0.7 ) --[[ @ 0]]
	NoiseTiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	NoiseTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBacking ) --[[ @ 0]]
	self.NoiseTiledBacking = NoiseTiledBacking --[[ @ 0]]
	
	local DotTiledBacking = CoD.StoreCommonTextBacking.new( f1_arg0, f1_arg1, 0, 0, 0, 500, 0, 0, 718, 800 ) --[[ @ 0]]
	DotTiledBacking:setAlpha( 0.69 ) --[[ @ 0]]
	self:addElement( DotTiledBacking ) --[[ @ 0]]
	self.DotTiledBacking = DotTiledBacking --[[ @ 0]]
	
	local DotCorner9Slice = CoD.Corner9Slice.new( f1_arg0, f1_arg1, 0, 0, 0, 500, 0, 0, 718, 800 ) --[[ @ 0]]
	DotCorner9Slice:setAlpha( 0.72 ) --[[ @ 0]]
	self:addElement( DotCorner9Slice ) --[[ @ 0]]
	self.DotCorner9Slice = DotCorner9Slice --[[ @ 0]]
	
	local EchelonImage = LUI.UIImage.new( 0, 0, 49, 451, 0, 0, 63.5, 465.5 ) --[[ @ 0]]
	EchelonImage:setImage( RegisterImage( @"ui_icon_rank_wz_master_large" ) ) --[[ @ 0]]
	self:addElement( EchelonImage ) --[[ @ 0]]
	self.EchelonImage = EchelonImage --[[ @ 0]]
	
	local EchelonTitle = LUI.UIText.new( 0, 0, 0, 500, 0, 0, 733, 762 ) --[[ @ 0]]
	EchelonTitle:setRGB( ColorSet.GroupName.r, ColorSet.GroupName.g, ColorSet.GroupName.b ) --[[ @ 0]]
	EchelonTitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_11E01D65FBE7F99B" ) ) --[[ @ 0]]
	EchelonTitle:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	EchelonTitle:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	EchelonTitle:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( EchelonTitle ) --[[ @ 0]]
	self.EchelonTitle = EchelonTitle --[[ @ 0]]
	
	local EchelonIndex = LUI.UIText.new( 0, 0, 0, 500, 0, 0, 766, 789 ) --[[ @ 0]]
	EchelonIndex:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	EchelonIndex:setText( LocalizeStringWithParameter( @"hash_2294790D215078A9", LocalizeHash( @"hash_54008CE61FE52DCD" ) ) ) --[[ @ 0]]
	EchelonIndex:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	EchelonIndex:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	EchelonIndex:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( EchelonIndex ) --[[ @ 0]]
	self.EchelonIndex = EchelonIndex --[[ @ 0]]
	
	local CallingCardImage = LUI.UIImage.new( 0, 0, 58.5, 464.5, 0, 0, 569.5, 671.5 ) --[[ @ 0]]
	CallingCardImage:setImage( RegisterImage( @"uie_ui_icon_callingcards_wz_insigniaechelons_master" ) ) --[[ @ 0]]
	self:addElement( CallingCardImage ) --[[ @ 0]]
	self.CallingCardImage = CallingCardImage --[[ @ 0]]
	
	local wzcharacterunlock = LUI.UIImage.new( 0, 0, -14.5, 260.5, 0, 0, 476, 718 ) --[[ @ 0]]
	wzcharacterunlock:setImage( RegisterImage( @"uie_ui_icon_specialist_portrait_draft_hardened_male" ) ) --[[ @ 0]]
	self:addElement( wzcharacterunlock ) --[[ @ 0]]
	self.wzcharacterunlock = wzcharacterunlock --[[ @ 0]]
	
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
CoD.FTUEWZProgressionLargeWidget.__onClose = function ( f2_arg0 )
	f2_arg0.DotTiledBacking:close() --[[ @ 0]]
	f2_arg0.DotCorner9Slice:close() --[[ @ 0]]
	f2_arg0.Lines:close() --[[ @ 0]]
end
 --[[ @ 0]]
