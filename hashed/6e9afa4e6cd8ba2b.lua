-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/reticles/infinite/lmginfinitereticle_ui3d_internal" ) --[[ @ 0]]

CoD.lmgInfiniteReticle_UI3D = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.lmgInfiniteReticle_UI3D.__defaultWidth = 321 --[[ @ 0]]
CoD.lmgInfiniteReticle_UI3D.__defaultHeight = 138 --[[ @ 0]]
CoD.lmgInfiniteReticle_UI3D.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.lmgInfiniteReticle_UI3D ) --[[ @ 0]]
	self.id = "lmgInfiniteReticle_UI3D" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local internal = CoD.lmgInfiniteReticle_UI3D_Internal.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Engine[@"setupui3dwindow"]( f1_arg1, 3, 321, 138 ) --[[ @ 0]]
	internal:setUI3DWindow( 3 ) --[[ @ 0]]
	internal:linkToElementModel( self, nil, false, function ( model )
		internal:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( internal ) --[[ @ 0]]
	self.internal = internal --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_emp_active"] )
			end
		}
	} ) --[[ @ 0]]
	local f1_local2 = self --[[ @ 0]]
	local f1_local3 = self.subscribeToModel --[[ @ 0]]
	local f1_local4 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_emp_active"]], function ( f4_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f4_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_emp_active"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.lmgInfiniteReticle_UI3D.__resetProperties = function ( f5_arg0 )
	f5_arg0.internal:completeAnimation() --[[ @ 0]]
	f5_arg0.internal:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.lmgInfiniteReticle_UI3D.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f7_arg0.internal:completeAnimation() --[[ @ 0]]
			f7_arg0.internal:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.internal ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.lmgInfiniteReticle_UI3D.__onClose = function ( f8_arg0 )
	f8_arg0.internal:close() --[[ @ 0]]
end
 --[[ @ 0]]
