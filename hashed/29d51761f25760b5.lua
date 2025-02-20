-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "ui/uieditor/widgets/startmenu/options/startmenuoptionsmainframe" ) --[[ @ 0]]

CoD.GameEndScoreOutcomeFFABar = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.GameEndScoreOutcomeFFABar.__defaultWidth = 959 --[[ @ 0]]
CoD.GameEndScoreOutcomeFFABar.__defaultHeight = 160 --[[ @ 0]]
CoD.GameEndScoreOutcomeFFABar.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.GameEndScoreOutcomeFFABar ) --[[ @ 0]]
	self.id = "GameEndScoreOutcomeFFABar" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local SceneBlur = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	SceneBlur:setRGB( 0, 0, 0 ) --[[ @ 0]]
	SceneBlur:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	SceneBlur:setShaderVector( 0, 0, 0.4, 0, 0 ) --[[ @ 0]]
	self:addElement( SceneBlur ) --[[ @ 0]]
	self.SceneBlur = SceneBlur --[[ @ 0]]
	
	local DarkBacking = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	DarkBacking:setRGB( 0, 0, 0 ) --[[ @ 0]]
	DarkBacking:setAlpha( 0.4 ) --[[ @ 0]]
	self:addElement( DarkBacking ) --[[ @ 0]]
	self.DarkBacking = DarkBacking --[[ @ 0]]
	
	local NoiseTiledBacking = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setAlpha( 0.8 ) --[[ @ 0]]
	NoiseTiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	NoiseTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBacking ) --[[ @ 0]]
	self.NoiseTiledBacking = NoiseTiledBacking --[[ @ 0]]
	
	local Frame = CoD.StartMenuOptionsMainFrame.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Frame:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	Frame:setAlpha( 0.15 ) --[[ @ 0]]
	self:addElement( Frame ) --[[ @ 0]]
	self.Frame = Frame --[[ @ 0]]
	
	local EmblemBacking = LUI.UIImage.new( 0, 0, 3, 137, 0.03, 0.03, 0, 152 ) --[[ @ 0]]
	EmblemBacking:setRGB( 0, 0, 0 ) --[[ @ 0]]
	EmblemBacking:setAlpha( 0.3 ) --[[ @ 0]]
	self:addElement( EmblemBacking ) --[[ @ 0]]
	self.EmblemBacking = EmblemBacking --[[ @ 0]]
	
	local EmblemBacking3 = LUI.UIImage.new( 0, 0, 768, 956, 0, 0, 3, 156 ) --[[ @ 0]]
	EmblemBacking3:setRGB( 0, 0, 0 ) --[[ @ 0]]
	EmblemBacking3:setAlpha( 0.3 ) --[[ @ 0]]
	self:addElement( EmblemBacking3 ) --[[ @ 0]]
	self.EmblemBacking3 = EmblemBacking3 --[[ @ 0]]
	
	local EmblemBacking2 = LUI.UIImage.new( 0, 0, 140, 765, 0.03, 0.03, 0, 152 ) --[[ @ 0]]
	EmblemBacking2:setRGB( 0, 0, 0 ) --[[ @ 0]]
	EmblemBacking2:setAlpha( 0.3 ) --[[ @ 0]]
	self:addElement( EmblemBacking2 ) --[[ @ 0]]
	self.EmblemBacking2 = EmblemBacking2 --[[ @ 0]]
	
	local GlowTexture = LUI.UIImage.new( 0, 0, 6.5, 133.5, 0.5, 0.5, -63.5, 63.5 ) --[[ @ 0]]
	GlowTexture:setRGB( ColorSet.T8__GOLD.r, ColorSet.T8__GOLD.g, ColorSet.T8__GOLD.b ) --[[ @ 0]]
	GlowTexture:setAlpha( 0.15 ) --[[ @ 0]]
	GlowTexture:setImage( RegisterImage( @"uie_ui_hud_core_no_ammo_glow" ) ) --[[ @ 0]]
	GlowTexture:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( GlowTexture ) --[[ @ 0]]
	self.GlowTexture = GlowTexture --[[ @ 0]]
	
	local Glow = LUI.UIImage.new( 0, 0, -2, 142, 0, 0, 8, 152 ) --[[ @ 0]]
	Glow:setRGB( ColorSet.T8__GOLD.r, ColorSet.T8__GOLD.g, ColorSet.T8__GOLD.b ) --[[ @ 0]]
	Glow:setImage( RegisterImage( @"uie_ui_menu_common_box_glow" ) ) --[[ @ 0]]
	Glow:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Glow ) --[[ @ 0]]
	self.Glow = Glow --[[ @ 0]]
	
	local Emblem = LUI.UIImage.new( 0, 0, 148, 248, 0.5, 0.5, -50, 50 ) --[[ @ 0]]
	Emblem:linkToElementModel( self, "clientNum", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			Emblem:setupPlayerEmblemByXUID( GetClientGameLobbyXUIDForClientNumString( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Emblem ) --[[ @ 0]]
	self.Emblem = Emblem --[[ @ 0]]
	
	local Name = LUI.UIText.new( 0.5, 0.5, -226.5, 281.5, 0.5, 0.5, -15, 15 ) --[[ @ 0]]
	Name:setTTF( "notosans_regular" ) --[[ @ 0]]
	Name:setLetterSpacing( 2 ) --[[ @ 0]]
	Name:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	Name:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	Name:linkToElementModel( self, "name", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			Name:setText( CoD.SocialUtility.CleanGamerTag( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Name ) --[[ @ 0]]
	self.Name = Name --[[ @ 0]]
	
	local PlaceBanner = LUI.UIImage.new( 0, 0, 17.5, 122.5, 0.5, 0.5, -52.5, 52.5 ) --[[ @ 0]]
	PlaceBanner:setRGB( 0.91, 0.78, 0.28 ) --[[ @ 0]]
	self:addElement( PlaceBanner ) --[[ @ 0]]
	self.PlaceBanner = PlaceBanner --[[ @ 0]]
	
	local GlowSphere = LUI.UIImage.new( 0, 0, 34.5, 105.5, 0, 0, 6, 156 ) --[[ @ 0]]
	GlowSphere:setRGB( ColorSet.T8__OCHRE.r, ColorSet.T8__OCHRE.g, ColorSet.T8__OCHRE.b ) --[[ @ 0]]
	GlowSphere:setAlpha( 0.95 ) --[[ @ 0]]
	GlowSphere:setImage( RegisterImage( @"uie_fire_glow" ) ) --[[ @ 0]]
	GlowSphere:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( GlowSphere ) --[[ @ 0]]
	self.GlowSphere = GlowSphere --[[ @ 0]]
	
	local GlowRing = LUI.UIImage.new( 0, 0, 6.5, 131.5, 0, 0, 17, 142 ) --[[ @ 0]]
	GlowRing:setRGB( 0.91, 0.78, 0.28 ) --[[ @ 0]]
	GlowRing:setAlpha( 0.15 ) --[[ @ 0]]
	GlowRing:setImage( RegisterImage( @"uie_ui_hud_wz_hud_core_qe_glow" ) ) --[[ @ 0]]
	GlowRing:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( GlowRing ) --[[ @ 0]]
	self.GlowRing = GlowRing --[[ @ 0]]
	
	local PlaceText = LUI.UIText.new( 0, 0, 25, 115, 0.5, 0.5, -44, 46 ) --[[ @ 0]]
	PlaceText:setRGB( ColorSet.T8_FactionTier_Completed.r, ColorSet.T8_FactionTier_Completed.g, ColorSet.T8_FactionTier_Completed.b ) --[[ @ 0]]
	PlaceText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_393E719493E9E18F" ) ) --[[ @ 0]]
	PlaceText:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	PlaceText:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	PlaceText:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( PlaceText ) --[[ @ 0]]
	self.PlaceText = PlaceText --[[ @ 0]]
	
	local BGDotPatternLarge = LUI.UIImage.new( 0, 0, 22.5, 117.5, 0, 0, 32, 127 ) --[[ @ 0]]
	BGDotPatternLarge:setRGB( ColorSet.T8__OCHRE.r, ColorSet.T8__OCHRE.g, ColorSet.T8__OCHRE.b ) --[[ @ 0]]
	BGDotPatternLarge:setAlpha( 0.8 ) --[[ @ 0]]
	BGDotPatternLarge:setImage( RegisterImage( @"hash_7FC21A8215EA012B" ) ) --[[ @ 0]]
	BGDotPatternLarge:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	BGDotPatternLarge:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	BGDotPatternLarge:setupNineSliceShader( 4, 4 ) --[[ @ 0]]
	self:addElement( BGDotPatternLarge ) --[[ @ 0]]
	self.BGDotPatternLarge = BGDotPatternLarge --[[ @ 0]]
	
	local Score = LUI.UIText.new( 0, 0, 772.5, 953.5, 0.5, 0.5, -39, 39 ) --[[ @ 0]]
	Score:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	Score:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	Score:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	Score:setAlignment( Enum[@"LUIAlignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	Score:linkToElementModel( self, "points", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			Score:setText( f4_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Score ) --[[ @ 0]]
	self.Score = Score --[[ @ 0]]
	
	local TiledShaderImage1 = LUI.UIImage.new( 0.2, 0.2, -190, -56, 0.02, 0.02, 0.5, 152.5 ) --[[ @ 0]]
	TiledShaderImage1:setAlpha( 0.5 ) --[[ @ 0]]
	TiledShaderImage1:setImage( RegisterImage( @"uie_ui_menu_store_repeat_dot_pattern" ) ) --[[ @ 0]]
	TiledShaderImage1:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	TiledShaderImage1:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	TiledShaderImage1:setupNineSliceShader( 24, 24 ) --[[ @ 0]]
	self:addElement( TiledShaderImage1 ) --[[ @ 0]]
	self.TiledShaderImage1 = TiledShaderImage1 --[[ @ 0]]
	
	local TiledShaderImage2 = LUI.UIImage.new( 0.2, 0.2, -53, 572, 0.02, 0.02, 0.5, 152.5 ) --[[ @ 0]]
	TiledShaderImage2:setAlpha( 0.5 ) --[[ @ 0]]
	TiledShaderImage2:setImage( RegisterImage( @"uie_ui_menu_store_repeat_dot_pattern" ) ) --[[ @ 0]]
	TiledShaderImage2:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	TiledShaderImage2:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	TiledShaderImage2:setupNineSliceShader( 24, 24 ) --[[ @ 0]]
	self:addElement( TiledShaderImage2 ) --[[ @ 0]]
	self.TiledShaderImage2 = TiledShaderImage2 --[[ @ 0]]
	
	local TiledShaderImage3 = LUI.UIImage.new( 0.2, 0.2, 575, 763, 0.02, 0.02, 0, 152 ) --[[ @ 0]]
	TiledShaderImage3:setAlpha( 0.5 ) --[[ @ 0]]
	TiledShaderImage3:setImage( RegisterImage( @"uie_ui_menu_store_repeat_dot_pattern" ) ) --[[ @ 0]]
	TiledShaderImage3:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	TiledShaderImage3:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	TiledShaderImage3:setupNineSliceShader( 24, 24 ) --[[ @ 0]]
	self:addElement( TiledShaderImage3 ) --[[ @ 0]]
	self.TiledShaderImage3 = TiledShaderImage3 --[[ @ 0]]
	
	local UnderLine1 = LUI.UIImage.new( 0, 0, 3, 137, 0, 0, 152, 156 ) --[[ @ 0]]
	UnderLine1:setAlpha( 0.2 ) --[[ @ 0]]
	UnderLine1:setImage( RegisterImage( @"uie_ui_menu_aar_repeat_white_bg" ) ) --[[ @ 0]]
	UnderLine1:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	UnderLine1:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	UnderLine1:setupNineSliceShader( 64, 64 ) --[[ @ 0]]
	self:addElement( UnderLine1 ) --[[ @ 0]]
	self.UnderLine1 = UnderLine1 --[[ @ 0]]
	
	local UnderLine2 = LUI.UIImage.new( 0, 0, 140, 765, 0, 0, 152, 156 ) --[[ @ 0]]
	UnderLine2:setAlpha( 0.2 ) --[[ @ 0]]
	UnderLine2:setImage( RegisterImage( @"uie_ui_menu_aar_repeat_white_bg" ) ) --[[ @ 0]]
	UnderLine2:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	UnderLine2:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	UnderLine2:setupNineSliceShader( 64, 64 ) --[[ @ 0]]
	self:addElement( UnderLine2 ) --[[ @ 0]]
	self.UnderLine2 = UnderLine2 --[[ @ 0]]
	
	local UnderLine3 = LUI.UIImage.new( 0, 0, 768, 956, 0, 0, 152, 156 ) --[[ @ 0]]
	UnderLine3:setAlpha( 0.2 ) --[[ @ 0]]
	UnderLine3:setImage( RegisterImage( @"uie_ui_menu_aar_repeat_white_bg" ) ) --[[ @ 0]]
	UnderLine3:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	UnderLine3:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	UnderLine3:setupNineSliceShader( 64, 64 ) --[[ @ 0]]
	self:addElement( UnderLine3 ) --[[ @ 0]]
	self.UnderLine3 = UnderLine3 --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "NoPlayers",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalModelValueEqualTo( "scoreboard.team1.count", 0 ) and CoD.ModelUtility.IsGlobalModelValueEqualTo( "scoreboard.team2.count", 0 )
			end
		},
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "hidden" )
			end
		},
		{
			stateName = "IsLocalPlayer",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "isLocalPlayer" )
			end
		}
	} ) --[[ @ 0]]
	local f1_local24 = self --[[ @ 0]]
	local f1_local25 = self.subscribeToModel --[[ @ 0]]
	local f1_local26 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	f1_local25( f1_local24, f1_local26["scoreboard.team1.count"], function ( f8_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f8_arg0:get(),
			modelName = "scoreboard.team1.count"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local24 = self --[[ @ 0]]
	f1_local25 = self.subscribeToModel --[[ @ 0]]
	f1_local26 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	f1_local25( f1_local24, f1_local26["scoreboard.team2.count"], function ( f9_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f9_arg0:get(),
			modelName = "scoreboard.team2.count"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:linkToElementModel( self, "hidden", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "hidden"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "isLocalPlayer", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "isLocalPlayer"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.GameEndScoreOutcomeFFABar.__resetProperties = function ( f12_arg0 )
	f12_arg0.Emblem:completeAnimation() --[[ @ 0]]
	f12_arg0.Score:completeAnimation() --[[ @ 0]]
	f12_arg0.PlaceText:completeAnimation() --[[ @ 0]]
	f12_arg0.PlaceBanner:completeAnimation() --[[ @ 0]]
	f12_arg0.Name:completeAnimation() --[[ @ 0]]
	f12_arg0.Emblem:setAlpha( 1 ) --[[ @ 0]]
	f12_arg0.Score:setAlpha( 1 ) --[[ @ 0]]
	f12_arg0.PlaceText:setAlpha( 1 ) --[[ @ 0]]
	f12_arg0.PlaceBanner:setAlpha( 1 ) --[[ @ 0]]
	f12_arg0.Name:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f12_arg0.Name:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.GameEndScoreOutcomeFFABar.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	NoPlayers = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f14_arg0.Emblem:completeAnimation() --[[ @ 0]]
			f14_arg0.Emblem:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.Emblem ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f15_arg0.Emblem:completeAnimation() --[[ @ 0]]
			f15_arg0.Emblem:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.Emblem ) --[[ @ 0]]
			f15_arg0.Name:completeAnimation() --[[ @ 0]]
			f15_arg0.Name:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.Name ) --[[ @ 0]]
			f15_arg0.PlaceBanner:completeAnimation() --[[ @ 0]]
			f15_arg0.PlaceBanner:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.PlaceBanner ) --[[ @ 0]]
			f15_arg0.PlaceText:completeAnimation() --[[ @ 0]]
			f15_arg0.PlaceText:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.PlaceText ) --[[ @ 0]]
			f15_arg0.Score:completeAnimation() --[[ @ 0]]
			f15_arg0.Score:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.Score ) --[[ @ 0]]
		end
	},
	IsLocalPlayer = {
		DefaultClip = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f16_arg0.Name:completeAnimation() --[[ @ 0]]
			f16_arg0.Name:setRGB( 0.95, 0.9, 0.18 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.Name ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.GameEndScoreOutcomeFFABar.__onClose = function ( f17_arg0 )
	f17_arg0.Frame:close() --[[ @ 0]]
	f17_arg0.Emblem:close() --[[ @ 0]]
	f17_arg0.Name:close() --[[ @ 0]]
	f17_arg0.Score:close() --[[ @ 0]]
end
 --[[ @ 0]]
