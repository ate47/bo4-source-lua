-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:1f91d9d528eb4ebd" ) --[[ @ 0]]
require( "x64:71f846296f1a1b81" ) --[[ @ 0]]

CoD.DirectorPreGameButtonLeftJustified = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DirectorPreGameButtonLeftJustified.__defaultWidth = 212 --[[ @ 0]]
CoD.DirectorPreGameButtonLeftJustified.__defaultHeight = 50 --[[ @ 0]]
CoD.DirectorPreGameButtonLeftJustified.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.DirectorPreGameButtonLeftJustified ) --[[ @ 0]]
	self.id = "DirectorPreGameButtonLeftJustified" --[[ @ 0]]
	self.soundSet = "FrontendMain" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local baseButton = CoD.DirectorSelectButtonMiniInternal.new( f1_arg0, f1_arg1, 0, 0, 0, 212, 0, 0, 0, 50 ) --[[ @ 0]]
	baseButton:mergeStateConditions( {
		{
			stateName = "TrialLocked",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "trialLocked" )
			end
		},
		{
			stateName = "Locked",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "locked" )
			end
		}
	} ) --[[ @ 0]]
	baseButton:linkToElementModel( baseButton, "trialLocked", true, function ( model )
		f1_arg0:updateElementState( baseButton, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "trialLocked"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	baseButton:linkToElementModel( baseButton, "locked", true, function ( model )
		f1_arg0:updateElementState( baseButton, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "locked"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	baseButton.MiddleText:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	baseButton.MiddleTextFocus:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	baseButton:linkToElementModel( self, nil, false, function ( model )
		baseButton:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	baseButton:linkToElementModel( self, "subtitle", true, function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			baseButton.MiddleText:setText( LocalizeToUpperString( f7_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	baseButton:linkToElementModel( self, "subtitle", true, function ( model )
		local f8_local0 = model:get() --[[ @ 0]]
		if f8_local0 ~= nil then
			baseButton.MiddleTextFocus:setText( LocalizeToUpperString( f8_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( baseButton ) --[[ @ 0]]
	self.baseButton = baseButton --[[ @ 0]]
	
	local sizeElement = CoD.DirectorSelectButtonImageInternal.new( f1_arg0, f1_arg1, 0, 0, 0, 212, 0, 0, 0, 50 ) --[[ @ 0]]
	sizeElement:mergeStateConditions( {
		{
			stateName = "TrialLocked",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "trialLocked" )
			end
		},
		{
			stateName = "Locked",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "locked" )
			end
		},
		{
			stateName = "Disabled",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	sizeElement:linkToElementModel( sizeElement, "trialLocked", true, function ( model )
		f1_arg0:updateElementState( sizeElement, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "trialLocked"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	sizeElement:linkToElementModel( sizeElement, "locked", true, function ( model )
		f1_arg0:updateElementState( sizeElement, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "locked"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	sizeElement:setAlpha( 0 ) --[[ @ 0]]
	sizeElement.Tint:setRGB( 0.05, 0.08, 0.11 ) --[[ @ 0]]
	sizeElement.Tint:setAlpha( 0.25 ) --[[ @ 0]]
	sizeElement:linkToElementModel( self, nil, false, function ( model )
		sizeElement:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	sizeElement:linkToElementModel( self, "subtitle", true, function ( model )
		local f15_local0 = model:get() --[[ @ 0]]
		if f15_local0 ~= nil then
			sizeElement.ButtonName.GameModeText:setText( ToUpper( CoD.BaseUtility.LocalizeIfXHash( f15_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( sizeElement ) --[[ @ 0]]
	self.sizeElement = sizeElement --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Large",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "small" )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "small", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "small"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	baseButton.id = "baseButton" --[[ @ 0]]
	sizeElement.id = "sizeElement" --[[ @ 0]]
	self.__defaultFocus = baseButton --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.DirectorPreGameButtonLeftJustified.__resetProperties = function ( f18_arg0 )
	f18_arg0.baseButton:completeAnimation() --[[ @ 0]]
	f18_arg0.sizeElement:completeAnimation() --[[ @ 0]]
	f18_arg0.baseButton:setTopBottom( 0, 0, 0, 50 ) --[[ @ 0]]
	f18_arg0.baseButton:setAlpha( 1 ) --[[ @ 0]]
	f18_arg0.baseButton:setScale( 1, 1 ) --[[ @ 0]]
	f18_arg0.sizeElement:setLeftRight( 0, 0, 0, 212 ) --[[ @ 0]]
	f18_arg0.sizeElement:setTopBottom( 0, 0, 0, 50 ) --[[ @ 0]]
	f18_arg0.sizeElement:setAlpha( 0 ) --[[ @ 0]]
	f18_arg0.sizeElement:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.DirectorPreGameButtonLeftJustified.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f20_arg0, f20_arg1 )
			f20_arg0:__resetProperties() --[[ @ 0]]
			f20_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f20_arg0.baseButton:completeAnimation() --[[ @ 0]]
			f20_arg0.baseButton:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.baseButton ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f21_local0 = function ( f22_arg0 )
				f21_arg0.baseButton:beginAnimation( 200 ) --[[ @ 0]]
				f21_arg0.baseButton:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f21_arg0.baseButton:registerEventHandler( "interrupted_keyframe", f21_arg0.clipInterrupted ) --[[ @ 0]]
				f21_arg0.baseButton:registerEventHandler( "transition_complete_keyframe", f21_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f21_arg0.baseButton:completeAnimation() --[[ @ 0]]
			f21_arg0.baseButton:setScale( 1, 1 ) --[[ @ 0]]
			f21_local0( f21_arg0.baseButton ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f23_arg0, f23_arg1 )
			f23_arg0:__resetProperties() --[[ @ 0]]
			f23_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f23_local0 = function ( f24_arg0 )
				f23_arg0.baseButton:beginAnimation( 200 ) --[[ @ 0]]
				f23_arg0.baseButton:setScale( 1, 1 ) --[[ @ 0]]
				f23_arg0.baseButton:registerEventHandler( "interrupted_keyframe", f23_arg0.clipInterrupted ) --[[ @ 0]]
				f23_arg0.baseButton:registerEventHandler( "transition_complete_keyframe", f23_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f23_arg0.baseButton:completeAnimation() --[[ @ 0]]
			f23_arg0.baseButton:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f23_local0( f23_arg0.baseButton ) --[[ @ 0]]
		end
	},
	Large = {
		DefaultClip = function ( f25_arg0, f25_arg1 )
			f25_arg0:__resetProperties() --[[ @ 0]]
			f25_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f25_arg0.baseButton:completeAnimation() --[[ @ 0]]
			f25_arg0.baseButton:setTopBottom( 0, 0, 0, 197 ) --[[ @ 0]]
			f25_arg0.baseButton:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.baseButton ) --[[ @ 0]]
			f25_arg0.sizeElement:completeAnimation() --[[ @ 0]]
			f25_arg0.sizeElement:setLeftRight( 0, 0, 0, 212 ) --[[ @ 0]]
			f25_arg0.sizeElement:setTopBottom( 0, 0, 0, 189 ) --[[ @ 0]]
			f25_arg0.sizeElement:setAlpha( 1 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.sizeElement ) --[[ @ 0]]
		end,
		ChildFocus = function ( f26_arg0, f26_arg1 )
			f26_arg0:__resetProperties() --[[ @ 0]]
			f26_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f26_arg0.baseButton:completeAnimation() --[[ @ 0]]
			f26_arg0.baseButton:setTopBottom( 0, 0, 0, 197 ) --[[ @ 0]]
			f26_arg0.baseButton:setAlpha( 0 ) --[[ @ 0]]
			f26_arg0.baseButton:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.baseButton ) --[[ @ 0]]
			f26_arg0.sizeElement:completeAnimation() --[[ @ 0]]
			f26_arg0.sizeElement:setLeftRight( 0, 0, 0, 212 ) --[[ @ 0]]
			f26_arg0.sizeElement:setTopBottom( 0, 0, 0, 189 ) --[[ @ 0]]
			f26_arg0.sizeElement:setAlpha( 1 ) --[[ @ 0]]
			f26_arg0.sizeElement:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.sizeElement ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f27_arg0, f27_arg1 )
			f27_arg0:__resetProperties() --[[ @ 0]]
			f27_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f27_local0 = function ( f28_arg0 )
				f27_arg0.baseButton:beginAnimation( 200 ) --[[ @ 0]]
				f27_arg0.baseButton:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f27_arg0.baseButton:registerEventHandler( "interrupted_keyframe", f27_arg0.clipInterrupted ) --[[ @ 0]]
				f27_arg0.baseButton:registerEventHandler( "transition_complete_keyframe", f27_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f27_arg0.baseButton:completeAnimation() --[[ @ 0]]
			f27_arg0.baseButton:setTopBottom( 0, 0, 0, 197 ) --[[ @ 0]]
			f27_arg0.baseButton:setAlpha( 0 ) --[[ @ 0]]
			f27_arg0.baseButton:setScale( 1, 1 ) --[[ @ 0]]
			f27_local0( f27_arg0.baseButton ) --[[ @ 0]]
			local f27_local1 = function ( f29_arg0 )
				f27_arg0.sizeElement:beginAnimation( 200 ) --[[ @ 0]]
				f27_arg0.sizeElement:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f27_arg0.sizeElement:registerEventHandler( "interrupted_keyframe", f27_arg0.clipInterrupted ) --[[ @ 0]]
				f27_arg0.sizeElement:registerEventHandler( "transition_complete_keyframe", f27_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f27_arg0.sizeElement:completeAnimation() --[[ @ 0]]
			f27_arg0.sizeElement:setLeftRight( 0, 0, 0, 212 ) --[[ @ 0]]
			f27_arg0.sizeElement:setTopBottom( 0, 0, 0, 189 ) --[[ @ 0]]
			f27_arg0.sizeElement:setAlpha( 1 ) --[[ @ 0]]
			f27_arg0.sizeElement:setScale( 1, 1 ) --[[ @ 0]]
			f27_local1( f27_arg0.sizeElement ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f30_arg0, f30_arg1 )
			f30_arg0:__resetProperties() --[[ @ 0]]
			f30_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f30_local0 = function ( f31_arg0 )
				f30_arg0.baseButton:beginAnimation( 200 ) --[[ @ 0]]
				f30_arg0.baseButton:setScale( 1, 1 ) --[[ @ 0]]
				f30_arg0.baseButton:registerEventHandler( "interrupted_keyframe", f30_arg0.clipInterrupted ) --[[ @ 0]]
				f30_arg0.baseButton:registerEventHandler( "transition_complete_keyframe", f30_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f30_arg0.baseButton:completeAnimation() --[[ @ 0]]
			f30_arg0.baseButton:setTopBottom( 0, 0, 0, 197 ) --[[ @ 0]]
			f30_arg0.baseButton:setAlpha( 0 ) --[[ @ 0]]
			f30_arg0.baseButton:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f30_local0( f30_arg0.baseButton ) --[[ @ 0]]
			local f30_local1 = function ( f32_arg0 )
				f30_arg0.sizeElement:beginAnimation( 200 ) --[[ @ 0]]
				f30_arg0.sizeElement:setScale( 1, 1 ) --[[ @ 0]]
				f30_arg0.sizeElement:registerEventHandler( "interrupted_keyframe", f30_arg0.clipInterrupted ) --[[ @ 0]]
				f30_arg0.sizeElement:registerEventHandler( "transition_complete_keyframe", f30_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f30_arg0.sizeElement:completeAnimation() --[[ @ 0]]
			f30_arg0.sizeElement:setLeftRight( 0, 0, 0, 212 ) --[[ @ 0]]
			f30_arg0.sizeElement:setTopBottom( 0, 0, 0, 189 ) --[[ @ 0]]
			f30_arg0.sizeElement:setAlpha( 1 ) --[[ @ 0]]
			f30_arg0.sizeElement:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f30_local1( f30_arg0.sizeElement ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.DirectorPreGameButtonLeftJustified.__onClose = function ( f33_arg0 )
	f33_arg0.baseButton:close() --[[ @ 0]]
	f33_arg0.sizeElement:close() --[[ @ 0]]
end
 --[[ @ 0]]
