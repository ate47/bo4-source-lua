-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "x64:91ac5934d0654c2" ) --[[ @ 0]]
require( "x64:225acac8f33a8459" ) --[[ @ 0]]

CoD.DirectorZMTrialsInfoDescription = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DirectorZMTrialsInfoDescription.__defaultWidth = 1190 --[[ @ 0]]
CoD.DirectorZMTrialsInfoDescription.__defaultHeight = 696 --[[ @ 0]]
CoD.DirectorZMTrialsInfoDescription.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.DirectorZMTrialsInfoDescription ) --[[ @ 0]]
	self.id = "DirectorZMTrialsInfoDescription" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local Bronze = CoD.InGameTrialsRulesColumn.new( f1_arg0, f1_arg1, 0.5, 0.5, -582, -194, 0.5, 0.5, -348, 348 ) --[[ @ 0]]
	Bronze:mergeStateConditions( {
		{
			stateName = "AwardedCopy",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalDataSourceModelValueTrue( f1_arg1, "DirectorZMPlaylistInfo", "bronzeComplete" )
			end
		},
		{
			stateName = "Awarded",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	local Gold = Bronze --[[ @ 0]]
	local Silver = Bronze.subscribeToModel --[[ @ 0]]
	local RoundDescriptionGrid = DataSources.DirectorZMPlaylistInfo.getModel( f1_arg1 ) --[[ @ 0]]
	Silver( Gold, RoundDescriptionGrid.bronzeComplete, function ( f4_arg0 )
		f1_arg0:updateElementState( Bronze, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f4_arg0:get(),
			modelName = "bronzeComplete"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	Bronze:setScale( 0.95, 0.95 ) --[[ @ 0]]
	self:addElement( Bronze ) --[[ @ 0]]
	self.Bronze = Bronze --[[ @ 0]]
	
	Silver = CoD.InGameTrialsRulesColumn.new( f1_arg0, f1_arg1, 0.5, 0.5, -205, 183, 0.5, 0.5, -348, 348 ) --[[ @ 0]]
	Silver:mergeStateConditions( {
		{
			stateName = "AwardedCopy",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalDataSourceModelValueTrue( f1_arg1, "DirectorZMPlaylistInfo", "silverComplete" )
			end
		},
		{
			stateName = "Awarded",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	RoundDescriptionGrid = Silver --[[ @ 0]]
	Gold = Silver.subscribeToModel --[[ @ 0]]
	local f1_local5 = DataSources.DirectorZMPlaylistInfo.getModel( f1_arg1 ) --[[ @ 0]]
	Gold( RoundDescriptionGrid, f1_local5.silverComplete, function ( f7_arg0 )
		f1_arg0:updateElementState( Silver, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f7_arg0:get(),
			modelName = "silverComplete"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	Silver:setScale( 0.95, 0.95 ) --[[ @ 0]]
	Silver.Background:setImage( RegisterImage( @"uie_trial_rules_silver_normal" ) ) --[[ @ 0]]
	Silver.Medal:setImage( RegisterImage( @"uie_trial_medal_silver" ) ) --[[ @ 0]]
	self:addElement( Silver ) --[[ @ 0]]
	self.Silver = Silver --[[ @ 0]]
	
	Gold = CoD.InGameTrialsRulesColumn.new( f1_arg0, f1_arg1, 0.5, 0.5, 173, 561, 0.5, 0.5, -348, 348 ) --[[ @ 0]]
	Gold:mergeStateConditions( {
		{
			stateName = "AwardedCopy",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalDataSourceModelValueTrue( f1_arg1, "DirectorZMPlaylistInfo", "goldComplete" )
			end
		},
		{
			stateName = "Awarded",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	f1_local5 = Gold --[[ @ 0]]
	RoundDescriptionGrid = Gold.subscribeToModel --[[ @ 0]]
	local f1_local6 = DataSources.DirectorZMPlaylistInfo.getModel( f1_arg1 ) --[[ @ 0]]
	RoundDescriptionGrid( f1_local5, f1_local6.goldComplete, function ( f10_arg0 )
		f1_arg0:updateElementState( Gold, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f10_arg0:get(),
			modelName = "goldComplete"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	Gold:setScale( 0.95, 0.95 ) --[[ @ 0]]
	Gold.Background:setImage( RegisterImage( @"uie_trial_rules_gold_normal" ) ) --[[ @ 0]]
	Gold.Medal:setImage( RegisterImage( @"uie_trial_medal_gold" ) ) --[[ @ 0]]
	self:addElement( Gold ) --[[ @ 0]]
	self.Gold = Gold --[[ @ 0]]
	
	RoundDescriptionGrid = LUI.GridLayout.new( f1_arg0, f1_arg1, false, 0, 0, 6, 0, nil, nil, false, false, false, false ) --[[ @ 0]]
	RoundDescriptionGrid:mergeStateConditions( {
		{
			stateName = "Complete",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "Focused",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "PreviouslyCompleted",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "shown" )
			end
		},
		{
			stateName = "Incomplete",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	RoundDescriptionGrid:linkToElementModel( RoundDescriptionGrid, "shown", true, function ( model )
		f1_arg0:updateElementState( RoundDescriptionGrid, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "shown"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	RoundDescriptionGrid:setLeftRight( 0.5, 0.5, -595, 587 ) --[[ @ 0]]
	RoundDescriptionGrid:setTopBottom( 0.5, 0.5, -251, 303 ) --[[ @ 0]]
	RoundDescriptionGrid:setScale( 0.95, 0.95 ) --[[ @ 0]]
	RoundDescriptionGrid:setWidgetType( CoD.ZMAARTrialTabRoundStat ) --[[ @ 0]]
	RoundDescriptionGrid:setHorizontalCount( 3 ) --[[ @ 0]]
	RoundDescriptionGrid:setVerticalCount( 10 ) --[[ @ 0]]
	RoundDescriptionGrid:setSpacing( 6 ) --[[ @ 0]]
	RoundDescriptionGrid:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	RoundDescriptionGrid:setDataSource( "ZMTrialInfoRoundStat" ) --[[ @ 0]]
	self:addElement( RoundDescriptionGrid ) --[[ @ 0]]
	self.RoundDescriptionGrid = RoundDescriptionGrid --[[ @ 0]]
	
	RoundDescriptionGrid.id = "RoundDescriptionGrid" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.DirectorZMTrialsInfoDescription.__onClose = function ( f16_arg0 )
	f16_arg0.Bronze:close() --[[ @ 0]]
	f16_arg0.Silver:close() --[[ @ 0]]
	f16_arg0.Gold:close() --[[ @ 0]]
	f16_arg0.RoundDescriptionGrid:close() --[[ @ 0]]
end
 --[[ @ 0]]
