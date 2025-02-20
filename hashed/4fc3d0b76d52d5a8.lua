-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
CoD.ZMInvObjectiveProgressItem = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ZMInvObjectiveProgressItem.__defaultWidth = 384 --[[ @ 0]]
CoD.ZMInvObjectiveProgressItem.__defaultHeight = 400 --[[ @ 0]]
CoD.ZMInvObjectiveProgressItem.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ZMInvObjectiveProgressItem ) --[[ @ 0]]
	self.id = "ZMInvObjectiveProgressItem" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local SlotBackground = LUI.UIImage.new( 0.5, 0.5, -32, 32, 0, 0, 30, 94 ) --[[ @ 0]]
	SlotBackground:linkToElementModel( self, "progressItemUnfinishedImage", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			SlotBackground:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( SlotBackground ) --[[ @ 0]]
	self.SlotBackground = SlotBackground --[[ @ 0]]
	
	local Earned = LUI.UIImage.new( 0.5, 0.5, -32, 32, 0, 0, 30, 94 ) --[[ @ 0]]
	Earned:setRGB( 1, 0.79, 0.32 ) --[[ @ 0]]
	Earned:setAlpha( 0 ) --[[ @ 0]]
	Earned:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	Earned:linkToElementModel( self, "progressItemFinishedImage", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			Earned:setImage( RegisterImage( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Earned ) --[[ @ 0]]
	self.Earned = Earned --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Earned",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualToEitherValue( self, f1_arg1, "earned", true, 1 )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "earned", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "earned"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ZMInvObjectiveProgressItem.__resetProperties = function ( f6_arg0 )
	f6_arg0.Earned:completeAnimation() --[[ @ 0]]
	f6_arg0.Earned:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ZMInvObjectiveProgressItem.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Earned = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f8_local0 = function ( f9_arg0 )
				f8_arg0.Earned:beginAnimation( 150 ) --[[ @ 0]]
				f8_arg0.Earned:setAlpha( 1 ) --[[ @ 0]]
				f8_arg0.Earned:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.Earned:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.Earned:completeAnimation() --[[ @ 0]]
			f8_arg0.Earned:setAlpha( 0 ) --[[ @ 0]]
			f8_local0( f8_arg0.Earned ) --[[ @ 0]]
		end
	},
	Earned = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f10_arg0.Earned:completeAnimation() --[[ @ 0]]
			f10_arg0.Earned:setAlpha( 1 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.Earned ) --[[ @ 0]]
		end,
		DefaultState = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f11_local0 = function ( f12_arg0 )
				f11_arg0.Earned:beginAnimation( 150 ) --[[ @ 0]]
				f11_arg0.Earned:setAlpha( 0 ) --[[ @ 0]]
				f11_arg0.Earned:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.Earned:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.Earned:completeAnimation() --[[ @ 0]]
			f11_arg0.Earned:setAlpha( 1 ) --[[ @ 0]]
			f11_local0( f11_arg0.Earned ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ZMInvObjectiveProgressItem.__onClose = function ( f13_arg0 )
	f13_arg0.SlotBackground:close() --[[ @ 0]]
	f13_arg0.Earned:close() --[[ @ 0]]
end
 --[[ @ 0]]
