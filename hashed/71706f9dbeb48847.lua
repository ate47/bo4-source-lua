-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
require( "x64:69c28c8f05d254f8" ) --[[ @ 0]]

CoD.SurveyResponseList = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.SurveyResponseList.__defaultWidth = 371 --[[ @ 0]]
CoD.SurveyResponseList.__defaultHeight = 428 --[[ @ 0]]
CoD.SurveyResponseList.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.SurveyResponseList ) --[[ @ 0]]
	self.id = "SurveyResponseList" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local ResponseOptions = LUI.UIList.new( f1_arg0, f1_arg1, 20, 0, nil, false, false, false, false ) --[[ @ 0]]
	ResponseOptions:setLeftRight( 0, 0, 0, 400 ) --[[ @ 0]]
	ResponseOptions:setTopBottom( 0, 0, 0, 520 ) --[[ @ 0]]
	ResponseOptions:setWidgetType( CoD.SurveyButton ) --[[ @ 0]]
	ResponseOptions:setVerticalCount( 6 ) --[[ @ 0]]
	ResponseOptions:setSpacing( 20 ) --[[ @ 0]]
	ResponseOptions:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	ResponseOptions:setDataSource( "SurveyResponseOptions" ) --[[ @ 0]]
	self:addElement( ResponseOptions ) --[[ @ 0]]
	self.ResponseOptions = ResponseOptions --[[ @ 0]]
	
	ResponseOptions.id = "ResponseOptions" --[[ @ 0]]
	self.__defaultFocus = ResponseOptions --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.SurveyResponseList.__onClose = function ( f2_arg0 )
	f2_arg0.ResponseOptions:close() --[[ @ 0]]
end
 --[[ @ 0]]
