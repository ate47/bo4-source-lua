-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
CoD.Mark2BonusExpLongBadge = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Mark2BonusExpLongBadge.__defaultWidth = 260 --[[ @ 0]]
CoD.Mark2BonusExpLongBadge.__defaultHeight = 18 --[[ @ 0]]
CoD.Mark2BonusExpLongBadge.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.Mark2BonusExpLongBadge ) --[[ @ 0]]
	self.id = "Mark2BonusExpLongBadge" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Text = LUI.UIText.new( 0, 0, 0, 260, 0, 0, 0, 18 ) --[[ @ 0]]
	Text:setRGB( 0.54, 0.98, 1 ) --[[ @ 0]]
	Text:setZoom( 3 ) --[[ @ 0]]
	Text:setScale( LanguageOverrideNumberForScale( "korean", 0.9, LanguageOverrideNumberForScale( "chinese", 0.9, 1, 1 ) ) ) --[[ @ 0]]
	Text:setText( LocalizeToUpperString( @"hash_BBAD8A3AF74F8F6" ) ) --[[ @ 0]]
	Text:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	Text:setLetterSpacing( 2 ) --[[ @ 0]]
	Text:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Text:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	Text:setBackingType( 2 ) --[[ @ 0]]
	Text:setBackingColor( 0.13, 0.25, 0.6 ) --[[ @ 0]]
	Text:setBackingXPadding( 3 ) --[[ @ 0]]
	Text:setBackingMaterial( LUI.UIImage.GetCachedMaterial( @"uie_gradient_normal" ) ) --[[ @ 0]]
	Text:setBackingShaderVector( 0, 1, 1, 1, 1 ) --[[ @ 0]]
	Text:setBackingShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	Text:setBackingShaderVector( 2, 0.5, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Text ) --[[ @ 0]]
	self.Text = Text --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				local f2_local0 = CoD.CACUtility.IsMark2Weapon( f1_arg1, self ) --[[ @ 0]]
				if f2_local0 then
					if not IsCurrentMenu( menu, "PaintjobWeaponSelect" ) then
						f2_local0 = CoD.CACUtility.IsProgressionEnabledForMenu( menu ) --[[ @ 0]]
					else
						f2_local0 = false --[[ @ 0]]
					end
				end
				return f2_local0
			end
		},
		{
			stateName = "VisibleDoubleExp",
			condition = function ( menu, element, event )
				local f3_local0 = CoD.CACUtility.IsMark2Weapon( f1_arg1, self ) --[[ @ 0]]
				if f3_local0 then
					if not IsCurrentMenu( menu, "PaintjobWeaponSelect" ) then
						f3_local0 = CoD.CACUtility.IsProgressionEnabledForMenu( menu ) --[[ @ 0]]
						if f3_local0 then
							f3_local0 = IsDoubleXP( f1_arg1 ) --[[ @ 0]]
						end
					else
						f3_local0 = false --[[ @ 0]]
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
CoD.Mark2BonusExpLongBadge.__resetProperties = function ( f7_arg0 )
	f7_arg0.Text:completeAnimation() --[[ @ 0]]
	f7_arg0.Text:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.Text:setText( LocalizeToUpperString( @"hash_BBAD8A3AF74F8F6" ) ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.Mark2BonusExpLongBadge.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
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
			f10_arg0.Text:setText( LocalizeToUpperString( @"hash_4418ACAE8409A0B8" ) ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.Text ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
