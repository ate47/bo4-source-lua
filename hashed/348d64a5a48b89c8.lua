-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
CoD.WZTeamScoreboard_FooterStatBox = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WZTeamScoreboard_FooterStatBox.__defaultWidth = 150 --[[ @ 0]]
CoD.WZTeamScoreboard_FooterStatBox.__defaultHeight = 86 --[[ @ 0]]
CoD.WZTeamScoreboard_FooterStatBox.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WZTeamScoreboard_FooterStatBox ) --[[ @ 0]]
	self.id = "WZTeamScoreboard_FooterStatBox" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local BarBot = LUI.UIImage.new( 0.5, 0.5, -78, 82, 0, 0, 79.5, 89.5 ) --[[ @ 0]]
	BarBot:setAlpha( 0.5 ) --[[ @ 0]]
	BarBot:setImage( RegisterImage( @"uie_ui_menu_mp_scoreboard_list_score_bot" ) ) --[[ @ 0]]
	BarBot:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( BarBot ) --[[ @ 0]]
	self.BarBot = BarBot --[[ @ 0]]
	
	local NoiseBacking = LUI.UIImage.new( 0, 1, 0, 0, 0, 0, 26, 82 ) --[[ @ 0]]
	NoiseBacking:setAlpha( 0.85 ) --[[ @ 0]]
	NoiseBacking:setImage( RegisterImage( @"uie_ui_menu_store_price_bg" ) ) --[[ @ 0]]
	NoiseBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	NoiseBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseBacking:setupNineSliceShader( 24, 24 ) --[[ @ 0]]
	self:addElement( NoiseBacking ) --[[ @ 0]]
	self.NoiseBacking = NoiseBacking --[[ @ 0]]
	
	local Tint2 = LUI.UIImage.new( 0, 1, 0, 0, 0, 0, 26, 82 ) --[[ @ 0]]
	Tint2:setAlpha( 0.2 ) --[[ @ 0]]
	Tint2:setImage( RegisterImage( @"uie_ui_menu_store_repeat_dot_pattern" ) ) --[[ @ 0]]
	Tint2:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	Tint2:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	Tint2:setupNineSliceShader( 24, 24 ) --[[ @ 0]]
	self:addElement( Tint2 ) --[[ @ 0]]
	self.Tint2 = Tint2 --[[ @ 0]]
	
	local TintPC = nil --[[ @ 0]]
	
	TintPC = LUI.UIImage.new( 0, 1, 0, 0, 0, 0, 25.5, 82.5 ) --[[ @ 0]]
	TintPC:setAlpha( 0 ) --[[ @ 0]]
	TintPC:setImage( RegisterImage( @"uie_scoreboard_list_score_bg" ) ) --[[ @ 0]]
	self:addElement( TintPC ) --[[ @ 0]]
	self.TintPC = TintPC --[[ @ 0]]
	
	local Value = LUI.UIText.new( 0.5, 0.5, -61.5, 61.5, 0.5, 0.5, -1.5, 25.5 ) --[[ @ 0]]
	Value:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	Value:setText( "" ) --[[ @ 0]]
	Value:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	Value:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	Value:setAlignment( Enum[@"LUIAlignment"][@"hash_6ED4298C93DC5ED"] ) --[[ @ 0]]
	self:addElement( Value ) --[[ @ 0]]
	self.Value = Value --[[ @ 0]]
	
	local Title = LUI.UIText.new( 0.5, 0.5, -75, 75, 0, 0, 0, 15 ) --[[ @ 0]]
	Title:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	Title:setText( "" ) --[[ @ 0]]
	Title:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	Title:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	Title:setAlignment( Enum[@"LUIAlignment"][@"hash_6ED4298C93DC5ED"] ) --[[ @ 0]]
	self:addElement( Title ) --[[ @ 0]]
	self.Title = Title --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "SelfPC",
			condition = function ( menu, element, event )
				return IsPC() and IsSelfClient( f1_arg1, element )
			end
		},
		{
			stateName = "Self",
			condition = function ( menu, element, event )
				return IsSelfClient( f1_arg1, element )
			end
		},
		{
			stateName = "PC",
			condition = function ( menu, element, event )
				return IsPC()
			end
		},
		{
			stateName = "AsianLanguage",
			condition = function ( menu, element, event )
				return true
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "clientNum", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "clientNum"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.WZTeamScoreboard_FooterStatBox.__resetProperties = function ( f7_arg0 )
	f7_arg0.TintPC:completeAnimation() --[[ @ 0]]
	f7_arg0.Value:completeAnimation() --[[ @ 0]]
	f7_arg0.Title:completeAnimation() --[[ @ 0]]
	f7_arg0.TintPC:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f7_arg0.TintPC:setAlpha( 0 ) --[[ @ 0]]
	f7_arg0.Value:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	f7_arg0.Title:setTopBottom( 0, 0, 0, 15 ) --[[ @ 0]]
	f7_arg0.Title:setLetterSpacing( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.WZTeamScoreboard_FooterStatBox.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	SelfPC = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f9_arg0.TintPC:completeAnimation() --[[ @ 0]]
			f9_arg0.TintPC:setAlpha( 0.2 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.TintPC ) --[[ @ 0]]
			f9_arg0.Value:completeAnimation() --[[ @ 0]]
			f9_arg0.Value:setRGB( 1, 0.76, 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.Value ) --[[ @ 0]]
		end
	},
	Self = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f10_arg0.TintPC:completeAnimation() --[[ @ 0]]
			f10_arg0.TintPC:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.TintPC ) --[[ @ 0]]
			f10_arg0.Value:completeAnimation() --[[ @ 0]]
			f10_arg0.Value:setRGB( 1, 0.76, 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.Value ) --[[ @ 0]]
		end
	},
	PC = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f11_arg0.TintPC:completeAnimation() --[[ @ 0]]
			f11_arg0.TintPC:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f11_arg0.TintPC:setAlpha( 0.2 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.TintPC ) --[[ @ 0]]
			f11_arg0.Value:completeAnimation() --[[ @ 0]]
			f11_arg0.Value:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.Value ) --[[ @ 0]]
		end
	},
	AsianLanguage = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f12_arg0.Title:completeAnimation() --[[ @ 0]]
			f12_arg0.Title:setTopBottom( 0, 0, 0, 12 ) --[[ @ 0]]
			f12_arg0.Title:setLetterSpacing( 1 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.Title ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
