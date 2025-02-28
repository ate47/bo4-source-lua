-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/scoreboard/scoreboardgamestatusmap" ) --[[ @ 0]]

CoD.ScoreboardGameStatusMapMask = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ScoreboardGameStatusMapMask.__defaultWidth = 1000 --[[ @ 0]]
CoD.ScoreboardGameStatusMapMask.__defaultHeight = 490 --[[ @ 0]]
CoD.ScoreboardGameStatusMapMask.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ScoreboardGameStatusMapMask ) --[[ @ 0]]
	self.id = "ScoreboardGameStatusMapMask" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local ScoreboardGameStatusMap = CoD.ScoreboardGameStatusMap.new( f1_arg0, f1_arg1, 0, 0, 0, 1000, 0, 0, -36.5, 526.5 ) --[[ @ 0]]
	ScoreboardGameStatusMap:setRFTMaterial( LUI.UIImage.GetCachedMaterial( @"hash_5C212964B40FA826" ) ) --[[ @ 0]]
	self:addElement( ScoreboardGameStatusMap ) --[[ @ 0]]
	self.ScoreboardGameStatusMap = ScoreboardGameStatusMap --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueEqualToEnum( f1_arg1, "scoreboardInfo.activeTab", CoD.HUDUtility.GameStatusMode.MODE_SHOW_MAP )
			end
		}
	} ) --[[ @ 0]]
	local f1_local2 = self --[[ @ 0]]
	local f1_local3 = self.subscribeToModel --[[ @ 0]]
	local f1_local4 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4["scoreboardInfo.activeTab"], function ( f3_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f3_arg0:get(),
			modelName = "scoreboardInfo.activeTab"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local3 = self --[[ @ 0]]
	CoD.BaseUtility.SetUseStencil( self ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.ScoreboardGameStatusMapMask.__resetProperties = function ( f4_arg0 )
	f4_arg0.ScoreboardGameStatusMap:completeAnimation() --[[ @ 0]]
	f4_arg0.ScoreboardGameStatusMap:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ScoreboardGameStatusMapMask.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f5_arg0.ScoreboardGameStatusMap:completeAnimation() --[[ @ 0]]
			f5_arg0.ScoreboardGameStatusMap:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.ScoreboardGameStatusMap ) --[[ @ 0]]
		end
	},
	Visible = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f6_arg0.ScoreboardGameStatusMap:completeAnimation() --[[ @ 0]]
			f6_arg0.ScoreboardGameStatusMap:setAlpha( 1 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.ScoreboardGameStatusMap ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ScoreboardGameStatusMapMask.__onClose = function ( f7_arg0 )
	f7_arg0.ScoreboardGameStatusMap:close() --[[ @ 0]]
end
 --[[ @ 0]]
