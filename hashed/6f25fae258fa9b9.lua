-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:13a06c735b413259" ) --[[ @ 0]]
require( "x64:47e7985b5baca412" ) --[[ @ 0]]

CoD.DirectorZMTrialsInfoDescriptionTall = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DirectorZMTrialsInfoDescriptionTall.__defaultWidth = 1190 --[[ @ 0]]
CoD.DirectorZMTrialsInfoDescriptionTall.__defaultHeight = 696 --[[ @ 0]]
CoD.DirectorZMTrialsInfoDescriptionTall.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.DirectorZMTrialsInfoDescriptionTall ) --[[ @ 0]]
	self.id = "DirectorZMTrialsInfoDescriptionTall" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Bronze = CoD.InGameTrialsRulesColumnTall.new( f1_arg0, f1_arg1, 0.5, 0.5, -582, -194, 0.5, 0.5, -348, 457 ) --[[ @ 0]]
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
	
	Silver = CoD.InGameTrialsRulesColumnTall.new( f1_arg0, f1_arg1, 0.5, 0.5, -205, 183, 0.5, 0.5, -348, 457 ) --[[ @ 0]]
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
	Silver.BackgroundTall:setImage( RegisterImage( @"uie_trial_rules_silver_normal" ) ) --[[ @ 0]]
	Silver.Medal:setImage( RegisterImage( @"uie_trial_medal_silver" ) ) --[[ @ 0]]
	self:addElement( Silver ) --[[ @ 0]]
	self.Silver = Silver --[[ @ 0]]
	
	Gold = CoD.InGameTrialsRulesColumnTall.new( f1_arg0, f1_arg1, 0.5, 0.5, 173, 561, 0.5, 0.5, -348, 457 ) --[[ @ 0]]
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
	Gold.BackgroundTall:setImage( RegisterImage( @"uie_trial_rules_gold_normal" ) ) --[[ @ 0]]
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
	RoundDescriptionGrid:setTopBottom( 0.5, 0.5, -251, 403 ) --[[ @ 0]]
	RoundDescriptionGrid:setScale( 0.95, 0.95 ) --[[ @ 0]]
	RoundDescriptionGrid:setWidgetType( CoD.ZMAARTrialTabRoundStatTall ) --[[ @ 0]]
	RoundDescriptionGrid:setHorizontalCount( 3 ) --[[ @ 0]]
	RoundDescriptionGrid:setVerticalCount( 10 ) --[[ @ 0]]
	RoundDescriptionGrid:setSpacing( 6 ) --[[ @ 0]]
	RoundDescriptionGrid:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
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
CoD.DirectorZMTrialsInfoDescriptionTall.__resetProperties = function ( f16_arg0 )
	f16_arg0.Bronze:completeAnimation() --[[ @ 0]]
	f16_arg0.Silver:completeAnimation() --[[ @ 0]]
	f16_arg0.Gold:completeAnimation() --[[ @ 0]]
	f16_arg0.Bronze.BackgroundTall:setImage( RegisterImage( @"uie_trial_rules_bronze_normal" ) ) --[[ @ 0]]
	f16_arg0.Bronze.Medal:setImage( RegisterImage( @"uie_trial_medal_bronze" ) ) --[[ @ 0]]
	f16_arg0.Silver.BackgroundTall:setImage( RegisterImage( @"uie_trial_rules_silver_normal" ) ) --[[ @ 0]]
	f16_arg0.Silver.Medal:setImage( RegisterImage( @"uie_trial_medal_silver" ) ) --[[ @ 0]]
	f16_arg0.Gold.BackgroundTall:setImage( RegisterImage( @"uie_trial_rules_gold_normal" ) ) --[[ @ 0]]
	f16_arg0.Gold.Medal:setImage( RegisterImage( @"uie_trial_medal_gold" ) ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.DirectorZMTrialsInfoDescriptionTall.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f17_arg0.Bronze:completeAnimation() --[[ @ 0]]
			f17_arg0.Bronze.BackgroundTall:completeAnimation() --[[ @ 0]]
			f17_arg0.Bronze.Medal:completeAnimation() --[[ @ 0]]
			f17_arg0.Bronze.BackgroundTall:setImage( RegisterImage( @"uie_trial_rules_bronze_normal" ) ) --[[ @ 0]]
			f17_arg0.Bronze.Medal:setImage( RegisterImage( @"uie_trial_medal_bronze" ) ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.Bronze ) --[[ @ 0]]
			f17_arg0.Silver:completeAnimation() --[[ @ 0]]
			f17_arg0.Silver.BackgroundTall:completeAnimation() --[[ @ 0]]
			f17_arg0.Silver.Medal:completeAnimation() --[[ @ 0]]
			f17_arg0.Silver.BackgroundTall:setImage( RegisterImage( @"uie_trial_rules_silver_normal" ) ) --[[ @ 0]]
			f17_arg0.Silver.Medal:setImage( RegisterImage( @"uie_trial_medal_silver" ) ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.Silver ) --[[ @ 0]]
			f17_arg0.Gold:completeAnimation() --[[ @ 0]]
			f17_arg0.Gold.BackgroundTall:completeAnimation() --[[ @ 0]]
			f17_arg0.Gold.Medal:completeAnimation() --[[ @ 0]]
			f17_arg0.Gold.BackgroundTall:setImage( RegisterImage( @"uie_trial_rules_gold_normal" ) ) --[[ @ 0]]
			f17_arg0.Gold.Medal:setImage( RegisterImage( @"uie_trial_medal_gold" ) ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.Gold ) --[[ @ 0]]
		end
	},
	Variant1 = {
		DefaultClip = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f18_arg0.Bronze:completeAnimation() --[[ @ 0]]
			f18_arg0.Bronze.BackgroundTall:completeAnimation() --[[ @ 0]]
			f18_arg0.Bronze.Medal:completeAnimation() --[[ @ 0]]
			f18_arg0.Bronze.BackgroundTall:setImage( RegisterImage( @"hash_3BD93EB9B6EAD186" ) ) --[[ @ 0]]
			f18_arg0.Bronze.Medal:setImage( RegisterImage( @"hash_40772C55AAA62BD0" ) ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.Bronze ) --[[ @ 0]]
			f18_arg0.Silver:completeAnimation() --[[ @ 0]]
			f18_arg0.Silver.BackgroundTall:completeAnimation() --[[ @ 0]]
			f18_arg0.Silver.Medal:completeAnimation() --[[ @ 0]]
			f18_arg0.Silver.BackgroundTall:setImage( RegisterImage( @"hash_34230D3A2AA576B2" ) ) --[[ @ 0]]
			f18_arg0.Silver.Medal:setImage( RegisterImage( @"hash_FD6B3DF8A0BA964" ) ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.Silver ) --[[ @ 0]]
			f18_arg0.Gold:completeAnimation() --[[ @ 0]]
			f18_arg0.Gold.BackgroundTall:completeAnimation() --[[ @ 0]]
			f18_arg0.Gold.Medal:completeAnimation() --[[ @ 0]]
			f18_arg0.Gold.BackgroundTall:setImage( RegisterImage( @"hash_3C026AC93C711B7D" ) ) --[[ @ 0]]
			f18_arg0.Gold.Medal:setImage( RegisterImage( @"hash_18F9261A2CAA7739" ) ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.Gold ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.DirectorZMTrialsInfoDescriptionTall.__onClose = function ( f19_arg0 )
	f19_arg0.Bronze:close() --[[ @ 0]]
	f19_arg0.Silver:close() --[[ @ 0]]
	f19_arg0.Gold:close() --[[ @ 0]]
	f19_arg0.RoundDescriptionGrid:close() --[[ @ 0]]
end
 --[[ @ 0]]
