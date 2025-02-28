-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "ui/uieditor/widgets/hud/zm_roundwidget/zmrnd" ) --[[ @ 0]]
require( "x64:a2599421197984c" ) --[[ @ 0]]
require( "x64:4ffe7666991d2a86" ) --[[ @ 0]]
require( "x64:55677da2fba4b1c9" ) --[[ @ 0]]

CoD.Hud_ZM_Trial_Objective = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Hud_ZM_Trial_Objective.__defaultWidth = 1895 --[[ @ 0]]
CoD.Hud_ZM_Trial_Objective.__defaultHeight = 230 --[[ @ 0]]
CoD.Hud_ZM_Trial_Objective.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.Hud_ZM_Trial_Objective ) --[[ @ 0]]
	self.id = "Hud_ZM_Trial_Objective" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local RoundDescriptionWidget = CoD.Hud_ZM_Trial_RoundInfoText.new( f1_arg0, f1_arg1, 0, 0, 40, 640, 0, 0, 96, 157 ) --[[ @ 0]]
	self:addElement( RoundDescriptionWidget ) --[[ @ 0]]
	self.RoundDescriptionWidget = RoundDescriptionWidget --[[ @ 0]]
	
	local ZmRnd = CoD.ZmRnd.new( f1_arg0, f1_arg1, 0, 0, -53, 283, 0, 0, -124, 176 ) --[[ @ 0]]
	ZmRnd:setScale( 0.6, 0.6 ) --[[ @ 0]]
	ZmRnd:subscribeToGlobalModel( f1_arg1, "GameScore", nil, function ( model )
		ZmRnd:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ZmRnd:subscribeToGlobalModel( f1_arg1, "GlobalModel", "ZMHudGlobal.trials.infoHidden", function ( model )
		SetElementState( self, ZmRnd, f1_arg1, "DefaultState" ) --[[ @ 0]]
		UpdateElementState( self, "ZmRnd", f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ZmRnd ) --[[ @ 0]]
	self.ZmRnd = ZmRnd --[[ @ 0]]
	
	local ObjectiveScratchOut = CoD.Hud_ZM_Perks_Disabled_Container.new( f1_arg0, f1_arg1, 0, 0, 15, 365, 0, 0, 59, 194 ) --[[ @ 0]]
	ObjectiveScratchOut:mergeStateConditions( {
		{
			stateName = "Hide",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsGlobalModelValueEqualTo( "ZMHudGlobal.trials.roundSuccess", 1 )
			end
		},
		{
			stateName = "Show",
			condition = function ( menu, element, event )
				local f5_local0 --[[ @ 0]]
				if not CoD.ModelUtility.IsGlobalModelValueTrue( "ZMHudGlobal.trials.infoHidden" ) then
					f5_local0 = CoD.HUDUtility.IsAnyGameType( f1_arg1, "ztrials" ) --[[ @ 0]]
					if f5_local0 then
						f5_local0 = CoD.ModelUtility.IsGlobalModelValueEqualTo( "ZMHudGlobal.trials.roundSuccess", 1 ) --[[ @ 0]]
					end
				else
					f5_local0 = false --[[ @ 0]]
				end
				return f5_local0
			end
		}
	} ) --[[ @ 0]]
	local f1_local4 = ObjectiveScratchOut --[[ @ 0]]
	local ZMTitleFog = ObjectiveScratchOut.subscribeToModel --[[ @ 0]]
	local f1_local6 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	ZMTitleFog( f1_local4, f1_local6["ZMHudGlobal.trials.roundSuccess"], function ( f6_arg0 )
		f1_arg0:updateElementState( ObjectiveScratchOut, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f6_arg0:get(),
			modelName = "ZMHudGlobal.trials.roundSuccess"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = ObjectiveScratchOut --[[ @ 0]]
	ZMTitleFog = ObjectiveScratchOut.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	ZMTitleFog( f1_local4, f1_local6["ZMHudGlobal.trials.infoHidden"], function ( f7_arg0 )
		f1_arg0:updateElementState( ObjectiveScratchOut, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f7_arg0:get(),
			modelName = "ZMHudGlobal.trials.infoHidden"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:addElement( ObjectiveScratchOut ) --[[ @ 0]]
	self.ObjectiveScratchOut = ObjectiveScratchOut --[[ @ 0]]
	
	ZMTitleFog = CoD.ZM_Title_Fog.new( f1_arg0, f1_arg1, 0, 0, -100, 412, 0, 0, -141, 371 ) --[[ @ 0]]
	ZMTitleFog:setAlpha( 0 ) --[[ @ 0]]
	ZMTitleFog:setScale( 1, 0.6 ) --[[ @ 0]]
	self:addElement( ZMTitleFog ) --[[ @ 0]]
	self.ZMTitleFog = ZMTitleFog --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalModelValueTrue( "ZMHudGlobal.trials.infoHidden" )
			end
		},
		{
			stateName = "ShowHudDeactivatedTrial",
			condition = function ( menu, element, event )
				local f9_local0 --[[ @ 0]]
				if not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_game_ended"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_play_of_the_match"] ) and not CoD.ModelUtility.IsGlobalModelValueTrue( "ZMHudGlobal.trials.infoHidden" ) then
					f9_local0 = CoD.HUDUtility.IsAnyGameType( f1_arg1, "ztrials" ) --[[ @ 0]]
					if f9_local0 then
						f9_local0 = CoD.ModelUtility.IsGlobalModelValueEqualTo( "ZMHudGlobal.trials.hudDeactivated", 1 ) --[[ @ 0]]
					end
				else
					f9_local0 = false --[[ @ 0]]
				end
				return f9_local0
			end
		},
		{
			stateName = "RoundSuccess",
			condition = function ( menu, element, event )
				local f10_local0 --[[ @ 0]]
				if not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_game_ended"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_play_of_the_match"] ) and not CoD.ModelUtility.IsGlobalModelValueTrue( "ZMHudGlobal.trials.infoHidden" ) then
					f10_local0 = CoD.HUDUtility.IsAnyGameType( f1_arg1, "ztrials" ) --[[ @ 0]]
					if f10_local0 then
						f10_local0 = CoD.ModelUtility.IsGlobalModelValueEqualTo( "ZMHudGlobal.trials.roundSuccess", 1 ) --[[ @ 0]]
					end
				else
					f10_local0 = false --[[ @ 0]]
				end
				return f10_local0
			end
		},
		{
			stateName = "Show",
			condition = function ( menu, element, event )
				local f11_local0 --[[ @ 0]]
				if not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_game_ended"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_play_of_the_match"] ) and not CoD.ModelUtility.IsGlobalModelValueTrue( "ZMHudGlobal.trials.infoHidden" ) then
					f11_local0 = CoD.HUDUtility.IsAnyGameType( f1_arg1, "ztrials" ) --[[ @ 0]]
				else
					f11_local0 = false --[[ @ 0]]
				end
				return f11_local0
			end
		}
	} ) --[[ @ 0]]
	f1_local6 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	local f1_local7 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local4( f1_local6, f1_local7["ZMHudGlobal.trials.infoHidden"], function ( f12_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f12_arg0:get(),
			modelName = "ZMHudGlobal.trials.infoHidden"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local6 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local7 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local6, f1_local7["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_game_ended"]], function ( f13_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f13_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_game_ended"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local6 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local7 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local6, f1_local7["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_play_of_the_match"]], function ( f14_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f14_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_play_of_the_match"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local6 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local7 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local4( f1_local6, f1_local7["ZMHudGlobal.trials.hudDeactivated"], function ( f15_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f15_arg0:get(),
			modelName = "ZMHudGlobal.trials.hudDeactivated"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local6 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local7 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local4( f1_local6, f1_local7["ZMHudGlobal.trials.roundSuccess"], function ( f16_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f16_arg0:get(),
			modelName = "ZMHudGlobal.trials.roundSuccess"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.Hud_ZM_Trial_Objective.__resetProperties = function ( f17_arg0 )
	f17_arg0.RoundDescriptionWidget:completeAnimation() --[[ @ 0]]
	f17_arg0.ZmRnd:completeAnimation() --[[ @ 0]]
	f17_arg0.ObjectiveScratchOut:completeAnimation() --[[ @ 0]]
	f17_arg0.RoundDescriptionWidget:setAlpha( 1 ) --[[ @ 0]]
	f17_arg0.ZmRnd:setAlpha( 1 ) --[[ @ 0]]
	f17_arg0.ObjectiveScratchOut:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.Hud_ZM_Trial_Objective.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f18_arg0.RoundDescriptionWidget:completeAnimation() --[[ @ 0]]
			f18_arg0.RoundDescriptionWidget:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.RoundDescriptionWidget ) --[[ @ 0]]
			f18_arg0.ZmRnd:completeAnimation() --[[ @ 0]]
			f18_arg0.ZmRnd:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.ZmRnd ) --[[ @ 0]]
			f18_arg0.ObjectiveScratchOut:completeAnimation() --[[ @ 0]]
			f18_arg0.ObjectiveScratchOut:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.ObjectiveScratchOut ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f19_arg0.RoundDescriptionWidget:completeAnimation() --[[ @ 0]]
			f19_arg0.RoundDescriptionWidget:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.RoundDescriptionWidget ) --[[ @ 0]]
			f19_arg0.ZmRnd:completeAnimation() --[[ @ 0]]
			f19_arg0.ZmRnd:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.ZmRnd ) --[[ @ 0]]
			f19_arg0.ObjectiveScratchOut:completeAnimation() --[[ @ 0]]
			f19_arg0.ObjectiveScratchOut:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.ObjectiveScratchOut ) --[[ @ 0]]
		end,
		Show = function ( f20_arg0, f20_arg1 )
			f20_arg0:__resetProperties() --[[ @ 0]]
			f20_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f20_local0 = function ( f21_arg0 )
				local f21_local0 = function ( f22_arg0 )
					f22_arg0:beginAnimation( 1300 ) --[[ @ 0]]
					f22_arg0:setAlpha( 1 ) --[[ @ 0]]
					f22_arg0:registerEventHandler( "transition_complete_keyframe", f20_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f20_arg0.RoundDescriptionWidget:beginAnimation( 650 ) --[[ @ 0]]
				f20_arg0.RoundDescriptionWidget:registerEventHandler( "interrupted_keyframe", f20_arg0.clipInterrupted ) --[[ @ 0]]
				f20_arg0.RoundDescriptionWidget:registerEventHandler( "transition_complete_keyframe", f21_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f20_arg0.RoundDescriptionWidget:completeAnimation() --[[ @ 0]]
			f20_arg0.RoundDescriptionWidget:setAlpha( 0 ) --[[ @ 0]]
			f20_local0( f20_arg0.RoundDescriptionWidget ) --[[ @ 0]]
			local f20_local1 = function ( f23_arg0 )
				local f23_local0 = function ( f24_arg0 )
					f24_arg0:beginAnimation( 1300 ) --[[ @ 0]]
					f24_arg0:setAlpha( 1 ) --[[ @ 0]]
					f24_arg0:registerEventHandler( "transition_complete_keyframe", f20_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f20_arg0.ZmRnd:beginAnimation( 650 ) --[[ @ 0]]
				f20_arg0.ZmRnd:registerEventHandler( "interrupted_keyframe", f20_arg0.clipInterrupted ) --[[ @ 0]]
				f20_arg0.ZmRnd:registerEventHandler( "transition_complete_keyframe", f23_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f20_arg0.ZmRnd:completeAnimation() --[[ @ 0]]
			f20_arg0.ZmRnd:setAlpha( 0 ) --[[ @ 0]]
			f20_local1( f20_arg0.ZmRnd ) --[[ @ 0]]
		end
	},
	ShowHudDeactivatedTrial = {
		DefaultClip = function ( f25_arg0, f25_arg1 )
			f25_arg0:__resetProperties() --[[ @ 0]]
			f25_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f25_arg0.RoundDescriptionWidget:completeAnimation() --[[ @ 0]]
			f25_arg0.RoundDescriptionWidget:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.RoundDescriptionWidget ) --[[ @ 0]]
			f25_arg0.ZmRnd:completeAnimation() --[[ @ 0]]
			f25_arg0.ZmRnd:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.ZmRnd ) --[[ @ 0]]
			f25_arg0.ObjectiveScratchOut:completeAnimation() --[[ @ 0]]
			f25_arg0.ObjectiveScratchOut:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.ObjectiveScratchOut ) --[[ @ 0]]
		end
	},
	RoundSuccess = {
		DefaultClip = function ( f26_arg0, f26_arg1 )
			f26_arg0:__resetProperties() --[[ @ 0]]
			f26_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f26_arg0.RoundDescriptionWidget:completeAnimation() --[[ @ 0]]
			f26_arg0.RoundDescriptionWidget:setAlpha( 0 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.RoundDescriptionWidget ) --[[ @ 0]]
			f26_arg0.ZmRnd:completeAnimation() --[[ @ 0]]
			f26_arg0.ZmRnd:setAlpha( 0 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.ZmRnd ) --[[ @ 0]]
			f26_arg0.ObjectiveScratchOut:completeAnimation() --[[ @ 0]]
			f26_arg0.ObjectiveScratchOut:setAlpha( 0 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.ObjectiveScratchOut ) --[[ @ 0]]
		end
	},
	Show = {
		DefaultClip = function ( f27_arg0, f27_arg1 )
			f27_arg0:__resetProperties() --[[ @ 0]]
			f27_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f27_arg0.RoundDescriptionWidget:completeAnimation() --[[ @ 0]]
			f27_arg0.RoundDescriptionWidget:setAlpha( 1 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.RoundDescriptionWidget ) --[[ @ 0]]
			f27_arg0.ZmRnd:completeAnimation() --[[ @ 0]]
			f27_arg0.ZmRnd:setAlpha( 1 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.ZmRnd ) --[[ @ 0]]
			f27_arg0.ObjectiveScratchOut:completeAnimation() --[[ @ 0]]
			f27_arg0.ObjectiveScratchOut:setAlpha( 0 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.ObjectiveScratchOut ) --[[ @ 0]]
		end,
		RoundSuccess = function ( f28_arg0, f28_arg1 )
			f28_arg0:__resetProperties() --[[ @ 0]]
			f28_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f28_local0 = function ( f29_arg0 )
				local f29_local0 = function ( f30_arg0 )
					f30_arg0:beginAnimation( 1000 ) --[[ @ 0]]
					f30_arg0:setAlpha( 0 ) --[[ @ 0]]
					f30_arg0:registerEventHandler( "transition_complete_keyframe", f28_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f28_arg0.RoundDescriptionWidget:beginAnimation( 2000 ) --[[ @ 0]]
				f28_arg0.RoundDescriptionWidget:registerEventHandler( "interrupted_keyframe", f28_arg0.clipInterrupted ) --[[ @ 0]]
				f28_arg0.RoundDescriptionWidget:registerEventHandler( "transition_complete_keyframe", f29_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f28_arg0.RoundDescriptionWidget:completeAnimation() --[[ @ 0]]
			f28_arg0.RoundDescriptionWidget:setAlpha( 1 ) --[[ @ 0]]
			f28_local0( f28_arg0.RoundDescriptionWidget ) --[[ @ 0]]
			local f28_local1 = function ( f31_arg0 )
				local f31_local0 = function ( f32_arg0 )
					f32_arg0:beginAnimation( 1000 ) --[[ @ 0]]
					f32_arg0:setAlpha( 0 ) --[[ @ 0]]
					f32_arg0:registerEventHandler( "transition_complete_keyframe", f28_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f28_arg0.ZmRnd:beginAnimation( 2000 ) --[[ @ 0]]
				f28_arg0.ZmRnd:registerEventHandler( "interrupted_keyframe", f28_arg0.clipInterrupted ) --[[ @ 0]]
				f28_arg0.ZmRnd:registerEventHandler( "transition_complete_keyframe", f31_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f28_arg0.ZmRnd:completeAnimation() --[[ @ 0]]
			f28_arg0.ZmRnd:setAlpha( 1 ) --[[ @ 0]]
			f28_local1( f28_arg0.ZmRnd ) --[[ @ 0]]
			local f28_local2 = function ( f33_arg0 )
				local f33_local0 = function ( f34_arg0 )
					f34_arg0:beginAnimation( 1000 ) --[[ @ 0]]
					f34_arg0:setAlpha( 0 ) --[[ @ 0]]
					f34_arg0:registerEventHandler( "transition_complete_keyframe", f28_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f28_arg0.ObjectiveScratchOut:beginAnimation( 2000 ) --[[ @ 0]]
				f28_arg0.ObjectiveScratchOut:registerEventHandler( "interrupted_keyframe", f28_arg0.clipInterrupted ) --[[ @ 0]]
				f28_arg0.ObjectiveScratchOut:registerEventHandler( "transition_complete_keyframe", f33_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f28_arg0.ObjectiveScratchOut:completeAnimation() --[[ @ 0]]
			f28_arg0.ObjectiveScratchOut:setAlpha( 1 ) --[[ @ 0]]
			f28_local2( f28_arg0.ObjectiveScratchOut ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.Hud_ZM_Trial_Objective.__onClose = function ( f35_arg0 )
	f35_arg0.RoundDescriptionWidget:close() --[[ @ 0]]
	f35_arg0.ZmRnd:close() --[[ @ 0]]
	f35_arg0.ObjectiveScratchOut:close() --[[ @ 0]]
	f35_arg0.ZMTitleFog:close() --[[ @ 0]]
end
 --[[ @ 0]]
