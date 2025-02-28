-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "ui/uieditor/widgets/pc/startmenu/pc_highlightborder" ) --[[ @ 0]]

CoD.MultiItemPickupWaypointItem = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.MultiItemPickupWaypointItem.__defaultWidth = 156 --[[ @ 0]]
CoD.MultiItemPickupWaypointItem.__defaultHeight = 81 --[[ @ 0]]
CoD.MultiItemPickupWaypointItem.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.MultiItemPickupWaypointItem ) --[[ @ 0]]
	self.id = "MultiItemPickupWaypointItem" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local PickupHintImage = LUI.UIFixedAspectRatioImage.new( 0, 0, 0, 156, 0, 0, 0, 81 ) --[[ @ 0]]
	PickupHintImage:linkToElementModel( self, "icon", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			PickupHintImage:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( PickupHintImage ) --[[ @ 0]]
	self.PickupHintImage = PickupHintImage --[[ @ 0]]
	
	local PCHighlightBorder = nil --[[ @ 0]]
	
	PCHighlightBorder = CoD.PC_HighlightBorder.new( f1_arg0, f1_arg1, 0.12, 0.88, 0, 0, 0.12, 0.88, 0, 0 ) --[[ @ 0]]
	PCHighlightBorder:mergeStateConditions( {
		{
			stateName = "Disabled",
			condition = function ( menu, element, event )
				return IsGamepad( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	PCHighlightBorder:appendEventHandler( "input_source_changed", function ( f4_arg0, f4_arg1 )
		f4_arg1.menu = f4_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( PCHighlightBorder, f4_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local3 = PCHighlightBorder --[[ @ 0]]
	local f1_local4 = PCHighlightBorder.subscribeToModel --[[ @ 0]]
	local f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5.LastInput, function ( f5_arg0 )
		f1_arg0:updateElementState( PCHighlightBorder, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:addElement( PCHighlightBorder ) --[[ @ 0]]
	self.PCHighlightBorder = PCHighlightBorder --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "KBM",
			condition = function ( menu, element, event )
				return IsMouseOrKeyboard( f1_arg1 )
			end
		},
		{
			stateName = "Disabled",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "isDummy" )
			end
		},
		{
			stateName = "Outer",
			condition = function ( menu, element, event )
				return not CoD.GridAndListUtility.IsElementWithinIndexOfActiveElement( element, 1 )
			end
		},
		{
			stateName = "Inner",
			condition = function ( menu, element, event )
				return not CoD.GridAndListUtility.IsElementWithinIndexOfActiveElement( element, 0 )
			end
		}
	} ) --[[ @ 0]]
	self:appendEventHandler( "input_source_changed", function ( f10_arg0, f10_arg1 )
		f10_arg1.menu = f10_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( self, f10_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5.LastInput, function ( f11_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f11_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:linkToElementModel( self, "isDummy", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "isDummy"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:subscribeToGlobalModel( f1_arg1, "MultiItemPickup", "forceNotifyActive", function ( model )
		local f13_local0 = self --[[ @ 0]]
		UpdateSelfState( self, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.MultiItemPickupWaypointItem.__resetProperties = function ( f14_arg0 )
	f14_arg0.PickupHintImage:completeAnimation() --[[ @ 0]]
	f14_arg0.PickupHintImage:setAlpha( 1 ) --[[ @ 0]]
	f14_arg0.PickupHintImage:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.MultiItemPickupWaypointItem.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f15_arg0.PickupHintImage:completeAnimation() --[[ @ 0]]
			f15_arg0.PickupHintImage:setScale( 1.5, 1.5 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.PickupHintImage ) --[[ @ 0]]
		end,
		Active = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f16_arg0.PickupHintImage:completeAnimation() --[[ @ 0]]
			f16_arg0.PickupHintImage:setScale( 1.5, 1.5 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.PickupHintImage ) --[[ @ 0]]
		end,
		Focus = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f17_arg0.PickupHintImage:completeAnimation() --[[ @ 0]]
			f17_arg0.PickupHintImage:setScale( 1.5, 1.5 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.PickupHintImage ) --[[ @ 0]]
		end
	},
	KBM = {
		DefaultClip = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Focus = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f19_arg0.PickupHintImage:completeAnimation() --[[ @ 0]]
			f19_arg0.PickupHintImage:setScale( 1.5, 1.5 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.PickupHintImage ) --[[ @ 0]]
		end,
		Active = function ( f20_arg0, f20_arg1 )
			f20_arg0:__resetProperties() --[[ @ 0]]
			f20_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f20_arg0.PickupHintImage:completeAnimation() --[[ @ 0]]
			f20_arg0.PickupHintImage:setScale( 1.5, 1.5 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.PickupHintImage ) --[[ @ 0]]
		end,
		ActiveAndFocus = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f21_arg0.PickupHintImage:completeAnimation() --[[ @ 0]]
			f21_arg0.PickupHintImage:setScale( 0.75, 0.75 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.PickupHintImage ) --[[ @ 0]]
		end
	},
	Disabled = {
		DefaultClip = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f22_arg0.PickupHintImage:completeAnimation() --[[ @ 0]]
			f22_arg0.PickupHintImage:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.PickupHintImage:setScale( 1.25, 1.25 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.PickupHintImage ) --[[ @ 0]]
		end
	},
	Outer = {
		DefaultClip = function ( f23_arg0, f23_arg1 )
			f23_arg0:__resetProperties() --[[ @ 0]]
			f23_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f23_arg0.PickupHintImage:completeAnimation() --[[ @ 0]]
			f23_arg0.PickupHintImage:setAlpha( 0.4 ) --[[ @ 0]]
			f23_arg0.PickupHintImage:setScale( 0.6, 0.6 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.PickupHintImage ) --[[ @ 0]]
		end,
		Active = function ( f24_arg0, f24_arg1 )
			f24_arg0:__resetProperties() --[[ @ 0]]
			f24_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f24_arg0.PickupHintImage:completeAnimation() --[[ @ 0]]
			f24_arg0.PickupHintImage:setAlpha( 0.4 ) --[[ @ 0]]
			f24_arg0.PickupHintImage:setScale( 0.6, 0.6 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.PickupHintImage ) --[[ @ 0]]
		end
	},
	Inner = {
		DefaultClip = function ( f25_arg0, f25_arg1 )
			f25_arg0:__resetProperties() --[[ @ 0]]
			f25_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f25_arg0.PickupHintImage:completeAnimation() --[[ @ 0]]
			f25_arg0.PickupHintImage:setAlpha( 0.6 ) --[[ @ 0]]
			f25_arg0.PickupHintImage:setScale( 0.5, 0.5 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.PickupHintImage ) --[[ @ 0]]
		end,
		Active = function ( f26_arg0, f26_arg1 )
			f26_arg0:__resetProperties() --[[ @ 0]]
			f26_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f26_arg0.PickupHintImage:completeAnimation() --[[ @ 0]]
			f26_arg0.PickupHintImage:setAlpha( 0.6 ) --[[ @ 0]]
			f26_arg0.PickupHintImage:setScale( 0.5, 0.5 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.PickupHintImage ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.MultiItemPickupWaypointItem.__onClose = function ( f27_arg0 )
	f27_arg0.PickupHintImage:close() --[[ @ 0]]
	f27_arg0.PCHighlightBorder:close() --[[ @ 0]]
end
 --[[ @ 0]]
