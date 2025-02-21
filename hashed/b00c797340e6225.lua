-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/hud/mphinttextcontainer" ) --[[ @ 0]]

CoD.MPHintText = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.MPHintText = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "MPHintText", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	self:setClass( CoD.MPHintText ) --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.ignoreCursor = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_local1:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local MPHintTextContainer = CoD.MPHintTextContainer.new( f1_local1, f1_arg0, 0.5, 0.5, -864, 864, 1, 1, -272, -233 ) --[[ @ 0]]
	self:addElement( MPHintTextContainer ) --[[ @ 0]]
	self.MPHintTextContainer = MPHintTextContainer --[[ @ 0]]
	
	self.MPHintTextContainer:linkToElementModel( self, "hint_text_line", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			MPHintTextContainer.MPHintText:setText( Engine[@"hash_4F9F1239CFD921FE"]( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.MPHintText.__onClose = function ( f3_arg0 )
	f3_arg0.MPHintTextContainer:close() --[[ @ 0]]
end
 --[[ @ 0]]
