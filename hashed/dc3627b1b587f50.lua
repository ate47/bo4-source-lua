-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "x64:3df03a3cfee01114" ) --[[ @ 0]]

CoD.DeathCamContainer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DeathCamContainer.__defaultWidth = 600 --[[ @ 0]]
CoD.DeathCamContainer.__defaultHeight = 300 --[[ @ 0]]
CoD.DeathCamContainer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.DeathCamContainer ) --[[ @ 0]]
	self.id = "DeathCamContainer" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local DeathCamPlayerKilledBy = CoD.DeathCamPlayerKilledBy.new( f1_arg0, f1_arg1, 0, 0, 0, 600, 0, 0, 0, 300 ) --[[ @ 0]]
	DeathCamPlayerKilledBy:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( DeathCamPlayerKilledBy ) --[[ @ 0]]
	self.DeathCamPlayerKilledBy = DeathCamPlayerKilledBy --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_player_dead"] ) and not CoD.ModelUtility.IsModelValueGreaterThan( f1_arg1, "hudItems.hacked", 0 )
			end
		}
	} ) --[[ @ 0]]
	local f1_local2 = self --[[ @ 0]]
	local f1_local3 = self.subscribeToModel --[[ @ 0]]
	local f1_local4 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_player_dead"]], function ( f3_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f3_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_player_dead"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local2 = self --[[ @ 0]]
	f1_local3 = self.subscribeToModel --[[ @ 0]]
	f1_local4 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4["hudItems.hacked"], function ( f4_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f4_arg0:get(),
			modelName = "hudItems.hacked"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.DeathCamContainer.__resetProperties = function ( f5_arg0 )
	f5_arg0.DeathCamPlayerKilledBy:completeAnimation() --[[ @ 0]]
	f5_arg0.DeathCamPlayerKilledBy:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.DeathCamContainer.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Visible = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f7_local0 = function ( f8_arg0 )
				f7_arg0.DeathCamPlayerKilledBy:beginAnimation( 250 ) --[[ @ 0]]
				f7_arg0.DeathCamPlayerKilledBy:setAlpha( 1 ) --[[ @ 0]]
				f7_arg0.DeathCamPlayerKilledBy:registerEventHandler( "interrupted_keyframe", f7_arg0.clipInterrupted ) --[[ @ 0]]
				f7_arg0.DeathCamPlayerKilledBy:registerEventHandler( "transition_complete_keyframe", f7_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f7_arg0.DeathCamPlayerKilledBy:completeAnimation() --[[ @ 0]]
			f7_arg0.DeathCamPlayerKilledBy:setAlpha( 0 ) --[[ @ 0]]
			f7_local0( f7_arg0.DeathCamPlayerKilledBy ) --[[ @ 0]]
		end
	},
	Visible = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f9_arg0.DeathCamPlayerKilledBy:completeAnimation() --[[ @ 0]]
			f9_arg0.DeathCamPlayerKilledBy:setAlpha( 1 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.DeathCamPlayerKilledBy ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.DeathCamContainer.__onClose = function ( f10_arg0 )
	f10_arg0.DeathCamPlayerKilledBy:close() --[[ @ 0]]
end
 --[[ @ 0]]
