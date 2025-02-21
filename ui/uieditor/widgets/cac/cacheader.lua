-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/cac/classallocation" ) --[[ @ 0]]
require( "x64:6ce70b402442139b" ) --[[ @ 0]]
require( "ui/uieditor/widgets/store/storecommontextbacking" ) --[[ @ 0]]

CoD.CACHeader = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CACHeader.__defaultWidth = 1920 --[[ @ 0]]
CoD.CACHeader.__defaultHeight = 67 --[[ @ 0]]
CoD.CACHeader.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CACHeader ) --[[ @ 0]]
	self.id = "CACHeader" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local BGSceneBlur = LUI.UIImage.new( -0.1, 1.1, 0, 0, 0, 0, -15, 52 ) --[[ @ 0]]
	BGSceneBlur:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	BGSceneBlur:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	BGSceneBlur:registerEventHandler( "menu_loaded", function ( element, event )
		local f2_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f2_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f2_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		if IsPC() then
			SizeToWidthOfScreen( element, f1_arg1 ) --[[ @ 0]]
		end
		if not f2_local0 then
			f2_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f2_local0
	end ) --[[ @ 0]]
	self:addElement( BGSceneBlur ) --[[ @ 0]]
	self.BGSceneBlur = BGSceneBlur --[[ @ 0]]
	
	local f1_local2 = nil --[[ @ 0]]
	self.background2 = LUI.UIElement.createFake() --[[ @ 0]]
	local ingamePCBacking = nil --[[ @ 0]]
	
	ingamePCBacking = LUI.UIImage.new( -0.1, 1.1, 0, 0, 0, 0, -15, 52 ) --[[ @ 0]]
	ingamePCBacking:setRGB( 0.09, 0.09, 0.09 ) --[[ @ 0]]
	ingamePCBacking:setAlpha( 0.5 ) --[[ @ 0]]
	ingamePCBacking:registerEventHandler( "menu_loaded", function ( element, event )
		local f3_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f3_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f3_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		if InFrontend() then
			HideWidget( element ) --[[ @ 0]]
		else
			SizeToWidthOfScreen( element, f1_arg1 ) --[[ @ 0]]
		end
		if not f3_local0 then
			f3_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f3_local0
	end ) --[[ @ 0]]
	self:addElement( ingamePCBacking ) --[[ @ 0]]
	self.ingamePCBacking = ingamePCBacking --[[ @ 0]]
	
	local DotTiledBacking = CoD.StoreCommonTextBacking.new( f1_arg0, f1_arg1, -0.2, 2.3, -1344, -1344, 0, 0, 10, 52 ) --[[ @ 0]]
	DotTiledBacking:setAlpha( 0.5 ) --[[ @ 0]]
	DotTiledBacking.NoiseBacking:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( DotTiledBacking ) --[[ @ 0]]
	self.DotTiledBacking = DotTiledBacking --[[ @ 0]]
	
	local allocation = CoD.ClassAllocation.new( f1_arg0, f1_arg1, 0.5, 0.5, 513, 960, 0, 0, 21.5, 45.5 ) --[[ @ 0]]
	allocation:linkToElementModel( self, nil, false, function ( model )
		allocation:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	allocation:registerEventHandler( "update_class", function ( element, event )
		local f5_local0 = nil --[[ @ 0]]
		UpdateAllocationBar( self, element, f1_arg1 ) --[[ @ 0]]
		if not f5_local0 then
			f5_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f5_local0
	end ) --[[ @ 0]]
	self:addElement( allocation ) --[[ @ 0]]
	self.allocation = allocation --[[ @ 0]]
	
	local TopBar2 = LUI.UIImage.new( -0.65, 1.85, -192, -192, 0, 0, 50, 53 ) --[[ @ 0]]
	TopBar2:setRGB( 0.46, 0.46, 0.51 ) --[[ @ 0]]
	TopBar2:setAlpha( 0.8 ) --[[ @ 0]]
	TopBar2:setImage( RegisterImage( @"uie_ui_menu_cac_primary_button_top_bar" ) ) --[[ @ 0]]
	TopBar2:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	TopBar2:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
	TopBar2:registerEventHandler( "menu_loaded", function ( element, event )
		local f6_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f6_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f6_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		if IsPC() then
			SizeToWidthOfScreen( element, f1_arg1 ) --[[ @ 0]]
		end
		if not f6_local0 then
			f6_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f6_local0
	end ) --[[ @ 0]]
	self:addElement( TopBar2 ) --[[ @ 0]]
	self.TopBar2 = TopBar2 --[[ @ 0]]
	
	local subtitle = CoD.CommonHeaderText.new( f1_arg0, f1_arg1, 0.5, 0.5, -926.5, 107.5, 0, 0, 16, 46 ) --[[ @ 0]]
	subtitle.StageTitle:setText( LocalizeToUpperString( @"hash_5EEF90B1483C4C23" ) ) --[[ @ 0]]
	subtitle:subscribeToGlobalModel( f1_arg1, "LobbyRoot", "lobbyTitle", function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			subtitle.subtitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( f7_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( subtitle ) --[[ @ 0]]
	self.subtitle = subtitle --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "MultiplayerPC",
			condition = function ( menu, element, event )
				return IsPC() and IsMultiplayer()
			end
		},
		{
			stateName = "ZombiesPC",
			condition = function ( menu, element, event )
				return IsPC() and IsZombies()
			end
		},
		{
			stateName = "WarzonePC",
			condition = function ( menu, element, event )
				return IsPC() and IsWarzone()
			end
		},
		{
			stateName = "ArenaPC",
			condition = function ( menu, element, event )
				return IsPC() and IsArenaMode()
			end
		},
		{
			stateName = "DefaultPC",
			condition = function ( menu, element, event )
				return IsPC()
			end
		},
		{
			stateName = "Arena",
			condition = function ( menu, element, event )
				return IsArenaMode()
			end
		},
		{
			stateName = "Warzone",
			condition = function ( menu, element, event )
				return IsWarzone()
			end
		},
		{
			stateName = "Zombies",
			condition = function ( menu, element, event )
				return IsZombies()
			end
		},
		{
			stateName = "Multiplayer",
			condition = function ( menu, element, event )
				return IsMultiplayer()
			end
		}
	} ) --[[ @ 0]]
	local f1_local8 = self --[[ @ 0]]
	local f1_local9 = self.subscribeToModel --[[ @ 0]]
	local f1_local10 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local9( f1_local8, f1_local10["lobbyRoot.lobbyNav"], function ( f17_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f17_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CACHeader.__resetProperties = function ( f18_arg0 )
	f18_arg0.allocation:completeAnimation() --[[ @ 0]]
	f18_arg0.TopBar2:completeAnimation() --[[ @ 0]]
	f18_arg0.allocation:setAlpha( 1 ) --[[ @ 0]]
	f18_arg0.TopBar2:setRGB( 0.46, 0.46, 0.51 ) --[[ @ 0]]
	f18_arg0.TopBar2:setAlpha( 0.8 ) --[[ @ 0]]
	f18_arg0.TopBar2:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	f18_arg0.TopBar2:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CACHeader.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f19_arg0.allocation:completeAnimation() --[[ @ 0]]
			f19_arg0.allocation:setAlpha( 1 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.allocation ) --[[ @ 0]]
		end
	},
	MultiplayerPC = {
		DefaultClip = function ( f20_arg0, f20_arg1 )
			f20_arg0:__resetProperties() --[[ @ 0]]
			f20_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	ZombiesPC = {
		DefaultClip = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f21_arg0.TopBar2:completeAnimation() --[[ @ 0]]
			f21_arg0.TopBar2:setRGB( 0.83, 0.11, 0.01 ) --[[ @ 0]]
			f21_arg0.TopBar2:setAlpha( 1 ) --[[ @ 0]]
			f21_arg0.TopBar2:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_F755127C95CF5B6" ) ) --[[ @ 0]]
			f21_arg0.TopBar2:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.TopBar2 ) --[[ @ 0]]
		end
	},
	WarzonePC = {
		DefaultClip = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	ArenaPC = {
		DefaultClip = function ( f23_arg0, f23_arg1 )
			f23_arg0:__resetProperties() --[[ @ 0]]
			f23_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	DefaultPC = {
		DefaultClip = function ( f24_arg0, f24_arg1 )
			f24_arg0:__resetProperties() --[[ @ 0]]
			f24_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Arena = {
		DefaultClip = function ( f25_arg0, f25_arg1 )
			f25_arg0:__resetProperties() --[[ @ 0]]
			f25_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Warzone = {
		DefaultClip = function ( f26_arg0, f26_arg1 )
			f26_arg0:__resetProperties() --[[ @ 0]]
			f26_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Zombies = {
		DefaultClip = function ( f27_arg0, f27_arg1 )
			f27_arg0:__resetProperties() --[[ @ 0]]
			f27_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f27_arg0.allocation:completeAnimation() --[[ @ 0]]
			f27_arg0.allocation:setAlpha( 0 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.allocation ) --[[ @ 0]]
			f27_arg0.TopBar2:completeAnimation() --[[ @ 0]]
			f27_arg0.TopBar2:setRGB( 0.83, 0.11, 0.01 ) --[[ @ 0]]
			f27_arg0.TopBar2:setAlpha( 1 ) --[[ @ 0]]
			f27_arg0.TopBar2:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_F755127C95CF5B6" ) ) --[[ @ 0]]
			f27_arg0.TopBar2:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.TopBar2 ) --[[ @ 0]]
		end
	},
	Multiplayer = {
		DefaultClip = function ( f28_arg0, f28_arg1 )
			f28_arg0:__resetProperties() --[[ @ 0]]
			f28_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.CACHeader.__onClose = function ( f29_arg0 )
	f29_arg0.DotTiledBacking:close() --[[ @ 0]]
	f29_arg0.allocation:close() --[[ @ 0]]
	f29_arg0.subtitle:close() --[[ @ 0]]
end
 --[[ @ 0]]
