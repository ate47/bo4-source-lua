-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "ui/uieditor/widgets/director/directorselectbuttonlines" ) --[[ @ 0]]
require( "ui/uieditor/widgets/lobby/common/layoutelements/commonstripebarstencil" ) --[[ @ 0]]
require( "ui/uieditor/widgets/lobby/lobbyinspection/inspectionemblemwidget" ) --[[ @ 0]]
require( "ui/uieditor/widgets/lobby/lobbyinspection/inspectiongamercardwidget" ) --[[ @ 0]]

CoD.InspectionSelectedPlayerInfo = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.InspectionSelectedPlayerInfo.__defaultWidth = 348 --[[ @ 0]]
CoD.InspectionSelectedPlayerInfo.__defaultHeight = 448 --[[ @ 0]]
CoD.InspectionSelectedPlayerInfo.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.InspectionSelectedPlayerInfo ) --[[ @ 0]]
	self.id = "InspectionSelectedPlayerInfo" --[[ @ 0]]
	self.soundSet = "ModeSelection" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local IdentityTiledBg = LUI.UIImage.new( 0, 0, 0, 348, 0, 0, 0, 448 ) --[[ @ 0]]
	IdentityTiledBg:setAlpha( 0.5 ) --[[ @ 0]]
	IdentityTiledBg:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	IdentityTiledBg:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	IdentityTiledBg:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	IdentityTiledBg:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( IdentityTiledBg ) --[[ @ 0]]
	self.IdentityTiledBg = IdentityTiledBg --[[ @ 0]]
	
	local DividerDotLine = LUI.UIImage.new( 0, 0, -1.5, 350.5, 0, 0, 353, 357 ) --[[ @ 0]]
	DividerDotLine:setAlpha( 0.2 ) --[[ @ 0]]
	DividerDotLine:setImage( RegisterImage( @"uie_ui_menu_inspection_identity_dotline" ) ) --[[ @ 0]]
	DividerDotLine:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( DividerDotLine ) --[[ @ 0]]
	self.DividerDotLine = DividerDotLine --[[ @ 0]]
	
	local IdentityText = LUI.UIImage.new( 0, 0, 102, 246, 0, 0, 168, 180 ) --[[ @ 0]]
	IdentityText:setAlpha( 0.1 ) --[[ @ 0]]
	IdentityText:setImage( RegisterImage( @"uie_ui_menu_inspection_identity_header" ) ) --[[ @ 0]]
	self:addElement( IdentityText ) --[[ @ 0]]
	self.IdentityText = IdentityText --[[ @ 0]]
	
	local InspectionEmblemWidget = CoD.InspectionEmblemWidget.new( f1_arg0, f1_arg1, 0, 0, 0, 348, 0, 0, 0, 348 ) --[[ @ 0]]
	InspectionEmblemWidget:linkToElementModel( self, nil, false, function ( model )
		InspectionEmblemWidget:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( InspectionEmblemWidget ) --[[ @ 0]]
	self.InspectionEmblemWidget = InspectionEmblemWidget --[[ @ 0]]
	
	local playercard = CoD.InspectionGamerCardWidget.new( f1_arg0, f1_arg1, 1, 1, -347.5, 0.5, 0, 0, 361, 448 ) --[[ @ 0]]
	playercard:linkToElementModel( self, nil, false, function ( model )
		playercard:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( playercard ) --[[ @ 0]]
	self.playercard = playercard --[[ @ 0]]
	
	local EmblemCornerBlurBL = LUI.UIImage.new( 0, 0, -4, 16, 0, 0, 330, 350 ) --[[ @ 0]]
	EmblemCornerBlurBL:setAlpha( 0 ) --[[ @ 0]]
	EmblemCornerBlurBL:setZRot( 90 ) --[[ @ 0]]
	EmblemCornerBlurBL:setImage( RegisterImage( @"uie_ui_menu_inspection_window_corner" ) ) --[[ @ 0]]
	EmblemCornerBlurBL:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	EmblemCornerBlurBL:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( EmblemCornerBlurBL ) --[[ @ 0]]
	self.EmblemCornerBlurBL = EmblemCornerBlurBL --[[ @ 0]]
	
	local EmblemCornerBL = LUI.UIImage.new( 0, 0, -1, 11, 0, 0, 337, 349 ) --[[ @ 0]]
	EmblemCornerBL:setAlpha( 0 ) --[[ @ 0]]
	EmblemCornerBL:setZRot( -90 ) --[[ @ 0]]
	EmblemCornerBL:setImage( RegisterImage( @"uie_ui_menu_social_emblem_corner" ) ) --[[ @ 0]]
	EmblemCornerBL:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	EmblemCornerBL:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( EmblemCornerBL ) --[[ @ 0]]
	self.EmblemCornerBL = EmblemCornerBL --[[ @ 0]]
	
	local EmblemCornerBlurTL = LUI.UIImage.new( 0, 0, -1.5, 18.5, 0, 0, -3, 17 ) --[[ @ 0]]
	EmblemCornerBlurTL:setAlpha( 0 ) --[[ @ 0]]
	EmblemCornerBlurTL:setImage( RegisterImage( @"uie_ui_menu_inspection_window_corner" ) ) --[[ @ 0]]
	EmblemCornerBlurTL:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	EmblemCornerBlurTL:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( EmblemCornerBlurTL ) --[[ @ 0]]
	self.EmblemCornerBlurTL = EmblemCornerBlurTL --[[ @ 0]]
	
	local EmblemCornerTL = LUI.UIImage.new( 0, 0, -1, 11, 0, 0, -1, 11 ) --[[ @ 0]]
	EmblemCornerTL:setAlpha( 0 ) --[[ @ 0]]
	EmblemCornerTL:setZRot( 180 ) --[[ @ 0]]
	EmblemCornerTL:setImage( RegisterImage( @"uie_ui_menu_social_emblem_corner" ) ) --[[ @ 0]]
	EmblemCornerTL:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	EmblemCornerTL:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( EmblemCornerTL ) --[[ @ 0]]
	self.EmblemCornerTL = EmblemCornerTL --[[ @ 0]]
	
	local EmblemCornerBlurBR = LUI.UIImage.new( 0, 0, 331, 351, 0, 0, 331, 351 ) --[[ @ 0]]
	EmblemCornerBlurBR:setAlpha( 0 ) --[[ @ 0]]
	EmblemCornerBlurBR:setZRot( 180 ) --[[ @ 0]]
	EmblemCornerBlurBR:setImage( RegisterImage( @"uie_ui_menu_inspection_window_corner" ) ) --[[ @ 0]]
	EmblemCornerBlurBR:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	EmblemCornerBlurBR:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( EmblemCornerBlurBR ) --[[ @ 0]]
	self.EmblemCornerBlurBR = EmblemCornerBlurBR --[[ @ 0]]
	
	local EmblemCornerBR = LUI.UIImage.new( 0, 0, 337, 349, 0, 0, 337, 349 ) --[[ @ 0]]
	EmblemCornerBR:setAlpha( 0 ) --[[ @ 0]]
	EmblemCornerBR:setImage( RegisterImage( @"uie_ui_menu_social_emblem_corner" ) ) --[[ @ 0]]
	EmblemCornerBR:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	EmblemCornerBR:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( EmblemCornerBR ) --[[ @ 0]]
	self.EmblemCornerBR = EmblemCornerBR --[[ @ 0]]
	
	local EmblemCornerBlurTR = LUI.UIImage.new( 0, 0, 329, 349, 0, 0, -3, 17 ) --[[ @ 0]]
	EmblemCornerBlurTR:setAlpha( 0 ) --[[ @ 0]]
	EmblemCornerBlurTR:setYRot( 180 ) --[[ @ 0]]
	EmblemCornerBlurTR:setImage( RegisterImage( @"uie_ui_menu_inspection_window_corner" ) ) --[[ @ 0]]
	EmblemCornerBlurTR:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	EmblemCornerBlurTR:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( EmblemCornerBlurTR ) --[[ @ 0]]
	self.EmblemCornerBlurTR = EmblemCornerBlurTR --[[ @ 0]]
	
	local EmblemCornerTR = LUI.UIImage.new( 0, 0, 337, 349, 0, 0, -1, 11 ) --[[ @ 0]]
	EmblemCornerTR:setAlpha( 0 ) --[[ @ 0]]
	EmblemCornerTR:setZRot( 90 ) --[[ @ 0]]
	EmblemCornerTR:setImage( RegisterImage( @"uie_ui_menu_social_emblem_corner" ) ) --[[ @ 0]]
	EmblemCornerTR:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	EmblemCornerTR:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( EmblemCornerTR ) --[[ @ 0]]
	self.EmblemCornerTR = EmblemCornerTR --[[ @ 0]]
	
	local CommonStripeBar = CoD.CommonStripeBarStencil.new( f1_arg0, f1_arg1, 0, 0, -1, 347, 0, 0, -14, 2 ) --[[ @ 0]]
	self:addElement( CommonStripeBar ) --[[ @ 0]]
	self.CommonStripeBar = CommonStripeBar --[[ @ 0]]
	
	local Lines = CoD.DirectorSelectButtonLines.new( f1_arg0, f1_arg1, 0, 0, 0, 348, 0, 0, 0, 448 ) --[[ @ 0]]
	Lines:setRGB( ColorSet.T8__SILVER.r, ColorSet.T8__SILVER.g, ColorSet.T8__SILVER.b ) --[[ @ 0]]
	self:addElement( Lines ) --[[ @ 0]]
	self.Lines = Lines --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "FnF",
			condition = function ( menu, element, event )
				return CoD.DirectorUtility.DisableForCurrentMilestone( f1_arg1 )
			end
		},
		{
			stateName = "RankInfoHidden",
			condition = function ( menu, element, event )
				return not CoD.RankUtility.HasElementByXUIDEverPlayedCurrentMode( self )
			end
		},
		{
			stateName = "Lan",
			condition = function ( menu, element, event )
				return not IsLive()
			end
		},
		{
			stateName = "Arena",
			condition = function ( menu, element, event )
				return IsArenaMode()
			end
		},
		{
			stateName = "Custom",
			condition = function ( menu, element, event )
				return IsCustomLobby()
			end
		},
		{
			stateName = "FreeRun",
			condition = function ( menu, element, event )
				return IsFreeRunLobby()
			end
		},
		{
			stateName = "Theater",
			condition = function ( menu, element, event )
				return LobbyModeTheater()
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "xuid", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "xuid"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local16 = self --[[ @ 0]]
	local f1_local17 = self.subscribeToModel --[[ @ 0]]
	local f1_local18 = DataSources.LobbyRoot.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local17( f1_local16, f1_local18.lobbyNav, function ( f13_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f13_arg0:get(),
			modelName = "lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local16 = self --[[ @ 0]]
	f1_local17 = self.subscribeToModel --[[ @ 0]]
	f1_local18 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local17( f1_local16, f1_local18["lobbyRoot.lobbyNetworkMode"], function ( f14_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f14_arg0:get(),
			modelName = "lobbyRoot.lobbyNetworkMode"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local16 = self --[[ @ 0]]
	f1_local17 = self.subscribeToModel --[[ @ 0]]
	f1_local18 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local17( f1_local16, f1_local18["lobbyRoot.lobbyNav"], function ( f15_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f15_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	playercard.id = "playercard" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PreLoadFunc then
		PreLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	f1_local17 = self --[[ @ 0]]
	f1_local17 = playercard --[[ @ 0]]
	if IsPC() then
		CoD.PCWidgetUtility.SetupRightClickableContextualPlayerMenu( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.InspectionSelectedPlayerInfo.__resetProperties = function ( f16_arg0 )
	f16_arg0.playercard:completeAnimation() --[[ @ 0]]
	f16_arg0.InspectionEmblemWidget:completeAnimation() --[[ @ 0]]
	f16_arg0.playercard:setAlpha( 1 ) --[[ @ 0]]
	f16_arg0.InspectionEmblemWidget:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.InspectionSelectedPlayerInfo.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Intro = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f18_local0 = function ( f19_arg0 )
				f18_arg0.InspectionEmblemWidget:beginAnimation( 300, Enum[@"luitween"][@"luitween_bounce"] ) --[[ @ 0]]
				f18_arg0.InspectionEmblemWidget:setAlpha( 1 ) --[[ @ 0]]
				f18_arg0.InspectionEmblemWidget:registerEventHandler( "interrupted_keyframe", f18_arg0.clipInterrupted ) --[[ @ 0]]
				f18_arg0.InspectionEmblemWidget:registerEventHandler( "transition_complete_keyframe", f18_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f18_arg0.InspectionEmblemWidget:completeAnimation() --[[ @ 0]]
			f18_arg0.InspectionEmblemWidget:setAlpha( 0 ) --[[ @ 0]]
			f18_local0( f18_arg0.InspectionEmblemWidget ) --[[ @ 0]]
			local f18_local1 = function ( f20_arg0 )
				local f20_local0 = function ( f21_arg0 )
					f21_arg0:beginAnimation( 310, Enum[@"luitween"][@"luitween_bounce"] ) --[[ @ 0]]
					f21_arg0:setAlpha( 1 ) --[[ @ 0]]
					f21_arg0:registerEventHandler( "transition_complete_keyframe", f18_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f18_arg0.playercard:beginAnimation( 90 ) --[[ @ 0]]
				f18_arg0.playercard:registerEventHandler( "interrupted_keyframe", f18_arg0.clipInterrupted ) --[[ @ 0]]
				f18_arg0.playercard:registerEventHandler( "transition_complete_keyframe", f20_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f18_arg0.playercard:completeAnimation() --[[ @ 0]]
			f18_arg0.playercard:setAlpha( 0 ) --[[ @ 0]]
			f18_local1( f18_arg0.playercard ) --[[ @ 0]]
		end,
		Outro = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f22_local0 = function ( f23_arg0 )
				f22_arg0.InspectionEmblemWidget:beginAnimation( 300, Enum[@"luitween"][@"luitween_bounce"] ) --[[ @ 0]]
				f22_arg0.InspectionEmblemWidget:setAlpha( 0 ) --[[ @ 0]]
				f22_arg0.InspectionEmblemWidget:registerEventHandler( "interrupted_keyframe", f22_arg0.clipInterrupted ) --[[ @ 0]]
				f22_arg0.InspectionEmblemWidget:registerEventHandler( "transition_complete_keyframe", f22_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f22_arg0.InspectionEmblemWidget:completeAnimation() --[[ @ 0]]
			f22_arg0.InspectionEmblemWidget:setAlpha( 1 ) --[[ @ 0]]
			f22_local0( f22_arg0.InspectionEmblemWidget ) --[[ @ 0]]
			local f22_local1 = function ( f24_arg0 )
				local f24_local0 = function ( f25_arg0 )
					f25_arg0:beginAnimation( 309, Enum[@"luitween"][@"luitween_bounce"] ) --[[ @ 0]]
					f25_arg0:setAlpha( 0 ) --[[ @ 0]]
					f25_arg0:registerEventHandler( "transition_complete_keyframe", f22_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f22_arg0.playercard:beginAnimation( 280 ) --[[ @ 0]]
				f22_arg0.playercard:registerEventHandler( "interrupted_keyframe", f22_arg0.clipInterrupted ) --[[ @ 0]]
				f22_arg0.playercard:registerEventHandler( "transition_complete_keyframe", f24_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f22_arg0.playercard:completeAnimation() --[[ @ 0]]
			f22_arg0.playercard:setAlpha( 1 ) --[[ @ 0]]
			f22_local1( f22_arg0.playercard ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f26_arg0, f26_arg1 )
			f26_arg0:__resetProperties() --[[ @ 0]]
			f26_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f26_arg0.InspectionEmblemWidget:completeAnimation() --[[ @ 0]]
			f26_arg0.InspectionEmblemWidget:setAlpha( 0 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.InspectionEmblemWidget ) --[[ @ 0]]
			f26_arg0.playercard:completeAnimation() --[[ @ 0]]
			f26_arg0.playercard:setAlpha( 0 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.playercard ) --[[ @ 0]]
		end
	},
	FnF = {
		DefaultClip = function ( f27_arg0, f27_arg1 )
			f27_arg0:__resetProperties() --[[ @ 0]]
			f27_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	RankInfoHidden = {
		DefaultClip = function ( f28_arg0, f28_arg1 )
			f28_arg0:__resetProperties() --[[ @ 0]]
			f28_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Lan = {
		DefaultClip = function ( f29_arg0, f29_arg1 )
			f29_arg0:__resetProperties() --[[ @ 0]]
			f29_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Arena = {
		DefaultClip = function ( f30_arg0, f30_arg1 )
			f30_arg0:__resetProperties() --[[ @ 0]]
			f30_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Intro = function ( f31_arg0, f31_arg1 )
			f31_arg0:__resetProperties() --[[ @ 0]]
			f31_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f31_local0 = function ( f32_arg0 )
				f31_arg0.InspectionEmblemWidget:beginAnimation( 300 ) --[[ @ 0]]
				f31_arg0.InspectionEmblemWidget:setAlpha( 1 ) --[[ @ 0]]
				f31_arg0.InspectionEmblemWidget:registerEventHandler( "interrupted_keyframe", f31_arg0.clipInterrupted ) --[[ @ 0]]
				f31_arg0.InspectionEmblemWidget:registerEventHandler( "transition_complete_keyframe", f31_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f31_arg0.InspectionEmblemWidget:completeAnimation() --[[ @ 0]]
			f31_arg0.InspectionEmblemWidget:setAlpha( 0 ) --[[ @ 0]]
			f31_local0( f31_arg0.InspectionEmblemWidget ) --[[ @ 0]]
			local f31_local1 = function ( f33_arg0 )
				local f33_local0 = function ( f34_arg0 )
					f34_arg0:beginAnimation( 310 ) --[[ @ 0]]
					f34_arg0:setAlpha( 1 ) --[[ @ 0]]
					f34_arg0:registerEventHandler( "transition_complete_keyframe", f31_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f31_arg0.playercard:beginAnimation( 90 ) --[[ @ 0]]
				f31_arg0.playercard:registerEventHandler( "interrupted_keyframe", f31_arg0.clipInterrupted ) --[[ @ 0]]
				f31_arg0.playercard:registerEventHandler( "transition_complete_keyframe", f33_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f31_arg0.playercard:completeAnimation() --[[ @ 0]]
			f31_arg0.playercard:setAlpha( 0 ) --[[ @ 0]]
			f31_local1( f31_arg0.playercard ) --[[ @ 0]]
		end
	},
	Custom = {
		DefaultClip = function ( f35_arg0, f35_arg1 )
			f35_arg0:__resetProperties() --[[ @ 0]]
			f35_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	FreeRun = {
		DefaultClip = function ( f36_arg0, f36_arg1 )
			f36_arg0:__resetProperties() --[[ @ 0]]
			f36_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Theater = {
		DefaultClip = function ( f37_arg0, f37_arg1 )
			f37_arg0:__resetProperties() --[[ @ 0]]
			f37_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.InspectionSelectedPlayerInfo.__onClose = function ( f38_arg0 )
	f38_arg0.InspectionEmblemWidget:close() --[[ @ 0]]
	f38_arg0.playercard:close() --[[ @ 0]]
	f38_arg0.CommonStripeBar:close() --[[ @ 0]]
	f38_arg0.Lines:close() --[[ @ 0]]
end
 --[[ @ 0]]
