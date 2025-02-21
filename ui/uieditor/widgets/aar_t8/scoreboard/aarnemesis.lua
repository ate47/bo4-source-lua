-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/aar_t8/scoreboard/aarnemesisstat" ) --[[ @ 0]]

CoD.AARNemesis = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AARNemesis.__defaultWidth = 150 --[[ @ 0]]
CoD.AARNemesis.__defaultHeight = 60 --[[ @ 0]]
CoD.AARNemesis.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AARNemesis ) --[[ @ 0]]
	self.id = "AARNemesis" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Backing = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Backing:setRGB( 0.02, 0.02, 0.02 ) --[[ @ 0]]
	Backing:setAlpha( 0.5 ) --[[ @ 0]]
	self:addElement( Backing ) --[[ @ 0]]
	self.Backing = Backing --[[ @ 0]]
	
	local EnemeyBacking = LUI.UIImage.new( 0.5, 0.5, -75, 75, -0.02, -0.02, -32, -1 ) --[[ @ 0]]
	EnemeyBacking:setImage( RegisterImage( @"hash_620D05B34D3128F9" ) ) --[[ @ 0]]
	EnemeyBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_1A02C44161370F6D" ) ) --[[ @ 0]]
	EnemeyBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	EnemeyBacking:setShaderVector( 1, 1.01, 0.22, 0, 0 ) --[[ @ 0]]
	EnemeyBacking:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( EnemeyBacking ) --[[ @ 0]]
	self.EnemeyBacking = EnemeyBacking --[[ @ 0]]
	
	local EnemyBotLineGlow = LUI.UIImage.new( 0, 0, -8, 158, -0.03, -0.03, -13, 11 ) --[[ @ 0]]
	EnemyBotLineGlow:setAlpha( 0.5 ) --[[ @ 0]]
	EnemyBotLineGlow:setImage( RegisterImage( @"hash_2A4F022E73A1CAC4" ) ) --[[ @ 0]]
	EnemyBotLineGlow:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( EnemyBotLineGlow ) --[[ @ 0]]
	self.EnemyBotLineGlow = EnemyBotLineGlow --[[ @ 0]]
	
	local TopBarRight = LUI.UIImage.new( 0, 0, 0, 150, -0.01, -0.01, -1, 5 ) --[[ @ 0]]
	TopBarRight:setImage( RegisterImage( @"hash_4414B157493C31E2" ) ) --[[ @ 0]]
	TopBarRight:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_1A02C44161370F6D" ) ) --[[ @ 0]]
	TopBarRight:setShaderVector( 0, 0.13, -0.09, 0, 0 ) --[[ @ 0]]
	TopBarRight:setShaderVector( 1, 2.01, 0.04, 0, 0 ) --[[ @ 0]]
	TopBarRight:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( TopBarRight ) --[[ @ 0]]
	self.TopBarRight = TopBarRight --[[ @ 0]]
	
	local SelectedDotGlowAdd = LUI.UIImage.new( 0, 0, 0, 150, 0, 0, 0, 60 ) --[[ @ 0]]
	SelectedDotGlowAdd:setRGB( ColorSet.EnemyOrange.r, ColorSet.EnemyOrange.g, ColorSet.EnemyOrange.b ) --[[ @ 0]]
	SelectedDotGlowAdd:setImage( RegisterImage( @"uie_ui_menu_mp_scoreboard_list_indicator_bg" ) ) --[[ @ 0]]
	SelectedDotGlowAdd:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_1A02C44161370F6D" ) ) --[[ @ 0]]
	SelectedDotGlowAdd:setShaderVector( 0, 0.2, 0, 0, 0 ) --[[ @ 0]]
	SelectedDotGlowAdd:setShaderVector( 1, 5, 0.41, 0, 0 ) --[[ @ 0]]
	SelectedDotGlowAdd:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( SelectedDotGlowAdd ) --[[ @ 0]]
	self.SelectedDotGlowAdd = SelectedDotGlowAdd --[[ @ 0]]
	
	local SelectedDotGlowAdd2 = LUI.UIImage.new( 0, 0, 0, 150, 0, 0, 0, 60 ) --[[ @ 0]]
	SelectedDotGlowAdd2:setRGB( ColorSet.EnemyOrange.r, ColorSet.EnemyOrange.g, ColorSet.EnemyOrange.b ) --[[ @ 0]]
	SelectedDotGlowAdd2:setImage( RegisterImage( @"uie_ui_menu_mp_scoreboard_list_indicator_bg" ) ) --[[ @ 0]]
	SelectedDotGlowAdd2:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_1A02C44161370F6D" ) ) --[[ @ 0]]
	SelectedDotGlowAdd2:setShaderVector( 0, 0.2, 0, 0, 0 ) --[[ @ 0]]
	SelectedDotGlowAdd2:setShaderVector( 1, 5, 0.41, 0, 0 ) --[[ @ 0]]
	SelectedDotGlowAdd2:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( SelectedDotGlowAdd2 ) --[[ @ 0]]
	self.SelectedDotGlowAdd2 = SelectedDotGlowAdd2 --[[ @ 0]]
	
	local SelectedDotGlowAdd3 = LUI.UIImage.new( 0, 0, 0, 150, 0, 0, 0, 60 ) --[[ @ 0]]
	SelectedDotGlowAdd3:setRGB( ColorSet.EnemyOrange.r, ColorSet.EnemyOrange.g, ColorSet.EnemyOrange.b ) --[[ @ 0]]
	SelectedDotGlowAdd3:setImage( RegisterImage( @"uie_ui_menu_mp_scoreboard_list_indicator_bg" ) ) --[[ @ 0]]
	SelectedDotGlowAdd3:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_1A02C44161370F6D" ) ) --[[ @ 0]]
	SelectedDotGlowAdd3:setShaderVector( 0, 0.2, 0, 0, 0 ) --[[ @ 0]]
	SelectedDotGlowAdd3:setShaderVector( 1, 5, 0.41, 0, 0 ) --[[ @ 0]]
	SelectedDotGlowAdd3:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( SelectedDotGlowAdd3 ) --[[ @ 0]]
	self.SelectedDotGlowAdd3 = SelectedDotGlowAdd3 --[[ @ 0]]
	
	local Line3 = LUI.UIImage.new( 1, 1, -75, -74, 0, 0, 3, 57 ) --[[ @ 0]]
	Line3:setRGB( ColorSet.EnemyOrange.r, ColorSet.EnemyOrange.g, ColorSet.EnemyOrange.b ) --[[ @ 0]]
	Line3:setAlpha( 0.03 ) --[[ @ 0]]
	self:addElement( Line3 ) --[[ @ 0]]
	self.Line3 = Line3 --[[ @ 0]]
	
	local Line = LUI.UIImage.new( 1, 1, -75, -74, 0, 0, 3, 57 ) --[[ @ 0]]
	Line:setRGB( ColorSet.EnemyOrange.r, ColorSet.EnemyOrange.g, ColorSet.EnemyOrange.b ) --[[ @ 0]]
	Line:setAlpha( 0.1 ) --[[ @ 0]]
	self:addElement( Line ) --[[ @ 0]]
	self.Line = Line --[[ @ 0]]
	
	local TopBarRight01 = LUI.UIImage.new( 0, 0, 0, 150, 0, 0, 54, 60 ) --[[ @ 0]]
	TopBarRight01:setImage( RegisterImage( @"hash_4414B157493C31E2" ) ) --[[ @ 0]]
	TopBarRight01:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_1A02C44161370F6D" ) ) --[[ @ 0]]
	TopBarRight01:setShaderVector( 0, 0.13, -0.09, 0, 0 ) --[[ @ 0]]
	TopBarRight01:setShaderVector( 1, 2.01, 0.07, 0, 0 ) --[[ @ 0]]
	TopBarRight01:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( TopBarRight01 ) --[[ @ 0]]
	self.TopBarRight01 = TopBarRight01 --[[ @ 0]]
	
	local NemesisLabel = LUI.UIText.new( 0, 0, 7, 207, 0, 0, -27, -5 ) --[[ @ 0]]
	NemesisLabel:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"aar/nemesis" ) ) --[[ @ 0]]
	NemesisLabel:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	NemesisLabel:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	NemesisLabel:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( NemesisLabel ) --[[ @ 0]]
	self.NemesisLabel = NemesisLabel --[[ @ 0]]
	
	local NemesisKilledBy = CoD.AARNemesisStat.new( f1_arg0, f1_arg1, 0, 0, 73, 152, 0, 0, 7, 47 ) --[[ @ 0]]
	NemesisKilledBy.Label:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_69266D7D9B2162F1" ) ) --[[ @ 0]]
	NemesisKilledBy:linkToElementModel( self, "killedBy", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			NemesisKilledBy.Stat:setText( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( NemesisKilledBy ) --[[ @ 0]]
	self.NemesisKilledBy = NemesisKilledBy --[[ @ 0]]
	
	local NemesisKilled = CoD.AARNemesisStat.new( f1_arg0, f1_arg1, 0, 0, 7, 67, 0, 0, 7, 47 ) --[[ @ 0]]
	NemesisKilled.Label:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_33B16F3D5BAEE9E4" ) ) --[[ @ 0]]
	NemesisKilled:linkToElementModel( self, "killed", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			NemesisKilled.Stat:setText( f3_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( NemesisKilled ) --[[ @ 0]]
	self.NemesisKilled = NemesisKilled --[[ @ 0]]
	
	local Skull = LUI.UIImage.new( 0, 0, 102, 192, 0, 0, -34, 4 ) --[[ @ 0]]
	Skull:setImage( RegisterImage( @"uie_ui_hud_nemesis_skull" ) ) --[[ @ 0]]
	self:addElement( Skull ) --[[ @ 0]]
	self.Skull = Skull --[[ @ 0]]
	
	local arrow = LUI.UIImage.new( 0, 0, -30, 2, 0, 0, 14, 46 ) --[[ @ 0]]
	arrow:setRGB( ColorSet.EnemyOrange.r, ColorSet.EnemyOrange.g, ColorSet.EnemyOrange.b ) --[[ @ 0]]
	arrow:setImage( RegisterImage( @"hash_3E7760566946173" ) ) --[[ @ 0]]
	self:addElement( arrow ) --[[ @ 0]]
	self.arrow = arrow --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Nemesis",
			condition = function ( menu, element, event )
				return CoD.AARUtility.ShouldShowNemesis( element, f1_arg1 )
			end
		},
		{
			stateName = "Selected",
			condition = function ( menu, element, event )
				return CoD.AARUtility.IsClientSelectedInScoreboard( element, f1_arg1 )
			end
		},
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return AlwaysTrue()
			end
		}
	} ) --[[ @ 0]]
	local f1_local16 = self --[[ @ 0]]
	local f1_local17 = self.subscribeToModel --[[ @ 0]]
	local f1_local18 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local17( f1_local16, f1_local18.currentFocusedClient, function ( f7_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f7_arg0:get(),
			modelName = "currentFocusedClient"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.AARNemesis.__resetProperties = function ( f8_arg0 )
	f8_arg0.EnemeyBacking:completeAnimation() --[[ @ 0]]
	f8_arg0.NemesisLabel:completeAnimation() --[[ @ 0]]
	f8_arg0.Skull:completeAnimation() --[[ @ 0]]
	f8_arg0.NemesisKilledBy:completeAnimation() --[[ @ 0]]
	f8_arg0.NemesisKilled:completeAnimation() --[[ @ 0]]
	f8_arg0.Backing:completeAnimation() --[[ @ 0]]
	f8_arg0.TopBarRight01:completeAnimation() --[[ @ 0]]
	f8_arg0.Line:completeAnimation() --[[ @ 0]]
	f8_arg0.Line3:completeAnimation() --[[ @ 0]]
	f8_arg0.SelectedDotGlowAdd3:completeAnimation() --[[ @ 0]]
	f8_arg0.SelectedDotGlowAdd2:completeAnimation() --[[ @ 0]]
	f8_arg0.SelectedDotGlowAdd:completeAnimation() --[[ @ 0]]
	f8_arg0.TopBarRight:completeAnimation() --[[ @ 0]]
	f8_arg0.EnemyBotLineGlow:completeAnimation() --[[ @ 0]]
	f8_arg0.arrow:completeAnimation() --[[ @ 0]]
	f8_arg0.EnemeyBacking:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.NemesisLabel:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.Skull:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.NemesisKilledBy:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.NemesisKilled:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.Backing:setAlpha( 0.5 ) --[[ @ 0]]
	f8_arg0.TopBarRight01:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.Line:setAlpha( 0.1 ) --[[ @ 0]]
	f8_arg0.Line3:setAlpha( 0.03 ) --[[ @ 0]]
	f8_arg0.SelectedDotGlowAdd3:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.SelectedDotGlowAdd2:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.SelectedDotGlowAdd:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.TopBarRight:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.EnemyBotLineGlow:setAlpha( 0.5 ) --[[ @ 0]]
	f8_arg0.arrow:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.AARNemesis.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Nemesis = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Selected = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f11_arg0.EnemeyBacking:completeAnimation() --[[ @ 0]]
			f11_arg0.EnemeyBacking:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.EnemeyBacking ) --[[ @ 0]]
			f11_arg0.NemesisLabel:completeAnimation() --[[ @ 0]]
			f11_arg0.NemesisLabel:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.NemesisLabel ) --[[ @ 0]]
			f11_arg0.Skull:completeAnimation() --[[ @ 0]]
			f11_arg0.Skull:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.Skull ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 15 ) --[[ @ 0]]
			f12_arg0.Backing:completeAnimation() --[[ @ 0]]
			f12_arg0.Backing:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.Backing ) --[[ @ 0]]
			f12_arg0.EnemeyBacking:completeAnimation() --[[ @ 0]]
			f12_arg0.EnemeyBacking:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.EnemeyBacking ) --[[ @ 0]]
			f12_arg0.EnemyBotLineGlow:completeAnimation() --[[ @ 0]]
			f12_arg0.EnemyBotLineGlow:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.EnemyBotLineGlow ) --[[ @ 0]]
			f12_arg0.TopBarRight:completeAnimation() --[[ @ 0]]
			f12_arg0.TopBarRight:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.TopBarRight ) --[[ @ 0]]
			f12_arg0.SelectedDotGlowAdd:completeAnimation() --[[ @ 0]]
			f12_arg0.SelectedDotGlowAdd:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.SelectedDotGlowAdd ) --[[ @ 0]]
			f12_arg0.SelectedDotGlowAdd2:completeAnimation() --[[ @ 0]]
			f12_arg0.SelectedDotGlowAdd2:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.SelectedDotGlowAdd2 ) --[[ @ 0]]
			f12_arg0.SelectedDotGlowAdd3:completeAnimation() --[[ @ 0]]
			f12_arg0.SelectedDotGlowAdd3:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.SelectedDotGlowAdd3 ) --[[ @ 0]]
			f12_arg0.Line3:completeAnimation() --[[ @ 0]]
			f12_arg0.Line3:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.Line3 ) --[[ @ 0]]
			f12_arg0.Line:completeAnimation() --[[ @ 0]]
			f12_arg0.Line:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.Line ) --[[ @ 0]]
			f12_arg0.TopBarRight01:completeAnimation() --[[ @ 0]]
			f12_arg0.TopBarRight01:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.TopBarRight01 ) --[[ @ 0]]
			f12_arg0.NemesisLabel:completeAnimation() --[[ @ 0]]
			f12_arg0.NemesisLabel:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.NemesisLabel ) --[[ @ 0]]
			f12_arg0.NemesisKilledBy:completeAnimation() --[[ @ 0]]
			f12_arg0.NemesisKilledBy:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.NemesisKilledBy ) --[[ @ 0]]
			f12_arg0.NemesisKilled:completeAnimation() --[[ @ 0]]
			f12_arg0.NemesisKilled:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.NemesisKilled ) --[[ @ 0]]
			f12_arg0.Skull:completeAnimation() --[[ @ 0]]
			f12_arg0.Skull:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.Skull ) --[[ @ 0]]
			f12_arg0.arrow:completeAnimation() --[[ @ 0]]
			f12_arg0.arrow:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.arrow ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.AARNemesis.__onClose = function ( f13_arg0 )
	f13_arg0.NemesisKilledBy:close() --[[ @ 0]]
	f13_arg0.NemesisKilled:close() --[[ @ 0]]
end
 --[[ @ 0]]
