-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "ui/uieditor/widgets/keyprompt" ) --[[ @ 0]]
require( "ui/uieditor/widgets/pc/utility/verticallistspacer" ) --[[ @ 0]]

CoD.Barracks_StatsOverview_WZ_FilterPCString = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Barracks_StatsOverview_WZ_FilterPCString.__defaultWidth = 200 --[[ @ 0]]
CoD.Barracks_StatsOverview_WZ_FilterPCString.__defaultHeight = 18 --[[ @ 0]]
CoD.Barracks_StatsOverview_WZ_FilterPCString.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIHorizontalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 0, false ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Right ) --[[ @ 0]]
	self:setClass( CoD.Barracks_StatsOverview_WZ_FilterPCString ) --[[ @ 0]]
	self.id = "Barracks_StatsOverview_WZ_FilterPCString" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local WZGameModeFilterButtonPC = LUI.UIText.new( 0, 0, 111, 200, 0.5, 0.5, -9, 9 ) --[[ @ 0]]
	WZGameModeFilterButtonPC:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_12077705355095C1" ) ) --[[ @ 0]]
	WZGameModeFilterButtonPC:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	WZGameModeFilterButtonPC:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	self:addElement( WZGameModeFilterButtonPC ) --[[ @ 0]]
	self.WZGameModeFilterButtonPC = WZGameModeFilterButtonPC --[[ @ 0]]
	
	local VerticalListSpacer = CoD.VerticalListSpacer.new( f1_arg0, f1_arg1, 0, 0, 101, 111, 0.5, 0.5, -13.5, 13.5 ) --[[ @ 0]]
	self:addElement( VerticalListSpacer ) --[[ @ 0]]
	self.VerticalListSpacer = VerticalListSpacer --[[ @ 0]]
	
	local KeyPrompt = CoD.KeyPrompt.new( f1_arg0, f1_arg1, 0, 0, 61, 101, 0.5, 0.5, -13, 9 ) --[[ @ 0]]
	KeyPrompt.keybind:setText( CoD.BaseUtility.AlreadyLocalized( "[{ui_contextual_1}]" ) ) --[[ @ 0]]
	self:addElement( KeyPrompt ) --[[ @ 0]]
	self.KeyPrompt = KeyPrompt --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.Barracks_StatsOverview_WZ_FilterPCString.__onClose = function ( f2_arg0 )
	f2_arg0.VerticalListSpacer:close() --[[ @ 0]]
	f2_arg0.KeyPrompt:close() --[[ @ 0]]
end
 --[[ @ 0]]
