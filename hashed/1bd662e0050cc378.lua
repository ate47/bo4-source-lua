-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "ui/uieditor/widgets/controllerdependent_textbox" ) --[[ @ 0]]

CoD.WarzoneArmorStashCount_PC = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WarzoneArmorStashCount_PC.__defaultWidth = 112 --[[ @ 0]]
CoD.WarzoneArmorStashCount_PC.__defaultHeight = 24 --[[ @ 0]]
CoD.WarzoneArmorStashCount_PC.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIHorizontalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 0, true ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Center ) --[[ @ 0]]
	self:setClass( CoD.WarzoneArmorStashCount_PC ) --[[ @ 0]]
	self.id = "WarzoneArmorStashCount_PC" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local UseArmorPrompt = CoD.ControllerDependent_TextBox.new( f1_arg0, f1_arg1, 0.5, 0.5, -36, 36, 0, 0, 0, 24 ) --[[ @ 0]]
	UseArmorPrompt:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				local f2_local0 = Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_in_killcam"] ) --[[ @ 0]]
				if not f2_local0 then
					f2_local0 = Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_play_of_the_match"] ) --[[ @ 0]]
					if not f2_local0 then
						f2_local0 = Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_team_spectator"] ) --[[ @ 0]]
					end
				end
				return f2_local0
			end
		},
		{
			stateName = "KeyboardAndMouse",
			condition = function ( menu, element, event )
				return IsMouseOrKeyboard( f1_arg1 ) and AlwaysFalse()
			end
		},
		{
			stateName = "KeyboardAndMouseAbility",
			condition = function ( menu, element, event )
				return IsMouseOrKeyboard( f1_arg1 ) and AlwaysFalse()
			end
		},
		{
			stateName = "KeyboardAndMouseUltimate",
			condition = function ( menu, element, event )
				return IsMouseOrKeyboard( f1_arg1 ) and AlwaysFalse()
			end
		},
		{
			stateName = "KeyboardAndMouseScoreStreak",
			condition = function ( menu, element, event )
				return IsMouseOrKeyboard( f1_arg1 ) and AlwaysFalse()
			end
		},
		{
			stateName = "KeyboardAndMouseAbilityWZ",
			condition = function ( menu, element, event )
				return IsMouseOrKeyboard( f1_arg1 ) and AlwaysTrue()
			end
		}
	} ) --[[ @ 0]]
	local Count = UseArmorPrompt --[[ @ 0]]
	local Icon = UseArmorPrompt.subscribeToModel --[[ @ 0]]
	local f1_local4 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	Icon( Count, f1_local4["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_killcam"]], function ( f8_arg0 )
		f1_arg0:updateElementState( UseArmorPrompt, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f8_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_killcam"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	Count = UseArmorPrompt --[[ @ 0]]
	Icon = UseArmorPrompt.subscribeToModel --[[ @ 0]]
	f1_local4 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	Icon( Count, f1_local4["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_play_of_the_match"]], function ( f9_arg0 )
		f1_arg0:updateElementState( UseArmorPrompt, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f9_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_play_of_the_match"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	Count = UseArmorPrompt --[[ @ 0]]
	Icon = UseArmorPrompt.subscribeToModel --[[ @ 0]]
	f1_local4 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	Icon( Count, f1_local4["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_team_spectator"]], function ( f10_arg0 )
		f1_arg0:updateElementState( UseArmorPrompt, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f10_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_team_spectator"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	UseArmorPrompt:appendEventHandler( "input_source_changed", function ( f11_arg0, f11_arg1 )
		f11_arg1.menu = f11_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( UseArmorPrompt, f11_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	Count = UseArmorPrompt --[[ @ 0]]
	Icon = UseArmorPrompt.subscribeToModel --[[ @ 0]]
	f1_local4 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	Icon( Count, f1_local4.LastInput, function ( f12_arg0 )
		f1_arg0:updateElementState( UseArmorPrompt, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f12_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	UseArmorPrompt:setAlpha( 0 ) --[[ @ 0]]
	UseArmorPrompt.KBMText:setText( CoD.BaseUtility.AlreadyLocalized( "[{+armorrepair}]" ) ) --[[ @ 0]]
	UseArmorPrompt.GamepadText:setText( "" ) --[[ @ 0]]
	UseArmorPrompt.GamepadText:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	self:addElement( UseArmorPrompt ) --[[ @ 0]]
	self.UseArmorPrompt = UseArmorPrompt --[[ @ 0]]
	
	Icon = LUI.UIImage.new( 0, 0, 0, 24, 0, 0, 0, 24 ) --[[ @ 0]]
	Icon:setAlpha( 0 ) --[[ @ 0]]
	Icon:setImage( RegisterImage( @"uie_ui_icon_inventory_armor_scrap" ) ) --[[ @ 0]]
	self:addElement( Icon ) --[[ @ 0]]
	self.Icon = Icon --[[ @ 0]]
	
	Count = LUI.UIText.new( 0, 0, 24, 112, 0, 0, 0, 24 ) --[[ @ 0]]
	Count:setAlpha( 0 ) --[[ @ 0]]
	Count:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Count:setLetterSpacing( 1 ) --[[ @ 0]]
	Count:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Count:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	Count:linkToElementModel( self, "stackCount", true, function ( model )
		local f13_local0 = model:get() --[[ @ 0]]
		if f13_local0 ~= nil then
			Count:setText( CoD.WZUtility.GetArmorStashCountString( f1_arg1, f13_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Count ) --[[ @ 0]]
	self.Count = Count --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueGreaterThan( element, f1_arg1, "stackCount", 0 )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "stackCount", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "stackCount"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.WarzoneArmorStashCount_PC.__resetProperties = function ( f16_arg0 )
	f16_arg0.Icon:completeAnimation() --[[ @ 0]]
	f16_arg0.Count:completeAnimation() --[[ @ 0]]
	f16_arg0.UseArmorPrompt:completeAnimation() --[[ @ 0]]
	f16_arg0.Icon:setAlpha( 0 ) --[[ @ 0]]
	f16_arg0.Count:setAlpha( 0 ) --[[ @ 0]]
	f16_arg0.UseArmorPrompt:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.WarzoneArmorStashCount_PC.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Visible = {
		DefaultClip = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f18_arg0.UseArmorPrompt:completeAnimation() --[[ @ 0]]
			f18_arg0.UseArmorPrompt:setAlpha( 1 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.UseArmorPrompt ) --[[ @ 0]]
			f18_arg0.Icon:completeAnimation() --[[ @ 0]]
			f18_arg0.Icon:setAlpha( 1 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.Icon ) --[[ @ 0]]
			f18_arg0.Count:completeAnimation() --[[ @ 0]]
			f18_arg0.Count:setAlpha( 1 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.Count ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.WarzoneArmorStashCount_PC.__onClose = function ( f19_arg0 )
	f19_arg0.UseArmorPrompt:close() --[[ @ 0]]
	f19_arg0.Count:close() --[[ @ 0]]
end
 --[[ @ 0]]
