-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "x64:1704a0d70f9c7c02" ) --[[ @ 0]]

CoD.SegmentButton = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.SegmentButton.__defaultWidth = 321 --[[ @ 0]]
CoD.SegmentButton.__defaultHeight = 180 --[[ @ 0]]
CoD.SegmentButton.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.SegmentButton ) --[[ @ 0]]
	self.id = "SegmentButton" --[[ @ 0]]
	self.soundSet = "ChooseDecal" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local SegmentButton = CoD.SegmentButtonInternal.new( f1_arg0, f1_arg1, 0, 0, -3, 324, 0, 0, -3, 183 ) --[[ @ 0]]
	SegmentButton:linkToElementModel( self, nil, false, function ( model )
		SegmentButton:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( SegmentButton ) --[[ @ 0]]
	self.SegmentButton = SegmentButton --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "EmptyState",
			condition = function ( menu, element, event )
				return IsDisabled( element, f1_arg1 )
			end
		},
		{
			stateName = "SelectedState",
			condition = function ( menu, element, event )
				return IsSegmentInSelectedState( element, f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "disabled", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "disabled"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "selected", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "selected"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	SegmentButton.id = "SegmentButton" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.SegmentButton.__resetProperties = function ( f7_arg0 )
	f7_arg0.SegmentButton:completeAnimation() --[[ @ 0]]
	f7_arg0.SegmentButton:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.SegmentButton.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f9_arg0.SegmentButton:completeAnimation() --[[ @ 0]]
			f9_arg0.SegmentButton:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.SegmentButton ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f10_local0 = function ( f11_arg0 )
				f10_arg0.SegmentButton:beginAnimation( 200 ) --[[ @ 0]]
				f10_arg0.SegmentButton:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f10_arg0.SegmentButton:registerEventHandler( "interrupted_keyframe", f10_arg0.clipInterrupted ) --[[ @ 0]]
				f10_arg0.SegmentButton:registerEventHandler( "transition_complete_keyframe", f10_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f10_arg0.SegmentButton:completeAnimation() --[[ @ 0]]
			f10_arg0.SegmentButton:setScale( 1, 1 ) --[[ @ 0]]
			f10_local0( f10_arg0.SegmentButton ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f12_local0 = function ( f13_arg0 )
				f12_arg0.SegmentButton:beginAnimation( 200 ) --[[ @ 0]]
				f12_arg0.SegmentButton:setScale( 1, 1 ) --[[ @ 0]]
				f12_arg0.SegmentButton:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.SegmentButton:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.SegmentButton:completeAnimation() --[[ @ 0]]
			f12_arg0.SegmentButton:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f12_local0( f12_arg0.SegmentButton ) --[[ @ 0]]
		end
	},
	EmptyState = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	SelectedState = {
		DefaultClip = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f16_arg0.SegmentButton:completeAnimation() --[[ @ 0]]
			f16_arg0.SegmentButton:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.SegmentButton ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f17_local0 = function ( f18_arg0 )
				f17_arg0.SegmentButton:beginAnimation( 150 ) --[[ @ 0]]
				f17_arg0.SegmentButton:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f17_arg0.SegmentButton:registerEventHandler( "interrupted_keyframe", f17_arg0.clipInterrupted ) --[[ @ 0]]
				f17_arg0.SegmentButton:registerEventHandler( "transition_complete_keyframe", f17_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f17_arg0.SegmentButton:completeAnimation() --[[ @ 0]]
			f17_arg0.SegmentButton:setScale( 1, 1 ) --[[ @ 0]]
			f17_local0( f17_arg0.SegmentButton ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f19_local0 = function ( f20_arg0 )
				f19_arg0.SegmentButton:beginAnimation( 150 ) --[[ @ 0]]
				f19_arg0.SegmentButton:setScale( 1, 1 ) --[[ @ 0]]
				f19_arg0.SegmentButton:registerEventHandler( "interrupted_keyframe", f19_arg0.clipInterrupted ) --[[ @ 0]]
				f19_arg0.SegmentButton:registerEventHandler( "transition_complete_keyframe", f19_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f19_arg0.SegmentButton:completeAnimation() --[[ @ 0]]
			f19_arg0.SegmentButton:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f19_local0( f19_arg0.SegmentButton ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.SegmentButton.__onClose = function ( f21_arg0 )
	f21_arg0.SegmentButton:close() --[[ @ 0]]
end
 --[[ @ 0]]
