-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "ui/uieditor/widgets/bumperbuttonwithkeymousetext" ) --[[ @ 0]]
require( "x64:5391b667b0cbcc40" ) --[[ @ 0]]

CoD.ScoreboardTabs = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ScoreboardTabs.__defaultWidth = 720 --[[ @ 0]]
CoD.ScoreboardTabs.__defaultHeight = 34 --[[ @ 0]]
CoD.ScoreboardTabs.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ScoreboardTabs ) --[[ @ 0]]
	self.id = "ScoreboardTabs" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = CoD.isPC --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Tabs = LUI.GridLayout.new( f1_arg0, f1_arg1, false, 0, 0, 2, 0, nil, nil, true, false, false, false ) --[[ @ 0]]
	Tabs:setLeftRight( 0, 0, 200, 542 ) --[[ @ 0]]
	Tabs:setTopBottom( 0, 0, 4, 38 ) --[[ @ 0]]
	Tabs:setWidgetType( CoD.TabbedScoreboardTab ) --[[ @ 0]]
	Tabs:setHorizontalCount( 2 ) --[[ @ 0]]
	Tabs:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	Tabs:setDataSource( "TabbedScoreboardTabs" ) --[[ @ 0]]
	Tabs:registerEventHandler( "mouse_left_click", function ( element, event )
		local f2_local0 = nil --[[ @ 0]]
		CoD.BaseUtility.ProcessGridAction( self, element, f1_arg1, event ) --[[ @ 0]]
		if not f2_local0 then
			f2_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f2_local0
	end ) --[[ @ 0]]
	self:addElement( Tabs ) --[[ @ 0]]
	self.Tabs = Tabs --[[ @ 0]]
	
	local RB = CoD.BumperButtonWithKeyMouseText.new( f1_arg0, f1_arg1, 0.5, 0.5, 234, 430, 0, 0, 0, 34 ) --[[ @ 0]]
	RB:mergeStateConditions( {
		{
			stateName = "KBM",
			condition = function ( menu, element, event )
				return IsMouseOrKeyboard( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	RB:appendEventHandler( "input_source_changed", function ( f4_arg0, f4_arg1 )
		f4_arg1.menu = f4_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( RB, f4_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local3 = RB --[[ @ 0]]
	local LB = RB.subscribeToModel --[[ @ 0]]
	local f1_local5 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	LB( f1_local3, f1_local5.LastInput, function ( f5_arg0 )
		f1_arg0:updateElementState( RB, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	RB.GamepadPrompt:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_5BFED5292621DA9A" ) ) --[[ @ 0]]
	RB.KeyPrompt.keybind:setText( CoD.BaseUtility.AlreadyLocalized( "E" ) ) --[[ @ 0]]
	self:addElement( RB ) --[[ @ 0]]
	self.RB = RB --[[ @ 0]]
	
	LB = CoD.BumperButtonWithKeyMouseText.new( f1_arg0, f1_arg1, 0.5, 0.5, -272, -76, 0, 0, 0, 34 ) --[[ @ 0]]
	LB:mergeStateConditions( {
		{
			stateName = "KBM",
			condition = function ( menu, element, event )
				return IsMouseOrKeyboard( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	LB:appendEventHandler( "input_source_changed", function ( f7_arg0, f7_arg1 )
		f7_arg1.menu = f7_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( LB, f7_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local5 = LB --[[ @ 0]]
	f1_local3 = LB.subscribeToModel --[[ @ 0]]
	local f1_local6 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local5, f1_local6.LastInput, function ( f8_arg0 )
		f1_arg0:updateElementState( LB, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f8_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LB.GamepadPrompt:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_5BDCD5292604F434" ) ) --[[ @ 0]]
	LB.KeyPrompt.keybind:setText( CoD.BaseUtility.AlreadyLocalized( "Q" ) ) --[[ @ 0]]
	self:addElement( LB ) --[[ @ 0]]
	self.LB = LB --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "KBM",
			condition = function ( menu, element, event )
				return IsMouseOrKeyboard( f1_arg1 )
			end
		},
		{
			stateName = "Shoutcaster",
			condition = function ( menu, element, event )
				return IsCodCaster( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	self:appendEventHandler( "input_source_changed", function ( f11_arg0, f11_arg1 )
		f11_arg1.menu = f11_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( self, f11_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local5 = self --[[ @ 0]]
	f1_local3 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local5, f1_local6.LastInput, function ( f12_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f12_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local5 = self --[[ @ 0]]
	f1_local3 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local5, f1_local6["factions.isCoDCaster"], function ( f13_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f13_arg0:get(),
			modelName = "factions.isCoDCaster"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	Tabs.id = "Tabs" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local3 = self --[[ @ 0]]
	CoD.HUDUtility.AddScoreboardBumperNavigation( f1_arg0, Tabs, f1_arg1 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.ScoreboardTabs.__resetProperties = function ( f14_arg0 )
	f14_arg0.LB:completeAnimation() --[[ @ 0]]
	f14_arg0.RB:completeAnimation() --[[ @ 0]]
	f14_arg0.Tabs:completeAnimation() --[[ @ 0]]
	f14_arg0.LB:setAlpha( 1 ) --[[ @ 0]]
	f14_arg0.RB:setAlpha( 1 ) --[[ @ 0]]
	f14_arg0.Tabs:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ScoreboardTabs.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f15_arg0.Tabs:completeAnimation() --[[ @ 0]]
			f15_arg0.Tabs:setAlpha( 1 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.Tabs ) --[[ @ 0]]
			f15_arg0.RB:completeAnimation() --[[ @ 0]]
			f15_arg0.RB:setAlpha( 1 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.RB ) --[[ @ 0]]
			f15_arg0.LB:completeAnimation() --[[ @ 0]]
			f15_arg0.LB:setAlpha( 1 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.LB ) --[[ @ 0]]
		end
	},
	KBM = {
		DefaultClip = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f16_arg0.Tabs:completeAnimation() --[[ @ 0]]
			f16_arg0.Tabs:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.Tabs ) --[[ @ 0]]
			f16_arg0.RB:completeAnimation() --[[ @ 0]]
			f16_arg0.RB:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.RB ) --[[ @ 0]]
			f16_arg0.LB:completeAnimation() --[[ @ 0]]
			f16_arg0.LB:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.LB ) --[[ @ 0]]
		end
	},
	Shoutcaster = {
		DefaultClip = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f17_arg0.Tabs:completeAnimation() --[[ @ 0]]
			f17_arg0.Tabs:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.Tabs ) --[[ @ 0]]
			f17_arg0.RB:completeAnimation() --[[ @ 0]]
			f17_arg0.RB:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.RB ) --[[ @ 0]]
			f17_arg0.LB:completeAnimation() --[[ @ 0]]
			f17_arg0.LB:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.LB ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ScoreboardTabs.__onClose = function ( f18_arg0 )
	f18_arg0.Tabs:close() --[[ @ 0]]
	f18_arg0.RB:close() --[[ @ 0]]
	f18_arg0.LB:close() --[[ @ 0]]
end
 --[[ @ 0]]
