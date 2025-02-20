-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "x64:21e4812bc9d39ec5" ) --[[ @ 0]]
require( "x64:26e89585b0aec491" ) --[[ @ 0]]
require( "ui/uieditor/widgets/common/commonheader" ) --[[ @ 0]]
require( "ui/uieditor/widgets/footer/footercontainer_frontend_right" ) --[[ @ 0]]
require( "ui/uieditor/widgets/header/header_container_frontend" ) --[[ @ 0]]
require( "x64:3f027dcc6409e42c" ) --[[ @ 0]]

CoD.LeaguePlayEndRankUpAnim = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.LeaguePlayEndRankUpAnim = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "LeaguePlayEndRankUpAnim", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	CoD.ArenaLeaguePlayUtility.SetupRankUpInfo( f1_local1, f1_arg0 ) --[[ @ 0]]
	self:setClass( CoD.LeaguePlayEndRankUpAnim ) --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_local1:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local BlurBg = LUI.UIImage.new( -0.5, 1.5, 0, 0, 0.5, 1.5, -540, -540 ) --[[ @ 0]]
	BlurBg:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	BlurBg:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( BlurBg ) --[[ @ 0]]
	self.BlurBg = BlurBg --[[ @ 0]]
	
	local Backing = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Backing:setRGB( 0, 0, 0 ) --[[ @ 0]]
	Backing:setAlpha( 0.8 ) --[[ @ 0]]
	self:addElement( Backing ) --[[ @ 0]]
	self.Backing = Backing --[[ @ 0]]
	
	local arenaLeaguePlayBg = CoD.arenaLeaguePlayBg.new( f1_local1, f1_arg0, 0, 0, 0, 1920, 0, 0, 0, 1080 ) --[[ @ 0]]
	self:addElement( arenaLeaguePlayBg ) --[[ @ 0]]
	self.arenaLeaguePlayBg = arenaLeaguePlayBg --[[ @ 0]]
	
	local FooterContainerFrontendRight = CoD.FooterContainer_Frontend_Right.new( f1_local1, f1_arg0, 0, 1, 0, 0, 1, 1, -48, 0 ) --[[ @ 0]]
	FooterContainerFrontendRight:registerEventHandler( "menu_loaded", function ( element, event )
		local f2_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f2_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f2_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		SizeToSafeArea( element, f1_arg0 ) --[[ @ 0]]
		if not f2_local0 then
			f2_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f2_local0
	end ) --[[ @ 0]]
	self:addElement( FooterContainerFrontendRight ) --[[ @ 0]]
	self.FooterContainerFrontendRight = FooterContainerFrontendRight --[[ @ 0]]
	
	local MainCornerL = LUI.UIImage.new( 0.5, 0.5, -784, -754, 0, 0, 146, 176 ) --[[ @ 0]]
	MainCornerL:setAlpha( 0.04 ) --[[ @ 0]]
	MainCornerL:setYRot( 180 ) --[[ @ 0]]
	MainCornerL:setImage( RegisterImage( @"uie_ui_hud_notifications_bracket_topright" ) ) --[[ @ 0]]
	self:addElement( MainCornerL ) --[[ @ 0]]
	self.MainCornerL = MainCornerL --[[ @ 0]]
	
	local MainCornerR = LUI.UIImage.new( 0.5, 0.5, 756, 786, 0, 0, 145, 175 ) --[[ @ 0]]
	MainCornerR:setAlpha( 0.04 ) --[[ @ 0]]
	MainCornerR:setImage( RegisterImage( @"uie_ui_hud_notifications_bracket_topright" ) ) --[[ @ 0]]
	self:addElement( MainCornerR ) --[[ @ 0]]
	self.MainCornerR = MainCornerR --[[ @ 0]]
	
	local LeaguePlayEndrankupAnimInternal = CoD.LeaguePlayEndrankupAnimInternal.new( f1_local1, f1_arg0, 0.5, 0.5, -300, 300, 0.5, 0.5, -400, 400 ) --[[ @ 0]]
	LeaguePlayEndrankupAnimInternal:subscribeToGlobalModel( f1_arg0, "LeaguePlay", nil, function ( model )
		LeaguePlayEndrankupAnimInternal:setModel( model, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( LeaguePlayEndrankupAnimInternal ) --[[ @ 0]]
	self.LeaguePlayEndrankupAnimInternal = LeaguePlayEndrankupAnimInternal --[[ @ 0]]
	
	local CommonHeader = CoD.CommonHeader.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 0, 0, 67 ) --[[ @ 0]]
	CommonHeader.subtitle.subtitle:setAlpha( 0 ) --[[ @ 0]]
	CommonHeader.subtitle.subtitle:setText( "" ) --[[ @ 0]]
	CommonHeader:subscribeToGlobalModel( f1_arg0, "Arena", "arenaTitle", function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			CommonHeader.subtitle.StageTitle:setText( LocalizeToUpperString( f4_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	CommonHeader:registerEventHandler( "menu_loaded", function ( element, event )
		local f5_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f5_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f5_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		SizeToSafeArea( element, f1_arg0 ) --[[ @ 0]]
		if not f5_local0 then
			f5_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f5_local0
	end ) --[[ @ 0]]
	self:addElement( CommonHeader ) --[[ @ 0]]
	self.CommonHeader = CommonHeader --[[ @ 0]]
	
	local BackingGrayMediumLeft = CoD.header_container_frontend.new( f1_local1, f1_arg0, 0, 0, 0, 1920, 0, 0, 0, 42 ) --[[ @ 0]]
	BackingGrayMediumLeft:registerEventHandler( "menu_loaded", function ( element, event )
		local f6_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f6_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f6_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		SizeToSafeArea( element, f1_arg0 ) --[[ @ 0]]
		if not f6_local0 then
			f6_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f6_local0
	end ) --[[ @ 0]]
	self:addElement( BackingGrayMediumLeft ) --[[ @ 0]]
	self.BackingGrayMediumLeft = BackingGrayMediumLeft --[[ @ 0]]
	
	local PCButton = nil --[[ @ 0]]
	
	PCButton = CoD.PC_MOTD_Buttons.new( f1_local1, f1_arg0, 0.5, 0.5, 650, 890, 0.8, 0.8, 27, 107 ) --[[ @ 0]]
	PCButton.OptionText:setText( LocalizeToUpperString( @"hash_66393FF34EA56966" ) ) --[[ @ 0]]
	PCButton:linkToElementModel( self, "image", true, function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			PCButton.Icon:setImage( RegisterImage( f7_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	PCButton:registerEventHandler( "gain_focus", function ( element, event )
		local f8_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f8_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f8_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_local1, f1_arg0, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		return f8_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( PCButton, f1_arg0, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], "ui_confirm", function ( element, menu, controller, model )
		GoBack( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_0", nil, "ui_confirm" ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	self:addElement( PCButton ) --[[ @ 0]]
	self.PCButton = PCButton --[[ @ 0]]
	
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], "ui_confirm", function ( element, menu, controller, model )
		CoD.ArenaLeaguePlayUtility.OpenLeaguePlayRankRewardsIfPossible( menu, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_66393FF34EA56966", nil, "ui_confirm" ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"LUIButton"][@"hash_1805EFA15E9E7E5A"], "ESCAPE", function ( element, menu, controller, model )
		if IsPC() then
			CoD.ArenaLeaguePlayUtility.OpenLeaguePlayRankRewardsIfPossible( menu, controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsPC() then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_1805EFA15E9E7E5A"], @"hash_370A9FDC87CD3D48", nil, "ESCAPE" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "close", function ( element )
		CoD.ArenaLeaguePlayUtility.PopulateLeaguePlayDatasources( f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	FooterContainerFrontendRight:setModel( self.buttonModel, f1_arg0 ) --[[ @ 0]]
	if CoD.isPC then
		FooterContainerFrontendRight.id = "FooterContainerFrontendRight" --[[ @ 0]]
	end
	if CoD.isPC then
		PCButton.id = "PCButton" --[[ @ 0]]
	end
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local12 = self --[[ @ 0]]
	MenuHidesFreeCursor( f1_local1, f1_arg0 ) --[[ @ 0]]
	CoD.ArenaLeaguePlayUtility.AnimateRankUp( f1_local1, f1_arg0 ) --[[ @ 0]]
	CoD.ArenaLeaguePlayUtility.SetInitialRankRubyState( f1_local1, self.LeaguePlayEndrankupAnimInternal, f1_arg0 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.LeaguePlayEndRankUpAnim.__resetProperties = function ( f16_arg0 )
	f16_arg0.LeaguePlayEndrankupAnimInternal:completeAnimation() --[[ @ 0]]
	f16_arg0.LeaguePlayEndrankupAnimInternal:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.LeaguePlayEndRankUpAnim.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f17_local0 = function ( f18_arg0 )
				f17_arg0.LeaguePlayEndrankupAnimInternal:beginAnimation( 200, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
				f17_arg0.LeaguePlayEndrankupAnimInternal:setAlpha( 1 ) --[[ @ 0]]
				f17_arg0.LeaguePlayEndrankupAnimInternal:registerEventHandler( "interrupted_keyframe", f17_arg0.clipInterrupted ) --[[ @ 0]]
				f17_arg0.LeaguePlayEndrankupAnimInternal:registerEventHandler( "transition_complete_keyframe", f17_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f17_arg0.LeaguePlayEndrankupAnimInternal:completeAnimation() --[[ @ 0]]
			f17_arg0.LeaguePlayEndrankupAnimInternal:setAlpha( 0 ) --[[ @ 0]]
			f17_local0( f17_arg0.LeaguePlayEndrankupAnimInternal ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.LeaguePlayEndRankUpAnim.__onClose = function ( f19_arg0 )
	f19_arg0.arenaLeaguePlayBg:close() --[[ @ 0]]
	f19_arg0.FooterContainerFrontendRight:close() --[[ @ 0]]
	f19_arg0.LeaguePlayEndrankupAnimInternal:close() --[[ @ 0]]
	f19_arg0.CommonHeader:close() --[[ @ 0]]
	f19_arg0.BackingGrayMediumLeft:close() --[[ @ 0]]
	f19_arg0.PCButton:close() --[[ @ 0]]
end
 --[[ @ 0]]
