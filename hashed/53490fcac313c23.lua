-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.Mark2BonusExpBadgeInGame = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Mark2BonusExpBadgeInGame.__defaultWidth = 195 --[[ @ 0]]
CoD.Mark2BonusExpBadgeInGame.__defaultHeight = 18 --[[ @ 0]]
CoD.Mark2BonusExpBadgeInGame.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.Mark2BonusExpBadgeInGame ) --[[ @ 0]]
	self.id = "Mark2BonusExpBadgeInGame" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Background = LUI.UIImage.new( 0, 0, 0, 195, 0, 0, 0, 18 ) --[[ @ 0]]
	Background:setRGB( 0.13, 0.69, 0.74 ) --[[ @ 0]]
	Background:setAlpha( 0.6 ) --[[ @ 0]]
	Background:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_feather_edges" ) ) --[[ @ 0]]
	Background:setShaderVector( 0, 0.21, 0.05, 0.21, 0.05 ) --[[ @ 0]]
	self:addElement( Background ) --[[ @ 0]]
	self.Background = Background --[[ @ 0]]
	
	local Text = LUI.UIText.new( 0, 0, 0, 195, 0, 0, 0, 18 ) --[[ @ 0]]
	Text:setZoom( 3 ) --[[ @ 0]]
	Text:setScale( LanguageOverrideNumberForScale( "korean", 0.9, LanguageOverrideNumberForScale( "chinese", 0.9, 1, 1 ) ) ) --[[ @ 0]]
	Text:setText( LocalizeToUpperString( @"hash_6DF923C238938C67" ) ) --[[ @ 0]]
	Text:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	Text:setLetterSpacing( 2 ) --[[ @ 0]]
	Text:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Text:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	self:addElement( Text ) --[[ @ 0]]
	self.Text = Text --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return CoD.CACUtility.IsMark2Weapon( f1_arg1, self ) and CoD.CACUtility.IsProgressionEnabledForMenu( menu )
			end
		},
		{
			stateName = "VisibleDoubleExp",
			condition = function ( menu, element, event )
				local f3_local0 = CoD.CACUtility.IsMark2Weapon( f1_arg1, self ) --[[ @ 0]]
				if f3_local0 then
					f3_local0 = IsDoubleXP( f1_arg1 ) --[[ @ 0]]
					if f3_local0 then
						f3_local0 = CoD.CACUtility.IsProgressionEnabledForMenu( menu ) --[[ @ 0]]
					end
				end
				return f3_local0
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "weaponModelSlot", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "weaponModelSlot"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "itemIndex", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "itemIndex"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "setModel", function ( element, controller )
		UpdateSelfState( self, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.Mark2BonusExpBadgeInGame.__resetProperties = function ( f7_arg0 )
	f7_arg0.Text:completeAnimation() --[[ @ 0]]
	f7_arg0.Background:completeAnimation() --[[ @ 0]]
	f7_arg0.Text:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.Text:setText( LocalizeToUpperString( @"hash_6DF923C238938C67" ) ) --[[ @ 0]]
	f7_arg0.Background:setAlpha( 0.6 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.Mark2BonusExpBadgeInGame.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f8_arg0.Background:completeAnimation() --[[ @ 0]]
			f8_arg0.Background:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.Background ) --[[ @ 0]]
			f8_arg0.Text:completeAnimation() --[[ @ 0]]
			f8_arg0.Text:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.Text ) --[[ @ 0]]
		end
	},
	Visible = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	VisibleDoubleExp = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f10_arg0.Text:completeAnimation() --[[ @ 0]]
			f10_arg0.Text:setText( LocalizeToUpperString( @"hash_18DC8ECEFEBF1515" ) ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.Text ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
