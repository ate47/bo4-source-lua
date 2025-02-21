-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:5acbed692442191c" ) --[[ @ 0]]

CoD.ItemHintText = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ItemHintText.__defaultWidth = 282 --[[ @ 0]]
CoD.ItemHintText.__defaultHeight = 45 --[[ @ 0]]
CoD.ItemHintText.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ItemHintText ) --[[ @ 0]]
	self.id = "ItemHintText" --[[ @ 0]]
	self.soundSet = "FrontendMain" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local textCenterAlign = LUI.UIText.new( 0, 1, 6, -6, 0.5, 0.5, -10, 10 ) --[[ @ 0]]
	textCenterAlign:setText( "" ) --[[ @ 0]]
	textCenterAlign:setTTF( "dinnext_regular" ) --[[ @ 0]]
	textCenterAlign:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	textCenterAlign:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	textCenterAlign:setBackingType( 1 ) --[[ @ 0]]
	textCenterAlign:setBackingWidget( CoD.CommonCornerPips02, f1_arg0, f1_arg1 ) --[[ @ 0]]
	textCenterAlign:setBackingXPadding( 15 ) --[[ @ 0]]
	textCenterAlign:setBackingYPadding( 7 ) --[[ @ 0]]
	self:addElement( textCenterAlign ) --[[ @ 0]]
	self.textCenterAlign = textCenterAlign --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Mouse",
			condition = function ( menu, element, event )
				return IsMouseOrKeyboard( f1_arg1 )
			end
		},
		{
			stateName = "NoHintText",
			condition = function ( menu, element, event )
				return not HasHintText( element )
			end
		},
		{
			stateName = "CenterAlign",
			condition = function ( menu, element, event )
				return true
			end
		}
	} ) --[[ @ 0]]
	self:appendEventHandler( "input_source_changed", function ( f5_arg0, f5_arg1 )
		f5_arg1.menu = f5_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( self, f5_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local2 = self --[[ @ 0]]
	local f1_local3 = self.subscribeToModel --[[ @ 0]]
	local f1_local4 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4.LastInput, function ( f6_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f6_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:linkToElementModel( self, nil, true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = nil
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ItemHintText.__resetProperties = function ( f8_arg0 )
	f8_arg0.textCenterAlign:completeAnimation() --[[ @ 0]]
	f8_arg0.textCenterAlign:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ItemHintText.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Mouse = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f10_arg0.textCenterAlign:completeAnimation() --[[ @ 0]]
			f10_arg0.textCenterAlign:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.textCenterAlign ) --[[ @ 0]]
		end
	},
	NoHintText = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f11_arg0.textCenterAlign:completeAnimation() --[[ @ 0]]
			f11_arg0.textCenterAlign:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.textCenterAlign ) --[[ @ 0]]
		end
	},
	CenterAlign = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
