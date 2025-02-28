-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.emptyFocusableNoCursorUpdate = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.emptyFocusableNoCursorUpdate.__defaultWidth = 1920 --[[ @ 0]]
CoD.emptyFocusableNoCursorUpdate.__defaultHeight = 1080 --[[ @ 0]]
CoD.emptyFocusableNoCursorUpdate.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	SetProperty( self, "_yieldFocus", true ) --[[ @ 0]]
	SetProperty( self, "__forceCursorTypeNormal", true ) --[[ @ 0]]
	SetProperty( self, "ignorePlaySound", true ) --[[ @ 0]]
	self:setClass( CoD.emptyFocusableNoCursorUpdate ) --[[ @ 0]]
	self.id = "emptyFocusableNoCursorUpdate" --[[ @ 0]]
	self.soundSet = "ChooseDecal" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local spacer = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	spacer:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( spacer ) --[[ @ 0]]
	self.spacer = spacer --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return IsGamepadOrKeyboardNavigation( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	self:appendEventHandler( "input_source_changed", function ( f3_arg0, f3_arg1 )
		f3_arg1.menu = f3_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( self, f3_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local2 = self --[[ @ 0]]
	local f1_local3 = self.subscribeToModel --[[ @ 0]]
	local f1_local4 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4.LastInput, function ( f4_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f4_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.emptyFocusableNoCursorUpdate.__resetProperties = function ( f5_arg0 )
	f5_arg0.spacer:completeAnimation() --[[ @ 0]]
	f5_arg0.spacer:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.emptyFocusableNoCursorUpdate.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Focus = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f7_arg0.spacer:completeAnimation() --[[ @ 0]]
			f7_arg0.spacer:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.spacer ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
