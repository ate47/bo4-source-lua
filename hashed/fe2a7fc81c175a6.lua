-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
require( "ui/uieditor/widgets/cac/weaponattachmentselect/generalattachmentcontainer" ) --[[ @ 0]]

CoD.WeaponAttachmentContainer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WeaponAttachmentContainer.__defaultWidth = 800 --[[ @ 0]]
CoD.WeaponAttachmentContainer.__defaultHeight = 300 --[[ @ 0]]
CoD.WeaponAttachmentContainer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WeaponAttachmentContainer ) --[[ @ 0]]
	self.id = "WeaponAttachmentContainer" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local GeneralAttachmentContainer = CoD.GeneralAttachmentContainer.new( f1_arg0, f1_arg1, 0.5, 0.5, -400, 400, 0, 0, 30, 330 ) --[[ @ 0]]
	self:addElement( GeneralAttachmentContainer ) --[[ @ 0]]
	self.GeneralAttachmentContainer = GeneralAttachmentContainer --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "NoUber",
			condition = function ( menu, element, event )
				return CoD.WeaponAttachmentsUtility.DoesWeaponHaveUberAttachment( menu, element ) and not CoD.WeaponAttachmentsUtility.ShouldShowWeaponUberInfo( menu )
			end
		}
	} ) --[[ @ 0]]
	self.__on_menuOpened_self = function ( f3_arg0, f3_arg1, f3_arg2, f3_arg3 )
		local f3_local0 = self --[[ @ 0]]
		CoD.WeaponAttachmentsUtility.UpdateAttachmentContainerLayout( self, f3_arg1, f3_arg2 ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	f1_arg0:addMenuOpenedCallback( self.__on_menuOpened_self ) --[[ @ 0]]
	GeneralAttachmentContainer.id = "GeneralAttachmentContainer" --[[ @ 0]]
	self.__defaultFocus = GeneralAttachmentContainer --[[ @ 0]]
	self.__on_close_removeOverrides = function ()
		f1_arg0:removeMenuOpenedCallback( self.__on_menuOpened_self ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.WeaponAttachmentContainer.__onClose = function ( f5_arg0 )
	f5_arg0.__on_close_removeOverrides() --[[ @ 0]]
	f5_arg0.GeneralAttachmentContainer:close() --[[ @ 0]]
end
 --[[ @ 0]]
