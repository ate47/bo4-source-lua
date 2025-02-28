-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "x64:4cc22adc728dee9a" ) --[[ @ 0]]

CoD.ReservesLootCrateButtonContainer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ReservesLootCrateButtonContainer.__defaultWidth = 248 --[[ @ 0]]
CoD.ReservesLootCrateButtonContainer.__defaultHeight = 462 --[[ @ 0]]
CoD.ReservesLootCrateButtonContainer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ReservesLootCrateButtonContainer ) --[[ @ 0]]
	self.id = "ReservesLootCrateButtonContainer" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local ReservesItemHorizontal = CoD.ReservesLootCrateButton.new( f1_arg0, f1_arg1, 0.5, 0.5, -124, 124, 0.5, 0.5, -231, 231 ) --[[ @ 0]]
	ReservesItemHorizontal:linkToElementModel( self, nil, false, function ( model )
		ReservesItemHorizontal:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ReservesItemHorizontal ) --[[ @ 0]]
	self.ReservesItemHorizontal = ReservesItemHorizontal --[[ @ 0]]
	
	ReservesItemHorizontal.id = "ReservesItemHorizontal" --[[ @ 0]]
	self.__defaultFocus = ReservesItemHorizontal --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ReservesLootCrateButtonContainer.__resetProperties = function ( f3_arg0 )
	f3_arg0.ReservesItemHorizontal:completeAnimation() --[[ @ 0]]
	f3_arg0.ReservesItemHorizontal:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ReservesLootCrateButtonContainer.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f5_arg0.ReservesItemHorizontal:completeAnimation() --[[ @ 0]]
			f5_arg0.ReservesItemHorizontal:setScale( 1.02, 1.02 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.ReservesItemHorizontal ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f6_local0 = function ( f7_arg0 )
				f6_arg0.ReservesItemHorizontal:beginAnimation( 200 ) --[[ @ 0]]
				f6_arg0.ReservesItemHorizontal:setScale( 1.02, 1.02 ) --[[ @ 0]]
				f6_arg0.ReservesItemHorizontal:registerEventHandler( "interrupted_keyframe", f6_arg0.clipInterrupted ) --[[ @ 0]]
				f6_arg0.ReservesItemHorizontal:registerEventHandler( "transition_complete_keyframe", f6_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f6_arg0.ReservesItemHorizontal:completeAnimation() --[[ @ 0]]
			f6_arg0.ReservesItemHorizontal:setScale( 1, 1 ) --[[ @ 0]]
			f6_local0( f6_arg0.ReservesItemHorizontal ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f8_local0 = function ( f9_arg0 )
				f8_arg0.ReservesItemHorizontal:beginAnimation( 100 ) --[[ @ 0]]
				f8_arg0.ReservesItemHorizontal:setScale( 1, 1 ) --[[ @ 0]]
				f8_arg0.ReservesItemHorizontal:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.ReservesItemHorizontal:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.ReservesItemHorizontal:completeAnimation() --[[ @ 0]]
			f8_arg0.ReservesItemHorizontal:setScale( 1.02, 1.02 ) --[[ @ 0]]
			f8_local0( f8_arg0.ReservesItemHorizontal ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ReservesLootCrateButtonContainer.__onClose = function ( f10_arg0 )
	f10_arg0.ReservesItemHorizontal:close() --[[ @ 0]]
end
 --[[ @ 0]]
