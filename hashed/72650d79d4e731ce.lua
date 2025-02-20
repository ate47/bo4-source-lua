-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
require( "x64:697483b442684eeb" ) --[[ @ 0]]

CoD.ReservesSpecialContract = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ReservesSpecialContract.__defaultWidth = 684 --[[ @ 0]]
CoD.ReservesSpecialContract.__defaultHeight = 132 --[[ @ 0]]
CoD.ReservesSpecialContract.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ReservesSpecialContract ) --[[ @ 0]]
	self.id = "ReservesSpecialContract" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local ReservesPromo = CoD.ReservesSpecialContractInternal.new( f1_arg0, f1_arg1, 0, 0, 0, 684, 0, 0, 0, 132 ) --[[ @ 0]]
	ReservesPromo:linkToElementModel( self, nil, false, function ( model )
		ReservesPromo:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ReservesPromo ) --[[ @ 0]]
	self.ReservesPromo = ReservesPromo --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "active" )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "active", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "active"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ReservesPromo.id = "ReservesPromo" --[[ @ 0]]
	self.__defaultFocus = ReservesPromo --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ReservesSpecialContract.__resetProperties = function ( f5_arg0 )
	f5_arg0.ReservesPromo:completeAnimation() --[[ @ 0]]
	f5_arg0.ReservesPromo:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.ReservesPromo:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ReservesSpecialContract.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f7_arg0.ReservesPromo:completeAnimation() --[[ @ 0]]
			f7_arg0.ReservesPromo:setScale( 1.02, 1.02 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.ReservesPromo ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f8_local0 = function ( f9_arg0 )
				f8_arg0.ReservesPromo:beginAnimation( 200 ) --[[ @ 0]]
				f8_arg0.ReservesPromo:setScale( 1.02, 1.02 ) --[[ @ 0]]
				f8_arg0.ReservesPromo:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.ReservesPromo:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.ReservesPromo:completeAnimation() --[[ @ 0]]
			f8_arg0.ReservesPromo:setScale( 1, 1 ) --[[ @ 0]]
			f8_local0( f8_arg0.ReservesPromo ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f10_local0 = function ( f11_arg0 )
				f10_arg0.ReservesPromo:beginAnimation( 100 ) --[[ @ 0]]
				f10_arg0.ReservesPromo:setScale( 1, 1 ) --[[ @ 0]]
				f10_arg0.ReservesPromo:registerEventHandler( "interrupted_keyframe", f10_arg0.clipInterrupted ) --[[ @ 0]]
				f10_arg0.ReservesPromo:registerEventHandler( "transition_complete_keyframe", f10_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f10_arg0.ReservesPromo:completeAnimation() --[[ @ 0]]
			f10_arg0.ReservesPromo:setScale( 1.02, 1.02 ) --[[ @ 0]]
			f10_local0( f10_arg0.ReservesPromo ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f12_arg0.ReservesPromo:completeAnimation() --[[ @ 0]]
			f12_arg0.ReservesPromo:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.ReservesPromo ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ReservesSpecialContract.__onClose = function ( f13_arg0 )
	f13_arg0.ReservesPromo:close() --[[ @ 0]]
end
 --[[ @ 0]]
