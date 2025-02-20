-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
CoD.TabbedScoreboardStatBox = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.TabbedScoreboardStatBox.__defaultWidth = 82 --[[ @ 0]]
CoD.TabbedScoreboardStatBox.__defaultHeight = 60 --[[ @ 0]]
CoD.TabbedScoreboardStatBox.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.TabbedScoreboardStatBox ) --[[ @ 0]]
	self.id = "TabbedScoreboardStatBox" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local BarBot = LUI.UIImage.new( 0, 0, -2, 86, 0, 0, 54, 64 ) --[[ @ 0]]
	BarBot:setImage( RegisterImage( @"uie_ui_menu_mp_scoreboard_list_score_bot" ) ) --[[ @ 0]]
	self:addElement( BarBot ) --[[ @ 0]]
	self.BarBot = BarBot --[[ @ 0]]
	
	local Tint = LUI.UIImage.new( 0.5, 0.5, -42, 42, 0, 0, -1, 57 ) --[[ @ 0]]
	Tint:setImage( RegisterImage( @"uie_ui_menu_mp_scoreboard_list_score_bg" ) ) --[[ @ 0]]
	self:addElement( Tint ) --[[ @ 0]]
	self.Tint = Tint --[[ @ 0]]
	
	local TintPC = nil --[[ @ 0]]
	
	TintPC = LUI.UIImage.new( 0.5, 0.5, -42, 42, 0, 0, -1, 57 ) --[[ @ 0]]
	TintPC:setAlpha( 0 ) --[[ @ 0]]
	TintPC:setImage( RegisterImage( @"uie_scoreboard_list_score_bg" ) ) --[[ @ 0]]
	self:addElement( TintPC ) --[[ @ 0]]
	self.TintPC = TintPC --[[ @ 0]]
	
	local Value = LUI.UIText.new( 0.5, 0.5, -42, 42, 0.5, 0.5, -15, 15 ) --[[ @ 0]]
	Value:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_393E719493E9E18F" ) ) --[[ @ 0]]
	Value:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	Value:setLetterSpacing( -1 ) --[[ @ 0]]
	Value:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	Value:setAlignment( Enum[@"LUIAlignment"][@"hash_6ED4298C93DC5ED"] ) --[[ @ 0]]
	self:addElement( Value ) --[[ @ 0]]
	self.Value = Value --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "ZM",
			condition = function ( menu, element, event )
				return CoD.HUDUtility.IsZombies()
			end
		},
		{
			stateName = "Self",
			condition = function ( menu, element, event )
				return IsSelfClient( f1_arg1, element ) and not IsPC()
			end
		},
		{
			stateName = "SelfPC",
			condition = function ( menu, element, event )
				return IsPC() and IsSelfClient( f1_arg1, element )
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
CoD.TabbedScoreboardStatBox.__resetProperties = function ( f7_arg0 )
	f7_arg0.Tint:completeAnimation() --[[ @ 0]]
	f7_arg0.BarBot:completeAnimation() --[[ @ 0]]
	f7_arg0.Value:completeAnimation() --[[ @ 0]]
	f7_arg0.TintPC:completeAnimation() --[[ @ 0]]
	f7_arg0.Tint:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.BarBot:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.Value:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f7_arg0.TintPC:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f7_arg0.TintPC:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.TabbedScoreboardStatBox.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	ZM = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f9_arg0.BarBot:completeAnimation() --[[ @ 0]]
			f9_arg0.BarBot:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.BarBot ) --[[ @ 0]]
			f9_arg0.Tint:completeAnimation() --[[ @ 0]]
			f9_arg0.Tint:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.Tint ) --[[ @ 0]]
		end
	},
	Self = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f10_arg0.Tint:completeAnimation() --[[ @ 0]]
			f10_arg0.Tint:setAlpha( 0.7 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.Tint ) --[[ @ 0]]
			f10_arg0.Value:completeAnimation() --[[ @ 0]]
			f10_arg0.Value:setRGB( 1, 0.76, 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.Value ) --[[ @ 0]]
		end
	},
	SelfPC = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f11_arg0.Tint:completeAnimation() --[[ @ 0]]
			f11_arg0.Tint:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.Tint ) --[[ @ 0]]
			f11_arg0.TintPC:completeAnimation() --[[ @ 0]]
			f11_arg0.TintPC:setAlpha( 1 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.TintPC ) --[[ @ 0]]
			f11_arg0.Value:completeAnimation() --[[ @ 0]]
			f11_arg0.Value:setRGB( 1, 0.76, 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.Value ) --[[ @ 0]]
		end
	},
	PC = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f12_arg0.Tint:completeAnimation() --[[ @ 0]]
			f12_arg0.Tint:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.Tint ) --[[ @ 0]]
			f12_arg0.TintPC:completeAnimation() --[[ @ 0]]
			f12_arg0.TintPC:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f12_arg0.TintPC:setAlpha( 1 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.TintPC ) --[[ @ 0]]
			f12_arg0.Value:completeAnimation() --[[ @ 0]]
			f12_arg0.Value:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.Value ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
