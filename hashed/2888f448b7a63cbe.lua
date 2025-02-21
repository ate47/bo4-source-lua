-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "ui/uieditor/widgets/craft/emblemeditor/layericon" ) --[[ @ 0]]

CoD.EmblemLayer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.EmblemLayer.__defaultWidth = 172 --[[ @ 0]]
CoD.EmblemLayer.__defaultHeight = 172 --[[ @ 0]]
CoD.EmblemLayer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.EmblemLayer ) --[[ @ 0]]
	self.id = "EmblemLayer" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local background = LUI.UIImage.new( 0, 1, 22, -22, 0, 1, 22, -22 ) --[[ @ 0]]
	background:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( background ) --[[ @ 0]]
	self.background = background --[[ @ 0]]
	
	local backgroundMask = LUI.UIImage.new( 0, 1, 22, -22, 0, 1, 22, -22 ) --[[ @ 0]]
	backgroundMask:setRGB( 0, 0, 0 ) --[[ @ 0]]
	backgroundMask:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( backgroundMask ) --[[ @ 0]]
	self.backgroundMask = backgroundMask --[[ @ 0]]
	
	local layerIcon = CoD.LayerIcon.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	layerIcon:mergeStateConditions( {
		{
			stateName = "EmptyLayer",
			condition = function ( menu, element, event )
				return CoD.CraftUtility.IsLayerEmpty( self, element, f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	layerIcon:linkToElementModel( layerIcon, "layerIndex", true, function ( model )
		f1_arg0:updateElementState( layerIcon, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "layerIndex"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	layerIcon:linkToElementModel( layerIcon, "iconID", true, function ( model )
		f1_arg0:updateElementState( layerIcon, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "iconID"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local4 = layerIcon --[[ @ 0]]
	local f1_local5 = layerIcon.subscribeToModel --[[ @ 0]]
	local f1_local6 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["Emblem.EmblemProperties.groupsUsed"], function ( f5_arg0 )
		f1_arg0:updateElementState( layerIcon, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "Emblem.EmblemProperties.groupsUsed"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = layerIcon --[[ @ 0]]
	f1_local5 = layerIcon.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["Emblem.EmblemProperties.layersUsed"], function ( f6_arg0 )
		f1_arg0:updateElementState( layerIcon, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f6_arg0:get(),
			modelName = "Emblem.EmblemProperties.layersUsed"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	layerIcon:linkToElementModel( self, nil, false, function ( model )
		layerIcon:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( layerIcon ) --[[ @ 0]]
	self.layerIcon = layerIcon --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.EmblemLayer.__onClose = function ( f8_arg0 )
	f8_arg0.layerIcon:close() --[[ @ 0]]
end
 --[[ @ 0]]
