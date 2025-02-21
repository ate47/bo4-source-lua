-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/cac/newbreadcrumb" ) --[[ @ 0]]

CoD.StartMenu_TitleHeader = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.StartMenu_TitleHeader.__defaultWidth = 102 --[[ @ 0]]
CoD.StartMenu_TitleHeader.__defaultHeight = 20 --[[ @ 0]]
CoD.StartMenu_TitleHeader.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIHorizontalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 6, false ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Left ) --[[ @ 0]]
	self:setClass( CoD.StartMenu_TitleHeader ) --[[ @ 0]]
	self.id = "StartMenu_TitleHeader" --[[ @ 0]]
	self.soundSet = "CAC" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local HeaderText = LUI.UIText.new( 0, 0, 0, 102, 0.5, 0.5, -12.5, 12.5 ) --[[ @ 0]]
	HeaderText:setText( "" ) --[[ @ 0]]
	HeaderText:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	HeaderText:setLetterSpacing( 1.5 ) --[[ @ 0]]
	HeaderText:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( HeaderText ) --[[ @ 0]]
	self.HeaderText = HeaderText --[[ @ 0]]
	
	local NewIcon = CoD.NewBreadcrumb.new( f1_arg0, f1_arg1, 0, 0, 108, 126, 0.5, 0.5, -9, 9 ) --[[ @ 0]]
	NewIcon:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return IsLive() and CoD.ModelUtility.IsSelfModelValueGreaterThan( element, f1_arg1, "breadcrumbCount", 0 )
			end
		}
	} ) --[[ @ 0]]
	local f1_local3 = NewIcon --[[ @ 0]]
	local f1_local4 = NewIcon.subscribeToModel --[[ @ 0]]
	local f1_local5 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["lobbyRoot.lobbyNetworkMode"], function ( f3_arg0 )
		f1_arg0:updateElementState( NewIcon, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f3_arg0:get(),
			modelName = "lobbyRoot.lobbyNetworkMode"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = NewIcon --[[ @ 0]]
	f1_local4 = NewIcon.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["lobbyRoot.lobbyNav"], function ( f4_arg0 )
		f1_arg0:updateElementState( NewIcon, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f4_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	NewIcon:linkToElementModel( NewIcon, "breadcrumbCount", true, function ( model )
		f1_arg0:updateElementState( NewIcon, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "breadcrumbCount"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( NewIcon ) --[[ @ 0]]
	self.NewIcon = NewIcon --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.StartMenu_TitleHeader.__onClose = function ( f6_arg0 )
	f6_arg0.NewIcon:close() --[[ @ 0]]
end
 --[[ @ 0]]
