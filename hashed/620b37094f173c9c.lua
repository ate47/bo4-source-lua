-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/aar_t8/levelup/aarlevelupoverlay_leveluptextinternal" ) --[[ @ 0]]

CoD.AARLevelOverlay_LevelUpDisplay = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AARLevelOverlay_LevelUpDisplay.__defaultWidth = 537 --[[ @ 0]]
CoD.AARLevelOverlay_LevelUpDisplay.__defaultHeight = 53 --[[ @ 0]]
CoD.AARLevelOverlay_LevelUpDisplay.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AARLevelOverlay_LevelUpDisplay ) --[[ @ 0]]
	self.id = "AARLevelOverlay_LevelUpDisplay" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local LevelUpText = CoD.AARLevelUpOverlay_LevelUpTextInternal.new( f1_arg0, f1_arg1, 0.5, 0.5, -268.5, 131.5, 0.5, 0.5, -26.5, 33.5 ) --[[ @ 0]]
	LevelUpText:mergeStateConditions( {
		{
			stateName = "CurrentRank",
			condition = function ( menu, element, event )
				return CoD.AARUtility.IsCurrentRankStartingRank( self, f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	LevelUpText:linkToElementModel( LevelUpText, "rank", true, function ( model )
		f1_arg0:updateElementState( LevelUpText, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "rank"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LevelUpText:linkToElementModel( self, nil, false, function ( model )
		LevelUpText:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( LevelUpText ) --[[ @ 0]]
	self.LevelUpText = LevelUpText --[[ @ 0]]
	
	local Flash = LUI.UIImage.new( 0, 0, -162, -34, 0, 0, -18.5, 109.5 ) --[[ @ 0]]
	self:addElement( Flash ) --[[ @ 0]]
	self.Flash = Flash --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.AARLevelOverlay_LevelUpDisplay.__onClose = function ( f5_arg0 )
	f5_arg0.LevelUpText:close() --[[ @ 0]]
end
 --[[ @ 0]]
