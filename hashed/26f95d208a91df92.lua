-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
CoD.LoadingScreenHeader_WZ = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.LoadingScreenHeader_WZ.__defaultWidth = 1129 --[[ @ 0]]
CoD.LoadingScreenHeader_WZ.__defaultHeight = 128 --[[ @ 0]]
CoD.LoadingScreenHeader_WZ.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.LoadingScreenHeader_WZ ) --[[ @ 0]]
	self.id = "LoadingScreenHeader_WZ" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local TiledBackingTop = LUI.UIImage.new( 0.5, 0.5, -542.5, 48.5, 0, 0, 1, 128 ) --[[ @ 0]]
	TiledBackingTop:setAlpha( 0.9 ) --[[ @ 0]]
	TiledBackingTop:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	TiledBackingTop:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	TiledBackingTop:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	TiledBackingTop:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( TiledBackingTop ) --[[ @ 0]]
	self.TiledBackingTop = TiledBackingTop --[[ @ 0]]
	
	local TiledBackingTop2 = LUI.UIImage.new( 0.5, 0.5, -542.5, 48.5, 0, 0, 59, 109 ) --[[ @ 0]]
	TiledBackingTop2:setRGB( 0.11, 0.11, 0.11 ) --[[ @ 0]]
	TiledBackingTop2:setAlpha( 0 ) --[[ @ 0]]
	TiledBackingTop2:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	TiledBackingTop2:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	TiledBackingTop2:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	TiledBackingTop2:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( TiledBackingTop2 ) --[[ @ 0]]
	self.TiledBackingTop2 = TiledBackingTop2 --[[ @ 0]]
	
	local BACKINGMapName = LUI.UIImage.new( 0, 0, 21.5, 612.5, 0, 0, 1, 23 ) --[[ @ 0]]
	BACKINGMapName:setRGB( 0.04, 0.04, 0.04 ) --[[ @ 0]]
	BACKINGMapName:setAlpha( 0.8 ) --[[ @ 0]]
	self:addElement( BACKINGMapName ) --[[ @ 0]]
	self.BACKINGMapName = BACKINGMapName --[[ @ 0]]
	
	local DiagonalLine = LUI.UIImage.new( 0, 0, 21.5, 612.5, 0, 0, 1, 23 ) --[[ @ 0]]
	DiagonalLine:setRGB( 0.25, 0.25, 0.25 ) --[[ @ 0]]
	DiagonalLine:setImage( RegisterImage( @"uie_ui_menu_common_repeat_stripe" ) ) --[[ @ 0]]
	DiagonalLine:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_tile_scroll_normal" ) ) --[[ @ 0]]
	DiagonalLine:setShaderVector( 0, 8, 1, 0, 0 ) --[[ @ 0]]
	DiagonalLine:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( DiagonalLine ) --[[ @ 0]]
	self.DiagonalLine = DiagonalLine --[[ @ 0]]
	
	local GamemodeName = LUI.UIText.new( 0, 0, 120, 603, 0, 0, 58, 96 ) --[[ @ 0]]
	GamemodeName:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	GamemodeName:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	GamemodeName:setLetterSpacing( 5 ) --[[ @ 0]]
	GamemodeName:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	GamemodeName:setAlignment( Enum[@"LUIAlignment"][@"hash_6ED4298C93DC5ED"] ) --[[ @ 0]]
	GamemodeName:subscribeToGlobalModel( f1_arg1, "LoadingScreenTeamInfo", "gameType", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			GamemodeName:setText( ConvertToUpperString( CoD.BaseUtility.AlreadyLocalized( f2_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( GamemodeName ) --[[ @ 0]]
	self.GamemodeName = GamemodeName --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "CodCaster",
			condition = function ( menu, element, event )
				return CoD.CodCasterUtility.IsCodCasterOrAssigned( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.LoadingScreenHeader_WZ.__onClose = function ( f4_arg0 )
	f4_arg0.GamemodeName:close() --[[ @ 0]]
end
 --[[ @ 0]]
