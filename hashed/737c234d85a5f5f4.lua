-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/store/storecommontextbacking" ) --[[ @ 0]]

CoD.DirectorSelectButtonMode = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DirectorSelectButtonMode.__defaultWidth = 300 --[[ @ 0]]
CoD.DirectorSelectButtonMode.__defaultHeight = 56 --[[ @ 0]]
CoD.DirectorSelectButtonMode.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.DirectorSelectButtonMode ) --[[ @ 0]]
	self.id = "DirectorSelectButtonMode" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local TextBacking = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	TextBacking:setRGB( 0, 0, 0 ) --[[ @ 0]]
	TextBacking:setAlpha( 0.65 ) --[[ @ 0]]
	self:addElement( TextBacking ) --[[ @ 0]]
	self.TextBacking = TextBacking --[[ @ 0]]
	
	local DotTiledBacking = CoD.StoreCommonTextBacking.new( f1_arg0, f1_arg1, 0, 1, 4, -4, 0, 1, 4, -4 ) --[[ @ 0]]
	DotTiledBacking.NoiseBacking:setAlpha( 0 ) --[[ @ 0]]
	DotTiledBacking.TiledShaderImage:setAlpha( 0.5 ) --[[ @ 0]]
	DotTiledBacking.TiledShaderImage:setupNineSliceShader( 32, 32 ) --[[ @ 0]]
	self:addElement( DotTiledBacking ) --[[ @ 0]]
	self.DotTiledBacking = DotTiledBacking --[[ @ 0]]
	
	local GamemodeIcon = LUI.UIImage.new( 0, 0, 103, 197, 0, 0, -41, 53 ) --[[ @ 0]]
	GamemodeIcon:setAlpha( 0 ) --[[ @ 0]]
	GamemodeIcon:linkToElementModel( self, "icon", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			GamemodeIcon:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( GamemodeIcon ) --[[ @ 0]]
	self.GamemodeIcon = GamemodeIcon --[[ @ 0]]
	
	local GameModeText = LUI.UIText.new( 0, 1, 8, -8, 0.5, 0.5, -12, 12 ) --[[ @ 0]]
	GameModeText:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
	GameModeText:setText( ToUpper( CoD.BaseUtility.LocalizeIfXHash( @"hash_A43B10D9DA121A" ) ) ) --[[ @ 0]]
	GameModeText:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	GameModeText:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_171E049B161CD00A" ) ) --[[ @ 0]]
	GameModeText:setLetterSpacing( 3 ) --[[ @ 0]]
	GameModeText:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	GameModeText:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	self:addElement( GameModeText ) --[[ @ 0]]
	self.GameModeText = GameModeText --[[ @ 0]]
	
	local TabBottomLine = LUI.UIImage.new( 0, 1, 0, 0, 0, 0, -2, 2 ) --[[ @ 0]]
	TabBottomLine:setAlpha( 0.09 ) --[[ @ 0]]
	TabBottomLine:setImage( RegisterImage( @"uie_ui_menu_common_tab_line_bottom" ) ) --[[ @ 0]]
	TabBottomLine:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( TabBottomLine ) --[[ @ 0]]
	self.TabBottomLine = TabBottomLine --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Locked",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return AlwaysFalse()
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
CoD.DirectorSelectButtonMode.__resetProperties = function ( f5_arg0 )
	f5_arg0.GameModeText:completeAnimation() --[[ @ 0]]
	f5_arg0.TabBottomLine:completeAnimation() --[[ @ 0]]
	f5_arg0.GamemodeIcon:completeAnimation() --[[ @ 0]]
	f5_arg0.DotTiledBacking:completeAnimation() --[[ @ 0]]
	f5_arg0.TextBacking:completeAnimation() --[[ @ 0]]
	f5_arg0.GameModeText:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.TabBottomLine:setAlpha( 0.09 ) --[[ @ 0]]
	f5_arg0.GamemodeIcon:setAlpha( 0 ) --[[ @ 0]]
	f5_arg0.DotTiledBacking:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.TextBacking:setAlpha( 0.65 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.DirectorSelectButtonMode.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Locked = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f7_arg0.GameModeText:completeAnimation() --[[ @ 0]]
			f7_arg0.GameModeText:setAlpha( 0.2 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.GameModeText ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f8_arg0.TextBacking:completeAnimation() --[[ @ 0]]
			f8_arg0.TextBacking:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.TextBacking ) --[[ @ 0]]
			f8_arg0.DotTiledBacking:completeAnimation() --[[ @ 0]]
			f8_arg0.DotTiledBacking:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.DotTiledBacking ) --[[ @ 0]]
			f8_arg0.GamemodeIcon:completeAnimation() --[[ @ 0]]
			f8_arg0.GamemodeIcon:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.GamemodeIcon ) --[[ @ 0]]
			f8_arg0.GameModeText:completeAnimation() --[[ @ 0]]
			f8_arg0.GameModeText:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.GameModeText ) --[[ @ 0]]
			f8_arg0.TabBottomLine:completeAnimation() --[[ @ 0]]
			f8_arg0.TabBottomLine:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.TabBottomLine ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.DirectorSelectButtonMode.__onClose = function ( f9_arg0 )
	f9_arg0.DotTiledBacking:close() --[[ @ 0]]
	f9_arg0.GamemodeIcon:close() --[[ @ 0]]
end
 --[[ @ 0]]
