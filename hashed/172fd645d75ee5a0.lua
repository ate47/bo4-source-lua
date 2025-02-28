-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
CoD.EditorDrawEmblemFocusable = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.EditorDrawEmblemFocusable.__defaultWidth = 1920 --[[ @ 0]]
CoD.EditorDrawEmblemFocusable.__defaultHeight = 1080 --[[ @ 0]]
CoD.EditorDrawEmblemFocusable.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.EditorDrawEmblemFocusable ) --[[ @ 0]]
	self.id = "EditorDrawEmblemFocusable" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	local emblemDrawingArea = nil --[[ @ 0]]
	
	emblemDrawingArea = LUI.UIElement.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	emblemDrawingArea:subscribeToGlobalModel( f1_arg1, "Customization", "type", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			emblemDrawingArea:setupEmblem( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	emblemDrawingArea:registerEventHandler( "input_source_changed", function ( element, event )
		local f3_local0 = nil --[[ @ 0]]
		if IsPC() and IsMouseOrKeyboard( f1_arg1 ) then
			SetUsingFocusInterraction( element, true ) --[[ @ 0]]
			UpdateState( self, event ) --[[ @ 0]]
		elseif IsPC() and IsGamepad( f1_arg1 ) then
			SetUsingFocusInterraction( element, false ) --[[ @ 0]]
			UpdateState( self, event ) --[[ @ 0]]
		end
		if not f3_local0 then
			f3_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f3_local0
	end ) --[[ @ 0]]
	self:addElement( emblemDrawingArea ) --[[ @ 0]]
	self.emblemDrawingArea = emblemDrawingArea --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "PCGamePad",
			condition = function ( menu, element, event )
				return IsPC() and IsGamepad( f1_arg1 )
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
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PreLoadFunc then
		PreLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	f1_local3 = self --[[ @ 0]]
	f1_local3 = emblemDrawingArea --[[ @ 0]]
	if IsPC() and IsMouseOrKeyboard( f1_arg1 ) then
		SetUsingFocusInterraction( f1_local3, true ) --[[ @ 0]]
	elseif IsPC() and IsGamepad( f1_arg1 ) then
		SetUsingFocusInterraction( f1_local3, false ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.EditorDrawEmblemFocusable.__resetProperties = function ( f7_arg0 )
	f7_arg0.emblemDrawingArea:completeAnimation() --[[ @ 0]]
	f7_arg0.emblemDrawingArea:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.EditorDrawEmblemFocusable.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Focus = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f9_arg0.emblemDrawingArea:completeAnimation() --[[ @ 0]]
			f9_arg0.emblemDrawingArea:setAlpha( 1 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.emblemDrawingArea ) --[[ @ 0]]
		end
	},
	PCGamePad = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
if not CoD.isPC then
	CoD.EditorDrawEmblemFocusable.__clipsPerState.DefaultState.Focus = nil --[[ @ 0]]
end
CoD.EditorDrawEmblemFocusable.__onClose = function ( f11_arg0 )
	f11_arg0.emblemDrawingArea:close() --[[ @ 0]]
end
 --[[ @ 0]]
