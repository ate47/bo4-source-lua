-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/footer/fe_leftcontainer_notlobby" ) --[[ @ 0]]

CoD.VoDViewerFooter = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.VoDViewerFooter.__defaultWidth = 1920 --[[ @ 0]]
CoD.VoDViewerFooter.__defaultHeight = 97 --[[ @ 0]]
CoD.VoDViewerFooter.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.VoDViewerFooter ) --[[ @ 0]]
	self.id = "VoDViewerFooter" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = CoD.isPC --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local blackleftBG = LUI.UIImage.new( 0, 1, -185, 197, 1, 1, -60, 224 ) --[[ @ 0]]
	blackleftBG:setRGB( 0, 0, 0 ) --[[ @ 0]]
	blackleftBG:setAlpha( 0.6 ) --[[ @ 0]]
	self:addElement( blackleftBG ) --[[ @ 0]]
	self.blackleftBG = blackleftBG --[[ @ 0]]
	
	local LineLeft = LUI.UIImage.new( 0, 1, -185, 197, 1, 1, -63, -57 ) --[[ @ 0]]
	LineLeft:setAlpha( 0.55 ) --[[ @ 0]]
	self:addElement( LineLeft ) --[[ @ 0]]
	self.LineLeft = LineLeft --[[ @ 0]]
	
	local feLeftContainer = CoD.fe_LeftContainer_NOTLobby.new( f1_arg0, f1_arg1, 0.5, 0.5, -937, -135, 1, 1, -72, -6 ) --[[ @ 0]]
	feLeftContainer:linkToElementModel( self, nil, false, function ( model )
		feLeftContainer:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( feLeftContainer ) --[[ @ 0]]
	self.feLeftContainer = feLeftContainer --[[ @ 0]]
	
	if CoD.isPC then
		feLeftContainer.id = "feLeftContainer" --[[ @ 0]]
	end
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.VoDViewerFooter.__onClose = function ( f3_arg0 )
	f3_arg0.feLeftContainer:close() --[[ @ 0]]
end
 --[[ @ 0]]
