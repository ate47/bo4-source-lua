-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/director/directorbuttonadd" ) --[[ @ 0]]
require( "ui/uieditor/widgets/director/directorlobbyclanandmembername" ) --[[ @ 0]]
require( "ui/uieditor/widgets/director/directorpartyleader" ) --[[ @ 0]]
require( "ui/uieditor/widgets/onoffvoip" ) --[[ @ 0]]
require( "ui/uieditor/widgets/emptyfocusable" ) --[[ @ 0]]

CoD.DirectorCustomGameMember = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DirectorCustomGameMember.__defaultWidth = 425 --[[ @ 0]]
CoD.DirectorCustomGameMember.__defaultHeight = 40 --[[ @ 0]]
CoD.DirectorCustomGameMember.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.DirectorCustomGameMember ) --[[ @ 0]]
	self.id = "DirectorCustomGameMember" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local SceneBlur = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	SceneBlur:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	SceneBlur:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( SceneBlur ) --[[ @ 0]]
	self.SceneBlur = SceneBlur --[[ @ 0]]
	
	local PixelGrid = LUI.UIImage.new( 0, 1, 0, 0, -0.31, 1, 12, 0 ) --[[ @ 0]]
	PixelGrid:setAlpha( 0.35 ) --[[ @ 0]]
	PixelGrid:setImage( RegisterImage( @"uie_ui_hud_notifications_pixelpattern" ) ) --[[ @ 0]]
	PixelGrid:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	PixelGrid:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	PixelGrid:setupNineSliceShader( 128, 128 ) --[[ @ 0]]
	self:addElement( PixelGrid ) --[[ @ 0]]
	self.PixelGrid = PixelGrid --[[ @ 0]]
	
	local EmptyBacking = LUI.UIImage.new( 0, 1, 0, 0, 0.1, 1.1, -4, -4 ) --[[ @ 0]]
	EmptyBacking.__Color = function ()
		EmptyBacking:setRGB( CoD.TeamUtility.GetTeamFactionColor( 0, 0.32, 0.34 ) ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	EmptyBacking.__Color() --[[ @ 0]]
	EmptyBacking:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( EmptyBacking ) --[[ @ 0]]
	self.EmptyBacking = EmptyBacking --[[ @ 0]]
	
	local TeamColorBacking = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	TeamColorBacking:setAlpha( 0.05 ) --[[ @ 0]]
	TeamColorBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	TeamColorBacking.__Color = function ( f3_arg0 )
		local f3_local0 = f3_arg0:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			TeamColorBacking:setRGB( CoD.TeamUtility.GetTeamFactionColor( f3_local0 ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	TeamColorBacking:linkToElementModel( self, "info", true, function ( model, f4_arg1 )
		if f4_arg1["__TeamColorBacking.__Color_info->team"] then
			f4_arg1:removeSubscription( f4_arg1["__TeamColorBacking.__Color_info->team"] ) --[[ @ 0]]
			f4_arg1["__TeamColorBacking.__Color_info->team"] = nil --[[ @ 0]]
		end
		if model then
			local f4_local0 = model:get() --[[ @ 0]]
			local f4_local1 = model:get() --[[ @ 0]]
			model = f4_local0 and f4_local1.team --[[ @ 0]]
		end
		if model then
			f4_arg1["__TeamColorBacking.__Color_info->team"] = f4_arg1:subscribeToModel( model, TeamColorBacking.__Color ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	TeamColorBacking.__Color_FullPath = function ()
		local f5_local0 = self:getModel() --[[ @ 0]]
		if f5_local0 then
			f5_local0 = self:getModel() --[[ @ 0]]
			f5_local0 = f5_local0.info --[[ @ 0]]
		end
		if f5_local0 then
			f5_local0 = f5_local0:get() --[[ @ 0]]
		end
		if f5_local0 then
			f5_local0 = f5_local0.team --[[ @ 0]]
		end
		if f5_local0 then
			TeamColorBacking.__Color( f5_local0 ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	self:addElement( TeamColorBacking ) --[[ @ 0]]
	self.TeamColorBacking = TeamColorBacking --[[ @ 0]]
	
	local BaseBacking = LUI.UIImage.new( 0, 0, 0, 425, 0, 1, 0, 0 ) --[[ @ 0]]
	BaseBacking:setRGB( 0.07, 0.07, 0.07 ) --[[ @ 0]]
	BaseBacking:setAlpha( 0.5 ) --[[ @ 0]]
	self:addElement( BaseBacking ) --[[ @ 0]]
	self.BaseBacking = BaseBacking --[[ @ 0]]
	
	local EmblemBacking = LUI.UIImage.new( 0, 0, 0, 40, 0.5, 0.5, -20, 20 ) --[[ @ 0]]
	EmblemBacking:setRGB( 0, 0, 0 ) --[[ @ 0]]
	EmblemBacking:setAlpha( 0.8 ) --[[ @ 0]]
	self:addElement( EmblemBacking ) --[[ @ 0]]
	self.EmblemBacking = EmblemBacking --[[ @ 0]]
	
	local rankicon = LUI.UIImage.new( 0, 0, 0, 39, 0.5, 0.5, -19.5, 19.5 ) --[[ @ 0]]
	rankicon:setAlpha( 0 ) --[[ @ 0]]
	rankicon.__Image = function ( f6_arg0 )
		local f6_local0 = f6_arg0:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			rankicon:setImage( RegisterImage( f6_local0 ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	rankicon:linkToElementModel( self, "info", true, function ( model, f7_arg1 )
		if f7_arg1["__rankicon.__Image_info->rankIcon"] then
			f7_arg1:removeSubscription( f7_arg1["__rankicon.__Image_info->rankIcon"] ) --[[ @ 0]]
			f7_arg1["__rankicon.__Image_info->rankIcon"] = nil --[[ @ 0]]
		end
		if model then
			local f7_local0 = model:get() --[[ @ 0]]
			local f7_local1 = model:get() --[[ @ 0]]
			model = f7_local0 and f7_local1.rankIcon --[[ @ 0]]
		end
		if model then
			f7_arg1["__rankicon.__Image_info->rankIcon"] = f7_arg1:subscribeToModel( model, rankicon.__Image ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( rankicon ) --[[ @ 0]]
	self.rankicon = rankicon --[[ @ 0]]
	
	local emblem = LUI.UIImage.new( 0, 0, 0, 40, 0.5, 0.5, -20, 20 ) --[[ @ 0]]
	emblem.__XUID = function ( f8_arg0 )
		local f8_local0 = f8_arg0:get() --[[ @ 0]]
		if f8_local0 ~= nil then
			emblem:setupPlayerEmblemByXUID( f8_local0 ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	emblem:linkToElementModel( self, "info", true, function ( model, f9_arg1 )
		if f9_arg1["__emblem.__XUID_info->xuid"] then
			f9_arg1:removeSubscription( f9_arg1["__emblem.__XUID_info->xuid"] ) --[[ @ 0]]
			f9_arg1["__emblem.__XUID_info->xuid"] = nil --[[ @ 0]]
		end
		if model then
			local f9_local0 = model:get() --[[ @ 0]]
			local f9_local1 = model:get() --[[ @ 0]]
			model = f9_local0 and f9_local1.xuid --[[ @ 0]]
		end
		if model then
			f9_arg1["__emblem.__XUID_info->xuid"] = f9_arg1:subscribeToModel( model, emblem.__XUID ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( emblem ) --[[ @ 0]]
	self.emblem = emblem --[[ @ 0]]
	
	local LeaderBacking = CoD.DirectorPartyLeader.new( f1_arg0, f1_arg1, 0, 0, 380.5, 430.5, 0.5, 0.5, -25, 25 ) --[[ @ 0]]
	LeaderBacking:linkToElementModel( self, nil, false, function ( model )
		LeaderBacking:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( LeaderBacking ) --[[ @ 0]]
	self.LeaderBacking = LeaderBacking --[[ @ 0]]
	
	local membername = CoD.DirectorLobbyClanAndMemberName.new( f1_arg0, f1_arg1, 0, 0, 44, 264, 0.5, 0.5, -10.5, 10.5 ) --[[ @ 0]]
	membername:linkToElementModel( self, "info", true, function ( model )
		local f11_local0 = model:get() --[[ @ 0]]
		if f11_local0 ~= nil then
			membername:setModel( f11_local0, f1_arg1 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( membername ) --[[ @ 0]]
	self.membername = membername --[[ @ 0]]
	
	local CornerDotBRAnim = LUI.UIImage.new( 0, 0, 369, 370, 0, 0, 69, 70 ) --[[ @ 0]]
	CornerDotBRAnim:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( CornerDotBRAnim ) --[[ @ 0]]
	self.CornerDotBRAnim = CornerDotBRAnim --[[ @ 0]]
	
	local CornerLineBRAnim = LUI.UIImage.new( 0, 0, 369, 370, 0, 0, 6, 7 ) --[[ @ 0]]
	CornerLineBRAnim:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( CornerLineBRAnim ) --[[ @ 0]]
	self.CornerLineBRAnim = CornerLineBRAnim --[[ @ 0]]
	
	local CornerDotBRAnim2 = LUI.UIImage.new( 0, 0, 110, 111, 0, 0, 62.5, 63.5 ) --[[ @ 0]]
	CornerDotBRAnim2:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( CornerDotBRAnim2 ) --[[ @ 0]]
	self.CornerDotBRAnim2 = CornerDotBRAnim2 --[[ @ 0]]
	
	local CornerLineBRAnim4 = LUI.UIImage.new( 0, 0, 110, 111, 0, 0, -0.5, 0.5 ) --[[ @ 0]]
	CornerLineBRAnim4:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( CornerLineBRAnim4 ) --[[ @ 0]]
	self.CornerLineBRAnim4 = CornerLineBRAnim4 --[[ @ 0]]
	
	local VoipWaves = CoD.OnOffVoip.new( f1_arg0, f1_arg1, 0, 0, -31, 9, 0, 0, 12, 28 ) --[[ @ 0]]
	VoipWaves:setZRot( 90 ) --[[ @ 0]]
	VoipWaves:linkToElementModel( self, "info", true, function ( model )
		local f12_local0 = model:get() --[[ @ 0]]
		if f12_local0 ~= nil then
			VoipWaves:setModel( f12_local0, f1_arg1 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( VoipWaves ) --[[ @ 0]]
	self.VoipWaves = VoipWaves --[[ @ 0]]
	
	local DirectorCustomStartButton = CoD.DirectorButtonAdd.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	DirectorCustomStartButton:setAlpha( 0 ) --[[ @ 0]]
	DirectorCustomStartButton.CommonButtonOutline.FocusGlow:setScale( 1, 0.7 ) --[[ @ 0]]
	self:addElement( DirectorCustomStartButton ) --[[ @ 0]]
	self.DirectorCustomStartButton = DirectorCustomStartButton --[[ @ 0]]
	
	local emptyFocusable = nil --[[ @ 0]]
	
	emptyFocusable = CoD.emptyFocusable.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	emptyFocusable:linkToElementModel( self, nil, false, function ( model )
		emptyFocusable:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( emptyFocusable ) --[[ @ 0]]
	self.emptyFocusable = emptyFocusable --[[ @ 0]]
	
	local FrontendFrame02 = LUI.UIImage.new( 0, 1, -2, 2, 0, 1, -2, 2 ) --[[ @ 0]]
	FrontendFrame02:setAlpha( 0.2 ) --[[ @ 0]]
	FrontendFrame02:setImage( RegisterImage( @"uie_ui_menu_store_common_frame" ) ) --[[ @ 0]]
	FrontendFrame02:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FrontendFrame02:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FrontendFrame02:setupNineSliceShader( 12, 12 ) --[[ @ 0]]
	self:addElement( FrontendFrame02 ) --[[ @ 0]]
	self.FrontendFrame02 = FrontendFrame02 --[[ @ 0]]
	
	local SelectedOverlay = nil --[[ @ 0]]
	
	SelectedOverlay = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	SelectedOverlay:setRGB( ColorSet.T8__BEIGE__HEADER.r, ColorSet.T8__BEIGE__HEADER.g, ColorSet.T8__BEIGE__HEADER.b ) --[[ @ 0]]
	SelectedOverlay:setAlpha( 0 ) --[[ @ 0]]
	SelectedOverlay:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( SelectedOverlay ) --[[ @ 0]]
	self.SelectedOverlay = SelectedOverlay --[[ @ 0]]
	
	local f1_local20 = EmptyBacking --[[ @ 0]]
	local f1_local21 = EmptyBacking.subscribeToModel --[[ @ 0]]
	local f1_local22 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local21( f1_local20, f1_local22["MapVote.mapVoteGameModeNext"], EmptyBacking.__Color ) --[[ @ 0]]
	f1_local20 = TeamColorBacking --[[ @ 0]]
	f1_local21 = TeamColorBacking.subscribeToModel --[[ @ 0]]
	f1_local22 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local21( f1_local20, f1_local22["MapVote.mapVoteGameModeNext"], TeamColorBacking.__Color_FullPath ) --[[ @ 0]]
	self:mergeStateConditions( {
		{
			stateName = "FirstEmpty",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEnumFlagSet( element, f1_arg1, "clientListFlags", CoD.DirectorUtility.ClientListFlags.FIRST_EMPTY ) and not IsLobbyNetworkModeLAN()
			end
		},
		{
			stateName = "Empty",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "clientListFlags", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "clientListFlags"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local20 = self --[[ @ 0]]
	f1_local21 = self.subscribeToModel --[[ @ 0]]
	f1_local22 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local21( f1_local20, f1_local22["lobbyRoot.lobbyNav"], function ( f17_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f17_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	DirectorCustomStartButton.id = "DirectorCustomStartButton" --[[ @ 0]]
	if CoD.isPC then
		emptyFocusable.id = "emptyFocusable" --[[ @ 0]]
	end
	self.__defaultFocus = DirectorCustomStartButton --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	f1_local21 = self --[[ @ 0]]
	if IsPC() then
		CoD.PCWidgetUtility.SetupRightClickableContextualPlayerMenu( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.DirectorCustomGameMember.__resetProperties = function ( f18_arg0 )
	f18_arg0.SelectedOverlay:completeAnimation() --[[ @ 0]]
	f18_arg0.VoipWaves:completeAnimation() --[[ @ 0]]
	f18_arg0.CornerLineBRAnim4:completeAnimation() --[[ @ 0]]
	f18_arg0.CornerDotBRAnim2:completeAnimation() --[[ @ 0]]
	f18_arg0.membername:completeAnimation() --[[ @ 0]]
	f18_arg0.LeaderBacking:completeAnimation() --[[ @ 0]]
	f18_arg0.emblem:completeAnimation() --[[ @ 0]]
	f18_arg0.rankicon:completeAnimation() --[[ @ 0]]
	f18_arg0.EmblemBacking:completeAnimation() --[[ @ 0]]
	f18_arg0.TeamColorBacking:completeAnimation() --[[ @ 0]]
	f18_arg0.DirectorCustomStartButton:completeAnimation() --[[ @ 0]]
	f18_arg0.EmptyBacking:completeAnimation() --[[ @ 0]]
	f18_arg0.FrontendFrame02:completeAnimation() --[[ @ 0]]
	f18_arg0.SelectedOverlay:setAlpha( 0 ) --[[ @ 0]]
	f18_arg0.VoipWaves:setAlpha( 1 ) --[[ @ 0]]
	f18_arg0.CornerLineBRAnim4:setAlpha( 0 ) --[[ @ 0]]
	f18_arg0.CornerDotBRAnim2:setAlpha( 0 ) --[[ @ 0]]
	f18_arg0.membername:setAlpha( 1 ) --[[ @ 0]]
	f18_arg0.LeaderBacking:setAlpha( 1 ) --[[ @ 0]]
	f18_arg0.emblem:setAlpha( 1 ) --[[ @ 0]]
	f18_arg0.rankicon:setAlpha( 0 ) --[[ @ 0]]
	f18_arg0.EmblemBacking:setAlpha( 0.8 ) --[[ @ 0]]
	f18_arg0.TeamColorBacking:setAlpha( 0.05 ) --[[ @ 0]]
	f18_arg0.DirectorCustomStartButton:setAlpha( 0 ) --[[ @ 0]]
	f18_arg0.DirectorCustomStartButton:setScale( 1, 1 ) --[[ @ 0]]
	f18_arg0.EmptyBacking:setAlpha( 0 ) --[[ @ 0]]
	f18_arg0.FrontendFrame02:setAlpha( 0.2 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.DirectorCustomGameMember.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f20_arg0, f20_arg1 )
			f20_arg0:__resetProperties() --[[ @ 0]]
			f20_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f20_arg0.SelectedOverlay:completeAnimation() --[[ @ 0]]
			f20_arg0.SelectedOverlay:setAlpha( 0.05 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.SelectedOverlay ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f21_local0 = function ( f22_arg0 )
				f21_arg0.SelectedOverlay:beginAnimation( 200 ) --[[ @ 0]]
				f21_arg0.SelectedOverlay:setAlpha( 0.05 ) --[[ @ 0]]
				f21_arg0.SelectedOverlay:registerEventHandler( "interrupted_keyframe", f21_arg0.clipInterrupted ) --[[ @ 0]]
				f21_arg0.SelectedOverlay:registerEventHandler( "transition_complete_keyframe", f21_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f21_arg0.SelectedOverlay:completeAnimation() --[[ @ 0]]
			f21_arg0.SelectedOverlay:setAlpha( 0 ) --[[ @ 0]]
			f21_local0( f21_arg0.SelectedOverlay ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f23_arg0, f23_arg1 )
			f23_arg0:__resetProperties() --[[ @ 0]]
			f23_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f23_local0 = function ( f24_arg0 )
				f23_arg0.SelectedOverlay:beginAnimation( 200 ) --[[ @ 0]]
				f23_arg0.SelectedOverlay:setAlpha( 0 ) --[[ @ 0]]
				f23_arg0.SelectedOverlay:registerEventHandler( "interrupted_keyframe", f23_arg0.clipInterrupted ) --[[ @ 0]]
				f23_arg0.SelectedOverlay:registerEventHandler( "transition_complete_keyframe", f23_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f23_arg0.SelectedOverlay:completeAnimation() --[[ @ 0]]
			f23_arg0.SelectedOverlay:setAlpha( 0.05 ) --[[ @ 0]]
			f23_local0( f23_arg0.SelectedOverlay ) --[[ @ 0]]
		end
	},
	FirstEmpty = {
		DefaultClip = function ( f25_arg0, f25_arg1 )
			f25_arg0:__resetProperties() --[[ @ 0]]
			f25_arg0:setupElementClipCounter( 12 ) --[[ @ 0]]
			f25_arg0.EmptyBacking:completeAnimation() --[[ @ 0]]
			f25_arg0.EmptyBacking:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.EmptyBacking ) --[[ @ 0]]
			f25_arg0.TeamColorBacking:completeAnimation() --[[ @ 0]]
			f25_arg0.TeamColorBacking:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.TeamColorBacking ) --[[ @ 0]]
			f25_arg0.EmblemBacking:completeAnimation() --[[ @ 0]]
			f25_arg0.EmblemBacking:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.EmblemBacking ) --[[ @ 0]]
			f25_arg0.rankicon:completeAnimation() --[[ @ 0]]
			f25_arg0.rankicon:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.rankicon ) --[[ @ 0]]
			f25_arg0.emblem:completeAnimation() --[[ @ 0]]
			f25_arg0.emblem:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.emblem ) --[[ @ 0]]
			f25_arg0.LeaderBacking:completeAnimation() --[[ @ 0]]
			f25_arg0.LeaderBacking:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.LeaderBacking ) --[[ @ 0]]
			f25_arg0.membername:completeAnimation() --[[ @ 0]]
			f25_arg0.membername:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.membername ) --[[ @ 0]]
			f25_arg0.CornerDotBRAnim2:completeAnimation() --[[ @ 0]]
			f25_arg0.CornerDotBRAnim2:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.CornerDotBRAnim2 ) --[[ @ 0]]
			f25_arg0.CornerLineBRAnim4:completeAnimation() --[[ @ 0]]
			f25_arg0.CornerLineBRAnim4:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.CornerLineBRAnim4 ) --[[ @ 0]]
			f25_arg0.VoipWaves:completeAnimation() --[[ @ 0]]
			f25_arg0.VoipWaves:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.VoipWaves ) --[[ @ 0]]
			f25_arg0.DirectorCustomStartButton:completeAnimation() --[[ @ 0]]
			f25_arg0.DirectorCustomStartButton:setAlpha( 1 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.DirectorCustomStartButton ) --[[ @ 0]]
			f25_arg0.FrontendFrame02:completeAnimation() --[[ @ 0]]
			f25_arg0.FrontendFrame02:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.FrontendFrame02 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f26_arg0, f26_arg1 )
			f26_arg0:__resetProperties() --[[ @ 0]]
			f26_arg0:setupElementClipCounter( 12 ) --[[ @ 0]]
			f26_arg0.EmptyBacking:completeAnimation() --[[ @ 0]]
			f26_arg0.EmptyBacking:setAlpha( 0 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.EmptyBacking ) --[[ @ 0]]
			f26_arg0.TeamColorBacking:completeAnimation() --[[ @ 0]]
			f26_arg0.TeamColorBacking:setAlpha( 0 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.TeamColorBacking ) --[[ @ 0]]
			f26_arg0.EmblemBacking:completeAnimation() --[[ @ 0]]
			f26_arg0.EmblemBacking:setAlpha( 0 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.EmblemBacking ) --[[ @ 0]]
			f26_arg0.rankicon:completeAnimation() --[[ @ 0]]
			f26_arg0.rankicon:setAlpha( 0 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.rankicon ) --[[ @ 0]]
			f26_arg0.emblem:completeAnimation() --[[ @ 0]]
			f26_arg0.emblem:setAlpha( 0 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.emblem ) --[[ @ 0]]
			f26_arg0.LeaderBacking:completeAnimation() --[[ @ 0]]
			f26_arg0.LeaderBacking:setAlpha( 0 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.LeaderBacking ) --[[ @ 0]]
			f26_arg0.membername:completeAnimation() --[[ @ 0]]
			f26_arg0.membername:setAlpha( 0 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.membername ) --[[ @ 0]]
			f26_arg0.CornerDotBRAnim2:completeAnimation() --[[ @ 0]]
			f26_arg0.CornerDotBRAnim2:setAlpha( 0 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.CornerDotBRAnim2 ) --[[ @ 0]]
			f26_arg0.CornerLineBRAnim4:completeAnimation() --[[ @ 0]]
			f26_arg0.CornerLineBRAnim4:setAlpha( 0 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.CornerLineBRAnim4 ) --[[ @ 0]]
			f26_arg0.VoipWaves:completeAnimation() --[[ @ 0]]
			f26_arg0.VoipWaves:setAlpha( 0 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.VoipWaves ) --[[ @ 0]]
			f26_arg0.DirectorCustomStartButton:completeAnimation() --[[ @ 0]]
			f26_arg0.DirectorCustomStartButton:setAlpha( 1 ) --[[ @ 0]]
			f26_arg0.DirectorCustomStartButton:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.DirectorCustomStartButton ) --[[ @ 0]]
			f26_arg0.FrontendFrame02:completeAnimation() --[[ @ 0]]
			f26_arg0.FrontendFrame02:setAlpha( 0 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.FrontendFrame02 ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f27_arg0, f27_arg1 )
			f27_arg0:__resetProperties() --[[ @ 0]]
			f27_arg0:setupElementClipCounter( 12 ) --[[ @ 0]]
			f27_arg0.EmptyBacking:completeAnimation() --[[ @ 0]]
			f27_arg0.EmptyBacking:setAlpha( 0 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.EmptyBacking ) --[[ @ 0]]
			f27_arg0.TeamColorBacking:completeAnimation() --[[ @ 0]]
			f27_arg0.TeamColorBacking:setAlpha( 0 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.TeamColorBacking ) --[[ @ 0]]
			f27_arg0.EmblemBacking:completeAnimation() --[[ @ 0]]
			f27_arg0.EmblemBacking:setAlpha( 0 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.EmblemBacking ) --[[ @ 0]]
			f27_arg0.rankicon:completeAnimation() --[[ @ 0]]
			f27_arg0.rankicon:setAlpha( 0 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.rankicon ) --[[ @ 0]]
			f27_arg0.emblem:completeAnimation() --[[ @ 0]]
			f27_arg0.emblem:setAlpha( 0 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.emblem ) --[[ @ 0]]
			f27_arg0.LeaderBacking:completeAnimation() --[[ @ 0]]
			f27_arg0.LeaderBacking:setAlpha( 0 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.LeaderBacking ) --[[ @ 0]]
			f27_arg0.membername:completeAnimation() --[[ @ 0]]
			f27_arg0.membername:setAlpha( 0 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.membername ) --[[ @ 0]]
			f27_arg0.CornerDotBRAnim2:completeAnimation() --[[ @ 0]]
			f27_arg0.CornerDotBRAnim2:setAlpha( 0 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.CornerDotBRAnim2 ) --[[ @ 0]]
			f27_arg0.CornerLineBRAnim4:completeAnimation() --[[ @ 0]]
			f27_arg0.CornerLineBRAnim4:setAlpha( 0 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.CornerLineBRAnim4 ) --[[ @ 0]]
			f27_arg0.VoipWaves:completeAnimation() --[[ @ 0]]
			f27_arg0.VoipWaves:setAlpha( 0 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.VoipWaves ) --[[ @ 0]]
			local f27_local0 = function ( f28_arg0 )
				f27_arg0.DirectorCustomStartButton:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f27_arg0.DirectorCustomStartButton:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f27_arg0.DirectorCustomStartButton:registerEventHandler( "interrupted_keyframe", f27_arg0.clipInterrupted ) --[[ @ 0]]
				f27_arg0.DirectorCustomStartButton:registerEventHandler( "transition_complete_keyframe", f27_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f27_arg0.DirectorCustomStartButton:completeAnimation() --[[ @ 0]]
			f27_arg0.DirectorCustomStartButton:setAlpha( 1 ) --[[ @ 0]]
			f27_arg0.DirectorCustomStartButton:setScale( 1, 1 ) --[[ @ 0]]
			f27_local0( f27_arg0.DirectorCustomStartButton ) --[[ @ 0]]
			f27_arg0.FrontendFrame02:completeAnimation() --[[ @ 0]]
			f27_arg0.FrontendFrame02:setAlpha( 0 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.FrontendFrame02 ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f29_arg0, f29_arg1 )
			f29_arg0:__resetProperties() --[[ @ 0]]
			f29_arg0:setupElementClipCounter( 12 ) --[[ @ 0]]
			f29_arg0.EmptyBacking:completeAnimation() --[[ @ 0]]
			f29_arg0.EmptyBacking:setAlpha( 0 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.EmptyBacking ) --[[ @ 0]]
			f29_arg0.TeamColorBacking:completeAnimation() --[[ @ 0]]
			f29_arg0.TeamColorBacking:setAlpha( 0 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.TeamColorBacking ) --[[ @ 0]]
			f29_arg0.EmblemBacking:completeAnimation() --[[ @ 0]]
			f29_arg0.EmblemBacking:setAlpha( 0 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.EmblemBacking ) --[[ @ 0]]
			f29_arg0.rankicon:completeAnimation() --[[ @ 0]]
			f29_arg0.rankicon:setAlpha( 0 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.rankicon ) --[[ @ 0]]
			f29_arg0.emblem:completeAnimation() --[[ @ 0]]
			f29_arg0.emblem:setAlpha( 0 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.emblem ) --[[ @ 0]]
			f29_arg0.LeaderBacking:completeAnimation() --[[ @ 0]]
			f29_arg0.LeaderBacking:setAlpha( 0 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.LeaderBacking ) --[[ @ 0]]
			f29_arg0.membername:completeAnimation() --[[ @ 0]]
			f29_arg0.membername:setAlpha( 0 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.membername ) --[[ @ 0]]
			f29_arg0.CornerDotBRAnim2:completeAnimation() --[[ @ 0]]
			f29_arg0.CornerDotBRAnim2:setAlpha( 0 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.CornerDotBRAnim2 ) --[[ @ 0]]
			f29_arg0.CornerLineBRAnim4:completeAnimation() --[[ @ 0]]
			f29_arg0.CornerLineBRAnim4:setAlpha( 0 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.CornerLineBRAnim4 ) --[[ @ 0]]
			f29_arg0.VoipWaves:completeAnimation() --[[ @ 0]]
			f29_arg0.VoipWaves:setAlpha( 0 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.VoipWaves ) --[[ @ 0]]
			local f29_local0 = function ( f30_arg0 )
				f29_arg0.DirectorCustomStartButton:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f29_arg0.DirectorCustomStartButton:setScale( 1, 1 ) --[[ @ 0]]
				f29_arg0.DirectorCustomStartButton:registerEventHandler( "interrupted_keyframe", f29_arg0.clipInterrupted ) --[[ @ 0]]
				f29_arg0.DirectorCustomStartButton:registerEventHandler( "transition_complete_keyframe", f29_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f29_arg0.DirectorCustomStartButton:completeAnimation() --[[ @ 0]]
			f29_arg0.DirectorCustomStartButton:setAlpha( 1 ) --[[ @ 0]]
			f29_arg0.DirectorCustomStartButton:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f29_local0( f29_arg0.DirectorCustomStartButton ) --[[ @ 0]]
			f29_arg0.FrontendFrame02:completeAnimation() --[[ @ 0]]
			f29_arg0.FrontendFrame02:setAlpha( 0 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.FrontendFrame02 ) --[[ @ 0]]
		end
	},
	Empty = {
		DefaultClip = function ( f31_arg0, f31_arg1 )
			f31_arg0:__resetProperties() --[[ @ 0]]
			f31_arg0:setupElementClipCounter( 8 ) --[[ @ 0]]
			f31_arg0.EmptyBacking:completeAnimation() --[[ @ 0]]
			f31_arg0.EmptyBacking:setAlpha( 0 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.EmptyBacking ) --[[ @ 0]]
			f31_arg0.TeamColorBacking:completeAnimation() --[[ @ 0]]
			f31_arg0.TeamColorBacking:setAlpha( 0 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.TeamColorBacking ) --[[ @ 0]]
			f31_arg0.EmblemBacking:completeAnimation() --[[ @ 0]]
			f31_arg0.EmblemBacking:setAlpha( 0 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.EmblemBacking ) --[[ @ 0]]
			f31_arg0.rankicon:completeAnimation() --[[ @ 0]]
			f31_arg0.rankicon:setAlpha( 0 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.rankicon ) --[[ @ 0]]
			f31_arg0.emblem:completeAnimation() --[[ @ 0]]
			f31_arg0.emblem:setAlpha( 0 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.emblem ) --[[ @ 0]]
			f31_arg0.LeaderBacking:completeAnimation() --[[ @ 0]]
			f31_arg0.LeaderBacking:setAlpha( 0 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.LeaderBacking ) --[[ @ 0]]
			f31_arg0.membername:completeAnimation() --[[ @ 0]]
			f31_arg0.membername:setAlpha( 0 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.membername ) --[[ @ 0]]
			f31_arg0.VoipWaves:completeAnimation() --[[ @ 0]]
			f31_arg0.VoipWaves:setAlpha( 0 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.VoipWaves ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
if not CoD.isPC then
	CoD.DirectorCustomGameMember.__clipsPerState.DefaultState.ChildFocus = nil --[[ @ 0]]
	CoD.DirectorCustomGameMember.__clipsPerState.DefaultState.GainChildFocus = nil --[[ @ 0]]
	CoD.DirectorCustomGameMember.__clipsPerState.DefaultState.LoseChildFocus = nil --[[ @ 0]]
end
CoD.DirectorCustomGameMember.__onClose = function ( f32_arg0 )
	f32_arg0.EmptyBacking:close() --[[ @ 0]]
	f32_arg0.TeamColorBacking:close() --[[ @ 0]]
	f32_arg0.rankicon:close() --[[ @ 0]]
	f32_arg0.emblem:close() --[[ @ 0]]
	f32_arg0.LeaderBacking:close() --[[ @ 0]]
	f32_arg0.membername:close() --[[ @ 0]]
	f32_arg0.VoipWaves:close() --[[ @ 0]]
	f32_arg0.DirectorCustomStartButton:close() --[[ @ 0]]
	f32_arg0.emptyFocusable:close() --[[ @ 0]]
end
 --[[ @ 0]]
