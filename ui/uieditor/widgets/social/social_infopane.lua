-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
require( "x64:4c1b8e8afdaf81b9" ) --[[ @ 0]]
require( "x64:6ff3f371ba869eda" ) --[[ @ 0]]

CoD.Social_InfoPane = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Social_InfoPane.__defaultWidth = 724 --[[ @ 0]]
CoD.Social_InfoPane.__defaultHeight = 680 --[[ @ 0]]
CoD.Social_InfoPane.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	CoD.BaseUtility.CreateGlobalModel( "socialRoot.recentPlayers.update" ) --[[ @ 0]]
	self:setClass( CoD.Social_InfoPane ) --[[ @ 0]]
	self.id = "Social_InfoPane" --[[ @ 0]]
	self.soundSet = "ChooseDecal" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local InfoPaneRight = CoD.Social_InfoPaneRight.new( f1_arg0, f1_arg1, 0, 0, 480, 783, 0, 0, 0, 741 ) --[[ @ 0]]
	InfoPaneRight:linkToElementModel( self, nil, false, function ( model )
		InfoPaneRight:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( InfoPaneRight ) --[[ @ 0]]
	self.InfoPaneRight = InfoPaneRight --[[ @ 0]]
	
	local InfoPaneLeft = CoD.Social_InfoPaneLeft.new( f1_arg0, f1_arg1, 0, 0, 0, 460, 0, 0, 0, 741 ) --[[ @ 0]]
	InfoPaneLeft:linkToElementModel( self, nil, false, function ( model )
		InfoPaneLeft:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( InfoPaneLeft ) --[[ @ 0]]
	self.InfoPaneLeft = InfoPaneLeft --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "NoPlayer",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "identityBadge.xuid", LuaDefine.INVALID_XUID_X64 )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "identityBadge.xuid", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "identityBadge.xuid"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:subscribeToGlobalModel( f1_arg1, "SocialRoot", "recentPlayers.update", function ( model )
		local f6_local0 = self --[[ @ 0]]
		DataSourceHelperGetModel( f1_arg1, "SocialPlayerInfo" ) --[[ @ 0]]
	end ) --[[ @ 0]]
	InfoPaneRight.id = "InfoPaneRight" --[[ @ 0]]
	InfoPaneLeft.id = "InfoPaneLeft" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.Social_InfoPane.__onClose = function ( f7_arg0 )
	f7_arg0.InfoPaneRight:close() --[[ @ 0]]
	f7_arg0.InfoPaneLeft:close() --[[ @ 0]]
end
 --[[ @ 0]]
