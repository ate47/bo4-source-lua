-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "x64:21404c0d595e4eb5" ) --[[ @ 0]]

CoD.EntitlementListContainer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.EntitlementListContainer.__defaultWidth = 1110 --[[ @ 0]]
CoD.EntitlementListContainer.__defaultHeight = 240 --[[ @ 0]]
CoD.EntitlementListContainer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.EntitlementListContainer ) --[[ @ 0]]
	self.id = "EntitlementListContainer" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local EntitlementItemList = LUI.UIList.new( f1_arg0, f1_arg1, 10, 0, nil, false, false, false, false ) --[[ @ 0]]
	EntitlementItemList:setLeftRight( 0, 0, 0, 1110 ) --[[ @ 0]]
	EntitlementItemList:setTopBottom( 0, 0, 0, 240 ) --[[ @ 0]]
	EntitlementItemList:setWidgetType( CoD.EntitlementListItem ) --[[ @ 0]]
	EntitlementItemList:setHorizontalCount( 2 ) --[[ @ 0]]
	EntitlementItemList:setVerticalCount( 5 ) --[[ @ 0]]
	EntitlementItemList:setSpacing( 10 ) --[[ @ 0]]
	EntitlementItemList:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	EntitlementItemList:setDataSource( "EntitlementItemList" ) --[[ @ 0]]
	self:addElement( EntitlementItemList ) --[[ @ 0]]
	self.EntitlementItemList = EntitlementItemList --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "hidecodpoints",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsModelValueTrue( f1_arg1, "EntitlementData.addsCODPoints" )
			end
		}
	} ) --[[ @ 0]]
	local f1_local2 = self --[[ @ 0]]
	local f1_local3 = self.subscribeToModel --[[ @ 0]]
	local f1_local4 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4["EntitlementData.addsCODPoints"], function ( f3_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f3_arg0:get(),
			modelName = "EntitlementData.addsCODPoints"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	EntitlementItemList.id = "EntitlementItemList" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.EntitlementListContainer.__onClose = function ( f4_arg0 )
	f4_arg0.EntitlementItemList:close() --[[ @ 0]]
end
 --[[ @ 0]]
