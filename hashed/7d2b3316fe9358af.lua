-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/aar_t8/summary/aaraveragewidget" ) --[[ @ 0]]
require( "x64:92778f6892c4333" ) --[[ @ 0]]
require( "ui/uieditor/widgets/aar_t8/summary/aargamehistoryavg" ) --[[ @ 0]]
require( "ui/uieditor/widgets/aar_t8/summary/aarnumericalstathistory" ) --[[ @ 0]]
require( "ui/uieditor/widgets/aar_t8/summary/aarstattypetabheader" ) --[[ @ 0]]
require( "ui/uieditor/widgets/aar_t8/summary/aarwinlosemessage" ) --[[ @ 0]]
require( "x64:20194a3c2b978e81" ) --[[ @ 0]]

CoD.AARGameHistory = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AARGameHistory.__defaultWidth = 1160 --[[ @ 0]]
CoD.AARGameHistory.__defaultHeight = 300 --[[ @ 0]]
CoD.AARGameHistory.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AARGameHistory ) --[[ @ 0]]
	self.id = "AARGameHistory" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = CoD.isPC --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local GameHistoryBG = LUI.UIImage.new( 0, 0, 0, 1160, 0, 0, 42, 276 ) --[[ @ 0]]
	GameHistoryBG:setImage( RegisterImage( @"uie_ui_menu_aar_info_grid_bg" ) ) --[[ @ 0]]
	GameHistoryBG:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_6E9593DF28749F2" ) ) --[[ @ 0]]
	GameHistoryBG:setShaderVector( 0, 4, 1, 0, 0 ) --[[ @ 0]]
	GameHistoryBG:setShaderVector( 1, 0, 1, 0, 1 ) --[[ @ 0]]
	self:addElement( GameHistoryBG ) --[[ @ 0]]
	self.GameHistoryBG = GameHistoryBG --[[ @ 0]]
	
	local GameHistoryGridVline = LUI.UIImage.new( 0, 0, 0, 1160, 0, 0, 45, 272 ) --[[ @ 0]]
	GameHistoryGridVline:setAlpha( 0.2 ) --[[ @ 0]]
	GameHistoryGridVline:setImage( RegisterImage( @"uie_ui_menu_aar_info_grid_vline" ) ) --[[ @ 0]]
	GameHistoryGridVline:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_17EA4827662D4CD4" ) ) --[[ @ 0]]
	GameHistoryGridVline:setShaderVector( 0, 20, 1, 0, 0 ) --[[ @ 0]]
	GameHistoryGridVline:setShaderVector( 1, 0, 1, 0, 1 ) --[[ @ 0]]
	self:addElement( GameHistoryGridVline ) --[[ @ 0]]
	self.GameHistoryGridVline = GameHistoryGridVline --[[ @ 0]]
	
	local GameHistoryGridHline2 = LUI.UIImage.new( 0, 0, -1.5, 1162.5, 0, 0, 98, 102 ) --[[ @ 0]]
	GameHistoryGridHline2:setAlpha( 0.2 ) --[[ @ 0]]
	GameHistoryGridHline2:setImage( RegisterImage( @"uie_ui_menu_aar_info_grid_hline" ) ) --[[ @ 0]]
	GameHistoryGridHline2:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( GameHistoryGridHline2 ) --[[ @ 0]]
	self.GameHistoryGridHline2 = GameHistoryGridHline2 --[[ @ 0]]
	
	local GameHistoryGridHline1 = LUI.UIImage.new( 0, 0, -1.5, 1162.5, 0, 0, 214.5, 218.5 ) --[[ @ 0]]
	GameHistoryGridHline1:setAlpha( 0.2 ) --[[ @ 0]]
	GameHistoryGridHline1:setImage( RegisterImage( @"uie_ui_menu_aar_info_grid_hline" ) ) --[[ @ 0]]
	GameHistoryGridHline1:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( GameHistoryGridHline1 ) --[[ @ 0]]
	self.GameHistoryGridHline1 = GameHistoryGridHline1 --[[ @ 0]]
	
	local GameHistoryGridSub = LUI.UIImage.new( 0, 0, 0, 1160, 0, 0, 43, 277 ) --[[ @ 0]]
	GameHistoryGridSub:setAlpha( 0.03 ) --[[ @ 0]]
	GameHistoryGridSub:setImage( RegisterImage( @"uie_ui_menu_aar_info_grid_sub" ) ) --[[ @ 0]]
	GameHistoryGridSub:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_17EA4827662D4CD4" ) ) --[[ @ 0]]
	GameHistoryGridSub:setShaderVector( 0, 4, 1, 0, 0 ) --[[ @ 0]]
	GameHistoryGridSub:setShaderVector( 1, 0, 1, 0, 1 ) --[[ @ 0]]
	self:addElement( GameHistoryGridSub ) --[[ @ 0]]
	self.GameHistoryGridSub = GameHistoryGridSub --[[ @ 0]]
	
	local GameHistoryGridBracket2 = LUI.UIImage.new( 0, 0, -2, 1162, 0, 0, 266, 278 ) --[[ @ 0]]
	GameHistoryGridBracket2:setZRot( 180 ) --[[ @ 0]]
	GameHistoryGridBracket2:setImage( RegisterImage( @"uie_ui_menu_aar_info_grid_bracket" ) ) --[[ @ 0]]
	GameHistoryGridBracket2:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( GameHistoryGridBracket2 ) --[[ @ 0]]
	self.GameHistoryGridBracket2 = GameHistoryGridBracket2 --[[ @ 0]]
	
	local GameHistoryGridBracket1 = LUI.UIImage.new( 0, 0, -2, 1162, 0, 0, 40, 52 ) --[[ @ 0]]
	GameHistoryGridBracket1:setImage( RegisterImage( @"uie_ui_menu_aar_info_grid_bracket" ) ) --[[ @ 0]]
	GameHistoryGridBracket1:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( GameHistoryGridBracket1 ) --[[ @ 0]]
	self.GameHistoryGridBracket1 = GameHistoryGridBracket1 --[[ @ 0]]
	
	local AverageMessage = CoD.AARAverageWidget.new( f1_arg0, f1_arg1, 0, 0, 0, 1500, 0, 0, 275, 313 ) --[[ @ 0]]
	AverageMessage:setAlpha( 0 ) --[[ @ 0]]
	AverageMessage:linkToElementModel( self, nil, false, function ( model )
		AverageMessage:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( AverageMessage ) --[[ @ 0]]
	self.AverageMessage = AverageMessage --[[ @ 0]]
	
	local WinLoseMessage = CoD.AARWinLoseMessage.new( f1_arg0, f1_arg1, 0, 0, 0, 1500, 0, 0, 275, 313 ) --[[ @ 0]]
	WinLoseMessage:setAlpha( 0 ) --[[ @ 0]]
	WinLoseMessage:linkToElementModel( self, nil, false, function ( model )
		WinLoseMessage:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( WinLoseMessage ) --[[ @ 0]]
	self.WinLoseMessage = WinLoseMessage --[[ @ 0]]
	
	local StatTypeBar = LUI.UIImage.new( 0, 0, -2.5, 1161.5, 0, 0, -3, 1 ) --[[ @ 0]]
	StatTypeBar:setAlpha( 0.4 ) --[[ @ 0]]
	StatTypeBar:setImage( RegisterImage( @"uie_ui_menu_aar_stat_rt_navbar" ) ) --[[ @ 0]]
	StatTypeBar:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( StatTypeBar ) --[[ @ 0]]
	self.StatTypeBar = StatTypeBar --[[ @ 0]]
	
	local CommonSecondaryTabBar = CoD.CommonSecondaryTabBar.new( f1_arg0, f1_arg1, 0, 0, 63, 1148, 0, 0, -13, 48 ) --[[ @ 0]]
	CommonSecondaryTabBar.Tabs.grid:setWidgetType( CoD.AARStatTypeTabHeader ) --[[ @ 0]]
	CommonSecondaryTabBar.Tabs.grid:setHorizontalCount( 8 ) --[[ @ 0]]
	CommonSecondaryTabBar.Tabs.grid:setDataSource( "AARStatTypeTabHeader" ) --[[ @ 0]]
	CommonSecondaryTabBar:registerEventHandler( "list_active_changed", function ( element, event )
		local f4_local0 = nil --[[ @ 0]]
		CoD.AARUtility.AARStatTypeSwitch( f1_arg1, self, element, event ) --[[ @ 0]]
		return f4_local0
	end ) --[[ @ 0]]
	self:addElement( CommonSecondaryTabBar ) --[[ @ 0]]
	self.CommonSecondaryTabBar = CommonSecondaryTabBar --[[ @ 0]]
	
	local StatAvgBar = CoD.AARGameHistoryAvg.new( f1_arg0, f1_arg1, 0, 0, -76, 1235, 0, 0, 146.5, 169.5 ) --[[ @ 0]]
	self:addElement( StatAvgBar ) --[[ @ 0]]
	self.StatAvgBar = StatAvgBar --[[ @ 0]]
	
	local GameHistoryGrid = LUI.GridLayout.new( f1_arg0, f1_arg1, false, 0, 0, -8, 0, nil, nil, false, false, false, false ) --[[ @ 0]]
	GameHistoryGrid:setLeftRight( 0, 0, -4, 1164 ) --[[ @ 0]]
	GameHistoryGrid:setTopBottom( 0, 0, 41.5, 277.5 ) --[[ @ 0]]
	GameHistoryGrid:setWidgetType( CoD.AARNumericalStatHistory ) --[[ @ 0]]
	GameHistoryGrid:setHorizontalCount( 10 ) --[[ @ 0]]
	GameHistoryGrid:setSpacing( -8 ) --[[ @ 0]]
	GameHistoryGrid:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	GameHistoryGrid:setDataSource( "AARGameHistory" ) --[[ @ 0]]
	GameHistoryGrid:subscribeToGlobalModel( f1_arg1, "PerController", "AAR.activeStat", function ( model )
		CoD.GridAndListUtility.UpdateDataSource( GameHistoryGrid, true, true, true ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( GameHistoryGrid ) --[[ @ 0]]
	self.GameHistoryGrid = GameHistoryGrid --[[ @ 0]]
	
	local Last10Games = LUI.UIText.new( 0, 0, 0, 855, 0, 0, -38, 0 ) --[[ @ 0]]
	Last10Games:setRGB( 0.9, 0.89, 0.78 ) --[[ @ 0]]
	Last10Games:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_134099EC43595F0" ) ) --[[ @ 0]]
	Last10Games:setTTF( "dinnext_regular" ) --[[ @ 0]]
	Last10Games:setLetterSpacing( 10 ) --[[ @ 0]]
	Last10Games:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Last10Games:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( Last10Games ) --[[ @ 0]]
	self.Last10Games = Last10Games --[[ @ 0]]
	
	local AARCompactHistoryMessage = CoD.AARCompactHistoryMessage.new( f1_arg0, f1_arg1, 0, 0, 756, 1336, 0, 0, -39, -1 ) --[[ @ 0]]
	AARCompactHistoryMessage:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return CoD.AARUtility.IsWinLoseStat( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	local f1_local16 = AARCompactHistoryMessage --[[ @ 0]]
	local f1_local17 = AARCompactHistoryMessage.subscribeToModel --[[ @ 0]]
	local f1_local18 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local17( f1_local16, f1_local18["AAR.activeStat"], function ( f7_arg0 )
		f1_arg0:updateElementState( AARCompactHistoryMessage, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f7_arg0:get(),
			modelName = "AAR.activeStat"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	AARCompactHistoryMessage:linkToElementModel( self, nil, false, function ( model )
		AARCompactHistoryMessage:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( AARCompactHistoryMessage ) --[[ @ 0]]
	self.AARCompactHistoryMessage = AARCompactHistoryMessage --[[ @ 0]]
	
	CommonSecondaryTabBar.id = "CommonSecondaryTabBar" --[[ @ 0]]
	GameHistoryGrid.id = "GameHistoryGrid" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local17 = self --[[ @ 0]]
	CoD.AARUtility.RegisterForTriggerNavigation( f1_arg0, CommonSecondaryTabBar, f1_arg1, "Tabs.grid", CoD.AARUtility.AARTabs.AAR_SUMMARY ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.AARGameHistory.__onClose = function ( f9_arg0 )
	f9_arg0.AverageMessage:close() --[[ @ 0]]
	f9_arg0.WinLoseMessage:close() --[[ @ 0]]
	f9_arg0.CommonSecondaryTabBar:close() --[[ @ 0]]
	f9_arg0.StatAvgBar:close() --[[ @ 0]]
	f9_arg0.GameHistoryGrid:close() --[[ @ 0]]
	f9_arg0.AARCompactHistoryMessage:close() --[[ @ 0]]
end
 --[[ @ 0]]
