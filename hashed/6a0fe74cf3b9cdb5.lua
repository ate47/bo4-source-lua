-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
require( "ui/uieditor/widgets/startmenu/startmenu_options_network_pinglistitem" ) --[[ @ 0]]

CoD.StartMenu_Options_Network_OverviewPanel = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.StartMenu_Options_Network_OverviewPanel.__defaultWidth = 880 --[[ @ 0]]
CoD.StartMenu_Options_Network_OverviewPanel.__defaultHeight = 775 --[[ @ 0]]
CoD.StartMenu_Options_Network_OverviewPanel.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.StartMenu_Options_Network_OverviewPanel ) --[[ @ 0]]
	self.id = "StartMenu_Options_Network_OverviewPanel" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local VersionLabel = LUI.UIText.new( 0.5, 0.5, -440, 265, 0, 0, 463, 493 ) --[[ @ 0]]
	VersionLabel:setRGB( 0.63, 0.57, 0.2 ) --[[ @ 0]]
	VersionLabel:setText( LocalizeToUpperString( @"hash_337A279B5F116079" ) ) --[[ @ 0]]
	VersionLabel:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	VersionLabel:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	self:addElement( VersionLabel ) --[[ @ 0]]
	self.VersionLabel = VersionLabel --[[ @ 0]]
	
	local VersionValueLabel = LUI.UIText.new( 0.5, 0.5, -440, 265, 0, 0, 512.5, 533.5 ) --[[ @ 0]]
	VersionValueLabel:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	VersionValueLabel:setTTF( "dinnext_regular" ) --[[ @ 0]]
	VersionValueLabel:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	VersionValueLabel:subscribeToGlobalModel( f1_arg1, "NetworkInfo", "version", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			VersionValueLabel:setText( CoD.BaseUtility.AlreadyLocalized( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( VersionValueLabel ) --[[ @ 0]]
	self.VersionValueLabel = VersionValueLabel --[[ @ 0]]
	
	local AboutPingBarsDesc = LUI.UIText.new( 0.5, 0.5, -440, 265, 0, 0, 162.5, 183.5 ) --[[ @ 0]]
	AboutPingBarsDesc:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	AboutPingBarsDesc:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_486F02B46AA2ABAF" ) ) --[[ @ 0]]
	AboutPingBarsDesc:setTTF( "dinnext_regular" ) --[[ @ 0]]
	AboutPingBarsDesc:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	AboutPingBarsDesc:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( AboutPingBarsDesc ) --[[ @ 0]]
	self.AboutPingBarsDesc = AboutPingBarsDesc --[[ @ 0]]
	
	local AboutPingBarsLabel = LUI.UIText.new( 0.5, 0.5, -440, 265, 0, 0, 113, 143 ) --[[ @ 0]]
	AboutPingBarsLabel:setRGB( 0.63, 0.57, 0.2 ) --[[ @ 0]]
	AboutPingBarsLabel:setText( LocalizeToUpperString( @"hash_1CCDEE5E97C5E45C" ) ) --[[ @ 0]]
	AboutPingBarsLabel:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	AboutPingBarsLabel:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	self:addElement( AboutPingBarsLabel ) --[[ @ 0]]
	self.AboutPingBarsLabel = AboutPingBarsLabel --[[ @ 0]]
	
	local SupportLinkLabel = LUI.UIText.new( 0.5, 0.5, -440, 265, 0, 0, 52.5, 73.5 ) --[[ @ 0]]
	SupportLinkLabel:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	SupportLinkLabel:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_7A174F5A1C299E68" ) ) --[[ @ 0]]
	SupportLinkLabel:setTTF( "dinnext_regular" ) --[[ @ 0]]
	SupportLinkLabel:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	self:addElement( SupportLinkLabel ) --[[ @ 0]]
	self.SupportLinkLabel = SupportLinkLabel --[[ @ 0]]
	
	local SupportLabel = LUI.UIText.new( 0.5, 0.5, -440, 265, 0, 0, 0, 30 ) --[[ @ 0]]
	SupportLabel:setRGB( 0.63, 0.57, 0.2 ) --[[ @ 0]]
	SupportLabel:setText( LocalizeToUpperString( @"hash_2966DEA29EC8CAB" ) ) --[[ @ 0]]
	SupportLabel:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	SupportLabel:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	self:addElement( SupportLabel ) --[[ @ 0]]
	self.SupportLabel = SupportLabel --[[ @ 0]]
	
	local ConnectivityLabel = LUI.UIText.new( 0.5, 0.5, -440, 265, 0, 0, 542.5, 563.5 ) --[[ @ 0]]
	ConnectivityLabel:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	ConnectivityLabel:setTTF( "dinnext_regular" ) --[[ @ 0]]
	ConnectivityLabel:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	ConnectivityLabel:subscribeToGlobalModel( f1_arg1, "NetworkInfo", "connectivityInfo", function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			ConnectivityLabel:setText( CoD.BaseUtility.AlreadyLocalized( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ConnectivityLabel ) --[[ @ 0]]
	self.ConnectivityLabel = ConnectivityLabel --[[ @ 0]]
	
	local pingList = LUI.GridLayout.new( f1_arg0, f1_arg1, false, 0, 0, 15, 0, nil, nil, false, false, false, false ) --[[ @ 0]]
	pingList:setLeftRight( 0.5, 0.5, -427.5, 262.5 ) --[[ @ 0]]
	pingList:setTopBottom( 0, 0, 240, 366 ) --[[ @ 0]]
	pingList:setWidgetType( CoD.StartMenu_Options_Network_PingListItem ) --[[ @ 0]]
	pingList:setHorizontalCount( 5 ) --[[ @ 0]]
	pingList:setSpacing( 15 ) --[[ @ 0]]
	pingList:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	pingList:setDataSource( "AboutPingBars" ) --[[ @ 0]]
	self:addElement( pingList ) --[[ @ 0]]
	self.pingList = pingList --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "DefaultStatePC",
			condition = function ( menu, element, event )
				return IsPC()
			end
		},
		{
			stateName = "HideSupportLink",
			condition = function ( menu, element, event )
				return CoD.DirectorUtility.DisableForCurrentMilestone( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	pingList.id = "pingList" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.StartMenu_Options_Network_OverviewPanel.__resetProperties = function ( f6_arg0 )
	f6_arg0.pingList:completeAnimation() --[[ @ 0]]
	f6_arg0.AboutPingBarsDesc:completeAnimation() --[[ @ 0]]
	f6_arg0.AboutPingBarsLabel:completeAnimation() --[[ @ 0]]
	f6_arg0.VersionLabel:completeAnimation() --[[ @ 0]]
	f6_arg0.VersionValueLabel:completeAnimation() --[[ @ 0]]
	f6_arg0.ConnectivityLabel:completeAnimation() --[[ @ 0]]
	f6_arg0.SupportLabel:completeAnimation() --[[ @ 0]]
	f6_arg0.SupportLinkLabel:completeAnimation() --[[ @ 0]]
	f6_arg0.pingList:setAlpha( 1 ) --[[ @ 0]]
	f6_arg0.AboutPingBarsDesc:setAlpha( 1 ) --[[ @ 0]]
	f6_arg0.AboutPingBarsLabel:setAlpha( 1 ) --[[ @ 0]]
	f6_arg0.VersionLabel:setTopBottom( 0, 0, 463, 493 ) --[[ @ 0]]
	f6_arg0.VersionValueLabel:setTopBottom( 0, 0, 512.5, 533.5 ) --[[ @ 0]]
	f6_arg0.ConnectivityLabel:setTopBottom( 0, 0, 542.5, 563.5 ) --[[ @ 0]]
	f6_arg0.SupportLabel:setAlpha( 1 ) --[[ @ 0]]
	f6_arg0.SupportLinkLabel:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.StartMenu_Options_Network_OverviewPanel.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	DefaultStatePC = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			f8_arg0.VersionLabel:completeAnimation() --[[ @ 0]]
			f8_arg0.VersionLabel:setTopBottom( 0, 0, 175, 205 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.VersionLabel ) --[[ @ 0]]
			f8_arg0.VersionValueLabel:completeAnimation() --[[ @ 0]]
			f8_arg0.VersionValueLabel:setTopBottom( 0, 0, 221.5, 242.5 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.VersionValueLabel ) --[[ @ 0]]
			f8_arg0.AboutPingBarsDesc:completeAnimation() --[[ @ 0]]
			f8_arg0.AboutPingBarsDesc:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.AboutPingBarsDesc ) --[[ @ 0]]
			f8_arg0.AboutPingBarsLabel:completeAnimation() --[[ @ 0]]
			f8_arg0.AboutPingBarsLabel:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.AboutPingBarsLabel ) --[[ @ 0]]
			f8_arg0.ConnectivityLabel:completeAnimation() --[[ @ 0]]
			f8_arg0.ConnectivityLabel:setTopBottom( 0, 0, 271.5, 292.5 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.ConnectivityLabel ) --[[ @ 0]]
			f8_arg0.pingList:completeAnimation() --[[ @ 0]]
			f8_arg0.pingList:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.pingList ) --[[ @ 0]]
		end
	},
	HideSupportLink = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f9_arg0.SupportLinkLabel:completeAnimation() --[[ @ 0]]
			f9_arg0.SupportLinkLabel:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.SupportLinkLabel ) --[[ @ 0]]
			f9_arg0.SupportLabel:completeAnimation() --[[ @ 0]]
			f9_arg0.SupportLabel:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.SupportLabel ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.StartMenu_Options_Network_OverviewPanel.__onClose = function ( f10_arg0 )
	f10_arg0.VersionValueLabel:close() --[[ @ 0]]
	f10_arg0.ConnectivityLabel:close() --[[ @ 0]]
	f10_arg0.pingList:close() --[[ @ 0]]
end
 --[[ @ 0]]
