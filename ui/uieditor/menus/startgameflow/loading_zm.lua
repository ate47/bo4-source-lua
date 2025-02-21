-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/startgameflow/loadingscreensharedcpzm" ) --[[ @ 0]]
require( "x64:5c0887595cfb6bb1" ) --[[ @ 0]]

CoD.Loading_ZM = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.Loading_ZM = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "Loading_ZM", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	CoD.MapUtility.PlayMapLoadingMusic() --[[ @ 0]]
	CoD.BaseUtility.InitGlobalModel( "mapLoaded", false ) --[[ @ 0]]
	self:setClass( CoD.Loading_ZM ) --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_local1:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local BlackBackground = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BlackBackground:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BlackBackground:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( BlackBackground ) --[[ @ 0]]
	self.BlackBackground = BlackBackground --[[ @ 0]]
	
	local LoadingScreenSharedCPZM = CoD.LoadingScreenSharedCPZM.new( f1_local1, f1_arg0, 0.5, 0.5, -960, 960, 0.5, 0.5, -540, 540 ) --[[ @ 0]]
	self:addElement( LoadingScreenSharedCPZM ) --[[ @ 0]]
	self.LoadingScreenSharedCPZM = LoadingScreenSharedCPZM --[[ @ 0]]
	
	local BlackFadeOut = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BlackFadeOut:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BlackFadeOut:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( BlackFadeOut ) --[[ @ 0]]
	self.BlackFadeOut = BlackFadeOut --[[ @ 0]]
	
	local PCNotifContainer = nil --[[ @ 0]]
	
	PCNotifContainer = CoD.PC_Notif_Container.new( f1_local1, f1_arg0, 0.5, 0.5, 470, 920, 0, 0, 106, 206 ) --[[ @ 0]]
	self:addElement( PCNotifContainer ) --[[ @ 0]]
	self.PCNotifContainer = PCNotifContainer --[[ @ 0]]
	
	local f1_local6 = self --[[ @ 0]]
	local f1_local7 = self.subscribeToModel --[[ @ 0]]
	local f1_local8 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local7( f1_local6, f1_local8.mapLoaded, function ( f2_arg0, f2_arg1 )
		CoD.Menu.UpdateButtonShownState( f2_arg1, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f2_arg1, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_none"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:registerEventHandler( "loading_startplay", function ( self, event )
		local f3_local0 = nil --[[ @ 0]]
		CoD.HUDUtility.StartPlay( self, f1_arg0 ) --[[ @ 0]]
		if not f3_local0 then
			f3_local0 = self:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f3_local0
	end ) --[[ @ 0]]
	self:registerEventHandler( "loading_nomovie_startplay", function ( self, event )
		local f4_local0 = nil --[[ @ 0]]
		if IsZombies() and IsSplitscreenAndInGame( f1_arg0 ) then
			CoD.HUDUtility.StartPlay( self, f1_arg0 ) --[[ @ 0]]
			HideWidget( self ) --[[ @ 0]]
		end
		if not f4_local0 then
			f4_local0 = self:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f4_local0
	end ) --[[ @ 0]]
	self:registerEventHandler( "loading_displaycontinue", function ( self, event )
		local f5_local0 = nil --[[ @ 0]]
		SetGlobalModelValueTrue( "mapLoaded" ) --[[ @ 0]]
		if not f5_local0 then
			f5_local0 = self:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f5_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		if CoD.ModelUtility.IsGlobalModelValueTrue( "mapLoaded" ) then
			CoD.HUDUtility.StartPlay( element, controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if CoD.ModelUtility.IsGlobalModelValueTrue( "mapLoaded" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_0", nil, "ui_confirm" ) --[[ @ 0]]
			return false
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_none"], "ESCAPE", function ( element, menu, controller, model )
		if CoD.ModelUtility.IsGlobalModelValueTrue( "mapLoaded" ) then
			CoD.HUDUtility.StartPlay( element, controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if CoD.ModelUtility.IsGlobalModelValueTrue( "mapLoaded" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_none"], @"hash_0", nil, "ESCAPE" ) --[[ @ 0]]
			return false
		else
			return false
		end
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "close", function ( element )
		if IsPC() then
			LockInput( self, f1_arg0, false ) --[[ @ 0]]
			CoD.PCUtility.UnlockUIShortcutInput( f1_local1, f1_arg0 ) --[[ @ 0]]
		else
			LockInput( self, f1_arg0, false ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	LoadingScreenSharedCPZM.id = "LoadingScreenSharedCPZM" --[[ @ 0]]
	if CoD.isPC then
		PCNotifContainer.id = "PCNotifContainer" --[[ @ 0]]
	end
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	f1_local7 = self --[[ @ 0]]
	if IsPC() then
		LockInput( self, f1_arg0, true ) --[[ @ 0]]
		CoD.PCUtility.LockUIShortcutInput( f1_local1, f1_arg0 ) --[[ @ 0]]
		SetGlobalModelValueTrue( "mapLoaded" ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.Loading_ZM.__resetProperties = function ( f11_arg0 )
	f11_arg0.BlackBackground:completeAnimation() --[[ @ 0]]
	f11_arg0.LoadingScreenSharedCPZM:completeAnimation() --[[ @ 0]]
	f11_arg0.BlackFadeOut:completeAnimation() --[[ @ 0]]
	f11_arg0.BlackBackground:setAlpha( 0 ) --[[ @ 0]]
	f11_arg0.LoadingScreenSharedCPZM:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.BlackFadeOut:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.Loading_ZM.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f12_arg0.BlackBackground:completeAnimation() --[[ @ 0]]
			f12_arg0.BlackBackground:setAlpha( 1 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.BlackBackground ) --[[ @ 0]]
		end,
		Close = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f13_local0 = function ( f14_arg0 )
				local f14_local0 = function ( f15_arg0 )
					f15_arg0:beginAnimation( 9 ) --[[ @ 0]]
					f15_arg0:setAlpha( 0 ) --[[ @ 0]]
					f15_arg0:registerEventHandler( "transition_complete_keyframe", f13_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f13_arg0.BlackBackground:beginAnimation( 250 ) --[[ @ 0]]
				f13_arg0.BlackBackground:registerEventHandler( "interrupted_keyframe", f13_arg0.clipInterrupted ) --[[ @ 0]]
				f13_arg0.BlackBackground:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f13_arg0.BlackBackground:completeAnimation() --[[ @ 0]]
			f13_arg0.BlackBackground:setAlpha( 1 ) --[[ @ 0]]
			f13_local0( f13_arg0.BlackBackground ) --[[ @ 0]]
			local f13_local1 = function ( f16_arg0 )
				f13_arg0.LoadingScreenSharedCPZM:beginAnimation( 250 ) --[[ @ 0]]
				f13_arg0.LoadingScreenSharedCPZM:registerEventHandler( "interrupted_keyframe", f13_arg0.clipInterrupted ) --[[ @ 0]]
				f13_arg0.LoadingScreenSharedCPZM:registerEventHandler( "transition_complete_keyframe", f13_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f13_arg0.LoadingScreenSharedCPZM:completeAnimation() --[[ @ 0]]
			f13_arg0.LoadingScreenSharedCPZM:setAlpha( 0 ) --[[ @ 0]]
			f13_local1( f13_arg0.LoadingScreenSharedCPZM ) --[[ @ 0]]
			local f13_local2 = function ( f17_arg0 )
				local f17_local0 = function ( f18_arg0 )
					f18_arg0:beginAnimation( 250 ) --[[ @ 0]]
					f18_arg0:setAlpha( 0 ) --[[ @ 0]]
					f18_arg0:registerEventHandler( "transition_complete_keyframe", f13_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f13_arg0.BlackFadeOut:beginAnimation( 250 ) --[[ @ 0]]
				f13_arg0.BlackFadeOut:setAlpha( 1 ) --[[ @ 0]]
				f13_arg0.BlackFadeOut:registerEventHandler( "interrupted_keyframe", f13_arg0.clipInterrupted ) --[[ @ 0]]
				f13_arg0.BlackFadeOut:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f13_arg0.BlackFadeOut:completeAnimation() --[[ @ 0]]
			f13_arg0.BlackFadeOut:setAlpha( 0 ) --[[ @ 0]]
			f13_local2( f13_arg0.BlackFadeOut ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.Loading_ZM.__onClose = function ( f19_arg0 )
	f19_arg0.LoadingScreenSharedCPZM:close() --[[ @ 0]]
	f19_arg0.PCNotifContainer:close() --[[ @ 0]]
end
 --[[ @ 0]]
