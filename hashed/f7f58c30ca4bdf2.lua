-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
require( "x64:2760aff07f0f7242" ) --[[ @ 0]]
require( "x64:2d6a3fb5a763b9aa" ) --[[ @ 0]]
require( "x64:29d7b2edcc3435f2" ) --[[ @ 0]]

CoD.ArenaRubyProgressWidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ArenaRubyProgressWidget.__defaultWidth = 926 --[[ @ 0]]
CoD.ArenaRubyProgressWidget.__defaultHeight = 40 --[[ @ 0]]
CoD.ArenaRubyProgressWidget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ArenaRubyProgressWidget ) --[[ @ 0]]
	self.id = "ArenaRubyProgressWidget" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local ArenaRubyProgressThreeWidget = CoD.ArenaRubyProgressThreeWidget.new( f1_arg0, f1_arg1, 0, 0, 0, 926, 0, 0, 0, 40 ) --[[ @ 0]]
	ArenaRubyProgressThreeWidget:mergeStateConditions( {
		{
			stateName = "OneRuby",
			condition = function ( menu, element, event )
				return CoD.ArenaLeaguePlayUtility.DoesRubyCountEqualValue( f1_arg1, 1 )
			end
		},
		{
			stateName = "TwoRubies",
			condition = function ( menu, element, event )
				return CoD.ArenaLeaguePlayUtility.DoesRubyCountEqualValue( f1_arg1, 2 )
			end
		},
		{
			stateName = "ThreeRubies",
			condition = function ( menu, element, event )
				return CoD.ArenaLeaguePlayUtility.DoesRubyCountEqualValue( f1_arg1, 3 )
			end
		}
	} ) --[[ @ 0]]
	self:addElement( ArenaRubyProgressThreeWidget ) --[[ @ 0]]
	self.ArenaRubyProgressThreeWidget = ArenaRubyProgressThreeWidget --[[ @ 0]]
	
	local ArenaRubyProgressFourWidget = CoD.ArenaRubyProgressFourWidget.new( f1_arg0, f1_arg1, 0, 0, 0, 926, 0, 0, 0, 40 ) --[[ @ 0]]
	ArenaRubyProgressFourWidget:mergeStateConditions( {
		{
			stateName = "OneRuby",
			condition = function ( menu, element, event )
				return CoD.ArenaLeaguePlayUtility.DoesRubyCountEqualValue( f1_arg1, 1 )
			end
		},
		{
			stateName = "TwoRubies",
			condition = function ( menu, element, event )
				return CoD.ArenaLeaguePlayUtility.DoesRubyCountEqualValue( f1_arg1, 2 )
			end
		},
		{
			stateName = "ThreeRubies",
			condition = function ( menu, element, event )
				return CoD.ArenaLeaguePlayUtility.DoesRubyCountEqualValue( f1_arg1, 3 )
			end
		},
		{
			stateName = "FourRubies",
			condition = function ( menu, element, event )
				return CoD.ArenaLeaguePlayUtility.DoesRubyCountEqualValue( f1_arg1, 4 )
			end
		}
	} ) --[[ @ 0]]
	self:addElement( ArenaRubyProgressFourWidget ) --[[ @ 0]]
	self.ArenaRubyProgressFourWidget = ArenaRubyProgressFourWidget --[[ @ 0]]
	
	local ArenaRubyProgressFiveWidget = CoD.ArenaRubyProgressFiveWidget.new( f1_arg0, f1_arg1, 0, 0, 0, 926, 0, 0, 0, 40 ) --[[ @ 0]]
	ArenaRubyProgressFiveWidget:mergeStateConditions( {
		{
			stateName = "OneRuby",
			condition = function ( menu, element, event )
				return CoD.ArenaLeaguePlayUtility.DoesRubyCountEqualValue( f1_arg1, 1 )
			end
		},
		{
			stateName = "TwoRubies",
			condition = function ( menu, element, event )
				return CoD.ArenaLeaguePlayUtility.DoesRubyCountEqualValue( f1_arg1, 2 )
			end
		},
		{
			stateName = "ThreeRubies",
			condition = function ( menu, element, event )
				return CoD.ArenaLeaguePlayUtility.DoesRubyCountEqualValue( f1_arg1, 3 )
			end
		},
		{
			stateName = "FourRubies",
			condition = function ( menu, element, event )
				return CoD.ArenaLeaguePlayUtility.DoesRubyCountEqualValue( f1_arg1, 4 )
			end
		}
	} ) --[[ @ 0]]
	self:addElement( ArenaRubyProgressFiveWidget ) --[[ @ 0]]
	self.ArenaRubyProgressFiveWidget = ArenaRubyProgressFiveWidget --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "FourRubies",
			condition = function ( menu, element, event )
				return CoD.ArenaLeaguePlayUtility.DoesRubyRequirementEqualValue( f1_arg1, 4 )
			end
		},
		{
			stateName = "FiveRubies",
			condition = function ( menu, element, event )
				return CoD.ArenaLeaguePlayUtility.DoesRubyRequirementEqualValue( f1_arg1, 5 )
			end
		}
	} ) --[[ @ 0]]
	local f1_local4 = self --[[ @ 0]]
	local f1_local5 = self.subscribeToModel --[[ @ 0]]
	local f1_local6 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["lobbyRoot.lobbyNav"], function ( f15_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f15_arg0:get(),
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
CoD.ArenaRubyProgressWidget.__resetProperties = function ( f16_arg0 )
	f16_arg0.ArenaRubyProgressFiveWidget:completeAnimation() --[[ @ 0]]
	f16_arg0.ArenaRubyProgressFourWidget:completeAnimation() --[[ @ 0]]
	f16_arg0.ArenaRubyProgressThreeWidget:completeAnimation() --[[ @ 0]]
	f16_arg0.ArenaRubyProgressFiveWidget:setAlpha( 1 ) --[[ @ 0]]
	f16_arg0.ArenaRubyProgressFourWidget:setAlpha( 1 ) --[[ @ 0]]
	f16_arg0.ArenaRubyProgressThreeWidget:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ArenaRubyProgressWidget.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f17_arg0.ArenaRubyProgressFourWidget:completeAnimation() --[[ @ 0]]
			f17_arg0.ArenaRubyProgressFourWidget:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.ArenaRubyProgressFourWidget ) --[[ @ 0]]
			f17_arg0.ArenaRubyProgressFiveWidget:completeAnimation() --[[ @ 0]]
			f17_arg0.ArenaRubyProgressFiveWidget:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.ArenaRubyProgressFiveWidget ) --[[ @ 0]]
		end
	},
	FourRubies = {
		DefaultClip = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f18_arg0.ArenaRubyProgressThreeWidget:completeAnimation() --[[ @ 0]]
			f18_arg0.ArenaRubyProgressThreeWidget:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.ArenaRubyProgressThreeWidget ) --[[ @ 0]]
			f18_arg0.ArenaRubyProgressFiveWidget:completeAnimation() --[[ @ 0]]
			f18_arg0.ArenaRubyProgressFiveWidget:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.ArenaRubyProgressFiveWidget ) --[[ @ 0]]
		end
	},
	FiveRubies = {
		DefaultClip = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f19_arg0.ArenaRubyProgressThreeWidget:completeAnimation() --[[ @ 0]]
			f19_arg0.ArenaRubyProgressThreeWidget:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.ArenaRubyProgressThreeWidget ) --[[ @ 0]]
			f19_arg0.ArenaRubyProgressFourWidget:completeAnimation() --[[ @ 0]]
			f19_arg0.ArenaRubyProgressFourWidget:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.ArenaRubyProgressFourWidget ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ArenaRubyProgressWidget.__onClose = function ( f20_arg0 )
	f20_arg0.ArenaRubyProgressThreeWidget:close() --[[ @ 0]]
	f20_arg0.ArenaRubyProgressFourWidget:close() --[[ @ 0]]
	f20_arg0.ArenaRubyProgressFiveWidget:close() --[[ @ 0]]
end
 --[[ @ 0]]
