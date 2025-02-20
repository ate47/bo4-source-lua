-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
require( "ui/uieditor/widgets/freecursor/freecursorwidget" ) --[[ @ 0]]

CoD.FreeCursor = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.FreeCursor = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "FreeCursor", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	SetProperty( self, "ignoreCursor", true ) --[[ @ 0]]
	self:setClass( CoD.FreeCursor ) --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_local1:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local freeCursorWidget0 = CoD.freeCursorWidget.new( f1_local1, f1_arg0, 0, 0, 0, 140, 0, 0, 0, 140 ) --[[ @ 0]]
	freeCursorWidget0:subscribeToGlobalModel( f1_arg0, "FreeCursor", nil, function ( model )
		freeCursorWidget0:setModel( model, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( freeCursorWidget0 ) --[[ @ 0]]
	self.freeCursorWidget0 = freeCursorWidget0 --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return not IsFreeCursorActiveAndVisible( f1_arg0 )
			end
		}
	} ) --[[ @ 0]]
	local f1_local3 = self --[[ @ 0]]
	local f1_local4 = self.subscribeToModel --[[ @ 0]]
	local f1_local5 = DataSources.FreeCursor.getModel( f1_arg0 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5.usingCursorInput, function ( f4_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f4_arg0:get(),
			modelName = "usingCursorInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = DataSources.FreeCursor.getModel( f1_arg0 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5.hidden, function ( f5_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f5_arg0:get(),
			modelName = "hidden"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"GetModelForController"]( f1_arg0 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5.activeKeys, function ( f6_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f6_arg0:get(),
			modelName = "activeKeys"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	freeCursorWidget0.id = "freeCursorWidget0" --[[ @ 0]]
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local4 = self --[[ @ 0]]
	CallCustomElementFunction_Self( self, "setPriority", 1000 ) --[[ @ 0]]
	SetProperty( self, "m_inputDisabled", true ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.FreeCursor.__resetProperties = function ( f7_arg0 )
	f7_arg0.freeCursorWidget0:completeAnimation() --[[ @ 0]]
	f7_arg0.freeCursorWidget0:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.FreeCursor.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f9_arg0.freeCursorWidget0:completeAnimation() --[[ @ 0]]
			f9_arg0.freeCursorWidget0:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.freeCursorWidget0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.FreeCursor.__onClose = function ( f10_arg0 )
	f10_arg0.freeCursorWidget0:close() --[[ @ 0]]
end
 --[[ @ 0]]
