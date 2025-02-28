-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:7ea0c802d8aee12d" ) --[[ @ 0]]

CoD.LeaguePlayEndrankupAnimInternalRuby = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.LeaguePlayEndrankupAnimInternalRuby.__defaultWidth = 343 --[[ @ 0]]
CoD.LeaguePlayEndrankupAnimInternalRuby.__defaultHeight = 204 --[[ @ 0]]
CoD.LeaguePlayEndrankupAnimInternalRuby.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.LeaguePlayEndrankupAnimInternalRuby ) --[[ @ 0]]
	self.id = "LeaguePlayEndrankupAnimInternalRuby" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Ruby1 = CoD.LeaguePlayEndRankUpRuby.new( f1_arg0, f1_arg1, 0.5, 0.5, -115, -75, 0.5, 0.5, -80, -40 ) --[[ @ 0]]
	Ruby1:setScale( 1.5, 1.5 ) --[[ @ 0]]
	self:addElement( Ruby1 ) --[[ @ 0]]
	self.Ruby1 = Ruby1 --[[ @ 0]]
	
	local Ruby2 = CoD.LeaguePlayEndRankUpRuby.new( f1_arg0, f1_arg1, 0.5, 0.5, -20, 20, 0.5, 0.5, -80, -40 ) --[[ @ 0]]
	Ruby2:setScale( 1.5, 1.5 ) --[[ @ 0]]
	self:addElement( Ruby2 ) --[[ @ 0]]
	self.Ruby2 = Ruby2 --[[ @ 0]]
	
	local Ruby3 = CoD.LeaguePlayEndRankUpRuby.new( f1_arg0, f1_arg1, 0.5, 0.5, 75, 115, 0.5, 0.5, -80, -40 ) --[[ @ 0]]
	Ruby3:setScale( 1.5, 1.5 ) --[[ @ 0]]
	self:addElement( Ruby3 ) --[[ @ 0]]
	self.Ruby3 = Ruby3 --[[ @ 0]]
	
	local Ruby4 = CoD.LeaguePlayEndRankUpRuby.new( f1_arg0, f1_arg1, 0.5, 0.5, -67.5, -27.5, 0.5, 0.5, -20, 20 ) --[[ @ 0]]
	Ruby4:setScale( 1.5, 1.5 ) --[[ @ 0]]
	self:addElement( Ruby4 ) --[[ @ 0]]
	self.Ruby4 = Ruby4 --[[ @ 0]]
	
	local Ruby5 = CoD.LeaguePlayEndRankUpRuby.new( f1_arg0, f1_arg1, 0.5, 0.5, 28, 68, 0.5, 0.5, -20, 20 ) --[[ @ 0]]
	Ruby5:setScale( 1.5, 1.5 ) --[[ @ 0]]
	self:addElement( Ruby5 ) --[[ @ 0]]
	self.Ruby5 = Ruby5 --[[ @ 0]]
	
	local Ruby6 = CoD.LeaguePlayEndRankUpRuby.new( f1_arg0, f1_arg1, 0.5, 0.5, 100, 140, 0.5, 0.5, -20, 20 ) --[[ @ 0]]
	Ruby6:setAlpha( 0 ) --[[ @ 0]]
	Ruby6:setScale( 1.5, 1.5 ) --[[ @ 0]]
	self:addElement( Ruby6 ) --[[ @ 0]]
	self.Ruby6 = Ruby6 --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "FourRubies",
			condition = function ( menu, element, event )
				return CoD.ArenaLeaguePlayUtility.DoesCurrentRankRequireXPoints( self, f1_arg1, 4 )
			end
		},
		{
			stateName = "FiveRubies",
			condition = function ( menu, element, event )
				return CoD.ArenaLeaguePlayUtility.DoesCurrentRankRequireXPoints( self, f1_arg1, 5 )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "leaguePlayRank", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "leaguePlayRank"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.LeaguePlayEndrankupAnimInternalRuby.__resetProperties = function ( f5_arg0 )
	f5_arg0.Ruby4:completeAnimation() --[[ @ 0]]
	f5_arg0.Ruby5:completeAnimation() --[[ @ 0]]
	f5_arg0.Ruby4:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.Ruby5:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.LeaguePlayEndrankupAnimInternalRuby.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f6_arg0.Ruby4:completeAnimation() --[[ @ 0]]
			f6_arg0.Ruby4:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.Ruby4 ) --[[ @ 0]]
			f6_arg0.Ruby5:completeAnimation() --[[ @ 0]]
			f6_arg0.Ruby5:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.Ruby5 ) --[[ @ 0]]
		end
	},
	FourRubies = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f7_arg0.Ruby4:completeAnimation() --[[ @ 0]]
			f7_arg0.Ruby4:setAlpha( 1 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.Ruby4 ) --[[ @ 0]]
			f7_arg0.Ruby5:completeAnimation() --[[ @ 0]]
			f7_arg0.Ruby5:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.Ruby5 ) --[[ @ 0]]
		end
	},
	FiveRubies = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f8_arg0.Ruby4:completeAnimation() --[[ @ 0]]
			f8_arg0.Ruby4:setAlpha( 1 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.Ruby4 ) --[[ @ 0]]
			f8_arg0.Ruby5:completeAnimation() --[[ @ 0]]
			f8_arg0.Ruby5:setAlpha( 1 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.Ruby5 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.LeaguePlayEndrankupAnimInternalRuby.__onClose = function ( f9_arg0 )
	f9_arg0.Ruby1:close() --[[ @ 0]]
	f9_arg0.Ruby2:close() --[[ @ 0]]
	f9_arg0.Ruby3:close() --[[ @ 0]]
	f9_arg0.Ruby4:close() --[[ @ 0]]
	f9_arg0.Ruby5:close() --[[ @ 0]]
	f9_arg0.Ruby6:close() --[[ @ 0]]
end
 --[[ @ 0]]
