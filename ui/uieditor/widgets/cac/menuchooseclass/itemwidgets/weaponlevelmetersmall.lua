-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.WeaponLevelMeterSmall = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WeaponLevelMeterSmall.__defaultWidth = 1580 --[[ @ 0]]
CoD.WeaponLevelMeterSmall.__defaultHeight = 12 --[[ @ 0]]
CoD.WeaponLevelMeterSmall.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WeaponLevelMeterSmall ) --[[ @ 0]]
	self.id = "WeaponLevelMeterSmall" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local progressBarBg = LUI.UIImage.new( 0, 0, 0, 1580, 0, 0, 0, 12 ) --[[ @ 0]]
	progressBarBg:setAlpha( 0 ) --[[ @ 0]]
	progressBarBg:setImage( RegisterImage( @"uie_ui_menu_cac_attachment_meter_backing_01" ) ) --[[ @ 0]]
	self:addElement( progressBarBg ) --[[ @ 0]]
	self.progressBarBg = progressBarBg --[[ @ 0]]
	
	local progressBarGlow = LUI.UIImage.new( 0, 0, 0, 1580, 0, 0, 0, 12 ) --[[ @ 0]]
	progressBarGlow:setRGB( 1, 0.87, 0 ) --[[ @ 0]]
	progressBarGlow:setAlpha( 0 ) --[[ @ 0]]
	progressBarGlow:setImage( RegisterImage( @"uie_ui_menu_cac_attachment_meter_glow" ) ) --[[ @ 0]]
	progressBarGlow:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe" ) ) --[[ @ 0]]
	progressBarGlow:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	progressBarGlow:setShaderVector( 2, 1, 0, 0, 0 ) --[[ @ 0]]
	progressBarGlow:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	progressBarGlow:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	progressBarGlow:linkToElementModel( self, "itemIndex", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			progressBarGlow:setShaderVector( 0, CoD.CACUtility.GetCurrentWeaponXP( f1_arg0, f1_arg1, CoD.GetVectorComponentFromString( f2_local0, 1 ), CoD.GetVectorComponentFromString( f2_local0, 2 ), CoD.GetVectorComponentFromString( f2_local0, 3 ), CoD.GetVectorComponentFromString( f2_local0, 4 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( progressBarGlow ) --[[ @ 0]]
	self.progressBarGlow = progressBarGlow --[[ @ 0]]
	
	local progressBarGlow2 = LUI.UIImage.new( 0, 0, 0, 1580, 0, 0, 0, 12 ) --[[ @ 0]]
	progressBarGlow2:setRGB( 1, 0.87, 0 ) --[[ @ 0]]
	progressBarGlow2:setAlpha( 0 ) --[[ @ 0]]
	progressBarGlow2:setImage( RegisterImage( @"uie_ui_menu_cac_attachment_meter_glow" ) ) --[[ @ 0]]
	progressBarGlow2:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe" ) ) --[[ @ 0]]
	progressBarGlow2:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	progressBarGlow2:setShaderVector( 2, 1, 0, 0, 0 ) --[[ @ 0]]
	progressBarGlow2:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	progressBarGlow2:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	progressBarGlow2:linkToElementModel( self, "itemIndex", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			progressBarGlow2:setShaderVector( 0, CoD.CACUtility.GetCurrentWeaponXP( f1_arg0, f1_arg1, CoD.GetVectorComponentFromString( f3_local0, 1 ), CoD.GetVectorComponentFromString( f3_local0, 2 ), CoD.GetVectorComponentFromString( f3_local0, 3 ), CoD.GetVectorComponentFromString( f3_local0, 4 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( progressBarGlow2 ) --[[ @ 0]]
	self.progressBarGlow2 = progressBarGlow2 --[[ @ 0]]
	
	local progressBarColorless = LUI.UIImage.new( 0, 0, 0, 271, 0, 0, 2, 10 ) --[[ @ 0]]
	progressBarColorless:setImage( RegisterImage( @"uie_ui_menu_cac_button_bottom_line_lvl_colorless" ) ) --[[ @ 0]]
	progressBarColorless:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_normal" ) ) --[[ @ 0]]
	progressBarColorless:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	progressBarColorless:setShaderVector( 2, 1, 0, 0, 0 ) --[[ @ 0]]
	progressBarColorless:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	progressBarColorless:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	progressBarColorless:linkToElementModel( self, "itemIndex", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			progressBarColorless:setShaderVector( 0, CoD.CACUtility.GetCurrentWeaponXP( f1_arg0, f1_arg1, CoD.GetVectorComponentFromString( f4_local0, 1 ), CoD.GetVectorComponentFromString( f4_local0, 2 ), CoD.GetVectorComponentFromString( f4_local0, 3 ), CoD.GetVectorComponentFromString( f4_local0, 4 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( progressBarColorless ) --[[ @ 0]]
	self.progressBarColorless = progressBarColorless --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "DoubleWeaponXP",
			condition = function ( menu, element, event )
				return IsDoubleWeaponXP( f1_arg1 )
			end
		},
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return true
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
CoD.WeaponLevelMeterSmall.__resetProperties = function ( f7_arg0, f7_arg1 )
	f7_arg0.progressBarBg:completeAnimation() --[[ @ 0]]
	f7_arg0.progressBarColorless:completeAnimation() --[[ @ 0]]
	f7_arg0.progressBarGlow:completeAnimation() --[[ @ 0]]
	f7_arg0.progressBarBg:setAlpha( 0 ) --[[ @ 0]]
	f7_arg0.progressBarColorless:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.progressBarGlow:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe" ) ) --[[ @ 0]]
	f7_arg0.progressBarGlow:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	f7_arg0.progressBarGlow:setShaderVector( 2, 1, 0, 0, 0 ) --[[ @ 0]]
	f7_arg0.progressBarGlow:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	f7_arg0.progressBarGlow:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.WeaponLevelMeterSmall.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties( f8_arg1 ) --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f8_arg0.progressBarBg:completeAnimation() --[[ @ 0]]
			f8_arg0.progressBarBg:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.progressBarBg ) --[[ @ 0]]
			f8_arg0.progressBarColorless:completeAnimation() --[[ @ 0]]
			f8_arg0.progressBarColorless:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.progressBarColorless ) --[[ @ 0]]
		end
	},
	DoubleWeaponXP = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties( f9_arg1 ) --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f9_arg0.progressBarGlow:completeAnimation() --[[ @ 0]]
			f9_arg0.progressBarGlow:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe" ) ) --[[ @ 0]]
			f9_arg0.progressBarGlow:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
			f9_arg0.progressBarGlow:setShaderVector( 2, 1, 0, 0, 0 ) --[[ @ 0]]
			f9_arg0.progressBarGlow:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
			f9_arg0.progressBarGlow:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.progressBarGlow ) --[[ @ 0]]
		end
	},
	Visible = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties( f10_arg1 ) --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f10_arg0.progressBarGlow:completeAnimation() --[[ @ 0]]
			f10_arg0.progressBarGlow:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe" ) ) --[[ @ 0]]
			f10_arg0.progressBarGlow:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
			f10_arg0.progressBarGlow:setShaderVector( 2, 1, 0, 0, 0 ) --[[ @ 0]]
			f10_arg0.progressBarGlow:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
			f10_arg0.progressBarGlow:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.progressBarGlow ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.WeaponLevelMeterSmall.__onClose = function ( f11_arg0 )
	f11_arg0.progressBarGlow:close() --[[ @ 0]]
	f11_arg0.progressBarGlow2:close() --[[ @ 0]]
	f11_arg0.progressBarColorless:close() --[[ @ 0]]
end
 --[[ @ 0]]
