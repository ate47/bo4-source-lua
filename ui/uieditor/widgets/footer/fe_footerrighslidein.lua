-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/footer/fe_leftcontainer_notlobby" ) --[[ @ 0]]

CoD.fe_footerRighSlideIn = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.fe_footerRighSlideIn.__defaultWidth = 649 --[[ @ 0]]
CoD.fe_footerRighSlideIn.__defaultHeight = 48 --[[ @ 0]]
CoD.fe_footerRighSlideIn.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.fe_footerRighSlideIn ) --[[ @ 0]]
	self.id = "fe_footerRighSlideIn" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = CoD.isPC --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local buttons = CoD.fe_LeftContainer_NOTLobby.new( f1_arg0, f1_arg1, 1, 1, -446, 202, 1, 1, -48, 0 ) --[[ @ 0]]
	self:addElement( buttons ) --[[ @ 0]]
	self.buttons = buttons --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Campaign",
			condition = function ( menu, element, event )
				return IsCampaign()
			end
		}
	} ) --[[ @ 0]]
	local f1_local2 = self --[[ @ 0]]
	local f1_local3 = self.subscribeToModel --[[ @ 0]]
	local f1_local4 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local3( f1_local2, f1_local4["lobbyRoot.lobbyNav"], function ( f3_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f3_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	if CoD.isPC then
		buttons.id = "buttons" --[[ @ 0]]
	end
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.fe_footerRighSlideIn.__onClose = function ( f4_arg0 )
	f4_arg0.buttons:close() --[[ @ 0]]
end
 --[[ @ 0]]
