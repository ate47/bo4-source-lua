-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.WZTeamScoreboard_ColumnStatBox = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WZTeamScoreboard_ColumnStatBox.__defaultWidth = 140 --[[ @ 0]]
CoD.WZTeamScoreboard_ColumnStatBox.__defaultHeight = 60 --[[ @ 0]]
CoD.WZTeamScoreboard_ColumnStatBox.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WZTeamScoreboard_ColumnStatBox ) --[[ @ 0]]
	self.id = "WZTeamScoreboard_ColumnStatBox" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local NoiseBacking = LUI.UIImage.new( 0, 1, 0, 0, 0, 0.93, 0, 0 ) --[[ @ 0]]
	NoiseBacking:setAlpha( 0.85 ) --[[ @ 0]]
	NoiseBacking:setImage( RegisterImage( @"uie_ui_menu_store_price_bg" ) ) --[[ @ 0]]
	NoiseBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	NoiseBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseBacking:setupNineSliceShader( 24, 24 ) --[[ @ 0]]
	self:addElement( NoiseBacking ) --[[ @ 0]]
	self.NoiseBacking = NoiseBacking --[[ @ 0]]
	
	local Tint = LUI.UIImage.new( 0, 1, 0, 0, 0, 0.93, 0, 0 ) --[[ @ 0]]
	Tint:setAlpha( 0.2 ) --[[ @ 0]]
	Tint:setImage( RegisterImage( @"uie_ui_menu_store_repeat_dot_pattern" ) ) --[[ @ 0]]
	Tint:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	Tint:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	Tint:setupNineSliceShader( 24, 24 ) --[[ @ 0]]
	self:addElement( Tint ) --[[ @ 0]]
	self.Tint = Tint --[[ @ 0]]
	
	local BarBot = LUI.UIImage.new( 0, 0, -3, 147, 0, 0, 54, 64 ) --[[ @ 0]]
	BarBot:setAlpha( 0.4 ) --[[ @ 0]]
	BarBot:setImage( RegisterImage( @"uie_ui_menu_mp_scoreboard_list_score_bot" ) ) --[[ @ 0]]
	BarBot:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( BarBot ) --[[ @ 0]]
	self.BarBot = BarBot --[[ @ 0]]
	
	local TintPC = nil --[[ @ 0]]
	
	TintPC = LUI.UIImage.new( 0.5, 0.5, -72.5, 72.5, 0, 0, -0.5, 56.5 ) --[[ @ 0]]
	TintPC:setAlpha( 0 ) --[[ @ 0]]
	TintPC:setImage( RegisterImage( @"uie_scoreboard_list_score_bg" ) ) --[[ @ 0]]
	self:addElement( TintPC ) --[[ @ 0]]
	self.TintPC = TintPC --[[ @ 0]]
	
	local Value = LUI.UIText.new( 0.5, 0.5, -69, 69, 0.5, 0.5, -13, 14 ) --[[ @ 0]]
	Value:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	Value:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/new" ) ) --[[ @ 0]]
	Value:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	Value:setLetterSpacing( 1 ) --[[ @ 0]]
	Value:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Value:setAlignment( Enum[@"luialignment"][@"lui_alignment_middle"] ) --[[ @ 0]]
	self:addElement( Value ) --[[ @ 0]]
	self.Value = Value --[[ @ 0]]
	
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
CoD.WZTeamScoreboard_ColumnStatBox.__resetProperties = function ( f6_arg0 )
	f6_arg0.TintPC:completeAnimation() --[[ @ 0]]
	f6_arg0.Value:completeAnimation() --[[ @ 0]]
	f6_arg0.TintPC:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f6_arg0.TintPC:setAlpha( 0 ) --[[ @ 0]]
	f6_arg0.Value:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.WZTeamScoreboard_ColumnStatBox.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	SelfPC = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f8_arg0.TintPC:completeAnimation() --[[ @ 0]]
			f8_arg0.TintPC:setAlpha( 1 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.TintPC ) --[[ @ 0]]
			f8_arg0.Value:completeAnimation() --[[ @ 0]]
			f8_arg0.Value:setRGB( 1, 0.76, 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.Value ) --[[ @ 0]]
		end
	},
	Self = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f9_arg0.Value:completeAnimation() --[[ @ 0]]
			f9_arg0.Value:setRGB( 1, 0.76, 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.Value ) --[[ @ 0]]
		end
	},
	PC = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f10_arg0.TintPC:completeAnimation() --[[ @ 0]]
			f10_arg0.TintPC:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f10_arg0.TintPC:setAlpha( 1 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.TintPC ) --[[ @ 0]]
			f10_arg0.Value:completeAnimation() --[[ @ 0]]
			f10_arg0.Value:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.Value ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
