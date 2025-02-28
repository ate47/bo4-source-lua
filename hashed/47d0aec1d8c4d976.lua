-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "ui/uieditor/widgets/emptyfocusable" ) --[[ @ 0]]
require( "ui/uieditor/widgets/footer/fe_footerrighslidein" ) --[[ @ 0]]
require( "ui/uieditor/widgets/gamesettings/gamesettings_optionscontainer" ) --[[ @ 0]]

CoD.GameSettings_OptionsMenu = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.GameSettings_OptionsMenu = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "GameSettings_OptionsMenu", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	self:setClass( CoD.GameSettings_OptionsMenu ) --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_local1:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Blackfade = LUI.UIImage.new( 0, 1, -393, 17, 0, 0, 0, 1080 ) --[[ @ 0]]
	Blackfade:setRGB( 0, 0, 0 ) --[[ @ 0]]
	Blackfade:setAlpha( 0.35 ) --[[ @ 0]]
	self:addElement( Blackfade ) --[[ @ 0]]
	self.Blackfade = Blackfade --[[ @ 0]]
	
	local leftBackground = LUI.UIImage.new( 1, 1, -532, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	leftBackground:setRGB( 0.04, 0.04, 0.04 ) --[[ @ 0]]
	leftBackground:setAlpha( 0.98 ) --[[ @ 0]]
	self:addElement( leftBackground ) --[[ @ 0]]
	self.leftBackground = leftBackground --[[ @ 0]]
	
	local GameSettingsOptionsContainer0 = CoD.GameSettings_OptionsContainer.new( f1_local1, f1_arg0, 1, 1, -544, 0, 0, 0, 0, 1080 ) --[[ @ 0]]
	GameSettingsOptionsContainer0:registerEventHandler( "gain_focus", function ( element, event )
		local f2_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f2_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f2_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xbb_pscircle"] ) --[[ @ 0]]
		return f2_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( GameSettingsOptionsContainer0, f1_arg0, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], nil, function ( element, menu, controller, model )
		GoBack( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], @"menu/back", nil, nil ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	self:addElement( GameSettingsOptionsContainer0 ) --[[ @ 0]]
	self.GameSettingsOptionsContainer0 = GameSettingsOptionsContainer0 --[[ @ 0]]
	
	local tileTexture = LUI.UIImage.new( 1, 1, -533, 4, 0, 1, 0, 0 ) --[[ @ 0]]
	tileTexture:setAlpha( 0.5 ) --[[ @ 0]]
	tileTexture:setImage( RegisterImage( @"uie_t7_tile_texture" ) ) --[[ @ 0]]
	tileTexture:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_tile_scroll" ) ) --[[ @ 0]]
	tileTexture:setShaderVector( 0, 30, 55, 0, 0 ) --[[ @ 0]]
	tileTexture:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( tileTexture ) --[[ @ 0]]
	self.tileTexture = tileTexture --[[ @ 0]]
	
	local fefooterRighSlideIn = CoD.fe_footerRighSlideIn.new( f1_local1, f1_arg0, 1, 1, -696, -48, 1, 1, -112, -64 ) --[[ @ 0]]
	self:addElement( fefooterRighSlideIn ) --[[ @ 0]]
	self.fefooterRighSlideIn = fefooterRighSlideIn --[[ @ 0]]
	
	local emptyFocusable = CoD.emptyFocusable.new( f1_local1, f1_arg0, 0, 0, -393, 1387, 0, 0, 0, 1080 ) --[[ @ 0]]
	emptyFocusable:registerEventHandler( "gain_focus", function ( element, event )
		local f5_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f5_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f5_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_none"] ) --[[ @ 0]]
		return f5_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( emptyFocusable, f1_arg0, Enum[@"luibutton"][@"lui_key_none"], "MOUSE1", function ( element, menu, controller, model )
		if not IsRepeatButtonPress( model ) then
			GoBack( self, controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not IsRepeatButtonPress( nil ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_none"], @"hash_0", nil, "MOUSE1" ) --[[ @ 0]]
			return false
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( emptyFocusable ) --[[ @ 0]]
	self.emptyFocusable = emptyFocusable --[[ @ 0]]
	
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_start"], "ui_contextual_1", function ( element, menu, controller, model )
		GoBack( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_start"], @"hash_0", nil, "ui_contextual_1" ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], "ESCAPE", function ( element, menu, controller, model )
		if IsPC() then
			GoBack( self, controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsPC() then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], @"menu/back", nil, "ESCAPE" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	GameSettingsOptionsContainer0.id = "GameSettingsOptionsContainer0" --[[ @ 0]]
	fefooterRighSlideIn.buttons:setModel( self.buttonModel, f1_arg0 ) --[[ @ 0]]
	if CoD.isPC then
		fefooterRighSlideIn.id = "fefooterRighSlideIn" --[[ @ 0]]
	end
	emptyFocusable.id = "emptyFocusable" --[[ @ 0]]
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	self.__defaultFocus = GameSettingsOptionsContainer0 --[[ @ 0]]
	if CoD.isPC and (IsKeyboard( f1_arg0 ) or self.ignoreCursor) then
		self:restoreState( f1_arg0 ) --[[ @ 0]]
	end
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.GameSettings_OptionsMenu.__resetProperties = function ( f12_arg0 )
	f12_arg0.emptyFocusable:completeAnimation() --[[ @ 0]]
	f12_arg0.fefooterRighSlideIn:completeAnimation() --[[ @ 0]]
	f12_arg0.tileTexture:completeAnimation() --[[ @ 0]]
	f12_arg0.GameSettingsOptionsContainer0:completeAnimation() --[[ @ 0]]
	f12_arg0.leftBackground:completeAnimation() --[[ @ 0]]
	f12_arg0.Blackfade:completeAnimation() --[[ @ 0]]
	f12_arg0.emptyFocusable:setLeftRight( 0, 0, -393, 1387 ) --[[ @ 0]]
	f12_arg0.emptyFocusable:setTopBottom( 0, 0, 0, 1080 ) --[[ @ 0]]
	f12_arg0.emptyFocusable:setAlpha( 1 ) --[[ @ 0]]
	f12_arg0.fefooterRighSlideIn:setLeftRight( 1, 1, -696, -48 ) --[[ @ 0]]
	f12_arg0.fefooterRighSlideIn:setTopBottom( 1, 1, -112, -64 ) --[[ @ 0]]
	f12_arg0.fefooterRighSlideIn:setAlpha( 1 ) --[[ @ 0]]
	f12_arg0.tileTexture:setLeftRight( 1, 1, -533, 4 ) --[[ @ 0]]
	f12_arg0.tileTexture:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	f12_arg0.tileTexture:setAlpha( 0.5 ) --[[ @ 0]]
	f12_arg0.GameSettingsOptionsContainer0:setLeftRight( 1, 1, -544, 0 ) --[[ @ 0]]
	f12_arg0.GameSettingsOptionsContainer0:setTopBottom( 0, 0, 0, 1080 ) --[[ @ 0]]
	f12_arg0.GameSettingsOptionsContainer0:setAlpha( 1 ) --[[ @ 0]]
	f12_arg0.leftBackground:setLeftRight( 1, 1, -532, 0 ) --[[ @ 0]]
	f12_arg0.leftBackground:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	f12_arg0.leftBackground:setAlpha( 0.98 ) --[[ @ 0]]
	f12_arg0.Blackfade:setLeftRight( 0, 1, -393, 17 ) --[[ @ 0]]
	f12_arg0.Blackfade:setTopBottom( 0, 0, 0, 1080 ) --[[ @ 0]]
	f12_arg0.Blackfade:setAlpha( 0.35 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.GameSettings_OptionsMenu.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Intro = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			local f14_local0 = function ( f15_arg0 )
				f14_arg0.Blackfade:beginAnimation( 150 ) --[[ @ 0]]
				f14_arg0.Blackfade:setLeftRight( 0, 1, -393, 17 ) --[[ @ 0]]
				f14_arg0.Blackfade:setAlpha( 0.35 ) --[[ @ 0]]
				f14_arg0.Blackfade:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
				f14_arg0.Blackfade:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.Blackfade:completeAnimation() --[[ @ 0]]
			f14_arg0.Blackfade:setLeftRight( 0.19, 1.19, -393, 17 ) --[[ @ 0]]
			f14_arg0.Blackfade:setTopBottom( 0, 0, 0, 1080 ) --[[ @ 0]]
			f14_arg0.Blackfade:setAlpha( 0 ) --[[ @ 0]]
			f14_local0( f14_arg0.Blackfade ) --[[ @ 0]]
			local f14_local1 = function ( f16_arg0 )
				f14_arg0.leftBackground:beginAnimation( 150 ) --[[ @ 0]]
				f14_arg0.leftBackground:setLeftRight( 1, 1, -532, 0 ) --[[ @ 0]]
				f14_arg0.leftBackground:setAlpha( 0.98 ) --[[ @ 0]]
				f14_arg0.leftBackground:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
				f14_arg0.leftBackground:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.leftBackground:completeAnimation() --[[ @ 0]]
			f14_arg0.leftBackground:setLeftRight( 1, 1, -160, 372 ) --[[ @ 0]]
			f14_arg0.leftBackground:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
			f14_arg0.leftBackground:setAlpha( 0 ) --[[ @ 0]]
			f14_local1( f14_arg0.leftBackground ) --[[ @ 0]]
			local f14_local2 = function ( f17_arg0 )
				f14_arg0.GameSettingsOptionsContainer0:beginAnimation( 150 ) --[[ @ 0]]
				f14_arg0.GameSettingsOptionsContainer0:setLeftRight( 1, 1, -544, 0 ) --[[ @ 0]]
				f14_arg0.GameSettingsOptionsContainer0:setAlpha( 1 ) --[[ @ 0]]
				f14_arg0.GameSettingsOptionsContainer0:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
				f14_arg0.GameSettingsOptionsContainer0:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.GameSettingsOptionsContainer0:completeAnimation() --[[ @ 0]]
			f14_arg0.GameSettingsOptionsContainer0:setLeftRight( 1, 1, -172, 372 ) --[[ @ 0]]
			f14_arg0.GameSettingsOptionsContainer0:setTopBottom( 0, 0, 0, 1080 ) --[[ @ 0]]
			f14_arg0.GameSettingsOptionsContainer0:setAlpha( 0 ) --[[ @ 0]]
			f14_local2( f14_arg0.GameSettingsOptionsContainer0 ) --[[ @ 0]]
			local f14_local3 = function ( f18_arg0 )
				f14_arg0.tileTexture:beginAnimation( 150 ) --[[ @ 0]]
				f14_arg0.tileTexture:setLeftRight( 1, 1, -533, 4 ) --[[ @ 0]]
				f14_arg0.tileTexture:setAlpha( 0.5 ) --[[ @ 0]]
				f14_arg0.tileTexture:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
				f14_arg0.tileTexture:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.tileTexture:completeAnimation() --[[ @ 0]]
			f14_arg0.tileTexture:setLeftRight( 1, 1, -161, 376 ) --[[ @ 0]]
			f14_arg0.tileTexture:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
			f14_arg0.tileTexture:setAlpha( 0 ) --[[ @ 0]]
			f14_local3( f14_arg0.tileTexture ) --[[ @ 0]]
			local f14_local4 = function ( f19_arg0 )
				f14_arg0.fefooterRighSlideIn:beginAnimation( 150 ) --[[ @ 0]]
				f14_arg0.fefooterRighSlideIn:setLeftRight( 1, 1, -696, -48 ) --[[ @ 0]]
				f14_arg0.fefooterRighSlideIn:setAlpha( 1 ) --[[ @ 0]]
				f14_arg0.fefooterRighSlideIn:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
				f14_arg0.fefooterRighSlideIn:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.fefooterRighSlideIn:completeAnimation() --[[ @ 0]]
			f14_arg0.fefooterRighSlideIn:setLeftRight( 1, 1, -324, 324 ) --[[ @ 0]]
			f14_arg0.fefooterRighSlideIn:setTopBottom( 1, 1, -112, -64 ) --[[ @ 0]]
			f14_arg0.fefooterRighSlideIn:setAlpha( 0 ) --[[ @ 0]]
			f14_local4( f14_arg0.fefooterRighSlideIn ) --[[ @ 0]]
			local f14_local5 = function ( f20_arg0 )
				f14_arg0.emptyFocusable:beginAnimation( 150 ) --[[ @ 0]]
				f14_arg0.emptyFocusable:setLeftRight( 0, 0, -393, 1387 ) --[[ @ 0]]
				f14_arg0.emptyFocusable:setAlpha( 1 ) --[[ @ 0]]
				f14_arg0.emptyFocusable:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
				f14_arg0.emptyFocusable:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.emptyFocusable:completeAnimation() --[[ @ 0]]
			f14_arg0.emptyFocusable:setLeftRight( 0, 0, -21, 1759 ) --[[ @ 0]]
			f14_arg0.emptyFocusable:setTopBottom( 0, 0, 0, 1080 ) --[[ @ 0]]
			f14_arg0.emptyFocusable:setAlpha( 0 ) --[[ @ 0]]
			f14_local5( f14_arg0.emptyFocusable ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.GameSettings_OptionsMenu.__onClose = function ( f21_arg0 )
	f21_arg0.GameSettingsOptionsContainer0:close() --[[ @ 0]]
	f21_arg0.fefooterRighSlideIn:close() --[[ @ 0]]
	f21_arg0.emptyFocusable:close() --[[ @ 0]]
end
 --[[ @ 0]]
