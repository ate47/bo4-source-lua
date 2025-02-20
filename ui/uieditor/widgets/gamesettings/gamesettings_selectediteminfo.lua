-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
require( "ui/uieditor/widgets/common/commondetailpanel" ) --[[ @ 0]]
require( "ui/uieditor/widgets/customgames/customgames_officialbadge" ) --[[ @ 0]]
require( "ui/uieditor/widgets/gamesettings/gamesettings_description" ) --[[ @ 0]]
require( "ui/uieditor/widgets/gamesettings/gamesettings_gamemodename" ) --[[ @ 0]]
require( "ui/uieditor/widgets/gamesettings/gamesettings_matchsettingsinfo" ) --[[ @ 0]]
require( "ui/uieditor/widgets/startmenu/options/startmenuoptionsmainframe" ) --[[ @ 0]]

CoD.GameSettings_SelectedItemInfo = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.GameSettings_SelectedItemInfo.__defaultWidth = 1920 --[[ @ 0]]
CoD.GameSettings_SelectedItemInfo.__defaultHeight = 1080 --[[ @ 0]]
CoD.GameSettings_SelectedItemInfo.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.GameSettings_SelectedItemInfo ) --[[ @ 0]]
	self.id = "GameSettings_SelectedItemInfo" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local CommonDetailPanel = CoD.CommonDetailPanel.new( f1_arg0, f1_arg1, 0, 0, 1090, 1824, 0, 0, 574, 1023 ) --[[ @ 0]]
	CommonDetailPanel:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( CommonDetailPanel ) --[[ @ 0]]
	self.CommonDetailPanel = CommonDetailPanel --[[ @ 0]]
	
	local ToolTip = CoD.GameSettings_Description.new( f1_arg0, f1_arg1, 0, 0, 1120, 1794, 0, 0, 243.5, 412.5 ) --[[ @ 0]]
	self:addElement( ToolTip ) --[[ @ 0]]
	self.ToolTip = ToolTip --[[ @ 0]]
	
	local GameModeInfo = CoD.GameSettings_MatchSettingsInfo.new( f1_arg0, f1_arg1, 0, 0, 1120, 1794, 0, 0, 878.5, 993.5 ) --[[ @ 0]]
	self:addElement( GameModeInfo ) --[[ @ 0]]
	self.GameModeInfo = GameModeInfo --[[ @ 0]]
	
	local GameModeName = CoD.GameSettings_GameModeName.new( f1_arg0, f1_arg1, 1, 1, -799.5, -125.5, 1, 1, -206, -164 ) --[[ @ 0]]
	self:addElement( GameModeName ) --[[ @ 0]]
	self.GameModeName = GameModeName --[[ @ 0]]
	
	local OfficialBadge = CoD.CustomGames_OfficialBadge.new( f1_arg0, f1_arg1, 0, 0, 1120, 1320, 0, 0, 843, 873 ) --[[ @ 0]]
	self:addElement( OfficialBadge ) --[[ @ 0]]
	self.OfficialBadge = OfficialBadge --[[ @ 0]]
	
	local GuideFrame = CoD.StartMenuOptionsMainFrame.new( f1_arg0, f1_arg1, 0, 0, 1090, 1824, 0.5, 0.5, -327, 483 ) --[[ @ 0]]
	GuideFrame:setAlpha( 0.01 ) --[[ @ 0]]
	self:addElement( GuideFrame ) --[[ @ 0]]
	self.GuideFrame = GuideFrame --[[ @ 0]]
	
	local GuideFrame2 = CoD.StartMenuOptionsMainFrame.new( f1_arg0, f1_arg1, 0, 0, 1149.5, 1764.5, 0.5, 0.5, -267, 423 ) --[[ @ 0]]
	GuideFrame2:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( GuideFrame2 ) --[[ @ 0]]
	self.GuideFrame2 = GuideFrame2 --[[ @ 0]]
	
	local GuideFrame3 = CoD.StartMenuOptionsMainFrame.new( f1_arg0, f1_arg1, 0, 0, 1120.5, 1794.5, 0.5, 0.5, -297, 453 ) --[[ @ 0]]
	GuideFrame3:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( GuideFrame3 ) --[[ @ 0]]
	self.GuideFrame3 = GuideFrame3 --[[ @ 0]]
	
	local SpecialistCornerL = LUI.UIImage.new( 0.5, 0.5, 847, 871, 0, 0, 137, 161 ) --[[ @ 0]]
	SpecialistCornerL:setAlpha( 0.2 ) --[[ @ 0]]
	SpecialistCornerL:setZRot( 90 ) --[[ @ 0]]
	SpecialistCornerL:setScale( 0.5, 0.5 ) --[[ @ 0]]
	SpecialistCornerL:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_window_corner" ) ) --[[ @ 0]]
	SpecialistCornerL:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	SpecialistCornerL:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( SpecialistCornerL ) --[[ @ 0]]
	self.SpecialistCornerL = SpecialistCornerL --[[ @ 0]]
	
	local SpecialistCornerL2 = LUI.UIImage.new( 0.5, 0.5, 847, 871, 0, 0, 1006, 1030 ) --[[ @ 0]]
	SpecialistCornerL2:setAlpha( 0.2 ) --[[ @ 0]]
	SpecialistCornerL2:setScale( 0.5, 0.5 ) --[[ @ 0]]
	SpecialistCornerL2:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_window_corner" ) ) --[[ @ 0]]
	SpecialistCornerL2:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	SpecialistCornerL2:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( SpecialistCornerL2 ) --[[ @ 0]]
	self.SpecialistCornerL2 = SpecialistCornerL2 --[[ @ 0]]
	
	local SpecialistCornerL3 = LUI.UIImage.new( 0.5, 0.5, 123, 147, 0, 0, 1006, 1030 ) --[[ @ 0]]
	SpecialistCornerL3:setAlpha( 0.2 ) --[[ @ 0]]
	SpecialistCornerL3:setYRot( 180 ) --[[ @ 0]]
	SpecialistCornerL3:setScale( 0.5, 0.5 ) --[[ @ 0]]
	SpecialistCornerL3:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_window_corner" ) ) --[[ @ 0]]
	SpecialistCornerL3:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	SpecialistCornerL3:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( SpecialistCornerL3 ) --[[ @ 0]]
	self.SpecialistCornerL3 = SpecialistCornerL3 --[[ @ 0]]
	
	local SpecialistCornerR = LUI.UIImage.new( 0.5, 0.5, 123, 147, 0, 0, 207, 231 ) --[[ @ 0]]
	SpecialistCornerR:setAlpha( 0.2 ) --[[ @ 0]]
	SpecialistCornerR:setZRot( 180 ) --[[ @ 0]]
	SpecialistCornerR:setScale( 0.5, 0.5 ) --[[ @ 0]]
	SpecialistCornerR:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_window_corner" ) ) --[[ @ 0]]
	SpecialistCornerR:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	SpecialistCornerR:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( SpecialistCornerR ) --[[ @ 0]]
	self.SpecialistCornerR = SpecialistCornerR --[[ @ 0]]
	
	local GuideBox = LUI.UIImage.new( 0, 0, 1090, 1150, 0, 0, 213, 273 ) --[[ @ 0]]
	GuideBox:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( GuideBox ) --[[ @ 0]]
	self.GuideBox = GuideBox --[[ @ 0]]
	
	local GuideBox4 = LUI.UIImage.new( 0, 0, 1090, 1150, 0, 0, 963, 1023 ) --[[ @ 0]]
	GuideBox4:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( GuideBox4 ) --[[ @ 0]]
	self.GuideBox4 = GuideBox4 --[[ @ 0]]
	
	local GuideBox3 = LUI.UIImage.new( 0, 0, 1090, 1120, 0, 0, 993, 1023 ) --[[ @ 0]]
	GuideBox3:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( GuideBox3 ) --[[ @ 0]]
	self.GuideBox3 = GuideBox3 --[[ @ 0]]
	
	local GuideBox2 = LUI.UIImage.new( 0, 0, 1090, 1120, 0, 0, 213, 243 ) --[[ @ 0]]
	GuideBox2:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( GuideBox2 ) --[[ @ 0]]
	self.GuideBox2 = GuideBox2 --[[ @ 0]]
	
	local gamesettingImageSmall = LUI.UIFixedAspectRatioImage.new( 0.77, 0.77, -187, 187, 0.5, 0.5, -54, 70 ) --[[ @ 0]]
	gamesettingImageSmall:subscribeToGlobalModel( f1_arg1, "GametypeSettings", "image", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			gamesettingImageSmall:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( gamesettingImageSmall ) --[[ @ 0]]
	self.gamesettingImageSmall = gamesettingImageSmall --[[ @ 0]]
	
	local gamesettingImageLarge = LUI.UIFixedAspectRatioImage.new( 0.77, 0.77, -374, 374, 0.5, 0.5, -116, 132 ) --[[ @ 0]]
	gamesettingImageLarge:subscribeToGlobalModel( f1_arg1, "GametypeSettings", "image", function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			gamesettingImageLarge:setImage( RegisterImage( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( gamesettingImageLarge ) --[[ @ 0]]
	self.gamesettingImageLarge = gamesettingImageLarge --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "ShowLargePreview",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalModelValueTrue( "GametypeSettings.showLargePreview" )
			end
		},
		{
			stateName = "ShowSmallPreview",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalModelValueTrue( "GametypeSettings.showSmallPreview" )
			end
		}
	} ) --[[ @ 0]]
	local f1_local19 = self --[[ @ 0]]
	local f1_local20 = self.subscribeToModel --[[ @ 0]]
	local f1_local21 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	f1_local20( f1_local19, f1_local21["GametypeSettings.showLargePreview"], function ( f6_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f6_arg0:get(),
			modelName = "GametypeSettings.showLargePreview"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local19 = self --[[ @ 0]]
	f1_local20 = self.subscribeToModel --[[ @ 0]]
	f1_local21 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	f1_local20( f1_local19, f1_local21["GametypeSettings.showSmallPreview"], function ( f7_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f7_arg0:get(),
			modelName = "GametypeSettings.showSmallPreview"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.GameSettings_SelectedItemInfo.__resetProperties = function ( f8_arg0 )
	f8_arg0.gamesettingImageLarge:completeAnimation() --[[ @ 0]]
	f8_arg0.gamesettingImageSmall:completeAnimation() --[[ @ 0]]
	f8_arg0.gamesettingImageLarge:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.gamesettingImageSmall:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.GameSettings_SelectedItemInfo.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f9_arg0.gamesettingImageSmall:completeAnimation() --[[ @ 0]]
			f9_arg0.gamesettingImageSmall:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.gamesettingImageSmall ) --[[ @ 0]]
			f9_arg0.gamesettingImageLarge:completeAnimation() --[[ @ 0]]
			f9_arg0.gamesettingImageLarge:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.gamesettingImageLarge ) --[[ @ 0]]
		end
	},
	ShowLargePreview = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f10_arg0.gamesettingImageSmall:completeAnimation() --[[ @ 0]]
			f10_arg0.gamesettingImageSmall:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.gamesettingImageSmall ) --[[ @ 0]]
			f10_arg0.gamesettingImageLarge:completeAnimation() --[[ @ 0]]
			f10_arg0.gamesettingImageLarge:setAlpha( 1 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.gamesettingImageLarge ) --[[ @ 0]]
		end
	},
	ShowSmallPreview = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f11_arg0.gamesettingImageSmall:completeAnimation() --[[ @ 0]]
			f11_arg0.gamesettingImageSmall:setAlpha( 1 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.gamesettingImageSmall ) --[[ @ 0]]
			f11_arg0.gamesettingImageLarge:completeAnimation() --[[ @ 0]]
			f11_arg0.gamesettingImageLarge:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.gamesettingImageLarge ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.GameSettings_SelectedItemInfo.__onClose = function ( f12_arg0 )
	f12_arg0.CommonDetailPanel:close() --[[ @ 0]]
	f12_arg0.ToolTip:close() --[[ @ 0]]
	f12_arg0.GameModeInfo:close() --[[ @ 0]]
	f12_arg0.GameModeName:close() --[[ @ 0]]
	f12_arg0.OfficialBadge:close() --[[ @ 0]]
	f12_arg0.GuideFrame:close() --[[ @ 0]]
	f12_arg0.GuideFrame2:close() --[[ @ 0]]
	f12_arg0.GuideFrame3:close() --[[ @ 0]]
	f12_arg0.gamesettingImageSmall:close() --[[ @ 0]]
	f12_arg0.gamesettingImageLarge:close() --[[ @ 0]]
end
 --[[ @ 0]]
