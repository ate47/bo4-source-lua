-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:5eae785b5338418f" ) --[[ @ 0]]
require( "x64:13887b6415ad6188" ) --[[ @ 0]]

CoD.ScoreInfoHardpointObjective = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ScoreInfoHardpointObjective.__defaultWidth = 24 --[[ @ 0]]
CoD.ScoreInfoHardpointObjective.__defaultHeight = 24 --[[ @ 0]]
CoD.ScoreInfoHardpointObjective.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ScoreInfoHardpointObjective ) --[[ @ 0]]
	self.id = "ScoreInfoHardpointObjective" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local HardpointIcon = CoD.WaypointHardpoint_ColorIcon.new( f1_arg0, f1_arg1, 0, 0, 0, 24, 0, 0, 0, 24 ) --[[ @ 0]]
	HardpointIcon:mergeStateConditions( {
		{
			stateName = "Contested",
			condition = function ( menu, element, event )
				return CoD.HUDUtility.IsScoreInfoObjectiveContested( self, f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	HardpointIcon:linkToElementModel( HardpointIcon, "clientUseMask", true, function ( model )
		f1_arg0:updateElementState( HardpointIcon, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "clientUseMask"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	HardpointIcon:linkToElementModel( self, nil, false, function ( model )
		HardpointIcon:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( HardpointIcon ) --[[ @ 0]]
	self.HardpointIcon = HardpointIcon --[[ @ 0]]
	
	local WaypointPatternColor = CoD.WaypointHardpoint_ColorPattern.new( f1_arg0, f1_arg1, 0.5, 0.5, -12, 12, 0.5, 0.5, -12, 12 ) --[[ @ 0]]
	WaypointPatternColor:mergeStateConditions( {
		{
			stateName = "Contested",
			condition = function ( menu, element, event )
				return CoD.HUDUtility.IsScoreInfoObjectiveContested( self, f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	WaypointPatternColor:linkToElementModel( WaypointPatternColor, "clientUseMask", true, function ( model )
		f1_arg0:updateElementState( WaypointPatternColor, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "clientUseMask"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	WaypointPatternColor:linkToElementModel( self, nil, false, function ( model )
		WaypointPatternColor:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( WaypointPatternColor ) --[[ @ 0]]
	self.WaypointPatternColor = WaypointPatternColor --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "visible",
			condition = function ( menu, element, event )
				return AlwaysTrue()
			end
		}
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ScoreInfoHardpointObjective.__resetProperties = function ( f9_arg0 )
	f9_arg0.WaypointPatternColor:completeAnimation() --[[ @ 0]]
	f9_arg0.HardpointIcon:completeAnimation() --[[ @ 0]]
	f9_arg0.WaypointPatternColor:setAlpha( 1 ) --[[ @ 0]]
	f9_arg0.HardpointIcon:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ScoreInfoHardpointObjective.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f10_arg0.HardpointIcon:completeAnimation() --[[ @ 0]]
			f10_arg0.HardpointIcon:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.HardpointIcon ) --[[ @ 0]]
			f10_arg0.WaypointPatternColor:completeAnimation() --[[ @ 0]]
			f10_arg0.WaypointPatternColor:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.WaypointPatternColor ) --[[ @ 0]]
		end
	},
	visible = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ScoreInfoHardpointObjective.__onClose = function ( f12_arg0 )
	f12_arg0.HardpointIcon:close() --[[ @ 0]]
	f12_arg0.WaypointPatternColor:close() --[[ @ 0]]
end
 --[[ @ 0]]
