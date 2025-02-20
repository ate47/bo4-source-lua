-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "x64:70f64a16f3daec0d" ) --[[ @ 0]]
require( "x64:63a6f78fa6060013" ) --[[ @ 0]]

CoD.BM_ContractDetails = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.BM_ContractDetails.__defaultWidth = 460 --[[ @ 0]]
CoD.BM_ContractDetails.__defaultHeight = 636 --[[ @ 0]]
CoD.BM_ContractDetails.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.BM_ContractDetails ) --[[ @ 0]]
	self.id = "BM_ContractDetails" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local DirectorSelectButtonMiniInternal = CoD.BM_ContractsSlotButton.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	DirectorSelectButtonMiniInternal:mergeStateConditions( {
		{
			stateName = "Disabled",
			condition = function ( menu, element, event )
				return IsInDefaultState( self )
			end
		}
	} ) --[[ @ 0]]
	DirectorSelectButtonMiniInternal:setAlpha( 0.6 ) --[[ @ 0]]
	DirectorSelectButtonMiniInternal.SceneBlur:setAlpha( 0 ) --[[ @ 0]]
	DirectorSelectButtonMiniInternal:linkToElementModel( self, nil, false, function ( model )
		DirectorSelectButtonMiniInternal:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( DirectorSelectButtonMiniInternal ) --[[ @ 0]]
	self.DirectorSelectButtonMiniInternal = DirectorSelectButtonMiniInternal --[[ @ 0]]
	
	local BMContractDetailsInternal = CoD.BM_ContractDetailsInternal.new( f1_arg0, f1_arg1, 0.5, 0.5, -230, 230, 0.5, 0.5, -317, 317 ) --[[ @ 0]]
	BMContractDetailsInternal:mergeStateConditions( {
		{
			stateName = "Completed",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "completed" ) and IsInDefaultState( self )
			end
		}
	} ) --[[ @ 0]]
	BMContractDetailsInternal:linkToElementModel( BMContractDetailsInternal, "displayName", true, function ( model )
		f1_arg0:updateElementState( BMContractDetailsInternal, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "displayName"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	BMContractDetailsInternal:linkToElementModel( BMContractDetailsInternal, "completed", true, function ( model )
		f1_arg0:updateElementState( BMContractDetailsInternal, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "completed"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	BMContractDetailsInternal:linkToElementModel( self, nil, false, function ( model )
		BMContractDetailsInternal:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( BMContractDetailsInternal ) --[[ @ 0]]
	self.BMContractDetailsInternal = BMContractDetailsInternal --[[ @ 0]]
	
	DirectorSelectButtonMiniInternal.id = "DirectorSelectButtonMiniInternal" --[[ @ 0]]
	self.__defaultFocus = DirectorSelectButtonMiniInternal --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.BM_ContractDetails.__resetProperties = function ( f8_arg0 )
	f8_arg0.BMContractDetailsInternal:completeAnimation() --[[ @ 0]]
	f8_arg0.DirectorSelectButtonMiniInternal:completeAnimation() --[[ @ 0]]
	f8_arg0.BMContractDetailsInternal:setScale( 1, 1 ) --[[ @ 0]]
	f8_arg0.DirectorSelectButtonMiniInternal:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.BM_ContractDetails.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	ContractSlot = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f11_arg0.DirectorSelectButtonMiniInternal:completeAnimation() --[[ @ 0]]
			f11_arg0.DirectorSelectButtonMiniInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.DirectorSelectButtonMiniInternal ) --[[ @ 0]]
			f11_arg0.BMContractDetailsInternal:completeAnimation() --[[ @ 0]]
			f11_arg0.BMContractDetailsInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.BMContractDetailsInternal ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f12_local0 = function ( f13_arg0 )
				f12_arg0.DirectorSelectButtonMiniInternal:beginAnimation( 150 ) --[[ @ 0]]
				f12_arg0.DirectorSelectButtonMiniInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f12_arg0.DirectorSelectButtonMiniInternal:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.DirectorSelectButtonMiniInternal:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.DirectorSelectButtonMiniInternal:completeAnimation() --[[ @ 0]]
			f12_arg0.DirectorSelectButtonMiniInternal:setScale( 1, 1 ) --[[ @ 0]]
			f12_local0( f12_arg0.DirectorSelectButtonMiniInternal ) --[[ @ 0]]
			local f12_local1 = function ( f14_arg0 )
				f12_arg0.BMContractDetailsInternal:beginAnimation( 150 ) --[[ @ 0]]
				f12_arg0.BMContractDetailsInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f12_arg0.BMContractDetailsInternal:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.BMContractDetailsInternal:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.BMContractDetailsInternal:completeAnimation() --[[ @ 0]]
			f12_arg0.BMContractDetailsInternal:setScale( 1, 1 ) --[[ @ 0]]
			f12_local1( f12_arg0.BMContractDetailsInternal ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f15_local0 = function ( f16_arg0 )
				f15_arg0.DirectorSelectButtonMiniInternal:beginAnimation( 100 ) --[[ @ 0]]
				f15_arg0.DirectorSelectButtonMiniInternal:setScale( 1, 1 ) --[[ @ 0]]
				f15_arg0.DirectorSelectButtonMiniInternal:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
				f15_arg0.DirectorSelectButtonMiniInternal:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.DirectorSelectButtonMiniInternal:completeAnimation() --[[ @ 0]]
			f15_arg0.DirectorSelectButtonMiniInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f15_local0( f15_arg0.DirectorSelectButtonMiniInternal ) --[[ @ 0]]
			local f15_local1 = function ( f17_arg0 )
				f15_arg0.BMContractDetailsInternal:beginAnimation( 100 ) --[[ @ 0]]
				f15_arg0.BMContractDetailsInternal:setScale( 1, 1 ) --[[ @ 0]]
				f15_arg0.BMContractDetailsInternal:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
				f15_arg0.BMContractDetailsInternal:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.BMContractDetailsInternal:completeAnimation() --[[ @ 0]]
			f15_arg0.BMContractDetailsInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f15_local1( f15_arg0.BMContractDetailsInternal ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.BM_ContractDetails.__onClose = function ( f18_arg0 )
	f18_arg0.DirectorSelectButtonMiniInternal:close() --[[ @ 0]]
	f18_arg0.BMContractDetailsInternal:close() --[[ @ 0]]
end
 --[[ @ 0]]
