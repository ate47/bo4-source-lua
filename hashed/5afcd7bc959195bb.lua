-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/callingcards/callingcards_basicimage" ) --[[ @ 0]]
require( "ui/uieditor/widgets/endgameflow/top3playerscoreblurbox" ) --[[ @ 0]]
require( "ui/uieditor/widgets/lobby/common/fe_buttonpanel" ) --[[ @ 0]]
require( "ui/uieditor/widgets/lobby/common/fe_buttonpanelshadercontainer" ) --[[ @ 0]]
require( "ui/uieditor/widgets/lobby/common/fe_panelnoblur" ) --[[ @ 0]]
require( "x64:18d3de31d16f3fdf" ) --[[ @ 0]]

CoD.PlayerCard_KilledBy = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PlayerCard_KilledBy.__defaultWidth = 462 --[[ @ 0]]
CoD.PlayerCard_KilledBy.__defaultHeight = 90 --[[ @ 0]]
CoD.PlayerCard_KilledBy.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PlayerCard_KilledBy ) --[[ @ 0]]
	self.id = "PlayerCard_KilledBy" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local HeroShot = LUI.UIFixedAspectRatioImage.new( 0, 0, 438, 562, 0.5, 0.5, -86, 86 ) --[[ @ 0]]
	HeroShot.__Image = function ( f2_arg0 )
		local f2_local0 = f2_arg0:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			HeroShot:setImage( RegisterImage( GetPositionDraftIconByIndex( f2_local0 ) ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	HeroShot:subscribeToGlobalModel( f1_arg1, "PerController", "predictedClientModel", function ( model, f3_arg1 )
		if f3_arg1["__HeroShot.__Image_predictedClientModel->characterIndex"] then
			f3_arg1:removeSubscription( f3_arg1["__HeroShot.__Image_predictedClientModel->characterIndex"] ) --[[ @ 0]]
			f3_arg1["__HeroShot.__Image_predictedClientModel->characterIndex"] = nil --[[ @ 0]]
		end
		if model then
			local f3_local0 = model:get() --[[ @ 0]]
			local f3_local1 = model:get() --[[ @ 0]]
			model = f3_local0 and f3_local1.characterIndex --[[ @ 0]]
		end
		if model then
			f3_arg1["__HeroShot.__Image_predictedClientModel->characterIndex"] = f3_arg1:subscribeToModel( model, HeroShot.__Image ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( HeroShot ) --[[ @ 0]]
	self.HeroShot = HeroShot --[[ @ 0]]
	
	local CallingCardImage = CoD.CallingCards_BasicImage.new( f1_arg0, f1_arg1, 0, 0, 138, 456, 0, 0, 3, 85 ) --[[ @ 0]]
	self:addElement( CallingCardImage ) --[[ @ 0]]
	self.CallingCardImage = CallingCardImage --[[ @ 0]]
	
	local LeftPanel = CoD.FE_ButtonPanelShaderContainer.new( f1_arg0, f1_arg1, 0, 0, 0, 136, 0, 0, 3, 85 ) --[[ @ 0]]
	LeftPanel:setRGB( 0.5, 0.5, 0.5 ) --[[ @ 0]]
	self:addElement( LeftPanel ) --[[ @ 0]]
	self.LeftPanel = LeftPanel --[[ @ 0]]
	
	local Top3PlayerScoreBlurBox0 = CoD.Top3PlayerScoreBlurBox.new( f1_arg0, f1_arg1, 0, 0, 0, 136, 0, 0, 3, 85 ) --[[ @ 0]]
	Top3PlayerScoreBlurBox0:setRFTMaterial( LUI.UIImage.GetCachedMaterial( @"uie_scene_blur_pass_2_highquality" ) ) --[[ @ 0]]
	Top3PlayerScoreBlurBox0:setShaderVector( 0, 10, 10, 0, 0 ) --[[ @ 0]]
	self:addElement( Top3PlayerScoreBlurBox0 ) --[[ @ 0]]
	self.Top3PlayerScoreBlurBox0 = Top3PlayerScoreBlurBox0 --[[ @ 0]]
	
	local VSpanel = CoD.FE_ButtonPanel.new( f1_arg0, f1_arg1, 0, 0, 0, 136, 0, 0, 3, 85 ) --[[ @ 0]]
	VSpanel:setRGB( 0, 0, 0 ) --[[ @ 0]]
	VSpanel:setAlpha( 0.5 ) --[[ @ 0]]
	self:addElement( VSpanel ) --[[ @ 0]]
	self.VSpanel = VSpanel --[[ @ 0]]
	
	local Panel = CoD.FE_PanelNoBlur.new( f1_arg0, f1_arg1, 0, 0, 139, 205, 0, 0, 41, 71 ) --[[ @ 0]]
	Panel:setRGB( 0, 0, 0 ) --[[ @ 0]]
	Panel:setAlpha( 0.6 ) --[[ @ 0]]
	self:addElement( Panel ) --[[ @ 0]]
	self.Panel = Panel --[[ @ 0]]
	
	local ClanTag = CoD.PlayerCard_Label.new( f1_arg0, f1_arg1, 0, 0, 138, 209, 0, 0, 39, 67 ) --[[ @ 0]]
	ClanTag.Panel:setAlpha( 0.6 ) --[[ @ 0]]
	ClanTag:subscribeToGlobalModel( f1_arg1, "HUDItems", "killedByEntNum", function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			ClanTag:setAlpha( HideIfEmptyString( f4_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	ClanTag:subscribeToGlobalModel( f1_arg1, "HUDItems", "killedByEntNum", function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			ClanTag.itemName:setText( GetClientClantag( f1_arg1, f5_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( ClanTag, "setText", function ( element, controller )
		ScaleWidgetToLabel( self, element, 1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ClanTag ) --[[ @ 0]]
	self.ClanTag = ClanTag --[[ @ 0]]
	
	local HeroBacking = LUI.UIImage.new( 0, 0, -3, 93, 0, 0, -12, 96 ) --[[ @ 0]]
	HeroBacking:setAlpha( 0 ) --[[ @ 0]]
	HeroBacking:setImage( RegisterImage( @"uie_img_t7_hud_widget_playercard_playerbacking" ) ) --[[ @ 0]]
	HeroBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_feather_blend" ) ) --[[ @ 0]]
	self:addElement( HeroBacking ) --[[ @ 0]]
	self.HeroBacking = HeroBacking --[[ @ 0]]
	
	local PlayerEmblem = LUI.UIImage.new( 0, 0, 0, 136, 0, 0, 3, 85 ) --[[ @ 0]]
	self:addElement( PlayerEmblem ) --[[ @ 0]]
	self.PlayerEmblem = PlayerEmblem --[[ @ 0]]
	
	local TopLeftPip = LUI.UIImage.new( 0, 0, -29, -5, 0, 0, -4, 8 ) --[[ @ 0]]
	TopLeftPip:setImage( RegisterImage( @"uie_t7_menu_cac_pixelblurred" ) ) --[[ @ 0]]
	TopLeftPip:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( TopLeftPip ) --[[ @ 0]]
	self.TopLeftPip = TopLeftPip --[[ @ 0]]
	
	local BotLeftPip = LUI.UIImage.new( 0, 0, -29, -5, 0, 0, 80, 92 ) --[[ @ 0]]
	BotLeftPip:setImage( RegisterImage( @"uie_t7_menu_cac_pixelblurred" ) ) --[[ @ 0]]
	BotLeftPip:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( BotLeftPip ) --[[ @ 0]]
	self.BotLeftPip = BotLeftPip --[[ @ 0]]
	
	local TopRightPip = LUI.UIImage.new( 0, 0, 459, 483, 0, 0, -3, 9 ) --[[ @ 0]]
	TopRightPip:setZRot( 180 ) --[[ @ 0]]
	TopRightPip:setImage( RegisterImage( @"uie_t7_menu_cac_pixelblurred" ) ) --[[ @ 0]]
	TopRightPip:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( TopRightPip ) --[[ @ 0]]
	self.TopRightPip = TopRightPip --[[ @ 0]]
	
	local BotRightPip = LUI.UIImage.new( 0, 0, 459, 483, 0, 0, 80, 92 ) --[[ @ 0]]
	BotRightPip:setZRot( 180 ) --[[ @ 0]]
	BotRightPip:setImage( RegisterImage( @"uie_t7_menu_cac_pixelblurred" ) ) --[[ @ 0]]
	BotRightPip:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( BotRightPip ) --[[ @ 0]]
	self.BotRightPip = BotRightPip --[[ @ 0]]
	
	local NameText = LUI.UIText.new( 0, 0, 139, 339, 0, 0, 5, 35 ) --[[ @ 0]]
	NameText:setTTF( "notosans_bold" ) --[[ @ 0]]
	NameText:setLetterSpacing( 1 ) --[[ @ 0]]
	NameText:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	NameText:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	NameText:subscribeToGlobalModel( f1_arg1, "HUDItems", "killedByEntNum", function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			NameText:setText( CoD.SocialUtility.CleanGamerTag( GetClientName( f1_arg1, f7_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( NameText ) --[[ @ 0]]
	self.NameText = NameText --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "HideHeroShot",
			condition = function ( menu, element, event )
				return not CoD.SpawnSelectionUtility.IsSpawnSelectActive( f1_arg1 )
			end
		},
		{
			stateName = "Emblem",
			condition = function ( menu, element, event )
				return not IsLobbyNetworkModeLAN()
			end
		},
		{
			stateName = "Calingcard",
			condition = function ( menu, element, event )
				return IsLobbyNetworkModeLAN()
			end
		}
	} ) --[[ @ 0]]
	local f1_local15 = self --[[ @ 0]]
	local f1_local16 = self.subscribeToModel --[[ @ 0]]
	local f1_local17 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local16( f1_local15, f1_local17["hudItems.showSpawnSelect"], function ( f11_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f11_arg0:get(),
			modelName = "hudItems.showSpawnSelect"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local15 = self --[[ @ 0]]
	f1_local16 = self.subscribeToModel --[[ @ 0]]
	f1_local17 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local16( f1_local15, f1_local17["lobbyRoot.lobbyNav"], function ( f12_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f12_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:subscribeToGlobalModel( f1_arg1, "PerController", "hudItems.killedByEntNum", function ( model )
		local f13_local0 = self --[[ @ 0]]
		CoD.DeathCamUtility.SetKilledByPlayerVisuals( self, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.PlayerCard_KilledBy.__resetProperties = function ( f14_arg0 )
	f14_arg0.HeroShot:completeAnimation() --[[ @ 0]]
	f14_arg0.LeftPanel:completeAnimation() --[[ @ 0]]
	f14_arg0.BotRightPip:completeAnimation() --[[ @ 0]]
	f14_arg0.TopRightPip:completeAnimation() --[[ @ 0]]
	f14_arg0.ClanTag:completeAnimation() --[[ @ 0]]
	f14_arg0.PlayerEmblem:completeAnimation() --[[ @ 0]]
	f14_arg0.HeroBacking:completeAnimation() --[[ @ 0]]
	f14_arg0.BotLeftPip:completeAnimation() --[[ @ 0]]
	f14_arg0.TopLeftPip:completeAnimation() --[[ @ 0]]
	f14_arg0.HeroShot:setAlpha( 1 ) --[[ @ 0]]
	f14_arg0.LeftPanel:setLeftRight( 0, 0, 0, 136 ) --[[ @ 0]]
	f14_arg0.LeftPanel:setTopBottom( 0, 0, 3, 85 ) --[[ @ 0]]
	f14_arg0.LeftPanel:setAlpha( 1 ) --[[ @ 0]]
	f14_arg0.BotRightPip:setLeftRight( 0, 0, 459, 483 ) --[[ @ 0]]
	f14_arg0.BotRightPip:setTopBottom( 0, 0, 80, 92 ) --[[ @ 0]]
	f14_arg0.TopRightPip:setLeftRight( 0, 0, 459, 483 ) --[[ @ 0]]
	f14_arg0.TopRightPip:setTopBottom( 0, 0, -3, 9 ) --[[ @ 0]]
	f14_arg0.ClanTag:setLeftRight( 0, 0, 138, 209 ) --[[ @ 0]]
	f14_arg0.ClanTag:setTopBottom( 0, 0, 39, 67 ) --[[ @ 0]]
	f14_arg0.PlayerEmblem:setLeftRight( 0, 0, 0, 136 ) --[[ @ 0]]
	f14_arg0.PlayerEmblem:setTopBottom( 0, 0, 3, 85 ) --[[ @ 0]]
	f14_arg0.PlayerEmblem:setAlpha( 1 ) --[[ @ 0]]
	f14_arg0.HeroBacking:setLeftRight( 0, 0, -3, 93 ) --[[ @ 0]]
	f14_arg0.HeroBacking:setTopBottom( 0, 0, -12, 96 ) --[[ @ 0]]
	f14_arg0.BotLeftPip:setLeftRight( 0, 0, -29, -5 ) --[[ @ 0]]
	f14_arg0.BotLeftPip:setTopBottom( 0, 0, 80, 92 ) --[[ @ 0]]
	f14_arg0.TopLeftPip:setLeftRight( 0, 0, -29, -5 ) --[[ @ 0]]
	f14_arg0.TopLeftPip:setTopBottom( 0, 0, -4, 8 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.PlayerCard_KilledBy.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	HideHeroShot = {
		DefaultClip = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f16_arg0.HeroShot:completeAnimation() --[[ @ 0]]
			f16_arg0.HeroShot:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.HeroShot ) --[[ @ 0]]
		end
	},
	Emblem = {
		DefaultClip = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f17_arg0.LeftPanel:completeAnimation() --[[ @ 0]]
			f17_arg0.LeftPanel:setLeftRight( 0, 0, 0, 136 ) --[[ @ 0]]
			f17_arg0.LeftPanel:setTopBottom( 0, 0, 3.5, 84.5 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.LeftPanel ) --[[ @ 0]]
		end
	},
	Calingcard = {
		DefaultClip = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 8 ) --[[ @ 0]]
			f18_arg0.LeftPanel:completeAnimation() --[[ @ 0]]
			f18_arg0.LeftPanel:setLeftRight( 0, 0, 132, 268 ) --[[ @ 0]]
			f18_arg0.LeftPanel:setTopBottom( 0, 0, 3, 85 ) --[[ @ 0]]
			f18_arg0.LeftPanel:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.LeftPanel ) --[[ @ 0]]
			f18_arg0.ClanTag:completeAnimation() --[[ @ 0]]
			f18_arg0.ClanTag:setLeftRight( 0, 0, 135, 206 ) --[[ @ 0]]
			f18_arg0.ClanTag:setTopBottom( 0, 0, 39, 69 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.ClanTag ) --[[ @ 0]]
			f18_arg0.HeroBacking:completeAnimation() --[[ @ 0]]
			f18_arg0.HeroBacking:setLeftRight( 0, 0, 127, 223 ) --[[ @ 0]]
			f18_arg0.HeroBacking:setTopBottom( 0, 0, -12, 96 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.HeroBacking ) --[[ @ 0]]
			f18_arg0.PlayerEmblem:completeAnimation() --[[ @ 0]]
			f18_arg0.PlayerEmblem:setLeftRight( 0, 0, 132, 268 ) --[[ @ 0]]
			f18_arg0.PlayerEmblem:setTopBottom( 0, 0, 3, 85 ) --[[ @ 0]]
			f18_arg0.PlayerEmblem:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.PlayerEmblem ) --[[ @ 0]]
			f18_arg0.TopLeftPip:completeAnimation() --[[ @ 0]]
			f18_arg0.TopLeftPip:setLeftRight( 0, 0, 109, 133 ) --[[ @ 0]]
			f18_arg0.TopLeftPip:setTopBottom( 0, 0, -4, 8 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.TopLeftPip ) --[[ @ 0]]
			f18_arg0.BotLeftPip:completeAnimation() --[[ @ 0]]
			f18_arg0.BotLeftPip:setLeftRight( 0, 0, 109, 133 ) --[[ @ 0]]
			f18_arg0.BotLeftPip:setTopBottom( 0, 0, 80, 92 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.BotLeftPip ) --[[ @ 0]]
			f18_arg0.TopRightPip:completeAnimation() --[[ @ 0]]
			f18_arg0.TopRightPip:setLeftRight( 0, 0, 455, 479 ) --[[ @ 0]]
			f18_arg0.TopRightPip:setTopBottom( 0, 0, -3, 9 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.TopRightPip ) --[[ @ 0]]
			f18_arg0.BotRightPip:completeAnimation() --[[ @ 0]]
			f18_arg0.BotRightPip:setLeftRight( 0, 0, 455, 479 ) --[[ @ 0]]
			f18_arg0.BotRightPip:setTopBottom( 0, 0, 80, 92 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.BotRightPip ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.PlayerCard_KilledBy.__onClose = function ( f19_arg0 )
	f19_arg0.HeroShot:close() --[[ @ 0]]
	f19_arg0.CallingCardImage:close() --[[ @ 0]]
	f19_arg0.LeftPanel:close() --[[ @ 0]]
	f19_arg0.Top3PlayerScoreBlurBox0:close() --[[ @ 0]]
	f19_arg0.VSpanel:close() --[[ @ 0]]
	f19_arg0.Panel:close() --[[ @ 0]]
	f19_arg0.ClanTag:close() --[[ @ 0]]
	f19_arg0.NameText:close() --[[ @ 0]]
end
 --[[ @ 0]]
