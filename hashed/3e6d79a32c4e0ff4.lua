-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "ui/uieditor/widgets/systemoverlays/featureoverlay_button" ) --[[ @ 0]]

CoD.systemOverlay_Full_BasicFrame_Prestige = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.systemOverlay_Full_BasicFrame_Prestige.__defaultWidth = 1920 --[[ @ 0]]
CoD.systemOverlay_Full_BasicFrame_Prestige.__defaultHeight = 480 --[[ @ 0]]
CoD.systemOverlay_Full_BasicFrame_Prestige.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.systemOverlay_Full_BasicFrame_Prestige ) --[[ @ 0]]
	self.id = "systemOverlay_Full_BasicFrame_Prestige" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local NoiseTiledBacking = LUI.UIImage.new( 0, 0, 41, 494, 0, 0, 29, 429 ) --[[ @ 0]]
	NoiseTiledBacking:setAlpha( 0.5 ) --[[ @ 0]]
	NoiseTiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	NoiseTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBacking ) --[[ @ 0]]
	self.NoiseTiledBacking = NoiseTiledBacking --[[ @ 0]]
	
	local GridTiled = LUI.UIImage.new( 0, 0, 43, 492, 0, 0, 30, 287 ) --[[ @ 0]]
	GridTiled:setAlpha( 0.05 ) --[[ @ 0]]
	GridTiled:setScale( 1.01, 1.01 ) --[[ @ 0]]
	GridTiled:setImage( RegisterImage( @"uie_ui_menu_store_bg_grid" ) ) --[[ @ 0]]
	GridTiled:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	GridTiled:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	GridTiled:setupNineSliceShader( 64, 64 ) --[[ @ 0]]
	self:addElement( GridTiled ) --[[ @ 0]]
	self.GridTiled = GridTiled --[[ @ 0]]
	
	local PixelGridTiledBacking = LUI.UIImage.new( 0, 0, 41, 494, 0, 0, 287, 319 ) --[[ @ 0]]
	PixelGridTiledBacking:setAlpha( 0.15 ) --[[ @ 0]]
	PixelGridTiledBacking:setImage( RegisterImage( @"uie_ui_hud_notifications_pixelpattern" ) ) --[[ @ 0]]
	PixelGridTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	PixelGridTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	PixelGridTiledBacking:setupNineSliceShader( 128, 128 ) --[[ @ 0]]
	self:addElement( PixelGridTiledBacking ) --[[ @ 0]]
	self.PixelGridTiledBacking = PixelGridTiledBacking --[[ @ 0]]
	
	local PixelGridTiledBacking2 = LUI.UIImage.new( 0, 0, 584, 1880, 0, 0, 28, 74 ) --[[ @ 0]]
	PixelGridTiledBacking2:setAlpha( 0.15 ) --[[ @ 0]]
	PixelGridTiledBacking2:setImage( RegisterImage( @"uie_ui_hud_notifications_pixelpattern" ) ) --[[ @ 0]]
	PixelGridTiledBacking2:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	PixelGridTiledBacking2:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	PixelGridTiledBacking2:setupNineSliceShader( 128, 128 ) --[[ @ 0]]
	self:addElement( PixelGridTiledBacking2 ) --[[ @ 0]]
	self.PixelGridTiledBacking2 = PixelGridTiledBacking2 --[[ @ 0]]
	
	local Divider = LUI.UIImage.new( 0, 0, 584, 589, 0, 0, 28, 74 ) --[[ @ 0]]
	Divider:setRGB( ColorSet.PlayerYellow.r, ColorSet.PlayerYellow.g, ColorSet.PlayerYellow.b ) --[[ @ 0]]
	self:addElement( Divider ) --[[ @ 0]]
	self.Divider = Divider --[[ @ 0]]
	
	local Title = LUI.UIText.new( 0, 0, 602, 1352, 0, 0, 30.5, 75.5 ) --[[ @ 0]]
	Title:setRGB( ColorSet.T8__BEIGE__HEADER.r, ColorSet.T8__BEIGE__HEADER.g, ColorSet.T8__BEIGE__HEADER.b ) --[[ @ 0]]
	Title:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	Title:setLetterSpacing( 6 ) --[[ @ 0]]
	Title:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Title:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	Title:linkToElementModel( self, "title", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			Title:setText( Engine[@"hash_4F9F1239CFD921FE"]( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Title ) --[[ @ 0]]
	self.Title = Title --[[ @ 0]]
	
	local Description = LUI.UIText.new( 0, 0, 603, 1665, 0, 0, 84, 102 ) --[[ @ 0]]
	Description:setTTF( "dinnext_regular" ) --[[ @ 0]]
	Description:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Description:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	Description:linkToElementModel( self, "description", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			Description:setText( f3_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Description ) --[[ @ 0]]
	self.Description = Description --[[ @ 0]]
	
	local OptionList = LUI.UIList.new( f1_arg0, f1_arg1, 10, 0, nil, true, false, false, false ) --[[ @ 0]]
	OptionList:setLeftRight( 0.5, 0.5, -361, 169 ) --[[ @ 0]]
	OptionList:setTopBottom( 0, 0, 264, 394 ) --[[ @ 0]]
	OptionList:setAutoScaleContent( true ) --[[ @ 0]]
	OptionList:setWidgetType( CoD.featureOverlay_Button ) --[[ @ 0]]
	OptionList:setVerticalCount( 2 ) --[[ @ 0]]
	OptionList:setSpacing( 10 ) --[[ @ 0]]
	OptionList:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	OptionList:linkToElementModel( self, "listDatasource", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			OptionList:setDataSource( f4_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	OptionList:registerEventHandler( "gain_focus", function ( element, event )
		local f5_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f5_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f5_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f5_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( OptionList, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		ProcessListAction( self, element, controller, menu ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	self:addElement( OptionList ) --[[ @ 0]]
	self.OptionList = OptionList --[[ @ 0]]
	
	local WeaponImage = LUI.UIFixedAspectRatioImage.new( 0, 0, 139, 395, 0, 0, 112, 246 ) --[[ @ 0]]
	WeaponImage:linkToElementModel( self, "weaponImage", true, function ( model )
		local f8_local0 = model:get() --[[ @ 0]]
		if f8_local0 ~= nil then
			WeaponImage:setImage( RegisterImage( f8_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( WeaponImage ) --[[ @ 0]]
	self.WeaponImage = WeaponImage --[[ @ 0]]
	
	local WeaponName = LUI.UIText.new( 0, 0, 83.5, 450.5, 0, 0, 44.5, 80.5 ) --[[ @ 0]]
	WeaponName:setRGB( ColorSet.T8__BEIGE__HEADER.r, ColorSet.T8__BEIGE__HEADER.g, ColorSet.T8__BEIGE__HEADER.b ) --[[ @ 0]]
	WeaponName:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	WeaponName:setLetterSpacing( 6 ) --[[ @ 0]]
	WeaponName:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	WeaponName:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	WeaponName:linkToElementModel( self, "weaponName", true, function ( model )
		local f9_local0 = model:get() --[[ @ 0]]
		if f9_local0 ~= nil then
			WeaponName:setText( ToUpper( f9_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( WeaponName ) --[[ @ 0]]
	self.WeaponName = WeaponName --[[ @ 0]]
	
	local RewardTitle = LUI.UIText.new( 0, 0, 48, 248, 0, 0, 290, 317 ) --[[ @ 0]]
	RewardTitle:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	RewardTitle:setText( ToUpper( LocalizeString( @"menu/callingtask_reward" ) ) ) --[[ @ 0]]
	RewardTitle:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	RewardTitle:setLetterSpacing( 4 ) --[[ @ 0]]
	RewardTitle:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	RewardTitle:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( RewardTitle ) --[[ @ 0]]
	self.RewardTitle = RewardTitle --[[ @ 0]]
	
	local WeaponPrestigeRewardIcon = LUI.UIFixedAspectRatioImage.new( 0, 0, 107, 173, 0, 0, 342, 408 ) --[[ @ 0]]
	WeaponPrestigeRewardIcon:linkToElementModel( self, "weaponPrestigeRewardIcon", true, function ( model )
		local f10_local0 = model:get() --[[ @ 0]]
		if f10_local0 ~= nil then
			WeaponPrestigeRewardIcon:setImage( RegisterImage( f10_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( WeaponPrestigeRewardIcon ) --[[ @ 0]]
	self.WeaponPrestigeRewardIcon = WeaponPrestigeRewardIcon --[[ @ 0]]
	
	local WeaponPrestigeReward = LUI.UIText.new( 0, 0, 180.5, 426.5, 0, 0, 348, 373 ) --[[ @ 0]]
	WeaponPrestigeReward:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	WeaponPrestigeReward:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	WeaponPrestigeReward:setLetterSpacing( 2 ) --[[ @ 0]]
	WeaponPrestigeReward:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	WeaponPrestigeReward:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	WeaponPrestigeReward:linkToElementModel( self, "weaponPrestigeReward", true, function ( model )
		local f11_local0 = model:get() --[[ @ 0]]
		if f11_local0 ~= nil then
			WeaponPrestigeReward:setText( ToUpper( LocalizeString( f11_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( WeaponPrestigeReward ) --[[ @ 0]]
	self.WeaponPrestigeReward = WeaponPrestigeReward --[[ @ 0]]
	
	local WeaponPrestigeRewardPreview = LUI.UIText.new( 0, 0, 180.5, 426.5, 0, 0, 378, 401 ) --[[ @ 0]]
	WeaponPrestigeRewardPreview:setRGB( ColorSet.PlayerYellow.r, ColorSet.PlayerYellow.g, ColorSet.PlayerYellow.b ) --[[ @ 0]]
	WeaponPrestigeRewardPreview:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	WeaponPrestigeRewardPreview:setLetterSpacing( 4 ) --[[ @ 0]]
	WeaponPrestigeRewardPreview:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	WeaponPrestigeRewardPreview:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	WeaponPrestigeRewardPreview:linkToElementModel( self, "weaponPrestigeRewardPreview", true, function ( model )
		local f12_local0 = model:get() --[[ @ 0]]
		if f12_local0 ~= nil then
			WeaponPrestigeRewardPreview:setText( StringAsClanTag( f12_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( WeaponPrestigeRewardPreview ) --[[ @ 0]]
	self.WeaponPrestigeRewardPreview = WeaponPrestigeRewardPreview --[[ @ 0]]
	
	local Line = LUI.UIImage.new( 0, 0, 41, 494, 0, 0, 319, 320 ) --[[ @ 0]]
	Line:setAlpha( 0.2 ) --[[ @ 0]]
	self:addElement( Line ) --[[ @ 0]]
	self.Line = Line --[[ @ 0]]
	
	local PrestigeStar1 = LUI.UIImage.new( 0, 0, 553.5, 578.5, 0, 0, 38.5, 63.5 ) --[[ @ 0]]
	PrestigeStar1:setRGB( ColorSet.PlayerYellow.r, ColorSet.PlayerYellow.g, ColorSet.PlayerYellow.b ) --[[ @ 0]]
	PrestigeStar1:setImage( RegisterImage( @"menu_mp_weapon_lvl_star" ) ) --[[ @ 0]]
	self:addElement( PrestigeStar1 ) --[[ @ 0]]
	self.PrestigeStar1 = PrestigeStar1 --[[ @ 0]]
	
	local PrestigeStar2 = LUI.UIImage.new( 0, 0, 523.5, 548.5, 0, 0, 38.5, 63.5 ) --[[ @ 0]]
	PrestigeStar2:setRGB( ColorSet.PlayerYellow.r, ColorSet.PlayerYellow.g, ColorSet.PlayerYellow.b ) --[[ @ 0]]
	PrestigeStar2:setImage( RegisterImage( @"menu_mp_weapon_lvl_star" ) ) --[[ @ 0]]
	self:addElement( PrestigeStar2 ) --[[ @ 0]]
	self.PrestigeStar2 = PrestigeStar2 --[[ @ 0]]
	
	local optionTextBracketR = LUI.UIImage.new( 0.5, 0.5, -463, -451, 0.5, 0.5, -17, -5 ) --[[ @ 0]]
	optionTextBracketR:setAlpha( 0.5 ) --[[ @ 0]]
	optionTextBracketR:setImage( RegisterImage( @"hash_634B555F15CDD010" ) ) --[[ @ 0]]
	optionTextBracketR:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	optionTextBracketR:setShaderVector( 0, 3, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( optionTextBracketR ) --[[ @ 0]]
	self.optionTextBracketR = optionTextBracketR --[[ @ 0]]
	
	local optionTextBracketL = LUI.UIImage.new( 0.5, 0.5, -935, -923, 0.5, 0.5, -17, -5 ) --[[ @ 0]]
	optionTextBracketL:setAlpha( 0.5 ) --[[ @ 0]]
	optionTextBracketL:setZRot( 180 ) --[[ @ 0]]
	optionTextBracketL:setImage( RegisterImage( @"hash_634B555F15CDD010" ) ) --[[ @ 0]]
	optionTextBracketL:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	optionTextBracketL:setShaderVector( 0, 3, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( optionTextBracketL ) --[[ @ 0]]
	self.optionTextBracketL = optionTextBracketL --[[ @ 0]]
	
	local cornerBracket = LUI.UIImage.new( 0, 0, 35, 47, 0, 0, 23, 35 ) --[[ @ 0]]
	cornerBracket:setAlpha( 0.5 ) --[[ @ 0]]
	cornerBracket:setZRot( 180 ) --[[ @ 0]]
	cornerBracket:setImage( RegisterImage( @"hash_7535662F512D5F90" ) ) --[[ @ 0]]
	cornerBracket:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( cornerBracket ) --[[ @ 0]]
	self.cornerBracket = cornerBracket --[[ @ 0]]
	
	local cornerBracket4 = LUI.UIImage.new( 0, 0, 35, 47, 0, 0, 423, 435 ) --[[ @ 0]]
	cornerBracket4:setAlpha( 0.5 ) --[[ @ 0]]
	cornerBracket4:setZRot( 270 ) --[[ @ 0]]
	cornerBracket4:setImage( RegisterImage( @"hash_7535662F512D5F90" ) ) --[[ @ 0]]
	cornerBracket4:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( cornerBracket4 ) --[[ @ 0]]
	self.cornerBracket4 = cornerBracket4 --[[ @ 0]]
	
	local cornerBracket2 = LUI.UIImage.new( 0, 0, 488, 500, 0, 0, 23, 35 ) --[[ @ 0]]
	cornerBracket2:setAlpha( 0.5 ) --[[ @ 0]]
	cornerBracket2:setZRot( 90 ) --[[ @ 0]]
	cornerBracket2:setImage( RegisterImage( @"hash_7535662F512D5F90" ) ) --[[ @ 0]]
	cornerBracket2:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( cornerBracket2 ) --[[ @ 0]]
	self.cornerBracket2 = cornerBracket2 --[[ @ 0]]
	
	local cornerBracket3 = LUI.UIImage.new( 0, 0, 488, 500, 0, 0, 423, 435 ) --[[ @ 0]]
	cornerBracket3:setAlpha( 0.5 ) --[[ @ 0]]
	cornerBracket3:setImage( RegisterImage( @"hash_7535662F512D5F90" ) ) --[[ @ 0]]
	cornerBracket3:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( cornerBracket3 ) --[[ @ 0]]
	self.cornerBracket3 = cornerBracket3 --[[ @ 0]]
	
	local BottomBracket9Slice = LUI.UIImage.new( 0, 0, 1853, 1908, 0, 0, 46.5, 55.5 ) --[[ @ 0]]
	BottomBracket9Slice:setAlpha( 0.2 ) --[[ @ 0]]
	BottomBracket9Slice:setZRot( 90 ) --[[ @ 0]]
	BottomBracket9Slice:setImage( RegisterImage( @"hash_4C325BED3F226657" ) ) --[[ @ 0]]
	BottomBracket9Slice:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	BottomBracket9Slice:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	BottomBracket9Slice:setupNineSliceShader( 16, 4 ) --[[ @ 0]]
	self:addElement( BottomBracket9Slice ) --[[ @ 0]]
	self.BottomBracket9Slice = BottomBracket9Slice --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "SecondPrestigeState",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "weaponPrestigeLevel", 2 )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "weaponPrestigeLevel", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "weaponPrestigeLevel"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	OptionList.id = "OptionList" --[[ @ 0]]
	self.__defaultFocus = OptionList --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local25 = self --[[ @ 0]]
	HideWidget( PrestigeStar2 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.systemOverlay_Full_BasicFrame_Prestige.__resetProperties = function ( f15_arg0 )
	f15_arg0.PrestigeStar2:completeAnimation() --[[ @ 0]]
	f15_arg0.PrestigeStar2:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.systemOverlay_Full_BasicFrame_Prestige.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f16_arg0.PrestigeStar2:completeAnimation() --[[ @ 0]]
			f16_arg0.PrestigeStar2:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.PrestigeStar2 ) --[[ @ 0]]
		end
	},
	SecondPrestigeState = {
		DefaultClip = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f17_arg0.PrestigeStar2:completeAnimation() --[[ @ 0]]
			f17_arg0.PrestigeStar2:setAlpha( 1 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.PrestigeStar2 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.systemOverlay_Full_BasicFrame_Prestige.__onClose = function ( f18_arg0 )
	f18_arg0.Title:close() --[[ @ 0]]
	f18_arg0.Description:close() --[[ @ 0]]
	f18_arg0.OptionList:close() --[[ @ 0]]
	f18_arg0.WeaponImage:close() --[[ @ 0]]
	f18_arg0.WeaponName:close() --[[ @ 0]]
	f18_arg0.WeaponPrestigeRewardIcon:close() --[[ @ 0]]
	f18_arg0.WeaponPrestigeReward:close() --[[ @ 0]]
	f18_arg0.WeaponPrestigeRewardPreview:close() --[[ @ 0]]
	f18_arg0.PrestigeStar2:close() --[[ @ 0]]
end
 --[[ @ 0]]
