-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "ui/uieditor/widgets/cac/cactabbuttoninternal" ) --[[ @ 0]]
require( "ui/uieditor/widgets/cac/newbreadcrumbcount" ) --[[ @ 0]]

CoD.CommonTabButton = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CommonTabButton.__defaultWidth = 234 --[[ @ 0]]
CoD.CommonTabButton.__defaultHeight = 35 --[[ @ 0]]
CoD.CommonTabButton.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CommonTabButton ) --[[ @ 0]]
	self.id = "CommonTabButton" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local internal = CoD.CACTabButtonInternal.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	internal:mergeStateConditions( {
		{
			stateName = "Disabled",
			condition = function ( menu, element, event )
				return IsDisabled( self, f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	local f1_local2 = internal --[[ @ 0]]
	local newIcon = internal.subscribeToModel --[[ @ 0]]
	local f1_local4 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	newIcon( f1_local2, f1_local4["lobbyRoot.lobbyNav"], function ( f3_arg0 )
		f1_arg0:updateElementState( internal, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f3_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	internal:linkToElementModel( internal, "disabled", true, function ( model )
		f1_arg0:updateElementState( internal, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "disabled"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	internal:linkToElementModel( self, nil, false, function ( model )
		internal:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	internal:linkToElementModel( self, nil, false, function ( model )
		internal.RestrictedIcon:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	internal:linkToElementModel( self, "tabName", true, function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			internal.Text:setText( Engine[@"hash_4F9F1239CFD921FE"]( f7_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	internal:linkToElementModel( self, "tabName", true, function ( model )
		local f8_local0 = model:get() --[[ @ 0]]
		if f8_local0 ~= nil then
			internal.TextFocus:setText( Engine[@"hash_4F9F1239CFD921FE"]( f8_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( internal ) --[[ @ 0]]
	self.internal = internal --[[ @ 0]]
	
	newIcon = CoD.NewBreadcrumbCount.new( f1_arg0, f1_arg1, 0, 0, 212, 230, 0.5, 0.5, -23.5, -5.5 ) --[[ @ 0]]
	newIcon:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueGreaterThan( element, f1_arg1, "breadcrumbCount", 0 )
			end
		}
	} ) --[[ @ 0]]
	newIcon:linkToElementModel( newIcon, "breadcrumbCount", true, function ( model )
		f1_arg0:updateElementState( newIcon, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "breadcrumbCount"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	newIcon:linkToElementModel( self, "breadcrumb", true, function ( model )
		local f11_local0 = model:get() --[[ @ 0]]
		if f11_local0 ~= nil then
			newIcon:setModel( f11_local0, f1_arg1 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( newIcon ) --[[ @ 0]]
	self.newIcon = newIcon --[[ @ 0]]
	
	internal.id = "internal" --[[ @ 0]]
	self.__defaultFocus = internal --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CommonTabButton.__onClose = function ( f12_arg0 )
	f12_arg0.internal:close() --[[ @ 0]]
	f12_arg0.newIcon:close() --[[ @ 0]]
end
 --[[ @ 0]]
