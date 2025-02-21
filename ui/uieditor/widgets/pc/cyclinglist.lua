-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/emptyfocusable" ) --[[ @ 0]]
require( "x64:ec2c7fb5a455c0a" ) --[[ @ 0]]
require( "x64:41ba14a6a952408f" ) --[[ @ 0]]

CoD.CyclingList = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CyclingList.__defaultWidth = 810 --[[ @ 0]]
CoD.CyclingList.__defaultHeight = 65 --[[ @ 0]]
CoD.CyclingList.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CyclingList ) --[[ @ 0]]
	self.id = "CyclingList" --[[ @ 0]]
	self.soundSet = "ChooseDecal" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local ListItem = CoD.ListItem.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 0, 0, 65 ) --[[ @ 0]]
	ListItem:mergeStateConditions( {
		{
			stateName = "Unavailable",
			condition = function ( menu, element, event )
				return CoD.PCUtility.IsUnavailable( self, f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	ListItem:linkToElementModel( ListItem, "refreshWidget", true, function ( model )
		f1_arg0:updateElementState( ListItem, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "refreshWidget"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ListItem:linkToElementModel( self, nil, false, function ( model )
		ListItem:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ListItem:linkToElementModel( self, "name", true, function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			ListItem.Title:setText( Engine[@"hash_4F9F1239CFD921FE"]( f5_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ListItem ) --[[ @ 0]]
	self.ListItem = ListItem --[[ @ 0]]
	
	local emptyFocusable = CoD.emptyFocusable.new( f1_arg0, f1_arg1, 0, 1, 40, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( emptyFocusable ) --[[ @ 0]]
	self.emptyFocusable = emptyFocusable --[[ @ 0]]
	
	local CyclingList = CoD.CyclingList_ItemControl.new( f1_arg0, f1_arg1, 1, 1, -348, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	CyclingList:mergeStateConditions( {
		{
			stateName = "Unavailable",
			condition = function ( menu, element, event )
				return CoD.PCUtility.IsUnavailable( self, f1_arg1 )
			end
		},
		{
			stateName = "ArrowsHidden",
			condition = function ( menu, element, event )
				return CoD.PCWidgetUtility.ShouldHideArrows( self, f1_arg1, event )
			end
		},
		{
			stateName = "LeftArrowHidden",
			condition = function ( menu, element, event )
				return CoD.PCWidgetUtility.ShouldHideLeftArrow( self, f1_arg1, event )
			end
		},
		{
			stateName = "RightArrowHidden",
			condition = function ( menu, element, event )
				return CoD.PCWidgetUtility.ShouldHideRightArrow( self, f1_arg1, event )
			end
		}
	} ) --[[ @ 0]]
	CyclingList:linkToElementModel( CyclingList, "refreshWidget", true, function ( model )
		f1_arg0:updateElementState( CyclingList, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "refreshWidget"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	CyclingList:linkToElementModel( CyclingList, "currentValue", true, function ( model )
		f1_arg0:updateElementState( CyclingList, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "currentValue"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	CyclingList:linkToElementModel( self, nil, false, function ( model )
		CyclingList:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	CyclingList:linkToElementModel( self, "currentValue", true, function ( model )
		local f13_local0 = model:get() --[[ @ 0]]
		if f13_local0 ~= nil then
			CyclingList.TextBox:setText( CoD.BaseUtility.LocalizeIfXHash( CoD.PCWidgetUtility.OptionValueToOptionName( self, f13_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( CyclingList ) --[[ @ 0]]
	self.CyclingList = CyclingList --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Unavailable",
			condition = function ( menu, element, event )
				return CoD.PCUtility.IsUnavailable( self, f1_arg1 )
			end
		},
		{
			stateName = "FadedOut",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "refreshWidget", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "refreshWidget"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "setModel", function ( element, controller )
		CoD.PCWidgetUtility.PrepareCyclingList( self, f1_arg1, f1_arg0, controller, self.CyclingList ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "currentValue", true, function ( model )
		local f18_local0 = self --[[ @ 0]]
		CoD.PCUtility.CallValueUpdateIfExist( self, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "refreshWidget", true, function ( model )
		local f19_local0 = self --[[ @ 0]]
		CoD.PCWidgetUtility.UpdateOptionList( self, f1_arg1, true ) --[[ @ 0]]
	end ) --[[ @ 0]]
	emptyFocusable.id = "emptyFocusable" --[[ @ 0]]
	CyclingList.id = "CyclingList" --[[ @ 0]]
	self.__defaultFocus = emptyFocusable --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CyclingList.__resetProperties = function ( f20_arg0 )
	f20_arg0.ListItem:completeAnimation() --[[ @ 0]]
	f20_arg0.CyclingList:completeAnimation() --[[ @ 0]]
	f20_arg0.ListItem:setAlpha( 1 ) --[[ @ 0]]
	f20_arg0.CyclingList:setAlpha( 1 ) --[[ @ 0]]
	f20_arg0.CyclingList.right.Image:setRGB( 0.58, 0.58, 0.58 ) --[[ @ 0]]
	f20_arg0.CyclingList.left.Image:setRGB( 0.58, 0.58, 0.58 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CyclingList.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f21_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f21_arg0.ListItem:playClip( "DefaultClip" ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.ListItem ) --[[ @ 0]]
		end,
		Active = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f22_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f22_arg0.ListItem:playClip( "cActive" ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.ListItem ) --[[ @ 0]]
			f22_arg0.CyclingList:completeAnimation() --[[ @ 0]]
			f22_arg0.CyclingList.right.Image:completeAnimation() --[[ @ 0]]
			f22_arg0.CyclingList.left.Image:completeAnimation() --[[ @ 0]]
			f22_arg0.CyclingList.right.Image:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f22_arg0.CyclingList.left.Image:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.CyclingList ) --[[ @ 0]]
		end,
		ChildFocus = function ( f23_arg0, f23_arg1 )
			f23_arg0:__resetProperties() --[[ @ 0]]
			f23_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f23_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f23_arg0.ListItem:playClip( "cFocus" ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.ListItem ) --[[ @ 0]]
			f23_arg0.CyclingList:completeAnimation() --[[ @ 0]]
			f23_arg0.CyclingList.right.Image:completeAnimation() --[[ @ 0]]
			f23_arg0.CyclingList.left.Image:completeAnimation() --[[ @ 0]]
			f23_arg0.CyclingList.right.Image:setRGB( 0.81, 0.81, 0.81 ) --[[ @ 0]]
			f23_arg0.CyclingList.left.Image:setRGB( 0.81, 0.81, 0.81 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.CyclingList ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f24_arg0, f24_arg1 )
			f24_arg0:__resetProperties() --[[ @ 0]]
			f24_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f24_local0 = function ( f25_arg0 )
				f24_arg0.ListItem:playClip( "cGainFocus" ) --[[ @ 0]]
				f24_arg0.ListItem:beginAnimation( 150 ) --[[ @ 0]]
				f24_arg0.ListItem:registerEventHandler( "interrupted_keyframe", f24_arg0.clipInterrupted ) --[[ @ 0]]
				f24_arg0.ListItem:registerEventHandler( "transition_complete_keyframe", function ( element, event )
					element:playClip( "cGainFocus" ) --[[ @ 0]]
					f24_arg0.clipFinished( element, event ) --[[ @ 0]]
				end ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f24_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f24_arg0.ListItem:setAlpha( 1 ) --[[ @ 0]]
			f24_local0( f24_arg0.ListItem ) --[[ @ 0]]
			local f24_local1 = function ( f27_arg0 )
				f24_arg0.CyclingList:beginAnimation( 150 ) --[[ @ 0]]
				f24_arg0.CyclingList.right.Image:beginAnimation( 150 ) --[[ @ 0]]
				f24_arg0.CyclingList.left.Image:beginAnimation( 150 ) --[[ @ 0]]
				f24_arg0.CyclingList.right.Image:setRGB( 0.81, 0.81, 0.81 ) --[[ @ 0]]
				f24_arg0.CyclingList.left.Image:setRGB( 0.81, 0.81, 0.81 ) --[[ @ 0]]
				f24_arg0.CyclingList:registerEventHandler( "interrupted_keyframe", f24_arg0.clipInterrupted ) --[[ @ 0]]
				f24_arg0.CyclingList:registerEventHandler( "transition_complete_keyframe", f24_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f24_arg0.CyclingList:completeAnimation() --[[ @ 0]]
			f24_arg0.CyclingList.right.Image:completeAnimation() --[[ @ 0]]
			f24_arg0.CyclingList.left.Image:completeAnimation() --[[ @ 0]]
			f24_arg0.CyclingList.right.Image:setRGB( 0.58, 0.58, 0.58 ) --[[ @ 0]]
			f24_arg0.CyclingList.left.Image:setRGB( 0.58, 0.58, 0.58 ) --[[ @ 0]]
			f24_local1( f24_arg0.CyclingList ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f28_arg0, f28_arg1 )
			f28_arg0:__resetProperties() --[[ @ 0]]
			f28_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f28_local0 = function ( f29_arg0 )
				f28_arg0.ListItem:playClip( "cLoseFocus" ) --[[ @ 0]]
				f28_arg0.ListItem:beginAnimation( 150 ) --[[ @ 0]]
				f28_arg0.ListItem:registerEventHandler( "interrupted_keyframe", f28_arg0.clipInterrupted ) --[[ @ 0]]
				f28_arg0.ListItem:registerEventHandler( "transition_complete_keyframe", function ( element, event )
					element:playClip( "cLoseFocus" ) --[[ @ 0]]
					f28_arg0.clipFinished( element, event ) --[[ @ 0]]
				end ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f28_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f28_arg0.ListItem:setAlpha( 1 ) --[[ @ 0]]
			f28_local0( f28_arg0.ListItem ) --[[ @ 0]]
			local f28_local1 = function ( f31_arg0 )
				f28_arg0.CyclingList:beginAnimation( 150 ) --[[ @ 0]]
				f28_arg0.CyclingList.right.Image:beginAnimation( 150 ) --[[ @ 0]]
				f28_arg0.CyclingList.left.Image:beginAnimation( 150 ) --[[ @ 0]]
				f28_arg0.CyclingList.right.Image:setRGB( 0.58, 0.58, 0.58 ) --[[ @ 0]]
				f28_arg0.CyclingList.left.Image:setRGB( 0.58, 0.58, 0.58 ) --[[ @ 0]]
				f28_arg0.CyclingList:registerEventHandler( "interrupted_keyframe", f28_arg0.clipInterrupted ) --[[ @ 0]]
				f28_arg0.CyclingList:registerEventHandler( "transition_complete_keyframe", f28_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f28_arg0.CyclingList:completeAnimation() --[[ @ 0]]
			f28_arg0.CyclingList.right.Image:completeAnimation() --[[ @ 0]]
			f28_arg0.CyclingList.left.Image:completeAnimation() --[[ @ 0]]
			f28_arg0.CyclingList.right.Image:setRGB( 0.81, 0.81, 0.81 ) --[[ @ 0]]
			f28_arg0.CyclingList.left.Image:setRGB( 0.81, 0.81, 0.81 ) --[[ @ 0]]
			f28_local1( f28_arg0.CyclingList ) --[[ @ 0]]
		end,
		ActiveAndChildFocus = function ( f32_arg0, f32_arg1 )
			f32_arg0:__resetProperties() --[[ @ 0]]
			f32_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f32_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f32_arg0.ListItem:playClip( "cActiveAndFocus" ) --[[ @ 0]]
			f32_arg0.clipFinished( f32_arg0.ListItem ) --[[ @ 0]]
			f32_arg0.CyclingList:completeAnimation() --[[ @ 0]]
			f32_arg0.CyclingList.right.Image:completeAnimation() --[[ @ 0]]
			f32_arg0.CyclingList.left.Image:completeAnimation() --[[ @ 0]]
			f32_arg0.CyclingList.right.Image:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f32_arg0.CyclingList.left.Image:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f32_arg0.clipFinished( f32_arg0.CyclingList ) --[[ @ 0]]
		end,
		GainActiveAndChildFocus = function ( f33_arg0, f33_arg1 )
			f33_arg0:__resetProperties() --[[ @ 0]]
			f33_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f33_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f33_arg0.ListItem:playClip( "cGainActiveAndFocus" ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.ListItem ) --[[ @ 0]]
			local f33_local0 = function ( f34_arg0 )
				f33_arg0.CyclingList:beginAnimation( 150 ) --[[ @ 0]]
				f33_arg0.CyclingList.right.Image:beginAnimation( 150 ) --[[ @ 0]]
				f33_arg0.CyclingList.left.Image:beginAnimation( 150 ) --[[ @ 0]]
				f33_arg0.CyclingList.right.Image:setRGB( 1, 1, 1 ) --[[ @ 0]]
				f33_arg0.CyclingList.left.Image:setRGB( 1, 1, 1 ) --[[ @ 0]]
				f33_arg0.CyclingList:registerEventHandler( "interrupted_keyframe", f33_arg0.clipInterrupted ) --[[ @ 0]]
				f33_arg0.CyclingList:registerEventHandler( "transition_complete_keyframe", f33_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f33_arg0.CyclingList:completeAnimation() --[[ @ 0]]
			f33_arg0.CyclingList.right.Image:completeAnimation() --[[ @ 0]]
			f33_arg0.CyclingList.left.Image:completeAnimation() --[[ @ 0]]
			f33_arg0.CyclingList.right.Image:setRGB( 0.58, 0.58, 0.58 ) --[[ @ 0]]
			f33_arg0.CyclingList.left.Image:setRGB( 0.58, 0.58, 0.58 ) --[[ @ 0]]
			f33_local0( f33_arg0.CyclingList ) --[[ @ 0]]
		end,
		LoseActiveAndChildFocus = function ( f35_arg0, f35_arg1 )
			f35_arg0:__resetProperties() --[[ @ 0]]
			f35_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f35_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f35_arg0.ListItem:playClip( "cLoseActiveAndFocus" ) --[[ @ 0]]
			f35_arg0.clipFinished( f35_arg0.ListItem ) --[[ @ 0]]
			local f35_local0 = function ( f36_arg0 )
				f35_arg0.CyclingList:beginAnimation( 150 ) --[[ @ 0]]
				f35_arg0.CyclingList.right.Image:beginAnimation( 150 ) --[[ @ 0]]
				f35_arg0.CyclingList.left.Image:beginAnimation( 150 ) --[[ @ 0]]
				f35_arg0.CyclingList.right.Image:setRGB( 0.58, 0.58, 0.58 ) --[[ @ 0]]
				f35_arg0.CyclingList.left.Image:setRGB( 0.58, 0.58, 0.58 ) --[[ @ 0]]
				f35_arg0.CyclingList:registerEventHandler( "interrupted_keyframe", f35_arg0.clipInterrupted ) --[[ @ 0]]
				f35_arg0.CyclingList:registerEventHandler( "transition_complete_keyframe", f35_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f35_arg0.CyclingList:completeAnimation() --[[ @ 0]]
			f35_arg0.CyclingList.right.Image:completeAnimation() --[[ @ 0]]
			f35_arg0.CyclingList.left.Image:completeAnimation() --[[ @ 0]]
			f35_arg0.CyclingList.right.Image:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f35_arg0.CyclingList.left.Image:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f35_local0( f35_arg0.CyclingList ) --[[ @ 0]]
		end,
		ActiveAndChildFocusToActive = function ( f37_arg0, f37_arg1 )
			f37_arg0:__resetProperties() --[[ @ 0]]
			f37_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f37_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f37_arg0.ListItem:playClip( "cActiveAndFocusToActive" ) --[[ @ 0]]
			f37_arg0.clipFinished( f37_arg0.ListItem ) --[[ @ 0]]
			f37_arg0.CyclingList:completeAnimation() --[[ @ 0]]
			f37_arg0.CyclingList.right.Image:completeAnimation() --[[ @ 0]]
			f37_arg0.CyclingList.left.Image:completeAnimation() --[[ @ 0]]
			f37_arg0.CyclingList.right.Image:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f37_arg0.CyclingList.left.Image:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f37_arg0.clipFinished( f37_arg0.CyclingList ) --[[ @ 0]]
		end,
		ActiveToActiveAndChildFocus = function ( f38_arg0, f38_arg1 )
			f38_arg0:__resetProperties() --[[ @ 0]]
			f38_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f38_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f38_arg0.ListItem:playClip( "cActiveToActiveAndFocus" ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.ListItem ) --[[ @ 0]]
			f38_arg0.CyclingList:completeAnimation() --[[ @ 0]]
			f38_arg0.CyclingList.right.Image:completeAnimation() --[[ @ 0]]
			f38_arg0.CyclingList.left.Image:completeAnimation() --[[ @ 0]]
			f38_arg0.CyclingList.right.Image:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f38_arg0.CyclingList.left.Image:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.CyclingList ) --[[ @ 0]]
		end,
		LoseActive = function ( f39_arg0, f39_arg1 )
			f39_arg0:__resetProperties() --[[ @ 0]]
			f39_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f39_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f39_arg0.ListItem:playClip( "cLoseActive" ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.ListItem ) --[[ @ 0]]
			local f39_local0 = function ( f40_arg0 )
				f39_arg0.CyclingList:beginAnimation( 150 ) --[[ @ 0]]
				f39_arg0.CyclingList.right.Image:beginAnimation( 150 ) --[[ @ 0]]
				f39_arg0.CyclingList.left.Image:beginAnimation( 150 ) --[[ @ 0]]
				f39_arg0.CyclingList.right.Image:setRGB( 0.58, 0.58, 0.58 ) --[[ @ 0]]
				f39_arg0.CyclingList.left.Image:setRGB( 0.58, 0.58, 0.58 ) --[[ @ 0]]
				f39_arg0.CyclingList:registerEventHandler( "interrupted_keyframe", f39_arg0.clipInterrupted ) --[[ @ 0]]
				f39_arg0.CyclingList:registerEventHandler( "transition_complete_keyframe", f39_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f39_arg0.CyclingList:completeAnimation() --[[ @ 0]]
			f39_arg0.CyclingList.right.Image:completeAnimation() --[[ @ 0]]
			f39_arg0.CyclingList.left.Image:completeAnimation() --[[ @ 0]]
			f39_arg0.CyclingList.right.Image:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f39_arg0.CyclingList.left.Image:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f39_local0( f39_arg0.CyclingList ) --[[ @ 0]]
		end
	},
	Unavailable = {
		DefaultClip = function ( f41_arg0, f41_arg1 )
			f41_arg0:__resetProperties() --[[ @ 0]]
			f41_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f41_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f41_arg0.ListItem:playClip( "dDefault" ) --[[ @ 0]]
			f41_arg0.clipFinished( f41_arg0.ListItem ) --[[ @ 0]]
			f41_arg0.CyclingList:completeAnimation() --[[ @ 0]]
			f41_arg0.CyclingList:setAlpha( 0.2 ) --[[ @ 0]]
			f41_arg0.clipFinished( f41_arg0.CyclingList ) --[[ @ 0]]
		end,
		Active = function ( f42_arg0, f42_arg1 )
			f42_arg0:__resetProperties() --[[ @ 0]]
			f42_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f42_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f42_arg0.ListItem:playClip( "dActive" ) --[[ @ 0]]
			f42_arg0.clipFinished( f42_arg0.ListItem ) --[[ @ 0]]
			f42_arg0.CyclingList:completeAnimation() --[[ @ 0]]
			f42_arg0.CyclingList:setAlpha( 0.2 ) --[[ @ 0]]
			f42_arg0.clipFinished( f42_arg0.CyclingList ) --[[ @ 0]]
		end,
		ChildFocus = function ( f43_arg0, f43_arg1 )
			f43_arg0:__resetProperties() --[[ @ 0]]
			f43_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f43_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f43_arg0.ListItem:playClip( "dFocus" ) --[[ @ 0]]
			f43_arg0.clipFinished( f43_arg0.ListItem ) --[[ @ 0]]
			f43_arg0.CyclingList:completeAnimation() --[[ @ 0]]
			f43_arg0.CyclingList:setAlpha( 0.2 ) --[[ @ 0]]
			f43_arg0.clipFinished( f43_arg0.CyclingList ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f44_arg0, f44_arg1 )
			f44_arg0:__resetProperties() --[[ @ 0]]
			f44_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f44_local0 = function ( f45_arg0 )
				f44_arg0.ListItem:playClip( "dGainFocus" ) --[[ @ 0]]
				f44_arg0.ListItem:beginAnimation( 150 ) --[[ @ 0]]
				f44_arg0.ListItem:registerEventHandler( "interrupted_keyframe", f44_arg0.clipInterrupted ) --[[ @ 0]]
				f44_arg0.ListItem:registerEventHandler( "transition_complete_keyframe", function ( element, event )
					element:playClip( "dGainFocus" ) --[[ @ 0]]
					f44_arg0.clipFinished( element, event ) --[[ @ 0]]
				end ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f44_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f44_arg0.ListItem:setAlpha( 1 ) --[[ @ 0]]
			f44_local0( f44_arg0.ListItem ) --[[ @ 0]]
			f44_arg0.CyclingList:completeAnimation() --[[ @ 0]]
			f44_arg0.CyclingList:setAlpha( 0.2 ) --[[ @ 0]]
			f44_arg0.clipFinished( f44_arg0.CyclingList ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f47_arg0, f47_arg1 )
			f47_arg0:__resetProperties() --[[ @ 0]]
			f47_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f47_local0 = function ( f48_arg0 )
				f47_arg0.ListItem:playClip( "dLoseFocus" ) --[[ @ 0]]
				f47_arg0.ListItem:beginAnimation( 150 ) --[[ @ 0]]
				f47_arg0.ListItem:registerEventHandler( "interrupted_keyframe", f47_arg0.clipInterrupted ) --[[ @ 0]]
				f47_arg0.ListItem:registerEventHandler( "transition_complete_keyframe", function ( element, event )
					element:playClip( "dLoseFocus" ) --[[ @ 0]]
					f47_arg0.clipFinished( element, event ) --[[ @ 0]]
				end ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f47_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f47_arg0.ListItem:setAlpha( 1 ) --[[ @ 0]]
			f47_local0( f47_arg0.ListItem ) --[[ @ 0]]
			f47_arg0.CyclingList:completeAnimation() --[[ @ 0]]
			f47_arg0.CyclingList:setAlpha( 0.2 ) --[[ @ 0]]
			f47_arg0.clipFinished( f47_arg0.CyclingList ) --[[ @ 0]]
		end,
		ActiveAndChildFocus = function ( f50_arg0, f50_arg1 )
			f50_arg0:__resetProperties() --[[ @ 0]]
			f50_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f50_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f50_arg0.ListItem:playClip( "dActiveAndFocus" ) --[[ @ 0]]
			f50_arg0.clipFinished( f50_arg0.ListItem ) --[[ @ 0]]
			f50_arg0.CyclingList:completeAnimation() --[[ @ 0]]
			f50_arg0.CyclingList:setAlpha( 0.2 ) --[[ @ 0]]
			f50_arg0.clipFinished( f50_arg0.CyclingList ) --[[ @ 0]]
		end,
		GainActiveAndChildFocus = function ( f51_arg0, f51_arg1 )
			f51_arg0:__resetProperties() --[[ @ 0]]
			f51_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f51_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f51_arg0.ListItem:playClip( "dGainActiveAndFocus" ) --[[ @ 0]]
			f51_arg0.clipFinished( f51_arg0.ListItem ) --[[ @ 0]]
			local f51_local0 = function ( f52_arg0 )
				f51_arg0.CyclingList:beginAnimation( 150 ) --[[ @ 0]]
				f51_arg0.CyclingList:registerEventHandler( "interrupted_keyframe", f51_arg0.clipInterrupted ) --[[ @ 0]]
				f51_arg0.CyclingList:registerEventHandler( "transition_complete_keyframe", f51_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f51_arg0.CyclingList:completeAnimation() --[[ @ 0]]
			f51_arg0.CyclingList:setAlpha( 0.2 ) --[[ @ 0]]
			f51_local0( f51_arg0.CyclingList ) --[[ @ 0]]
		end,
		LoseActive = function ( f53_arg0, f53_arg1 )
			f53_arg0:__resetProperties() --[[ @ 0]]
			f53_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f53_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f53_arg0.ListItem:playClip( "dLoseActive" ) --[[ @ 0]]
			f53_arg0.clipFinished( f53_arg0.ListItem ) --[[ @ 0]]
			local f53_local0 = function ( f54_arg0 )
				f53_arg0.CyclingList:beginAnimation( 150 ) --[[ @ 0]]
				f53_arg0.CyclingList:registerEventHandler( "interrupted_keyframe", f53_arg0.clipInterrupted ) --[[ @ 0]]
				f53_arg0.CyclingList:registerEventHandler( "transition_complete_keyframe", f53_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f53_arg0.CyclingList:completeAnimation() --[[ @ 0]]
			f53_arg0.CyclingList:setAlpha( 0.2 ) --[[ @ 0]]
			f53_local0( f53_arg0.CyclingList ) --[[ @ 0]]
		end,
		ActiveAndChildFocusToActive = function ( f55_arg0, f55_arg1 )
			f55_arg0:__resetProperties() --[[ @ 0]]
			f55_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f55_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f55_arg0.ListItem:playClip( "dActiveAndFocusToActive" ) --[[ @ 0]]
			f55_arg0.clipFinished( f55_arg0.ListItem ) --[[ @ 0]]
			f55_arg0.CyclingList:completeAnimation() --[[ @ 0]]
			f55_arg0.CyclingList:setAlpha( 0.2 ) --[[ @ 0]]
			f55_arg0.clipFinished( f55_arg0.CyclingList ) --[[ @ 0]]
		end,
		ActiveToActiveAndChildFocus = function ( f56_arg0, f56_arg1 )
			f56_arg0:__resetProperties() --[[ @ 0]]
			f56_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f56_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f56_arg0.ListItem:playClip( "dActiveToActiveAndFocus" ) --[[ @ 0]]
			f56_arg0.clipFinished( f56_arg0.ListItem ) --[[ @ 0]]
			f56_arg0.CyclingList:completeAnimation() --[[ @ 0]]
			f56_arg0.CyclingList:setAlpha( 0.2 ) --[[ @ 0]]
			f56_arg0.clipFinished( f56_arg0.CyclingList ) --[[ @ 0]]
		end,
		LoseActiveAndChildFocus = function ( f57_arg0, f57_arg1 )
			f57_arg0:__resetProperties() --[[ @ 0]]
			f57_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f57_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f57_arg0.ListItem:playClip( "dLoseActiveAndFocus" ) --[[ @ 0]]
			f57_arg0.clipFinished( f57_arg0.ListItem ) --[[ @ 0]]
			f57_arg0.CyclingList:completeAnimation() --[[ @ 0]]
			f57_arg0.CyclingList:setAlpha( 0.2 ) --[[ @ 0]]
			f57_arg0.clipFinished( f57_arg0.CyclingList ) --[[ @ 0]]
		end
	},
	FadedOut = {
		DefaultClip = function ( f58_arg0, f58_arg1 )
			f58_arg0:__resetProperties() --[[ @ 0]]
			f58_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f58_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f58_arg0.ListItem:setAlpha( 0.3 ) --[[ @ 0]]
			f58_arg0.clipFinished( f58_arg0.ListItem ) --[[ @ 0]]
			f58_arg0.CyclingList:completeAnimation() --[[ @ 0]]
			f58_arg0.CyclingList:setAlpha( 0.3 ) --[[ @ 0]]
			f58_arg0.clipFinished( f58_arg0.CyclingList ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.CyclingList.__onClose = function ( f59_arg0 )
	f59_arg0.ListItem:close() --[[ @ 0]]
	f59_arg0.emptyFocusable:close() --[[ @ 0]]
	f59_arg0.CyclingList:close() --[[ @ 0]]
end
 --[[ @ 0]]
