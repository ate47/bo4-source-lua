-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:54fdeea0a60636b2" ) --[[ @ 0]]
require( "x64:42cb7dfe8738a015" ) --[[ @ 0]]

CoD.TabletIcePickSecondaryWindow = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.TabletIcePickSecondaryWindow.__defaultWidth = 308 --[[ @ 0]]
CoD.TabletIcePickSecondaryWindow.__defaultHeight = 345 --[[ @ 0]]
CoD.TabletIcePickSecondaryWindow.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	SetControllerModelValue( f1_arg1, "IcePickInfo.currentHackFlavorText", "" ) --[[ @ 0]]
	self:setClass( CoD.TabletIcePickSecondaryWindow ) --[[ @ 0]]
	self.id = "TabletIcePickSecondaryWindow" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local IcePickHackFeedBg = CoD.IcePickHackFeedBg.new( f1_arg0, f1_arg1, 0, 0, 0, 308, 0, 0, 0, 344 ) --[[ @ 0]]
	self:addElement( IcePickHackFeedBg ) --[[ @ 0]]
	self.IcePickHackFeedBg = IcePickHackFeedBg --[[ @ 0]]
	
	local IcePickHackFeed = CoD.IcePickHackFeed.new( f1_arg0, f1_arg1, 0.5, 0.5, -124, 124, 0.5, 0.5, -164.5, 150.5 ) --[[ @ 0]]
	self:addElement( IcePickHackFeed ) --[[ @ 0]]
	self.IcePickHackFeed = IcePickHackFeed --[[ @ 0]]
	
	self:linkToElementModel( self, "currentHackFlavorText", true, function ( model )
		local f2_local0 = self --[[ @ 0]]
		CoD.HUDUtility.IcePickAddItemToFeed( self.IcePickHackFeed, model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local3 = self --[[ @ 0]]
	CoD.HUDUtility.SetupIcePickHackFeed( self, self.IcePickHackFeed, f1_arg0, f1_arg1 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.TabletIcePickSecondaryWindow.__onClose = function ( f3_arg0 )
	f3_arg0.IcePickHackFeedBg:close() --[[ @ 0]]
	f3_arg0.IcePickHackFeed:close() --[[ @ 0]]
end
 --[[ @ 0]]
