-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
require( "x64:4b1f16370250a381" ) --[[ @ 0]]

CoD.WarzoneGameStatusIndicatorDisplay = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WarzoneGameStatusIndicatorDisplay.__defaultWidth = 345 --[[ @ 0]]
CoD.WarzoneGameStatusIndicatorDisplay.__defaultHeight = 44 --[[ @ 0]]
CoD.WarzoneGameStatusIndicatorDisplay.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WarzoneGameStatusIndicatorDisplay ) --[[ @ 0]]
	self.id = "WarzoneGameStatusIndicatorDisplay" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local GameStatusIndicatorsRightSolo = LUI.UIList.new( f1_arg0, f1_arg1, 4, 0, nil, false, false, false, false ) --[[ @ 0]]
	GameStatusIndicatorsRightSolo:setLeftRight( 1, 1, -160, 0 ) --[[ @ 0]]
	GameStatusIndicatorsRightSolo:setTopBottom( 0, 0, 0, 44 ) --[[ @ 0]]
	GameStatusIndicatorsRightSolo:setWidgetType( CoD.WarzoneGameStatusIndicatorListItem ) --[[ @ 0]]
	GameStatusIndicatorsRightSolo:setHorizontalCount( 2 ) --[[ @ 0]]
	GameStatusIndicatorsRightSolo:setSpacing( 4 ) --[[ @ 0]]
	GameStatusIndicatorsRightSolo:setAlignment( Enum[@"LUIAlignment"][@"hash_3830CFD395E6AA0A"] ) --[[ @ 0]]
	self:addElement( GameStatusIndicatorsRightSolo ) --[[ @ 0]]
	self.GameStatusIndicatorsRightSolo = GameStatusIndicatorsRightSolo --[[ @ 0]]
	
	local GameStatusIndicatorsLeftSolo = LUI.UIList.new( f1_arg0, f1_arg1, 4, 0, nil, false, false, false, false ) --[[ @ 0]]
	GameStatusIndicatorsLeftSolo:setLeftRight( 0, 0, 81, 159 ) --[[ @ 0]]
	GameStatusIndicatorsLeftSolo:setTopBottom( 0, 0, 0, 44 ) --[[ @ 0]]
	GameStatusIndicatorsLeftSolo:setWidgetType( CoD.WarzoneGameStatusIndicatorListItem ) --[[ @ 0]]
	GameStatusIndicatorsLeftSolo:setSpacing( 4 ) --[[ @ 0]]
	GameStatusIndicatorsLeftSolo:setAlignment( Enum[@"LUIAlignment"][@"hash_3830CFD395E6AA0A"] ) --[[ @ 0]]
	self:addElement( GameStatusIndicatorsLeftSolo ) --[[ @ 0]]
	self.GameStatusIndicatorsLeftSolo = GameStatusIndicatorsLeftSolo --[[ @ 0]]
	
	local GameStatusIndicators = LUI.UIList.new( f1_arg0, f1_arg1, 2, 0, nil, false, false, false, false ) --[[ @ 0]]
	GameStatusIndicators:setLeftRight( 0, 0, 1, 399 ) --[[ @ 0]]
	GameStatusIndicators:setTopBottom( 0, 0, 0, 44 ) --[[ @ 0]]
	GameStatusIndicators:setWidgetType( CoD.WarzoneGameStatusIndicatorListItem ) --[[ @ 0]]
	GameStatusIndicators:setHorizontalCount( 5 ) --[[ @ 0]]
	GameStatusIndicators:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	self:addElement( GameStatusIndicators ) --[[ @ 0]]
	self.GameStatusIndicators = GameStatusIndicators --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Solo",
			condition = function ( menu, element, event )
				return CoD.GameEndScoreUtility.IsSoloTeamGame()
			end
		},
		{
			stateName = "Right",
			condition = function ( menu, element, event )
				return true
			end
		},
		{
			stateName = "Left",
			condition = function ( menu, element, event )
				return true
			end
		}
	} ) --[[ @ 0]]
	GameStatusIndicatorsRightSolo.id = "GameStatusIndicatorsRightSolo" --[[ @ 0]]
	GameStatusIndicatorsLeftSolo.id = "GameStatusIndicatorsLeftSolo" --[[ @ 0]]
	GameStatusIndicators.id = "GameStatusIndicators" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.WarzoneGameStatusIndicatorDisplay.__resetProperties = function ( f5_arg0 )
	f5_arg0.GameStatusIndicators:completeAnimation() --[[ @ 0]]
	f5_arg0.GameStatusIndicatorsRightSolo:completeAnimation() --[[ @ 0]]
	f5_arg0.GameStatusIndicatorsLeftSolo:completeAnimation() --[[ @ 0]]
	f5_arg0.GameStatusIndicators:setLeftRight( 0, 0, 1, 399 ) --[[ @ 0]]
	f5_arg0.GameStatusIndicators:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.GameStatusIndicators:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	f5_arg0.GameStatusIndicatorsRightSolo:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.GameStatusIndicatorsLeftSolo:setLeftRight( 0, 0, 81, 159 ) --[[ @ 0]]
	f5_arg0.GameStatusIndicatorsLeftSolo:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.WarzoneGameStatusIndicatorDisplay.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f6_arg0.GameStatusIndicatorsRightSolo:completeAnimation() --[[ @ 0]]
			f6_arg0.GameStatusIndicatorsRightSolo:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.GameStatusIndicatorsRightSolo ) --[[ @ 0]]
			f6_arg0.GameStatusIndicatorsLeftSolo:completeAnimation() --[[ @ 0]]
			f6_arg0.GameStatusIndicatorsLeftSolo:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.GameStatusIndicatorsLeftSolo ) --[[ @ 0]]
			f6_arg0.GameStatusIndicators:completeAnimation() --[[ @ 0]]
			f6_arg0.GameStatusIndicators:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.GameStatusIndicators ) --[[ @ 0]]
		end
	},
	Solo = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f7_arg0.GameStatusIndicatorsLeftSolo:completeAnimation() --[[ @ 0]]
			f7_arg0.GameStatusIndicatorsLeftSolo:setLeftRight( 0, 0, 93, 171 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.GameStatusIndicatorsLeftSolo ) --[[ @ 0]]
			f7_arg0.GameStatusIndicators:completeAnimation() --[[ @ 0]]
			f7_arg0.GameStatusIndicators:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.GameStatusIndicators ) --[[ @ 0]]
		end
	},
	Right = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f8_arg0.GameStatusIndicatorsRightSolo:completeAnimation() --[[ @ 0]]
			f8_arg0.GameStatusIndicatorsRightSolo:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.GameStatusIndicatorsRightSolo ) --[[ @ 0]]
			f8_arg0.GameStatusIndicatorsLeftSolo:completeAnimation() --[[ @ 0]]
			f8_arg0.GameStatusIndicatorsLeftSolo:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.GameStatusIndicatorsLeftSolo ) --[[ @ 0]]
			f8_arg0.GameStatusIndicators:completeAnimation() --[[ @ 0]]
			f8_arg0.GameStatusIndicators:setLeftRight( 1, 1, -398, 0 ) --[[ @ 0]]
			f8_arg0.GameStatusIndicators:setAlignment( Enum[@"LUIAlignment"][@"hash_3830CFD395E6AA0A"] ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.GameStatusIndicators ) --[[ @ 0]]
		end
	},
	Left = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f9_arg0.GameStatusIndicatorsRightSolo:completeAnimation() --[[ @ 0]]
			f9_arg0.GameStatusIndicatorsRightSolo:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.GameStatusIndicatorsRightSolo ) --[[ @ 0]]
			f9_arg0.GameStatusIndicatorsLeftSolo:completeAnimation() --[[ @ 0]]
			f9_arg0.GameStatusIndicatorsLeftSolo:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.GameStatusIndicatorsLeftSolo ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.WarzoneGameStatusIndicatorDisplay.__onClose = function ( f10_arg0 )
	f10_arg0.GameStatusIndicatorsRightSolo:close() --[[ @ 0]]
	f10_arg0.GameStatusIndicatorsLeftSolo:close() --[[ @ 0]]
	f10_arg0.GameStatusIndicators:close() --[[ @ 0]]
end
 --[[ @ 0]]
