-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.progressBarPrimary = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.progressBarPrimary.__defaultWidth = 1580 --[[ @ 0]]
CoD.progressBarPrimary.__defaultHeight = 12 --[[ @ 0]]
CoD.progressBarPrimary.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.progressBarPrimary ) --[[ @ 0]]
	self.id = "progressBarPrimary" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local progressBarBgExtraOpacity = LUI.UIImage.new( 0, 0, 7, 332, 0, 0, -9, -6 ) --[[ @ 0]]
	progressBarBgExtraOpacity:setRGB( 0, 0, 0 ) --[[ @ 0]]
	progressBarBgExtraOpacity:setAlpha( 0.5 ) --[[ @ 0]]
	self:addElement( progressBarBgExtraOpacity ) --[[ @ 0]]
	self.progressBarBgExtraOpacity = progressBarBgExtraOpacity --[[ @ 0]]
	
	local progressBarBg = LUI.UIImage.new( 0, 0, 13, 328, 0, 0, -109, -4 ) --[[ @ 0]]
	progressBarBg:setRGB( 0, 0, 0 ) --[[ @ 0]]
	progressBarBg:setScale( 1.1, 1.1 ) --[[ @ 0]]
	progressBarBg:setImage( RegisterImage( @"uie_ui_menu_cac_weapon_select_button_bar" ) ) --[[ @ 0]]
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
	
	local progressBar = LUI.UIImage.new( 0, 0, 28, 313, 0, 0, -146, -8 ) --[[ @ 0]]
	progressBar:setAlpha( 0 ) --[[ @ 0]]
	progressBar:setScale( 1.2, 1.2 ) --[[ @ 0]]
	progressBar:setImage( RegisterImage( @"uie_ui_menu_cac_button_bottom_line_lvl" ) ) --[[ @ 0]]
	progressBar:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_normal" ) ) --[[ @ 0]]
	progressBar:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	progressBar:setShaderVector( 2, 1, 0, 0, 0 ) --[[ @ 0]]
	progressBar:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	progressBar:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	progressBar:linkToElementModel( self, "itemIndex", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			progressBar:setShaderVector( 0, CoD.CACUtility.GetCurrentWeaponXP( f1_arg0, f1_arg1, CoD.GetVectorComponentFromString( f3_local0, 1 ), CoD.GetVectorComponentFromString( f3_local0, 2 ), CoD.GetVectorComponentFromString( f3_local0, 3 ), CoD.GetVectorComponentFromString( f3_local0, 4 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( progressBar ) --[[ @ 0]]
	self.progressBar = progressBar --[[ @ 0]]
	
	local progressBarColorless = LUI.UIImage.new( 0, 0, 7, 331, 0, 0, -11, -3 ) --[[ @ 0]]
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
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.progressBarPrimary.__resetProperties = function ( f5_arg0, f5_arg1 )
	f5_arg0.progressBarBg:completeAnimation() --[[ @ 0]]
	f5_arg0.progressBar:completeAnimation() --[[ @ 0]]
	f5_arg0.progressBarColorless:completeAnimation() --[[ @ 0]]
	f5_arg0.progressBarGlow:completeAnimation() --[[ @ 0]]
	f5_arg0.progressBarBg:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.progressBar:setAlpha( 0 ) --[[ @ 0]]
	f5_arg0.progressBarColorless:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.progressBarGlow:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe" ) ) --[[ @ 0]]
	f5_arg0.progressBarGlow:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	f5_arg0.progressBarGlow:setShaderVector( 2, 1, 0, 0, 0 ) --[[ @ 0]]
	f5_arg0.progressBarGlow:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	f5_arg0.progressBarGlow:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.progressBarPrimary.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties( f6_arg1 ) --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f6_arg0.progressBarBg:completeAnimation() --[[ @ 0]]
			f6_arg0.progressBarBg:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.progressBarBg ) --[[ @ 0]]
			f6_arg0.progressBar:completeAnimation() --[[ @ 0]]
			f6_arg0.progressBar:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.progressBar ) --[[ @ 0]]
			f6_arg0.progressBarColorless:completeAnimation() --[[ @ 0]]
			f6_arg0.progressBarColorless:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.progressBarColorless ) --[[ @ 0]]
		end
	},
	Visible = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties( f7_arg1 ) --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f7_arg0.progressBarGlow:completeAnimation() --[[ @ 0]]
			f7_arg0.progressBarGlow:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe" ) ) --[[ @ 0]]
			f7_arg0.progressBarGlow:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
			f7_arg0.progressBarGlow:setShaderVector( 2, 1, 0, 0, 0 ) --[[ @ 0]]
			f7_arg0.progressBarGlow:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
			f7_arg0.progressBarGlow:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.progressBarGlow ) --[[ @ 0]]
			f7_arg0.progressBar:completeAnimation() --[[ @ 0]]
			f7_arg0.progressBar:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.progressBar ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.progressBarPrimary.__onClose = function ( f8_arg0 )
	f8_arg0.progressBarGlow:close() --[[ @ 0]]
	f8_arg0.progressBar:close() --[[ @ 0]]
	f8_arg0.progressBarColorless:close() --[[ @ 0]]
end
 --[[ @ 0]]
