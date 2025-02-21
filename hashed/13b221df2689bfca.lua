-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "x64:48c811a1d34161cf" ) --[[ @ 0]]

CoD.DiscountTimer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DiscountTimer.__defaultWidth = 250 --[[ @ 0]]
CoD.DiscountTimer.__defaultHeight = 60 --[[ @ 0]]
CoD.DiscountTimer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.DiscountTimer ) --[[ @ 0]]
	self.id = "DiscountTimer" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local TimerSlot1 = CoD.TimerRight.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( TimerSlot1 ) --[[ @ 0]]
	self.TimerSlot1 = TimerSlot1 --[[ @ 0]]
	
	local TimerSlot2 = CoD.TimerRight.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	TimerSlot2.TextBox2:setText( "" ) --[[ @ 0]]
	self:addElement( TimerSlot2 ) --[[ @ 0]]
	self.TimerSlot2 = TimerSlot2 --[[ @ 0]]
	
	local TimerSlot3 = CoD.TimerRight.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	TimerSlot3.TextBox2:setText( "" ) --[[ @ 0]]
	self:addElement( TimerSlot3 ) --[[ @ 0]]
	self.TimerSlot3 = TimerSlot3 --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Slot1",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "slot", 1 )
			end
		},
		{
			stateName = "Slot2",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "slot", 2 )
			end
		},
		{
			stateName = "Slot3",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueGreaterThanOrEqualTo( element, f1_arg1, "slot", 3 )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "slot", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "slot"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.DiscountTimer.__resetProperties = function ( f6_arg0 )
	f6_arg0.TimerSlot1:completeAnimation() --[[ @ 0]]
	f6_arg0.TimerSlot2:completeAnimation() --[[ @ 0]]
	f6_arg0.TimerSlot3:completeAnimation() --[[ @ 0]]
	f6_arg0.TimerSlot1:setAlpha( 1 ) --[[ @ 0]]
	f6_arg0.TimerSlot2:setAlpha( 1 ) --[[ @ 0]]
	f6_arg0.TimerSlot3:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.DiscountTimer.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f7_arg0.TimerSlot1:completeAnimation() --[[ @ 0]]
			f7_arg0.TimerSlot1:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.TimerSlot1 ) --[[ @ 0]]
			f7_arg0.TimerSlot2:completeAnimation() --[[ @ 0]]
			f7_arg0.TimerSlot2:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.TimerSlot2 ) --[[ @ 0]]
			f7_arg0.TimerSlot3:completeAnimation() --[[ @ 0]]
			f7_arg0.TimerSlot3:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.TimerSlot3 ) --[[ @ 0]]
		end
	},
	Slot1 = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f8_arg0.TimerSlot1:completeAnimation() --[[ @ 0]]
			f8_arg0.TimerSlot1:setAlpha( 1 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.TimerSlot1 ) --[[ @ 0]]
			f8_arg0.TimerSlot2:completeAnimation() --[[ @ 0]]
			f8_arg0.TimerSlot2:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.TimerSlot2 ) --[[ @ 0]]
			f8_arg0.TimerSlot3:completeAnimation() --[[ @ 0]]
			f8_arg0.TimerSlot3:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.TimerSlot3 ) --[[ @ 0]]
		end
	},
	Slot2 = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f9_arg0.TimerSlot1:completeAnimation() --[[ @ 0]]
			f9_arg0.TimerSlot1:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.TimerSlot1 ) --[[ @ 0]]
			f9_arg0.TimerSlot2:completeAnimation() --[[ @ 0]]
			f9_arg0.TimerSlot2:setAlpha( 1 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.TimerSlot2 ) --[[ @ 0]]
			f9_arg0.TimerSlot3:completeAnimation() --[[ @ 0]]
			f9_arg0.TimerSlot3:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.TimerSlot3 ) --[[ @ 0]]
		end
	},
	Slot3 = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f10_arg0.TimerSlot1:completeAnimation() --[[ @ 0]]
			f10_arg0.TimerSlot1:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.TimerSlot1 ) --[[ @ 0]]
			f10_arg0.TimerSlot2:completeAnimation() --[[ @ 0]]
			f10_arg0.TimerSlot2:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.TimerSlot2 ) --[[ @ 0]]
			f10_arg0.TimerSlot3:completeAnimation() --[[ @ 0]]
			f10_arg0.TimerSlot3:setAlpha( 1 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.TimerSlot3 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.DiscountTimer.__onClose = function ( f11_arg0 )
	f11_arg0.TimerSlot1:close() --[[ @ 0]]
	f11_arg0.TimerSlot2:close() --[[ @ 0]]
	f11_arg0.TimerSlot3:close() --[[ @ 0]]
end
 --[[ @ 0]]
