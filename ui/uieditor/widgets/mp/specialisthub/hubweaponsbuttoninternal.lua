-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "x64:23e426332d66c91e" ) --[[ @ 0]]
require( "ui/uieditor/widgets/director/directorselectbuttonlines" ) --[[ @ 0]]
require( "ui/uieditor/widgets/store/storecommontextbacking" ) --[[ @ 0]]

CoD.HubWeaponsButtonInternal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.HubWeaponsButtonInternal.__defaultWidth = 393 --[[ @ 0]]
CoD.HubWeaponsButtonInternal.__defaultHeight = 379 --[[ @ 0]]
CoD.HubWeaponsButtonInternal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.HubWeaponsButtonInternal ) --[[ @ 0]]
	self.id = "HubWeaponsButtonInternal" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local FocusGlow = LUI.UIImage.new( 0, 1, -49, 49, 0, 1, -49, 49 ) --[[ @ 0]]
	FocusGlow:setAlpha( 0 ) --[[ @ 0]]
	FocusGlow:setImage( RegisterImage( @"uie_ui_menu_common_focus_glow_small" ) ) --[[ @ 0]]
	FocusGlow:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_6DAB59B2CAE01851" ) ) --[[ @ 0]]
	FocusGlow:setShaderVector( 0, 0, 0, 0.25, 0.25 ) --[[ @ 0]]
	FocusGlow:setShaderVector( 1, 1.2, 0, 0, 0 ) --[[ @ 0]]
	FocusGlow:setupNineSliceShader( 100, 100 ) --[[ @ 0]]
	self:addElement( FocusGlow ) --[[ @ 0]]
	self.FocusGlow = FocusGlow --[[ @ 0]]
	
	local SceneBlur = LUI.UIImage.new( -0, -0, 1.5, 394.5, 0, 0, 0, 379 ) --[[ @ 0]]
	SceneBlur:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	SceneBlur:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( SceneBlur ) --[[ @ 0]]
	self.SceneBlur = SceneBlur --[[ @ 0]]
	
	local StoreCommonTextBacking = CoD.StoreCommonTextBacking.new( f1_arg0, f1_arg1, 0, 0, 0, 393, 0, 0, 149, 379 ) --[[ @ 0]]
	StoreCommonTextBacking:setAlpha( 0.4 ) --[[ @ 0]]
	StoreCommonTextBacking.TiledShaderImage:setupNineSliceShader( 32, 32 ) --[[ @ 0]]
	self:addElement( StoreCommonTextBacking ) --[[ @ 0]]
	self.StoreCommonTextBacking = StoreCommonTextBacking --[[ @ 0]]
	
	local TiledBacking = LUI.UIImage.new( -0, 1, 1.5, 1.5, 0, 1, -1, -1 ) --[[ @ 0]]
	TiledBacking:setAlpha( 0.5 ) --[[ @ 0]]
	TiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	TiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	TiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	TiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( TiledBacking ) --[[ @ 0]]
	self.TiledBacking = TiledBacking --[[ @ 0]]
	
	local TiledBackingAdd = LUI.UIImage.new( -0, 1, 1.5, 1.5, 0.37, 1, -1, -1 ) --[[ @ 0]]
	TiledBackingAdd:setAlpha( 0 ) --[[ @ 0]]
	TiledBackingAdd:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	TiledBackingAdd:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	TiledBackingAdd:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	TiledBackingAdd:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( TiledBackingAdd ) --[[ @ 0]]
	self.TiledBackingAdd = TiledBackingAdd --[[ @ 0]]
	
	local SelectorOverlay = LUI.UIImage.new( 0, 0, 0, 393, 0, 0, 0, 379 ) --[[ @ 0]]
	SelectorOverlay:setAlpha( 0.01 ) --[[ @ 0]]
	self:addElement( SelectorOverlay ) --[[ @ 0]]
	self.SelectorOverlay = SelectorOverlay --[[ @ 0]]
	
	local weaponHeader = LUI.UIText.new( 0.5, 0.5, -200.5, -0.5, 0, 0, 318, 336 ) --[[ @ 0]]
	weaponHeader:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	weaponHeader:setAlpha( 0 ) --[[ @ 0]]
	weaponHeader:setText( LocalizeToUpperString( @"menu/weapon" ) ) --[[ @ 0]]
	weaponHeader:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	weaponHeader:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	self:addElement( weaponHeader ) --[[ @ 0]]
	self.weaponHeader = weaponHeader --[[ @ 0]]
	
	local weaponName = LUI.UIText.new( 0.5, 0.5, -190.5, -0.5, 0, 0, 165.5, 183.5 ) --[[ @ 0]]
	weaponName:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	weaponName:setAlpha( 0.5 ) --[[ @ 0]]
	weaponName:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	weaponName:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	weaponName:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	weaponName:linkToElementModel( self, "ability.displayName", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			weaponName:setText( LocalizeToUpperString( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( weaponName ) --[[ @ 0]]
	self.weaponName = weaponName --[[ @ 0]]
	
	local weaponImage = LUI.UIImage.new( 0.5, 0.5, -175.5, -25.5, 0, 0, 198.5, 348.5 ) --[[ @ 0]]
	weaponImage:linkToElementModel( self, "ability.image", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			weaponImage:setImage( RegisterImage( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( weaponImage ) --[[ @ 0]]
	self.weaponImage = weaponImage --[[ @ 0]]
	
	local specialIssueHeader = LUI.UIText.new( 0.5, 0.5, -6, 194, 0, 0, 318, 336 ) --[[ @ 0]]
	specialIssueHeader:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	specialIssueHeader:setAlpha( 0 ) --[[ @ 0]]
	specialIssueHeader:setText( LocalizeToUpperString( @"weapon/special_issue" ) ) --[[ @ 0]]
	specialIssueHeader:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	specialIssueHeader:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	self:addElement( specialIssueHeader ) --[[ @ 0]]
	self.specialIssueHeader = specialIssueHeader --[[ @ 0]]
	
	local specialIssueName = LUI.UIText.new( 0.5, 0.5, 4, 194, 0, 0, 165.5, 183.5 ) --[[ @ 0]]
	specialIssueName:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	specialIssueName:setAlpha( 0.5 ) --[[ @ 0]]
	specialIssueName:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	specialIssueName:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	specialIssueName:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	specialIssueName:linkToElementModel( self, "equipment.displayName", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			specialIssueName:setText( LocalizeToUpperString( f4_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( specialIssueName ) --[[ @ 0]]
	self.specialIssueName = specialIssueName --[[ @ 0]]
	
	local specialIssueImage = LUI.UIImage.new( 0.5, 0.5, 18.5, 168.5, 0, 0, 198.5, 348.5 ) --[[ @ 0]]
	specialIssueImage:linkToElementModel( self, "equipment.image", true, function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			specialIssueImage:setImage( RegisterImage( f5_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( specialIssueImage ) --[[ @ 0]]
	self.specialIssueImage = specialIssueImage --[[ @ 0]]
	
	local trainingImage = LUI.UIImage.new( 0.5, 0.5, -196.5, 196.5, 0, 0, 0, 139 ) --[[ @ 0]]
	trainingImage:linkToElementModel( self, "weaponHeaderImage", true, function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			trainingImage:setImage( RegisterImage( f6_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( trainingImage ) --[[ @ 0]]
	self.trainingImage = trainingImage --[[ @ 0]]
	
	local trainingImageOverlay = LUI.UIImage.new( 0.5, 0.5, -196.5, 196.5, 0, 0, 0, 139 ) --[[ @ 0]]
	trainingImageOverlay:setRGB( 0, 0, 0 ) --[[ @ 0]]
	trainingImageOverlay:setAlpha( 0.25 ) --[[ @ 0]]
	trainingImageOverlay:linkToElementModel( self, "weaponHeaderImage", true, function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			trainingImageOverlay:setImage( RegisterImage( f7_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( trainingImageOverlay ) --[[ @ 0]]
	self.trainingImageOverlay = trainingImageOverlay --[[ @ 0]]
	
	local InfoDivider = LUI.UIImage.new( 0, 0, 194.5, 198.5, 0, 0, 213, 334 ) --[[ @ 0]]
	InfoDivider:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_info_divider" ) ) --[[ @ 0]]
	InfoDivider:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( InfoDivider ) --[[ @ 0]]
	self.InfoDivider = InfoDivider --[[ @ 0]]
	
	local CommonTiledDotline = LUI.UIImage.new( 0, 0, 0, 393, 0, 0, 143, 145 ) --[[ @ 0]]
	CommonTiledDotline:setAlpha( 0.2 ) --[[ @ 0]]
	CommonTiledDotline:setImage( RegisterImage( @"hash_6F5E8F1B8586D9C5" ) ) --[[ @ 0]]
	CommonTiledDotline:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	CommonTiledDotline:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	CommonTiledDotline:setupNineSliceShader( 4, 2 ) --[[ @ 0]]
	self:addElement( CommonTiledDotline ) --[[ @ 0]]
	self.CommonTiledDotline = CommonTiledDotline --[[ @ 0]]
	
	local FrontendFrameSelected = LUI.UIImage.new( 0, 1, -4, 4, 0, 1, -4, 4 ) --[[ @ 0]]
	FrontendFrameSelected:setAlpha( 0 ) --[[ @ 0]]
	FrontendFrameSelected:setImage( RegisterImage( @"uie_ui_menu_store_focus_frame" ) ) --[[ @ 0]]
	FrontendFrameSelected:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FrontendFrameSelected:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FrontendFrameSelected:setupNineSliceShader( 12, 12 ) --[[ @ 0]]
	self:addElement( FrontendFrameSelected ) --[[ @ 0]]
	self.FrontendFrameSelected = FrontendFrameSelected --[[ @ 0]]
	
	local FrontendFrameSelectedGlow = LUI.UIImage.new( 0, 1, -8, 8, 0, 1, -8, 8 ) --[[ @ 0]]
	FrontendFrameSelectedGlow:setAlpha( 0 ) --[[ @ 0]]
	FrontendFrameSelectedGlow:setImage( RegisterImage( @"uie_ui_menu_store_focus_frame" ) ) --[[ @ 0]]
	FrontendFrameSelectedGlow:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FrontendFrameSelectedGlow:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FrontendFrameSelectedGlow:setupNineSliceShader( 28, 28 ) --[[ @ 0]]
	self:addElement( FrontendFrameSelectedGlow ) --[[ @ 0]]
	self.FrontendFrameSelectedGlow = FrontendFrameSelectedGlow --[[ @ 0]]
	
	local FrontendFrame = LUI.UIImage.new( 0, 1, -1, 1, 0, 1, -1, 1 ) --[[ @ 0]]
	FrontendFrame:setAlpha( 0.05 ) --[[ @ 0]]
	FrontendFrame:setImage( RegisterImage( @"uie_ui_menu_store_common_frame" ) ) --[[ @ 0]]
	FrontendFrame:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FrontendFrame:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FrontendFrame:setupNineSliceShader( 6, 6 ) --[[ @ 0]]
	self:addElement( FrontendFrame ) --[[ @ 0]]
	self.FrontendFrame = FrontendFrame --[[ @ 0]]
	
	local textBacking = CoD.StoreCommonTextBacking.new( f1_arg0, f1_arg1, 0, 0, 0, 393, 0, 0, 0, 35 ) --[[ @ 0]]
	textBacking:setAlpha( 0.4 ) --[[ @ 0]]
	textBacking.TiledShaderImage:setupNineSliceShader( 32, 32 ) --[[ @ 0]]
	self:addElement( textBacking ) --[[ @ 0]]
	self.textBacking = textBacking --[[ @ 0]]
	
	local mainHeader = LUI.UIText.new( 0.5, 0.5, -187.5, 187.5, 0, 0, 7.5, 28.5 ) --[[ @ 0]]
	mainHeader:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	mainHeader:setAlpha( 0.9 ) --[[ @ 0]]
	mainHeader:setText( LocalizeToUpperString( @"hash_729E45AE7FF6633E" ) ) --[[ @ 0]]
	mainHeader:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	mainHeader:setLetterSpacing( 2 ) --[[ @ 0]]
	mainHeader:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( mainHeader ) --[[ @ 0]]
	self.mainHeader = mainHeader --[[ @ 0]]
	
	local FocusBrackets = CoD.CommonFocusBrackets.new( f1_arg0, f1_arg1, 0, 1, -32, 32, 0, 1, -32, 32 ) --[[ @ 0]]
	FocusBrackets:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( FocusBrackets ) --[[ @ 0]]
	self.FocusBrackets = FocusBrackets --[[ @ 0]]
	
	local Lines = CoD.DirectorSelectButtonLines.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 1, -1 ) --[[ @ 0]]
	Lines:setRGB( 0.64, 0.71, 0.78 ) --[[ @ 0]]
	self:addElement( Lines ) --[[ @ 0]]
	self.Lines = Lines --[[ @ 0]]
	
	local TabBottomLine = LUI.UIImage.new( 0.5, 0.5, -196.5, 196.5, 0, 0, 34, 36 ) --[[ @ 0]]
	TabBottomLine:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	TabBottomLine:setAlpha( 0.2 ) --[[ @ 0]]
	TabBottomLine:setImage( RegisterImage( @"uie_ui_menu_common_tab_line_bottom" ) ) --[[ @ 0]]
	TabBottomLine:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( TabBottomLine ) --[[ @ 0]]
	self.TabBottomLine = TabBottomLine --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.HubWeaponsButtonInternal.__resetProperties = function ( f8_arg0 )
	f8_arg0.weaponName:completeAnimation() --[[ @ 0]]
	f8_arg0.specialIssueName:completeAnimation() --[[ @ 0]]
	f8_arg0.trainingImage:completeAnimation() --[[ @ 0]]
	f8_arg0.SceneBlur:completeAnimation() --[[ @ 0]]
	f8_arg0.trainingImageOverlay:completeAnimation() --[[ @ 0]]
	f8_arg0.FocusBrackets:completeAnimation() --[[ @ 0]]
	f8_arg0.TiledBacking:completeAnimation() --[[ @ 0]]
	f8_arg0.TiledBackingAdd:completeAnimation() --[[ @ 0]]
	f8_arg0.FrontendFrameSelected:completeAnimation() --[[ @ 0]]
	f8_arg0.FrontendFrameSelectedGlow:completeAnimation() --[[ @ 0]]
	f8_arg0.mainHeader:completeAnimation() --[[ @ 0]]
	f8_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
	f8_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
	f8_arg0.weaponName:setAlpha( 0.5 ) --[[ @ 0]]
	f8_arg0.specialIssueName:setAlpha( 0.5 ) --[[ @ 0]]
	f8_arg0.trainingImage:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.SceneBlur:setLeftRight( -0, -0, 1.5, 394.5 ) --[[ @ 0]]
	f8_arg0.trainingImageOverlay:setRGB( 0, 0, 0 ) --[[ @ 0]]
	f8_arg0.trainingImageOverlay:setAlpha( 0.25 ) --[[ @ 0]]
	f8_arg0.FocusBrackets:setLeftRight( 0, 1, -32, 32 ) --[[ @ 0]]
	f8_arg0.FocusBrackets:setTopBottom( 0, 1, -32, 32 ) --[[ @ 0]]
	f8_arg0.FocusBrackets:setAlpha( 0 ) --[[ @ 0]]
	f8_arg0.TiledBacking:setTopBottom( 0, 1, -1, -1 ) --[[ @ 0]]
	f8_arg0.TiledBackingAdd:setTopBottom( 0.37, 1, -1, -1 ) --[[ @ 0]]
	f8_arg0.TiledBackingAdd:setAlpha( 0 ) --[[ @ 0]]
	f8_arg0.FrontendFrameSelected:setAlpha( 0 ) --[[ @ 0]]
	f8_arg0.FrontendFrameSelectedGlow:setAlpha( 0 ) --[[ @ 0]]
	f8_arg0.mainHeader:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	f8_arg0.SelectorOverlay:setAlpha( 0.01 ) --[[ @ 0]]
	f8_arg0.FocusGlow:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.HubWeaponsButtonInternal.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			f9_arg0.SceneBlur:completeAnimation() --[[ @ 0]]
			f9_arg0.SceneBlur:setLeftRight( -0, -0, 1.5, 394.5 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.SceneBlur ) --[[ @ 0]]
			f9_arg0.weaponName:completeAnimation() --[[ @ 0]]
			f9_arg0.weaponName:setAlpha( 0.4 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.weaponName ) --[[ @ 0]]
			f9_arg0.specialIssueName:completeAnimation() --[[ @ 0]]
			f9_arg0.specialIssueName:setAlpha( 0.4 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.specialIssueName ) --[[ @ 0]]
			f9_arg0.trainingImage:completeAnimation() --[[ @ 0]]
			f9_arg0.trainingImage:setAlpha( 1 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.trainingImage ) --[[ @ 0]]
			f9_arg0.trainingImageOverlay:completeAnimation() --[[ @ 0]]
			f9_arg0.trainingImageOverlay:setRGB( 0, 0, 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.trainingImageOverlay ) --[[ @ 0]]
			f9_arg0.FocusBrackets:completeAnimation() --[[ @ 0]]
			f9_arg0.FocusBrackets:setLeftRight( 0, 1, -32, 32 ) --[[ @ 0]]
			f9_arg0.FocusBrackets:setTopBottom( 0, 1, -32, 32 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.FocusBrackets ) --[[ @ 0]]
		end,
		Focus = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 12 ) --[[ @ 0]]
			f10_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f10_arg0.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.FocusGlow ) --[[ @ 0]]
			f10_arg0.TiledBacking:completeAnimation() --[[ @ 0]]
			f10_arg0.TiledBacking:setTopBottom( 0, 1, -1, -1 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.TiledBacking ) --[[ @ 0]]
			f10_arg0.TiledBackingAdd:completeAnimation() --[[ @ 0]]
			f10_arg0.TiledBackingAdd:setTopBottom( 0.37, 1, -1, -1 ) --[[ @ 0]]
			f10_arg0.TiledBackingAdd:setAlpha( 0.25 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.TiledBackingAdd ) --[[ @ 0]]
			f10_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
			f10_arg0.SelectorOverlay:setAlpha( 0.04 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.SelectorOverlay ) --[[ @ 0]]
			f10_arg0.weaponName:completeAnimation() --[[ @ 0]]
			f10_arg0.weaponName:setAlpha( 0.5 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.weaponName ) --[[ @ 0]]
			f10_arg0.specialIssueName:completeAnimation() --[[ @ 0]]
			f10_arg0.specialIssueName:setAlpha( 0.5 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.specialIssueName ) --[[ @ 0]]
			f10_arg0.trainingImage:completeAnimation() --[[ @ 0]]
			f10_arg0.trainingImage:setAlpha( 1 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.trainingImage ) --[[ @ 0]]
			f10_arg0.trainingImageOverlay:completeAnimation() --[[ @ 0]]
			f10_arg0.trainingImageOverlay:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f10_arg0.trainingImageOverlay:setAlpha( 0.01 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.trainingImageOverlay ) --[[ @ 0]]
			f10_arg0.FrontendFrameSelected:completeAnimation() --[[ @ 0]]
			f10_arg0.FrontendFrameSelected:setAlpha( 1 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.FrontendFrameSelected ) --[[ @ 0]]
			f10_arg0.FrontendFrameSelectedGlow:completeAnimation() --[[ @ 0]]
			f10_arg0.FrontendFrameSelectedGlow:setAlpha( 0.05 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.FrontendFrameSelectedGlow ) --[[ @ 0]]
			f10_arg0.mainHeader:completeAnimation() --[[ @ 0]]
			f10_arg0.mainHeader:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.mainHeader ) --[[ @ 0]]
			f10_arg0.FocusBrackets:completeAnimation() --[[ @ 0]]
			f10_arg0.FocusBrackets:setLeftRight( 0, 1, -11, 11 ) --[[ @ 0]]
			f10_arg0.FocusBrackets:setTopBottom( 0, 1, -11, 11 ) --[[ @ 0]]
			f10_arg0.FocusBrackets:setAlpha( 1 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.FocusBrackets ) --[[ @ 0]]
		end,
		GainFocus = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 13 ) --[[ @ 0]]
			local f11_local0 = function ( f12_arg0 )
				f11_arg0.FocusGlow:beginAnimation( 100 ) --[[ @ 0]]
				f11_arg0.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
				f11_arg0.FocusGlow:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.FocusGlow:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f11_arg0.FocusGlow:setAlpha( 0 ) --[[ @ 0]]
			f11_local0( f11_arg0.FocusGlow ) --[[ @ 0]]
			f11_arg0.SceneBlur:completeAnimation() --[[ @ 0]]
			f11_arg0.SceneBlur:setLeftRight( -0, -0, 1.5, 394.5 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.SceneBlur ) --[[ @ 0]]
			local f11_local1 = function ( f13_arg0 )
				f11_arg0.TiledBacking:beginAnimation( 100 ) --[[ @ 0]]
				f11_arg0.TiledBacking:setTopBottom( 0, 1, -1, -1 ) --[[ @ 0]]
				f11_arg0.TiledBacking:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.TiledBacking:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.TiledBacking:completeAnimation() --[[ @ 0]]
			f11_arg0.TiledBacking:setTopBottom( 0, 1, -1, -1 ) --[[ @ 0]]
			f11_local1( f11_arg0.TiledBacking ) --[[ @ 0]]
			local f11_local2 = function ( f14_arg0 )
				f11_arg0.TiledBackingAdd:beginAnimation( 100 ) --[[ @ 0]]
				f11_arg0.TiledBackingAdd:setAlpha( 0.25 ) --[[ @ 0]]
				f11_arg0.TiledBackingAdd:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.TiledBackingAdd:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.TiledBackingAdd:completeAnimation() --[[ @ 0]]
			f11_arg0.TiledBackingAdd:setTopBottom( 0.37, 1, -1, -1 ) --[[ @ 0]]
			f11_arg0.TiledBackingAdd:setAlpha( 0 ) --[[ @ 0]]
			f11_local2( f11_arg0.TiledBackingAdd ) --[[ @ 0]]
			local f11_local3 = function ( f15_arg0 )
				f11_arg0.SelectorOverlay:beginAnimation( 100 ) --[[ @ 0]]
				f11_arg0.SelectorOverlay:setAlpha( 0.04 ) --[[ @ 0]]
				f11_arg0.SelectorOverlay:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.SelectorOverlay:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
			f11_arg0.SelectorOverlay:setAlpha( 0.01 ) --[[ @ 0]]
			f11_local3( f11_arg0.SelectorOverlay ) --[[ @ 0]]
			local f11_local4 = function ( f16_arg0 )
				f11_arg0.weaponName:beginAnimation( 100 ) --[[ @ 0]]
				f11_arg0.weaponName:setAlpha( 0.5 ) --[[ @ 0]]
				f11_arg0.weaponName:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.weaponName:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.weaponName:completeAnimation() --[[ @ 0]]
			f11_arg0.weaponName:setAlpha( 0.4 ) --[[ @ 0]]
			f11_local4( f11_arg0.weaponName ) --[[ @ 0]]
			local f11_local5 = function ( f17_arg0 )
				f11_arg0.specialIssueName:beginAnimation( 100 ) --[[ @ 0]]
				f11_arg0.specialIssueName:setAlpha( 0.5 ) --[[ @ 0]]
				f11_arg0.specialIssueName:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.specialIssueName:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.specialIssueName:completeAnimation() --[[ @ 0]]
			f11_arg0.specialIssueName:setAlpha( 0.4 ) --[[ @ 0]]
			f11_local5( f11_arg0.specialIssueName ) --[[ @ 0]]
			f11_arg0.trainingImage:completeAnimation() --[[ @ 0]]
			f11_arg0.trainingImage:setAlpha( 1 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.trainingImage ) --[[ @ 0]]
			local f11_local6 = function ( f18_arg0 )
				f11_arg0.trainingImageOverlay:beginAnimation( 100 ) --[[ @ 0]]
				f11_arg0.trainingImageOverlay:setRGB( 1, 1, 1 ) --[[ @ 0]]
				f11_arg0.trainingImageOverlay:setAlpha( 0.01 ) --[[ @ 0]]
				f11_arg0.trainingImageOverlay:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.trainingImageOverlay:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.trainingImageOverlay:completeAnimation() --[[ @ 0]]
			f11_arg0.trainingImageOverlay:setRGB( 0, 0, 0 ) --[[ @ 0]]
			f11_arg0.trainingImageOverlay:setAlpha( 0.25 ) --[[ @ 0]]
			f11_local6( f11_arg0.trainingImageOverlay ) --[[ @ 0]]
			local f11_local7 = function ( f19_arg0 )
				f11_arg0.FrontendFrameSelected:beginAnimation( 100 ) --[[ @ 0]]
				f11_arg0.FrontendFrameSelected:setAlpha( 1 ) --[[ @ 0]]
				f11_arg0.FrontendFrameSelected:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.FrontendFrameSelected:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.FrontendFrameSelected:completeAnimation() --[[ @ 0]]
			f11_arg0.FrontendFrameSelected:setAlpha( 0 ) --[[ @ 0]]
			f11_local7( f11_arg0.FrontendFrameSelected ) --[[ @ 0]]
			local f11_local8 = function ( f20_arg0 )
				f11_arg0.FrontendFrameSelectedGlow:beginAnimation( 100 ) --[[ @ 0]]
				f11_arg0.FrontendFrameSelectedGlow:setAlpha( 0.05 ) --[[ @ 0]]
				f11_arg0.FrontendFrameSelectedGlow:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.FrontendFrameSelectedGlow:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.FrontendFrameSelectedGlow:completeAnimation() --[[ @ 0]]
			f11_arg0.FrontendFrameSelectedGlow:setAlpha( 0 ) --[[ @ 0]]
			f11_local8( f11_arg0.FrontendFrameSelectedGlow ) --[[ @ 0]]
			local f11_local9 = function ( f21_arg0 )
				f11_arg0.mainHeader:beginAnimation( 100 ) --[[ @ 0]]
				f11_arg0.mainHeader:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
				f11_arg0.mainHeader:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.mainHeader:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.mainHeader:completeAnimation() --[[ @ 0]]
			f11_arg0.mainHeader:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
			f11_local9( f11_arg0.mainHeader ) --[[ @ 0]]
			local f11_local10 = function ( f22_arg0 )
				local f22_local0 = function ( f23_arg0 )
					local f23_local0 = function ( f24_arg0 )
						f24_arg0:beginAnimation( 30 ) --[[ @ 0]]
						f24_arg0:setLeftRight( 0, 1, -11, 11 ) --[[ @ 0]]
						f24_arg0:setTopBottom( 0, 1, -11, 11 ) --[[ @ 0]]
						f24_arg0:setAlpha( 1 ) --[[ @ 0]]
						f24_arg0:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f23_arg0:beginAnimation( 89 ) --[[ @ 0]]
					f23_arg0:setLeftRight( 0, 1, -9, 9 ) --[[ @ 0]]
					f23_arg0:setTopBottom( 0, 1, -9, 9 ) --[[ @ 0]]
					f23_arg0:setAlpha( 0.75 ) --[[ @ 0]]
					f23_arg0:registerEventHandler( "transition_complete_keyframe", f23_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f11_arg0.FocusBrackets:beginAnimation( 30 ) --[[ @ 0]]
				f11_arg0.FocusBrackets:setLeftRight( 0, 1, -26.25, 26.25 ) --[[ @ 0]]
				f11_arg0.FocusBrackets:setTopBottom( 0, 1, -26.25, 26.25 ) --[[ @ 0]]
				f11_arg0.FocusBrackets:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.FocusBrackets:registerEventHandler( "transition_complete_keyframe", f22_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.FocusBrackets:completeAnimation() --[[ @ 0]]
			f11_arg0.FocusBrackets:setLeftRight( 0, 1, -32, 32 ) --[[ @ 0]]
			f11_arg0.FocusBrackets:setTopBottom( 0, 1, -32, 32 ) --[[ @ 0]]
			f11_arg0.FocusBrackets:setAlpha( 0 ) --[[ @ 0]]
			f11_local10( f11_arg0.FocusBrackets ) --[[ @ 0]]
		end,
		LoseFocus = function ( f25_arg0, f25_arg1 )
			f25_arg0:__resetProperties() --[[ @ 0]]
			f25_arg0:setupElementClipCounter( 13 ) --[[ @ 0]]
			local f25_local0 = function ( f26_arg0 )
				f25_arg0.FocusGlow:beginAnimation( 100 ) --[[ @ 0]]
				f25_arg0.FocusGlow:setAlpha( 0 ) --[[ @ 0]]
				f25_arg0.FocusGlow:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.FocusGlow:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f25_arg0.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
			f25_local0( f25_arg0.FocusGlow ) --[[ @ 0]]
			f25_arg0.SceneBlur:completeAnimation() --[[ @ 0]]
			f25_arg0.SceneBlur:setLeftRight( -0, -0, 1.5, 394.5 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.SceneBlur ) --[[ @ 0]]
			local f25_local1 = function ( f27_arg0 )
				f25_arg0.TiledBacking:beginAnimation( 100 ) --[[ @ 0]]
				f25_arg0.TiledBacking:setTopBottom( 0, 1, -1, -1 ) --[[ @ 0]]
				f25_arg0.TiledBacking:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.TiledBacking:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.TiledBacking:completeAnimation() --[[ @ 0]]
			f25_arg0.TiledBacking:setTopBottom( 0, 1, -1, -1 ) --[[ @ 0]]
			f25_local1( f25_arg0.TiledBacking ) --[[ @ 0]]
			local f25_local2 = function ( f28_arg0 )
				f25_arg0.TiledBackingAdd:beginAnimation( 100 ) --[[ @ 0]]
				f25_arg0.TiledBackingAdd:setAlpha( 0 ) --[[ @ 0]]
				f25_arg0.TiledBackingAdd:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.TiledBackingAdd:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.TiledBackingAdd:completeAnimation() --[[ @ 0]]
			f25_arg0.TiledBackingAdd:setTopBottom( 0.37, 1, -1, -1 ) --[[ @ 0]]
			f25_arg0.TiledBackingAdd:setAlpha( 0.25 ) --[[ @ 0]]
			f25_local2( f25_arg0.TiledBackingAdd ) --[[ @ 0]]
			local f25_local3 = function ( f29_arg0 )
				f25_arg0.SelectorOverlay:beginAnimation( 100 ) --[[ @ 0]]
				f25_arg0.SelectorOverlay:setAlpha( 0.01 ) --[[ @ 0]]
				f25_arg0.SelectorOverlay:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.SelectorOverlay:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
			f25_arg0.SelectorOverlay:setAlpha( 0.04 ) --[[ @ 0]]
			f25_local3( f25_arg0.SelectorOverlay ) --[[ @ 0]]
			local f25_local4 = function ( f30_arg0 )
				f25_arg0.weaponName:beginAnimation( 100 ) --[[ @ 0]]
				f25_arg0.weaponName:setAlpha( 0.4 ) --[[ @ 0]]
				f25_arg0.weaponName:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.weaponName:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.weaponName:completeAnimation() --[[ @ 0]]
			f25_arg0.weaponName:setAlpha( 0.5 ) --[[ @ 0]]
			f25_local4( f25_arg0.weaponName ) --[[ @ 0]]
			local f25_local5 = function ( f31_arg0 )
				f25_arg0.specialIssueName:beginAnimation( 100 ) --[[ @ 0]]
				f25_arg0.specialIssueName:setAlpha( 0.4 ) --[[ @ 0]]
				f25_arg0.specialIssueName:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.specialIssueName:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.specialIssueName:completeAnimation() --[[ @ 0]]
			f25_arg0.specialIssueName:setAlpha( 0.5 ) --[[ @ 0]]
			f25_local5( f25_arg0.specialIssueName ) --[[ @ 0]]
			f25_arg0.trainingImage:completeAnimation() --[[ @ 0]]
			f25_arg0.trainingImage:setAlpha( 1 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.trainingImage ) --[[ @ 0]]
			local f25_local6 = function ( f32_arg0 )
				f25_arg0.trainingImageOverlay:beginAnimation( 100 ) --[[ @ 0]]
				f25_arg0.trainingImageOverlay:setRGB( 0, 0, 0 ) --[[ @ 0]]
				f25_arg0.trainingImageOverlay:setAlpha( 0.25 ) --[[ @ 0]]
				f25_arg0.trainingImageOverlay:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.trainingImageOverlay:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.trainingImageOverlay:completeAnimation() --[[ @ 0]]
			f25_arg0.trainingImageOverlay:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f25_arg0.trainingImageOverlay:setAlpha( 0.01 ) --[[ @ 0]]
			f25_local6( f25_arg0.trainingImageOverlay ) --[[ @ 0]]
			local f25_local7 = function ( f33_arg0 )
				f25_arg0.FrontendFrameSelected:beginAnimation( 100 ) --[[ @ 0]]
				f25_arg0.FrontendFrameSelected:setAlpha( 0 ) --[[ @ 0]]
				f25_arg0.FrontendFrameSelected:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.FrontendFrameSelected:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.FrontendFrameSelected:completeAnimation() --[[ @ 0]]
			f25_arg0.FrontendFrameSelected:setAlpha( 1 ) --[[ @ 0]]
			f25_local7( f25_arg0.FrontendFrameSelected ) --[[ @ 0]]
			local f25_local8 = function ( f34_arg0 )
				f25_arg0.FrontendFrameSelectedGlow:beginAnimation( 100 ) --[[ @ 0]]
				f25_arg0.FrontendFrameSelectedGlow:setAlpha( 0 ) --[[ @ 0]]
				f25_arg0.FrontendFrameSelectedGlow:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.FrontendFrameSelectedGlow:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.FrontendFrameSelectedGlow:completeAnimation() --[[ @ 0]]
			f25_arg0.FrontendFrameSelectedGlow:setAlpha( 0.05 ) --[[ @ 0]]
			f25_local8( f25_arg0.FrontendFrameSelectedGlow ) --[[ @ 0]]
			local f25_local9 = function ( f35_arg0 )
				f25_arg0.mainHeader:beginAnimation( 100 ) --[[ @ 0]]
				f25_arg0.mainHeader:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
				f25_arg0.mainHeader:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.mainHeader:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.mainHeader:completeAnimation() --[[ @ 0]]
			f25_arg0.mainHeader:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
			f25_local9( f25_arg0.mainHeader ) --[[ @ 0]]
			local f25_local10 = function ( f36_arg0 )
				local f36_local0 = function ( f37_arg0 )
					f37_arg0:beginAnimation( 40 ) --[[ @ 0]]
					f37_arg0:setLeftRight( 0, 1, -32, 32 ) --[[ @ 0]]
					f37_arg0:setTopBottom( 0, 1, -32, 32 ) --[[ @ 0]]
					f37_arg0:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f25_arg0.FocusBrackets:beginAnimation( 60 ) --[[ @ 0]]
				f25_arg0.FocusBrackets:setLeftRight( 0, 1, -23.6, 23.6 ) --[[ @ 0]]
				f25_arg0.FocusBrackets:setTopBottom( 0, 1, -23.6, 23.6 ) --[[ @ 0]]
				f25_arg0.FocusBrackets:setAlpha( 0 ) --[[ @ 0]]
				f25_arg0.FocusBrackets:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.FocusBrackets:registerEventHandler( "transition_complete_keyframe", f36_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.FocusBrackets:completeAnimation() --[[ @ 0]]
			f25_arg0.FocusBrackets:setLeftRight( 0, 1, -11, 11 ) --[[ @ 0]]
			f25_arg0.FocusBrackets:setTopBottom( 0, 1, -11, 11 ) --[[ @ 0]]
			f25_arg0.FocusBrackets:setAlpha( 1 ) --[[ @ 0]]
			f25_local10( f25_arg0.FocusBrackets ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.HubWeaponsButtonInternal.__onClose = function ( f38_arg0 )
	f38_arg0.StoreCommonTextBacking:close() --[[ @ 0]]
	f38_arg0.weaponName:close() --[[ @ 0]]
	f38_arg0.weaponImage:close() --[[ @ 0]]
	f38_arg0.specialIssueName:close() --[[ @ 0]]
	f38_arg0.specialIssueImage:close() --[[ @ 0]]
	f38_arg0.trainingImage:close() --[[ @ 0]]
	f38_arg0.trainingImageOverlay:close() --[[ @ 0]]
	f38_arg0.textBacking:close() --[[ @ 0]]
	f38_arg0.FocusBrackets:close() --[[ @ 0]]
	f38_arg0.Lines:close() --[[ @ 0]]
end
 --[[ @ 0]]
