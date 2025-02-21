-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "ui/uieditor/widgets/callingcards/callingcards_cardwidget" ) --[[ @ 0]]
require( "ui/uieditor/widgets/challenges/challenges_callingcardprofiler" ) --[[ @ 0]]
require( "ui/uieditor/widgets/scrollbars/verticalcounter" ) --[[ @ 0]]

CoD.CallingCards_Stickerbook_Default = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CallingCards_Stickerbook_Default.__defaultWidth = 1725 --[[ @ 0]]
CoD.CallingCards_Stickerbook_Default.__defaultHeight = 780 --[[ @ 0]]
CoD.CallingCards_Stickerbook_Default.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CallingCards_Stickerbook_Default ) --[[ @ 0]]
	self.id = "CallingCards_Stickerbook_Default" --[[ @ 0]]
	self.soundSet = "ChooseDecal" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local CallingCardGrid = LUI.UIList.new( f1_arg0, f1_arg1, 15, 0, nil, true, false, false, false ) --[[ @ 0]]
	CallingCardGrid:setLeftRight( 0, 0, 15, 1125 ) --[[ @ 0]]
	CallingCardGrid:setTopBottom( 0, 0, 24, 744 ) --[[ @ 0]]
	CallingCardGrid:setWidgetType( CoD.CallingCards_CardWidget ) --[[ @ 0]]
	CallingCardGrid:setHorizontalCount( 3 ) --[[ @ 0]]
	CallingCardGrid:setVerticalCount( 7 ) --[[ @ 0]]
	CallingCardGrid:setSpacing( 15 ) --[[ @ 0]]
	CallingCardGrid:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	CallingCardGrid:setVerticalCounter( CoD.verticalCounter ) --[[ @ 0]]
	CallingCardGrid:setDataSource( "CallingCardsDefault" ) --[[ @ 0]]
	CallingCardGrid:registerEventHandler( "list_item_gain_focus", function ( element, event )
		local f2_local0 = nil --[[ @ 0]]
		if IsElementInState( element, "New" ) then
			CoD.BreadcrumbUtility.SetCallingCardsAsOld( f1_arg0, element, f1_arg1 ) --[[ @ 0]]
		end
		return f2_local0
	end ) --[[ @ 0]]
	CallingCardGrid:registerEventHandler( "gain_focus", function ( element, event )
		local f3_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f3_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f3_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f3_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( CallingCardGrid, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		if not IsElementInState( element, "Locked" ) then
			CallingCards_SetPlayerBackground( menu, element, controller ) --[[ @ 0]]
			PlaySoundSetSound( self, "action" ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not IsElementInState( element, "Locked" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( CallingCardGrid ) --[[ @ 0]]
	self.CallingCardGrid = CallingCardGrid --[[ @ 0]]
	
	local CallingCardProfiler = CoD.Challenges_CallingCardProfiler.new( f1_arg0, f1_arg1, 1, 1, -568.5, -43.5, 0, 1, 21, -33 ) --[[ @ 0]]
	CallingCardProfiler:mergeStateConditions( {
		{
			stateName = "Locked",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "LockedOneTierNoXP",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "LockedOneTier",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	local f1_local3 = CallingCardProfiler --[[ @ 0]]
	local f1_local4 = CallingCardProfiler.subscribeToModel --[[ @ 0]]
	local f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["hudItems.callingCardProfilingType"], function ( f9_arg0 )
		f1_arg0:updateElementState( CallingCardProfiler, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f9_arg0:get(),
			modelName = "hudItems.callingCardProfilingType"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	CallingCardProfiler:linkToElementModel( CallingCardProfiler, "isLocked", true, function ( model )
		f1_arg0:updateElementState( CallingCardProfiler, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "isLocked"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	CallingCardProfiler:linkToElementModel( CallingCardProfiler, "isBMClassified", true, function ( model )
		f1_arg0:updateElementState( CallingCardProfiler, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "isBMClassified"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( CallingCardProfiler ) --[[ @ 0]]
	self.CallingCardProfiler = CallingCardProfiler --[[ @ 0]]
	
	CallingCardProfiler:linkToElementModel( CallingCardGrid, nil, false, function ( model )
		CallingCardProfiler:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	CallingCardGrid.id = "CallingCardGrid" --[[ @ 0]]
	CallingCardProfiler.id = "CallingCardProfiler" --[[ @ 0]]
	self.__defaultFocus = CallingCardGrid --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CallingCards_Stickerbook_Default.__onClose = function ( f13_arg0 )
	f13_arg0.CallingCardProfiler:close() --[[ @ 0]]
	f13_arg0.CallingCardGrid:close() --[[ @ 0]]
end
 --[[ @ 0]]
