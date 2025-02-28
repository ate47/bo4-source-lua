-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/tabbedwidgets/basictabwidget" ) --[[ @ 0]]

CoD.basicTabList = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.basicTabList.__defaultWidth = 1635 --[[ @ 0]]
CoD.basicTabList.__defaultHeight = 60 --[[ @ 0]]
CoD.basicTabList.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.basicTabList ) --[[ @ 0]]
	self.id = "basicTabList" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local grid = LUI.GridLayout.new( f1_arg0, f1_arg1, false, 0, 0, 3, 0, nil, nil, false, false, false, false ) --[[ @ 0]]
	grid:setLeftRight( 0, 0, 0, 1635 ) --[[ @ 0]]
	grid:setTopBottom( 0, 0, 0, 60 ) --[[ @ 0]]
	grid:setWidgetType( CoD.basicTabWidget ) --[[ @ 0]]
	grid:setHorizontalCount( 6 ) --[[ @ 0]]
	grid:setSpacing( 3 ) --[[ @ 0]]
	grid:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	grid:registerEventHandler( "gain_focus", function ( element, event )
		local f2_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f2_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f2_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f2_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( grid, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		SelectItemIfPossible( self, element, controller ) --[[ @ 0]]
		PlaySoundSetSound( self, "list_right" ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_0", nil, "ui_confirm" ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( grid, "setWidth", function ( element, controller )
		ScaleToElementWidth( self, element, 0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	grid:subscribeToGlobalModel( f1_arg1, "PerController", "PositionDraft.stage", function ( model )
		local f6_local0 = grid --[[ @ 0]]
		if CoD.ModelUtility.IsModelValueEqualTo( f1_arg1, "PositionDraft.stage", 5 ) then
			CoD.GridAndListUtility.UpdateDataSource( f6_local0, false, false, true ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( grid ) --[[ @ 0]]
	self.grid = grid --[[ @ 0]]
	
	grid.id = "grid" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local2 = self --[[ @ 0]]
	CoD.GridAndListUtility.AddBumperNavigation( f1_arg0, grid, f1_arg1 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.basicTabList.__resetProperties = function ( f7_arg0 )
	f7_arg0.grid:completeAnimation() --[[ @ 0]]
	f7_arg0.grid:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.basicTabList.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f9_arg0.grid:completeAnimation() --[[ @ 0]]
			f9_arg0.grid:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.grid ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.basicTabList.__onClose = function ( f10_arg0 )
	f10_arg0.grid:close() --[[ @ 0]]
end
 --[[ @ 0]]
