-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
CoD.CraftLayerNumber = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CraftLayerNumber.__defaultWidth = 108 --[[ @ 0]]
CoD.CraftLayerNumber.__defaultHeight = 24 --[[ @ 0]]
CoD.CraftLayerNumber.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CraftLayerNumber ) --[[ @ 0]]
	self.id = "CraftLayerNumber" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local topbar = LUI.UIImage.new( 0, 0, 0, 24, 0, 0, 0, 24 ) --[[ @ 0]]
	topbar:setRGB( 0, 0, 0 ) --[[ @ 0]]
	topbar:setAlpha( 0.9 ) --[[ @ 0]]
	self:addElement( topbar ) --[[ @ 0]]
	self.topbar = topbar --[[ @ 0]]
	
	local layerNumber = LUI.UIText.new( 0, 0, 26, 108, 0.5, 0.5, -10, 10 ) --[[ @ 0]]
	layerNumber:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	layerNumber:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_187457CD189F982E" ) ) --[[ @ 0]]
	layerNumber:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	layerNumber:setLetterSpacing( 1 ) --[[ @ 0]]
	layerNumber:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	layerNumber:setBackingType( 2 ) --[[ @ 0]]
	layerNumber:setBackingColor( 0, 0, 0 ) --[[ @ 0]]
	layerNumber:setBackingXPadding( 2 ) --[[ @ 0]]
	layerNumber:setBackingYPadding( 2 ) --[[ @ 0]]
	self:addElement( layerNumber ) --[[ @ 0]]
	self.layerNumber = layerNumber --[[ @ 0]]
	
	local groupIcon = LUI.UIImage.new( 0, 0, 1, 23, 0, 0, 1, 23 ) --[[ @ 0]]
	groupIcon:setImage( RegisterImage( @"uie_t7_menu_emblem_group" ) ) --[[ @ 0]]
	self:addElement( groupIcon ) --[[ @ 0]]
	self.groupIcon = groupIcon --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "NoGroupSelected",
			condition = function ( menu, element, event )
				return not CoD.CraftUtility.EmblemChooseIcon_IsDecalGroupFocused( self, f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CraftLayerNumber.__resetProperties = function ( f3_arg0 )
	f3_arg0.layerNumber:completeAnimation() --[[ @ 0]]
	f3_arg0.groupIcon:completeAnimation() --[[ @ 0]]
	f3_arg0.topbar:completeAnimation() --[[ @ 0]]
	f3_arg0.layerNumber:setLeftRight( 0, 0, 26, 108 ) --[[ @ 0]]
	f3_arg0.layerNumber:setTopBottom( 0.5, 0.5, -10, 10 ) --[[ @ 0]]
	f3_arg0.layerNumber:setAlpha( 1 ) --[[ @ 0]]
	f3_arg0.groupIcon:setAlpha( 1 ) --[[ @ 0]]
	f3_arg0.topbar:setAlpha( 0.9 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CraftLayerNumber.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f4_arg0.layerNumber:completeAnimation() --[[ @ 0]]
			f4_arg0.layerNumber:setLeftRight( 0, 0, 32, 76 ) --[[ @ 0]]
			f4_arg0.layerNumber:setTopBottom( -0, 1, 0, 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.layerNumber ) --[[ @ 0]]
		end
	},
	NoGroupSelected = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f5_arg0.topbar:completeAnimation() --[[ @ 0]]
			f5_arg0.topbar:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.topbar ) --[[ @ 0]]
			f5_arg0.layerNumber:completeAnimation() --[[ @ 0]]
			f5_arg0.layerNumber:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.layerNumber ) --[[ @ 0]]
			f5_arg0.groupIcon:completeAnimation() --[[ @ 0]]
			f5_arg0.groupIcon:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.groupIcon ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
