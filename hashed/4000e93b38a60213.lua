-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "x64:50b9201b5b961430" ) --[[ @ 0]]
require( "x64:741fd15a2dbe0a37" ) --[[ @ 0]]

CoD.Tak5Reticle_Internal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Tak5Reticle_Internal.__defaultWidth = 800 --[[ @ 0]]
CoD.Tak5Reticle_Internal.__defaultHeight = 200 --[[ @ 0]]
CoD.Tak5Reticle_Internal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.Tak5Reticle_Internal ) --[[ @ 0]]
	self.id = "Tak5Reticle_Internal" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local LockOn = CoD.Tak5Reticle_LockOn.new( f1_arg0, f1_arg1, 0.5, 0.5, -75, 75, 0.5, 0.5, -75, 75 ) --[[ @ 0]]
	LockOn:setAlpha( 0 ) --[[ @ 0]]
	LockOn:linkToElementModel( self, nil, false, function ( model )
		LockOn:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( LockOn ) --[[ @ 0]]
	self.LockOn = LockOn --[[ @ 0]]
	
	local Range = CoD.Tak5Reticle_Range.new( f1_arg0, f1_arg1, 0, 0, 0, 800, 0, 0, 0, 200 ) --[[ @ 0]]
	self:addElement( Range ) --[[ @ 0]]
	self.Range = Range --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "LockedOn",
			condition = function ( menu, element, event )
				return CoD.HUDUtility.IsTeammateHealTargeting( f1_arg1 ) and not CoD.HUDUtility.IsTeammateHealTargetAlreadyBoosted( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	local f1_local3 = self --[[ @ 0]]
	local f1_local4 = self.subscribeToModel --[[ @ 0]]
	local f1_local5 = DataSources.TeammateHealTargeting.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5.status, function ( f4_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f4_arg0:get(),
			modelName = "status"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = DataSources.TeammateHealTargeting.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5.targetClientNum, function ( f5_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "targetClientNum"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local4 = self --[[ @ 0]]
	CoD.HUDUtility.InitTeammateHealTargeting( LockOn, f1_arg1 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.Tak5Reticle_Internal.__resetProperties = function ( f6_arg0 )
	f6_arg0.LockOn:completeAnimation() --[[ @ 0]]
	f6_arg0.Range:completeAnimation() --[[ @ 0]]
	f6_arg0.LockOn:setAlpha( 0 ) --[[ @ 0]]
	f6_arg0.Range:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f6_arg0.Range.Tak5ReticleBracket:setRGB( 1, 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.Tak5Reticle_Internal.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f7_arg0.LockOn:completeAnimation() --[[ @ 0]]
			f7_arg0.LockOn:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.LockOn ) --[[ @ 0]]
		end
	},
	LockedOn = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f8_arg0.LockOn:completeAnimation() --[[ @ 0]]
			f8_arg0.LockOn:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.LockOn ) --[[ @ 0]]
			f8_arg0.Range:completeAnimation() --[[ @ 0]]
			f8_arg0.Range.Tak5ReticleBracket:completeAnimation() --[[ @ 0]]
			f8_arg0.Range:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f8_arg0.Range.Tak5ReticleBracket:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.Range ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.Tak5Reticle_Internal.__onClose = function ( f9_arg0 )
	f9_arg0.LockOn:close() --[[ @ 0]]
	f9_arg0.Range:close() --[[ @ 0]]
end
 --[[ @ 0]]
